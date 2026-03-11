Return-Path: <devicetree+bounces-274206-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OGBPDnuPsWnkDAAAu9opvQ
	(envelope-from <devicetree+bounces-274206-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 16:51:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D354266CA9
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 16:51:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 82A753076504
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 15:50:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26BC936D4FD;
	Wed, 11 Mar 2026 15:50:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hEAPOrAP";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="W/+PGRqx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C77C036E493
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 15:50:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773244208; cv=none; b=CGZpww4X/XJDB4Xa1BD6qziQxdKiYdcf9/rBNzVbf5C8CHNnIbfZ/Fe1Ecx3X/aF6o8mjsgqMrpKe9w1PPaYdBBLlMsCWFrh3pkqlwN7k6b7+0a5iTJ3u3Giq3MIoVOoSDeTazL+/oEls+qfbICTWXVeaxFGQZY3Pb7Qv92FXNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773244208; c=relaxed/simple;
	bh=RnYZxOGsa+mCQhaXimkmXMcqyAGJ/zUTqL1MBZy9xZU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ZQWXOybUyvtpiMRypAlpmpa32+yKvKBQWf62HIjg9e7gSL39Vsh7uXzl8YBj3Bb2LjLa+KcxBhKtO40jSJP57UnuKA6te61+tICYXBN+UhlbHf3E6CGLnHt2rtiBAqRVF8s3/sPlEVinV3gSgzKuwjpUzcNlDNrmCiYz2njDrnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hEAPOrAP; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=W/+PGRqx; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62BA5d1o294270
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 15:50:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=n0zBKnpre/A
	VifMQIjMP6sp+9Bc+YCFuHJyoCZtCgTs=; b=hEAPOrAPW1i03yZZKc1uLUc5Mc8
	jCitr5K900sVwctNz6ouq2oXEqXcY3ofCBsLe122knmkJ+t1kIseBcT3c9EPsNC/
	4y256W+vBzru1GxmnvWWTAGsSFu1bdkaxezYWOEauwCn+G1rLjyEzCY3YJtJd6xK
	xHgKqbjnvCPMjXr6IEuLzucOmhUeuxW3Y+TNQjZU24KK9hXYFgRkvIqpGcR4MZRj
	AJ2WAU5qAuiAq2fkXyuf1zlehFczbgbdWl2mpHSYPsAb4PlK5kdafziOlg7MHuyQ
	I+lI9njMwSgyc3PsP9KWDwverFX7Ud/N5oz8qDrm/5OG3xgC77onyeWmNSw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cu6bb9852-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 15:50:06 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cd81be6f05so2179291785a.2
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 08:50:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773244205; x=1773849005; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n0zBKnpre/AVifMQIjMP6sp+9Bc+YCFuHJyoCZtCgTs=;
        b=W/+PGRqxlJ/ziJ1/KBMbQEROOowExLeexkrd+h5iHjIHa4e3cZVCOJqqsBSuhMt77Q
         s3kYbKcw/5G7guII+15Kt0CSNlS4HagWa5EGSkHh6XcuQCLVJphsUkH58jYWyHsstQtz
         NgKVk7XanL1rW5qKHNarZsPzqGp9E02rU0ye0hZIYUdhVAhQxqmSqCySWxS7mzUme3Ft
         Z49lembO/cCdo2Dx6wlUSmRkKx7x6Ee+/rONkeZEE1oU/J7zJ3JsDQogULtrh4MRW4/C
         Pdb+8nEh+pCuO1mu9siw5304dLPeXnRD2adLpWmHooKoENH3uCey397mdFA1n447K6y8
         A1qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773244205; x=1773849005;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=n0zBKnpre/AVifMQIjMP6sp+9Bc+YCFuHJyoCZtCgTs=;
        b=qn0bwzwLxIMOWjq1ztip5xHmWEnC5E87YPvivJ0YzlsnhnZvwiIc6ZMGuHzoBmT+6O
         cUDXaFQl+CgWEtzJOA12ZUv2ttEC9ccY2iRkGHTi22VMl9pYUwUhLEzz7uTzFfqVBOVu
         bTjCkU+2ujCg75y7EK/F9WczA/RetBw1Xwi2JBpV3LXyK1NRCFhdkRa2lkeHoW2Q0eV8
         y7EJ/H38A8cKHRgQ3mTFQdKkrE/akl4+mWoAIludg8m0zjc3sxKjI0vmZFInTD5hwO7C
         EdrYZw7UFCAPjZBDwY8Ln36LqVxoQOA8Nj7BohfsbTFMnkhwZsFWaDDLswbthK2zZ4aZ
         Ax7Q==
X-Forwarded-Encrypted: i=1; AJvYcCWY7ItJfFEKx1MlTHQ9Bzga1wuk6uSH/xyU9TcWs//YvuLm5EGfsJw1bXRl2bsUsqCpzHbiY/NXhY7k@vger.kernel.org
X-Gm-Message-State: AOJu0YxqK8K1lXKqUw+E65rdcFmXMpyeFwcyLr+l4DYgXje08EmFPCSf
	vR2B3BYGX6TurlcARiDYeeOSOE8a4xapsZv3avOd66dtOWahG0VyTA/0zawvuBPH1pU+FQQd/zN
	8Hw3WvpTTx0bDkJ85Gx9NS0DjNG7IRdDlxZCb6nFjMDJMZJh0mtsdcrXYCUZeX36N
X-Gm-Gg: ATEYQzxywyK1QgCeJJfPEFA5VmMrk1hJHWmHtITVNOc8bi4guJCEGNzK1uTO6sN5+Yq
	HwRDJ6Qjdw5T71e5YRBARcPAvNjMUdY2gfvCGn67QUDEnI4DoAlwYqd3RmFjomUT6PF5uk/R2DK
	uvxbzk095QJ38+xONDyS2zThwBtw+GYYuvkU05God4vNHVTgEYoCCHL7kcaWAAHbBrqAZgFAt7A
	ELVVjoMSQ22OiAaSWWsCzSLlEavh9YokuchWMzDTe/LJq+OcWB8fs2Xjmn72WV4hMFzlZqm84LG
	lj5uMk7NcodQRjodK3QaL6dtH1C0JCikn/PtajegXentuSqcnO2T7pvlxDAYLrUuGGzYvPssVZw
	y/J5N1Uytbwu2lRZPlCPUDo890brmjM/rHaFJ
X-Received: by 2002:a05:620a:45a9:b0:8cd:7ba1:cb with SMTP id af79cd13be357-8cda1adcf02mr363894085a.72.1773244205124;
        Wed, 11 Mar 2026 08:50:05 -0700 (PDT)
X-Received: by 2002:a05:620a:45a9:b0:8cd:7ba1:cb with SMTP id af79cd13be357-8cda1adcf02mr363887885a.72.1773244204626;
        Wed, 11 Mar 2026 08:50:04 -0700 (PDT)
Received: from quoll ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4854b0c678asm25127285e9.13.2026.03.11.08.50.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 08:50:03 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Richard Zhu <hongxing.zhu@nxp.com>, Lucas Stach <l.stach@pengutronix.de>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, Jingoo Han <jingoohan1@gmail.com>,
        Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
        linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        imx@lists.linux.dev, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH 2/2] dt-bindings: PCI: snps,dw-pcie: Drop deprecated reset-gpio
