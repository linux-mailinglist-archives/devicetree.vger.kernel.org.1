Return-Path: <devicetree+bounces-265023-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iD7iKeO0jWl96AAAu9opvQ
	(envelope-from <devicetree+bounces-265023-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 12:09:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DAD8812CDE5
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 12:09:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6DC8330774F2
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 11:09:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2B18344D9B;
	Thu, 12 Feb 2026 11:09:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PeQkpJBG";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="AJ3oMA51"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F6E82DC35A
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 11:09:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770894560; cv=none; b=CKjh3+EUHB8zYYjS5W6ABTzbh7zqjYT4v7fmbQcZBRtmnOADwDW5W8Iasn8qisnfBWh5dVuI0oL950Ccl6nQpP0nLCQD1Kgwn/yoMn1F++LAp79djFZznLKPi1skWW/ifwiacCoFjShalnlcfcCPHQqDaTfQ64yn9sUXW7k7Aik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770894560; c=relaxed/simple;
	bh=lpmL47WC8+jBv9Ak7qxcbTyEmzUlSRaQE8xlvfXo9Zo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=eAI2urhhXwUkaxVe0xn2x+y7hjXV+9fpM40m76W2Nm4KyG6DwY+vlw26uTdpdGizVAb7OPwXO56DjiCfFMgjda0ntJ6OZCPEpJWaAWlMzUjN5/hjdPjLeHRatK57Y93po6UuMItsEtJtrN7aNnzmTu0CV6ZFq2V1PL7Bd7aZ08U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PeQkpJBG; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=AJ3oMA51; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61CAGA544111736
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 11:09:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=lhyQqMMavHv/UjL4sPNstTEkfpEibtFU8cb
	g4lFko1U=; b=PeQkpJBGg8izwJT1kbkYOyiPuDRkYR13Ix6BehNFl8RLy/yxz/3
	7OgHwIPTcem5/NhWTFAqSwQ9nl1l5hOusn800hRTIV1glpuHOzflmfwbKhe1Sefj
	k8QvkXJQ0HDyf+NjUedWLODdTeS0simYi+GCtdkyTDRLHwjoZVPsg8sxW9BqpeFO
	hn+acD54nwOLZgQ5j2vXYqG+D17BMXFv5UlIShfuFXB9PcZq7OmUYosn9PzLW7ZQ
	RklUQI9TSbwolsxaYF92NpHNOTu7yQndxTJTBpg1PvT5Ew9taYNO7hOgJOhM3x5L
	V4G25tnp7IGf3P8NI8jtk74RZVRrfd2YNvA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c9cya85k4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 11:09:18 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb3b6b37d8so25780585a.3
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 03:09:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770894558; x=1771499358; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lhyQqMMavHv/UjL4sPNstTEkfpEibtFU8cbg4lFko1U=;
        b=AJ3oMA51ylJsjYgDPY/+nTzt94QKzJCkFbU0gkG0hBHh1IS/eurfh6YzqLeNOsdcfC
         bjIBjsluaqOPw1V6nVFpgR7U4bOUJx8Qk3c07wVtMr3VWwpDv/unKq2rSCHP1r7kTpwi
         rh0DaqI+vSCkZqOdUiQebuHQ+VcUMZxog2DkX3ydc4zVWTaOdxsj6zbwXv6ncOmVzneg
         CGDEbXR2FDr5IUhTjvzVNtR2sBA2u7POxd5T8ZLL4IRt9U9un6vTy2nv8dScR90vNPHu
         XSeYcgQOYqRCvygDmeXuP7abDFAv5ZPVyTwLRDjAGTVyKVEs41aVDylSNvL2tKIdvjd5
         DHww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770894558; x=1771499358;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lhyQqMMavHv/UjL4sPNstTEkfpEibtFU8cbg4lFko1U=;
        b=kJS7ce3tV9CqUKtDyYOdidPMtel4yBXFqbsjHe70gu5S7G6gJoQtzbWCCHHbiuKEV1
         /cMZ2rSm6O/Xqb2XzWIbn0Ywr5ThNyNBkeqgbjRBNJEg47dAyUlUZxtDHZ8TyMCTJzDC
         SILZAQyUOuLr5ifeBUUPifC5e0S0wkOuzJSy8MUlLZ4pmU9yba3XHIxW6mDcYlzukwVU
         DGeeBSSMXfzcKa3EC+x6Ps3zpMuAnTWYDPaf3yVipljdlQ/aAkGymUiO75z0ByywK9Zu
         E9VFGdCSytSGcvhwW9FW0talamJyUF26RKu0qSUstZJX4NuLa2p/UI2amlZhEX+Uoj+K
         UMrQ==
X-Forwarded-Encrypted: i=1; AJvYcCWOoN0gh7rsuqBcCHNpqFzePIGGb94hYa3+LLLV6y4rdUchzD83e6YBR9ow/HnJi0QbPfuJtPL98cFF@vger.kernel.org
X-Gm-Message-State: AOJu0Yw5h+HSUClJcgiWacFTV+soYHetAieWQj6cLwt/ew4fctQUo2Wr
	u40m3Zfj7CDzcQ3vZquwCmXeqPQf5dbfX9rkLUI5vY1hMARxQXfgW53T8OO2yPegzLxom0u4FkF
	YOxYDJJzDkQMA7nhQyX+I/6l5LyQhWwoQEmRKa47U1J4cdFjjEbpqUbkchgLawhId
X-Gm-Gg: AZuq6aKJ8OfeJBfPL+H52L/BZm7fI6WTs8xNLsNc4fzNAMyhd/TgVFvUZhQNhDOUL+t
	TOkQ1AV1TLG1wpECHVJsjQRZCcWaTJUw1rCmS1m4UrqaTqq2YZSv7KG7eAgW9opcagk1mT4b0pY
	6lGfB9DmGgdeTx4JCNXGNSsju+YXRlpHyW2zVmxJxWXDIhb+7Nl9NPcJ++BuF0+jdkjxzv8nfyW
	zJ3nyTDGVQ61TH4vsOweFqqOaSzZ0ENUNbDv/BBIDx6vCKqaxRMbKpagoXgUBITe1ITLGGF3MBr
	Vqjq3PKwET0ufOdbWanlSdyvU+uvg1JyYnMF2wAY7UkAVB/jHoJl43m9aOekknVCd53iyB7GL4/
	M1fh2H46wVd15h4Jdx0c0vvLJyfC3sBfL7wL9VQ==
X-Received: by 2002:a05:620a:488e:b0:8c6:e225:2671 with SMTP id af79cd13be357-8cb33139e9dmr295250385a.48.1770894557725;
        Thu, 12 Feb 2026 03:09:17 -0800 (PST)
X-Received: by 2002:a05:620a:488e:b0:8c6:e225:2671 with SMTP id af79cd13be357-8cb33139e9dmr295247885a.48.1770894557330;
        Thu, 12 Feb 2026 03:09:17 -0800 (PST)
Received: from quoll ([178.197.218.229])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4834d5d78cfsm269091665e9.1.2026.02.12.03.09.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Feb 2026 03:09:16 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Linus Walleij <linusw@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH] dt-bindings: gpio: gpio-delay: Use Alexander's email
Date: Thu, 12 Feb 2026 12:09:06 +0100
Message-ID: <20260212110905.52842-2-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=950; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=lpmL47WC8+jBv9Ak7qxcbTyEmzUlSRaQE8xlvfXo9Zo=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpjbTR6bgOdJXpeiR3hVB+YBEBLu3y5YaxahTD2
 PPBmvjuRpqJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaY200QAKCRDBN2bmhouD
 1/wED/9JtwjVcZd+/ARzDwsRs+S5pQ+zAspuJGI0wGvRsqPaACZ0q/1Q2GMCFfq262lv2M5ND6P
 IZiJd4BMn0MEq6m48R0SbHT6Ind5H4zbjeUz4SvUWdyQdJJj0JJoEwSUftN9IjbceirCwg5qivS
 +WFPqRbAo6NV4+p1zg3mNH2BAZ/45prBjajh7TPixQdocIw0E6G0q2YTQ78vkIGdJJXP2PNJ2Ie
 /Zea4jyv9HLL7UIdjQISXIxHKl38BTo26ua01EScmpBXdjXhAj8SMwp8VJu635tomY7NwxbYexF
 Fgp0PfAJcSwH8GZDFsWtFtUy2/1P01zvC13yTNYZleiKjOv75Sb4OhFkwo7qbAAJ4+dwOXP9zbx
 XPYtrZrWdCC3+sOXnhshOfsICd6fRhcOJKrRrrEqvCGjCN1FfPPIKV5yqQXBGQFcFwYlnnjOUVS
 Dk2xf6u4cpCWD71/ZTRNiF/2LapEYf/bE8qSbQuXmSa8QbIlad99e5Q8FcBaHMWqoAo/4SfCclF
 O+xgFrJBtCTgAj5RcAbQhXrGm8FYMW/xBJ6F84Wuih93mrSMtynDJGReucSkKmmOsS5a+KDnIYS
 SXTrOzMJbWwp9zFqUCQqQD6mls7ex+awHCwLB6IHAR7zP5rLVcIwi0FyGpK8aBR7vm+sbDjR/BB ao3PJSGifo7OcRQ==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: tXaZ0qpEQ764VQqk_FnqdecqWzenB3ea
