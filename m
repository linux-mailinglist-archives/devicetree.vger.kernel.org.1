Return-Path: <devicetree+bounces-274756-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +O1xB+UJs2kMRwAAu9opvQ
	(envelope-from <devicetree+bounces-274756-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 19:45:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BD6FC277454
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 19:45:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5E039311AA22
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 18:43:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30FA63FFAB6;
	Thu, 12 Mar 2026 18:43:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kbnKF/DK";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DFWI185W"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A11F03FFAC2
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 18:43:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773341037; cv=none; b=QyLgTyu0Vw+0hUOjnlRXBNXwklzggMvYICKKz68Fun3SQ2zrm8O7jnop0QJtNpmmPbg8XwYxoqcBAmsocgLFAWptDK3KxmqElDQcY29hu41dLj2tkYFp6xmtdKR93LKARgCHgsFl/cujf2KIYcolY+tedGB5w5Gsku3vpZlGSGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773341037; c=relaxed/simple;
	bh=DdlRRjHSsKghe56p1ojk1muOX+5Hck51Wqoa815D9zQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=uMwxWlGCoOKfD/YuWGcOdjDqv2EokF1FF3JAxzbY63vzAba50B82eWLPeS66jLAsWg1YKdKKHMugnpxJ/Qp3vMNUu6PU/Eh+6/ttjaS0NAV+7vY62lnk295SeoK+tBNPwWnuxEz+5gsdquCaceLcDiYCGEo9jJ+NzNhEkFi0hI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kbnKF/DK; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DFWI185W; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62CDK38C1739727
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 18:43:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=Sl5THP5oQDl
	We4OrVbHJJ8rYnqB27vWU2fGTtY+H4so=; b=kbnKF/DK2YY5omo2WQ2ftk7Ila5
	tGwntnyO4j67sWAWAhtNFAwObx3w+bsFcj3B19hkh9f7IroyhBh634JqVpesALfi
	U8TtQUII58JotMx/3TvZVFxMKtz6aEAsmy8qhLAWfG0X9n3yssBUxeXxtV4UQQDX
	WTX/0VN6HWtxuKgGI+CLQkKT/DIGnu4tXc78vWcbTTiHNwMRGZKRzj9OPO8xmJ3H
	FkTJJzLWCRIWccu5wHqJ50MIGRTQ7f2K9rGXit2f7yQyXPITgNykkZERXtf1XOf8
	G2BvDK33NpEBLnAXJfF/O19Xp1sDFqkIQvUfpIW0qRpuvjVqU3cIKNy/5RA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cumvdjkgk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 18:43:54 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cd773dd39bso978672385a.2
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 11:43:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773341034; x=1773945834; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Sl5THP5oQDlWe4OrVbHJJ8rYnqB27vWU2fGTtY+H4so=;
        b=DFWI185WwYO6ks4TlXebTdtmCA8DAs37OkKLvuXLZiAaib4K3mUojtjm1WB3JEas7i
         9mrhMXywVZgbqYpIgu/Z7/i/vEpRkaMwi3DsAgmNGDJoL59zNFezf0RSjyj23aldgrjr
         DIepSiMss+d+Dbgsse8gc/RxGJgCBOE9KeD2PGkzlrjS41cC7+ZzbiXtL06ffEJBudfO
         O3irXA+PoBz9Hf9Q22X0by+z5VwWdKy8J3thApr6Hb/p0qDo2VrjylmZQmV7s/btu1a3
         QRpDMLyPz90YLHdzuudPtN5n1kUJU889Plngq9fzooKlrZcp2BTZ6vH2wt5VPxgc7CGW
         kOlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773341034; x=1773945834;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Sl5THP5oQDlWe4OrVbHJJ8rYnqB27vWU2fGTtY+H4so=;
        b=C+JrROJVWI/F/TDVTau2u0StUd4QGXSJpGtvhr5C507Yfjzn6/5IiVOCRWHkAmTOUP
         C7JT6xWRMpPdg0Ki9jnrfY5j4w8Ky7+Q1jxfXnB08r9j91m07IEAEzafyjhk28qV8aOv
         k2PYcdsLauDyAji4NYu8AEwyZhXzZdmkDH2Ubo7oxU5vDgmCkEYVkhHdlsvuYODW2rYv
         O2TU/Lt34B3B3AuFxq3Qs36Y2TPbu02mkYu427uKhvvXEMoTbos6Y9F1WHwCTtoUxWQM
         hjxhayA6JkiTYNpzMgoSTQOU7ThnNAwn5cnDyYT2MtS8X77jkm3XSzwZ7fW+odQ8bXSK
         CQSQ==
X-Forwarded-Encrypted: i=1; AJvYcCXvzFW7yLP1NH3nbBHFGfrnWMqzGzOyYNiQroPXonrZm3JnuS22qaLCT0ak2jfutvYIkkK3EjxvhSiS@vger.kernel.org
X-Gm-Message-State: AOJu0Yzp41bQ0oea83uOaupBApDX2PRh/xbEkALMp+MGAVxpnomkpW6N
	dHJla+lOPplMb1gDsZn5tDjWIkHztwR/0jJvzIpStGJHeKxjUEO4Bfb1DEFFtl/8GZTHcD98uFI
	cNKHW4O/dKKemvuGGdGCcgug9IEB9jdmWbef9BVQAzibaocvhxy3PaTHEcVdWiGi+
X-Gm-Gg: ATEYQzy4N20hTOOUQCQ3o6FBx/L0cfYK84l1Fiei/+1osfEuYcMabTHpP+lrQVzt6Tv
	Z3cM3ZFTQAjhTtc//VAzv3i5HM1Sz1y2rzEUEf3KaP+giZR8Wpr/URGiN7gKka21V2GWsOwfs2K
	eCT+PJZUHxW4asGeNT4ho5LvbjZm6/PGW7vXH1JA8y/7cHyPBn+QYJB19OvimOwRYZLSEbQ3LVS
	Pq2Xc1QusadxTqJnfk2Qc51XkbiljaNxCtgjT+9iWF8UIeeUKDovoZmbAfDdIkdvldCc+LYSPkS
	jqk8YWFs6qp4HiD1zaTS4lRVyK/IjHMftenkYrtvSmIOU0B14BkFAr3jxhS+PT0G6dJ5uvXcP/9
	ON9QWOxoWvB2FkQEdZrG9N/2Gu2+l/YhVY+ub
X-Received: by 2002:a05:620a:468d:b0:8cd:97a7:a345 with SMTP id af79cd13be357-8cdb5a502afmr113838485a.6.1773341033875;
        Thu, 12 Mar 2026 11:43:53 -0700 (PDT)
X-Received: by 2002:a05:620a:468d:b0:8cd:97a7:a345 with SMTP id af79cd13be357-8cdb5a502afmr113834785a.6.1773341033452;
        Thu, 12 Mar 2026 11:43:53 -0700 (PDT)
Received: from quoll ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439fe20bbb2sm10005040f8f.22.2026.03.12.11.43.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 11:43:52 -0700 (PDT)
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
Subject: [PATCH v2 2/2] dt-bindings: PCI: snps,dw-pcie: Drop deprecated reset-gpio
Date: Thu, 12 Mar 2026 19:43:46 +0100
Message-ID: <20260312184344.42337-4-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260312184344.42337-3-krzysztof.kozlowski@oss.qualcomm.com>
References: <20260312184344.42337-3-krzysztof.kozlowski@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1610; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=DdlRRjHSsKghe56p1ojk1muOX+5Hck51Wqoa815D9zQ=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpswlh2i4ftdfXM9sNjnFhjkB7pkrSKvqkWkXJL
 W1ow3JuiSiJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCabMJYQAKCRDBN2bmhouD
 191pD/9PtoDiLdlDNOkBmmxPWhb8A4BV2FuXZY1kR0rpBVsnHsnIQ+72yby9Byb9U8e9yZ5g5K9
 IlzwDsGZ1STxkBzJaRchnr3PCHatMnWkFCgXFOEBHOLgx9MYxATivPQhK6C1NX0Vl9mqtHubLv8
 Jt3npQsQ4eRfmKLCvK/960Brafu0Kmr0KYA+pZhLmE9zpapr/qkpd4GTi0Z8x28x+ErV81pBozJ
 Ah5Z+khLFxGt3R4qtc6dalygIwg8UHpKpjdzxwNpApQxJ2bfE4hNSSQMED1KQDUtMXAOaHrAh2P
 +4iov9ifatV3/Xyz0GRN2silJf2Mh4kvljKj2LEdrM05IQWx4CbEzRflrX5CstDGLG5wBrKhBbj
 jM2PQ1mUwqGMl/UivkYWp6/mSpUQl3U5eACEpvsNOQAv0jAP/mD7IdSfCrnnWbdHaS8bYae4zLE
 ohdtSYcjV8QQrmqJgGvLgtmV+eOZt5NefPoaU6RNVajb8b+omYnP5eVPNlbXXudwvc6AcZDiuQv
 05V3vu6XE5/ftiXdtvpjqSPhxKd/jrBFOZhdiw3v81y/r+Ys5z/UziYbpBZYAAzVvHoZdT4Bhv4
 HjdewBVn/u59HflNQsshszxNGuhwcBERIVlkhy+aGbPGVNck0HxiugzsWYb8/lclNTn4/sfm4qZ yHKqzgWns7ReKFg==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEyMDE1MSBTYWx0ZWRfXwGeaSI/dC/4s
 3uNQ6Kqzn7XwV/ciAS3zlpkdKVZwILP12+UgIWLLRBspkF1ZdO//9X7WoIgMq+BoalbATeUps8U
 PjGlMcxBRiDRWdqF0tn7MjmAUq29r2C7DHm7Wd9J6pmZhRdbC0USFaZuwvUcYehBLXEKjl7o287
 8AEMjL+DfdlesG9zvyqBLh1l8PGfC7gSBlerIpsqwObwoRlrDQKwQvIDJmKBe6FKFA77UpE7KZo
 nvPzjx99qaewSbTpn+2TeWHDhB68LdgPOmleaNZX12et1uWsxS3MUQH3IFkVFE9eDFAfPwES4ZD
 aZmVTzJcwgTSTeb7qL8r7yRz1w70sDCwCHB6603fkMq+JWtYXR/ZpnmtmmywGFnn1LzXFlqpaE5
 ivMQ6WiK8yGxJCW6wQJUwRQaocHrGJcMWMGrsDWXGGY3BWoKH5fQqn4VfujDnyrsP9quwkEB4yi
 J0HOvmPkR72fLmosaow==
X-Proofpoint-GUID: IkrWjIyse-0zZnP7po4PdtBc3EbyKzFc
X-Proofpoint-ORIG-GUID: IkrWjIyse-0zZnP7po4PdtBc3EbyKzFc
X-Authority-Analysis: v=2.4 cv=XsT3+FF9 c=1 sm=1 tr=0 ts=69b3096a cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=8AirrxEcAAAA:8
 a=EUspDBNiAAAA:8 a=BpcZMUz7IwU92FFy25sA:9 a=NFOGd7dJGGMPyQGDc5-O:22
 a=ST-jHhOKWsTCqRlWije3:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-12_02,2026-03-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 bulkscore=0 clxscore=1015 adultscore=0
 priorityscore=1501 impostorscore=0 lowpriorityscore=0 malwarescore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603120151
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	TAGGED_FROM(0.00)[bounces-274756-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[nxp.com,pengutronix.de,kernel.org,google.com,gmail.com,synopsys.com,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: BD6FC277454
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

GPIOs with "gpio" suffix were long time ago deprecated in favor of
"gpios" and this particular property was documented explicitly as
deprecated since commit 42694f9f6407 ("dt-bindings: PCI: add
snps,dw-pcie.yaml") in 2021.

Linux kernel supports both variants for a long time, thus listing the
deprecated one is redundant and instead legacy DTS should be updated.

Acked-by: Richard Zhu <hongxing.zhu@nxp.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

---

I will fix DTS separately, so after applying this patch there will be
bunch of dtbs_check warnings. That's expected and fine.

Changes in v2:
1. Ack
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