Date: Wed, 11 Mar 2026 16:49:57 +0100
Message-ID: <20260311154955.145120-4-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260311154955.145120-3-krzysztof.kozlowski@oss.qualcomm.com>
References: <20260311154955.145120-3-krzysztof.kozlowski@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1538; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=RnYZxOGsa+mCQhaXimkmXMcqyAGJ/zUTqL1MBZy9xZU=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpsY8kxlRmURdHdtI8/0HVlJa7uUHbEQraOatEn
 +8Kw/6+6XeJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCabGPJAAKCRDBN2bmhouD
 1wgND/9pfGkjEbEGF6IrwzNP4yJ24xfxyBFJUjvptxx/Sy6yznYf5jGO2gGp2gKf6eqFuP/4MOu
 Pt4hYMKECVRn8Xd66fqUavLMHj3DO2ws09f23c7BQ/zYs6hS1XU3Iv+dMsUZkFI3mrEwzf4jNAP
 dVaMhL6WiYPW7WfyfdVVGUep+phznFD51bSL81AmGlePRnwQnEuKwG1cJNHQMzoeCFzUGf7MYAh
 weRp6YL/+8mU9lenv4I1BZSn3QoTxnOS1pZqT+9bXFtKEytBTHQNioC8paw/50soFcd96P38vOI
 5KLims1oV6kPqPJyS1qcjzXxLUl5WNoeLgmRccv5LLKMN0nymWYRGz4JoZ2GomridKt6Uz019Aw
 lYuZZwAPPU6ZYrmtwKPXsz7RbWIqI3f2xXJ22YAV6rmKwYizQL2I199UtiTB8ApSboh6+s+iDuc
 O0/cN5NHgI3x+99M+NpaYunGdL6un/erDicM454JieZT6+qE2j3UkLWEJ2o8f28b2cxVy4OqZgP
 aoM4ORtYHorWhHo5GSGveVQtisdIT+ozV3Cq8k2WiQvW+mpXz05o2gArmjQG7vD/9oupKhnwqSR
 ahYcxMJ6JCHcQBT+Pl/0JeRK5cgjoZI8Wza/4/7ww3+erA78/AL891X8rCM9QYUOXrN7RUXl4oP pRypIFiHNZzQ/VA==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: KcyK-_GuRvgAnRR6B_bNwKxX5QqQaQci