X-Authority-Analysis: v=2.4 cv=OrBCCi/t c=1 sm=1 tr=0 ts=698db4de cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=Eb9f15NH/cHKzfGOmZSO4Q==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=gEfo2CItAAAA:8
 a=EUspDBNiAAAA:8 a=8f9FM25-AAAA:8 a=MtJbINxUkvSn3TFoTc4A:9
 a=PEH46H7Ffwr30OY-TuGO:22 a=sptkURWiP4Gy88Gu7hUp:22 a=uSNRK0Bqq4PXrUp6LDpb:22
X-Proofpoint-ORIG-GUID: tXaZ0qpEQ764VQqk_FnqdecqWzenB3ea
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEyMDA4MyBTYWx0ZWRfX0Jna5UkZtjPf
 8ylKjmKBAhd09tIeZRqamUBaGZQu9v3+uRYqrERKemK0xvAFmr4JhwJ1U/lGzMGh43M64WCUUTx
 yTZMwIPaqCeCBZrCZPZv1ltFRtsNDcQgy3sPCd73oLZBHi6y93iz6+1POkWJIx4zTcaTjGkHSun
 0qYJsnqHLoidSthPzIDUYnNBlsfd2RhsIiVV4W8/vo+G+VSu+en7fQW5lPuf9CZaodo+YDtgEVp
 /gWfTV2ZIS/Tuu5JPmlGt+TG1YsNJSAT4Dn0j31jZyuFUoITD66nQ7MlFawkaWKJTuJoFgDqWTD
 XHJcvaLDTt7JThEGb1yqUhPxarBi5NX5shTilD3b2e6l5ojN9XEGmJfuKBcBaCP4O4yjK8x/7EN
 PQtt6IngYroGgtmaaLGv7bcsih/lXbeKDZD2MLQ8ku34+iWKrR2k50NuDPg4wE3f/OxnMI+at+y
 HLnDmwHCgV62Ep1b96g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-12_03,2026-02-11_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 bulkscore=0 suspectscore=0 spamscore=0 impostorscore=0
 malwarescore=0 phishscore=0 lowpriorityscore=0 priorityscore=1501
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602120083
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265023-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: DAD8812CDE5
X-Rspamd-Action: no action

Group/anonymous mailboxes are not accepted for bindings maintainers, so
switch from such linux @TQ mailbox to Alexander's email.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/gpio/gpio-delay.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/gpio/gpio-delay.yaml b/Documentation/devicetree/bindings/gpio/gpio-delay.yaml
index 1cebc4058e27..b99ceff6c5f6 100644
--- a/Documentation/devicetree/bindings/gpio/gpio-delay.yaml
+++ b/Documentation/devicetree/bindings/gpio/gpio-delay.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: GPIO delay controller
 
 maintainers:
-  - Alexander Stein <linux@ew.tq-group.com>
+  - Alexander Stein <alexander.stein@ew.tq-group.com>
 
 description: |
   This binding describes an electrical setup where setting an GPIO output
-- 
2.51.0