X-Proofpoint-GUID: KcyK-_GuRvgAnRR6B_bNwKxX5QqQaQci
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzExMDEzNCBTYWx0ZWRfXzv/XBN+dlSU7
 tPUHVmlW6+qE9wPiT0uMOnI9Bivz2jduvcAR0QLKP1aUtbqifjphwFx3V51bOthfBGMX7daNRxD
 T0zWYjpIm0gFBjGNZojBlnbM7dq+oF20voh7lel1G+rIUuarFj34hmGX7kuInN1XfUrA3jmhLJP
 cxqLmvXjizxmy3zKPdQ22rcBaGtLQQlqSwBwbcWVULrbx++BqKlywtJ5gXI4GsoulGjgyFUZUO7
 iIHOoYtx19MeTr9NFwL7Jg2IgH813sHrHZg+rfRbl80X2kgtQoKv4QR1Mwl4E2NrnEUia9YZkd2
 qtt5QnLSLDGJ9+gEQ9rST2YLFhyX+wAdWgbRS0VA3KfBhm0A7mC5tvamUSusZ42edJUwu7K4PMI
 qqN8/Bcn/R5Igx4+xEVx0OTVfEZrDt9lVOQY7u3gprjZudLlII6LXZB9413e2yLSRCCoUlypsW/
 2yTj2Ov86ag7CkLbg8g==
X-Authority-Analysis: v=2.4 cv=CKwnnBrD c=1 sm=1 tr=0 ts=69b18f2e cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=EUspDBNiAAAA:8
 a=BpcZMUz7IwU92FFy25sA:9 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-11_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 phishscore=0 impostorscore=0 spamscore=0
 adultscore=0 clxscore=1015 malwarescore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603110134
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[nxp.com,pengutronix.de,kernel.org,google.com,gmail.com,synopsys.com,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	RCPT_COUNT_TWELVE(0.00)[21];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274206-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 8D354266CA9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

GPIOs with "gpio" suffix were long time ago deprecated in favor of
"gpios" and this particular property was documented explicitly as
deprecated since commit 42694f9f6407 ("dt-bindings: PCI: add
snps,dw-pcie.yaml") in 2021.

Linux kernel supports both variants for a long time, thus listing the
deprecated one is redundant and instead legacy DTS should be updated.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

---

I will fix DTS separately, so after applying this patch there will be
bunch of dtbs_check warnings. That's expected and fine.
---
 .../devicetree/bindings/pci/snps,dw-pcie-common.yaml       | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/snps,dw-pcie-common.yaml b/Documentation/devicetree/bindings/pci/snps,dw-pcie-common.yaml
index 2c4dc04f9984..deba46d7a924 100644
--- a/Documentation/devicetree/bindings/pci/snps,dw-pcie-common.yaml
+++ b/Documentation/devicetree/bindings/pci/snps,dw-pcie-common.yaml
@@ -209,13 +209,6 @@ properties:
             - pattern: '^p2u-[0-7]$'
             - pattern: '^cp[01]-pcie[0-2]-x[124](-lane[0-3])?-phy$'  # marvell,armada8k-pcie
 
-  reset-gpio:
-    deprecated: true
-    description:
-      Reference to the GPIO-controlled PERST# signal. It is used to reset all
-      the peripheral devices available on the PCIe bus.
-    maxItems: 1
-
   reset-gpios:
     description:
       Reference to the GPIO-controlled PERST# signal. It is used to reset all
-- 
2.51.0


