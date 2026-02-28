Return-Path: <devicetree+bounces-269557-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4K9pH+zoomlG8AQAu9opvQ
	(envelope-from <devicetree+bounces-269557-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 14:09:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0409D1C321F
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 14:08:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3618B30859FD
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 13:08:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1235443E49F;
	Sat, 28 Feb 2026 13:08:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cthoOAya";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="OcViOzyL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D75FE43E483
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 13:08:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772284096; cv=none; b=aoHbq9jF8DpAgKT9cbv8Ode82Io0elN0xK+KSfk6tVzeHNRPx2+pBRWj4EJq+QYSUioNFQu+ULiZ58u3uu5vRwnsRgKPODz/RxhO+dYWizBrp2o2OntjQNwBQ54NwvqaakzGBJzm6NTfXjLQt9z3wZcasvDTuiLTEGIXygPZh5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772284096; c=relaxed/simple;
	bh=Q/lDzCFfoz7o0d2bixAcp4DT1a5uRJt035IylCNVoHM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=pgG9HfWv5vbXdnw2XVqmmCW72t/0tx4J2KlU3jGd9as4DYAyvzgYTODmGdhNLdbWAaJi0bpiLAwJsKWGArf0xV7i5e3BjHtA5zkUFxr0T7M8mfWmi3xgk/RQjIVDqnnZANNat31cqwTrSElCpuzsayD5oIcY6zgl4dCZTkrpTr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cthoOAya; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OcViOzyL; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61S90EqL2683949
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 13:08:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	nFY9+6enFZK5xuHj2oPgKyz+u6es8jR0FaoFlkjjDgk=; b=cthoOAyaxjdK2Idp
	7DxeTAhn8sTk0iXcRmzlDvMjvtnEIfNVDx1Q+aDtF0Pk3wrAfZFPr6h4m1zJSIYM
	FmQe8J6+JYxPG2dxMBVCyWZSldcM2LWMravqJg3iyWQeTTa9uQS+Tq4KA3gM1yrZ
	7h3TMKxzO7hRgIbXuzZ2UgwC8dgK2Ko60e6/IhCQklIHY5SWJbv6BlVc1UdWiJL8
	njVtX2rUk+L1L+iKoY5amYIACvz/pq7nFSm/QkFlU+QWPHx/ZgXLPdfoueVKcvRl
	naFewU3+6yq3hWE7EW+QboV4R2eH0X8lW0988cpESg6hMcl6uh91sRFsfodTyq3N
	JdNNJg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ckshd0y40-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 13:08:15 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2aadeb3dee4so186543845ad.2
        for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 05:08:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772284094; x=1772888894; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nFY9+6enFZK5xuHj2oPgKyz+u6es8jR0FaoFlkjjDgk=;
        b=OcViOzyLjGQerE1TWO5sGErA+h6GjbFAD1zNaRkaVBzj0v77PuWxc/uu+/+4KFqTCc
         41a67xBeNNWLtL92YKHLzA5ccMDfK4nBa8HhHHEKzU6BLJRtMVDKnk4N528CUbCFhWLK
         BQmrDVN5YajX7kjcJL1JGG7B5ivMHavIOSNVmuoEEOOQYPI8tI3HMVlRG9abfrcWiKii
         FJ8MFyVbLy+mM/c9W8tLxQ73TqS+uehtBnYVws9Xg3PJxH/tNgbDD+thMIWD+Xwn/5ZF
         I5NX1/0nSi2c0bI0ZyetGJGz521RyBShRZRT5rMnS7Xxwv/rNWguKDI2PoLzapdxV6SP
         Y9qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772284094; x=1772888894;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=nFY9+6enFZK5xuHj2oPgKyz+u6es8jR0FaoFlkjjDgk=;
        b=pNTpol+eDaksOiq6jjgrk0V/5q8/o+vmjqMFbXsskDZjdak7cXrobjRoFC63oJ/0Dn
         1o7ICMKsyVZrIKHXZ/2DyzU666JGRIxYcXrqvqqcLmDbDVDHU3dLX9hVvrFzmIB46v/b
         yZm2Gt+SMDD9OLO19cNacK0WlXAr5tuN5uoJlQ54ApBiu6uQf6ieVE3XyUZzjXdXRdOc
         Ozuphnfq09et2L6mTiX+HzjNxEO1i45lmEwpBiFBnyLbaj9QrkQmOjteCLmLvjbOS3bA
         S3TqB5qs7eo+BmcXgcZoUWQcpPn73PexYxVamExovKtekwuqoWqdusxvJCvFiGqqVadM
         G/yg==
X-Gm-Message-State: AOJu0YxPSfp9yIjq0whyXEm3Fl8CGYonq0hq4LShS6KmNnPqi2ktiVYA
	36axfZfP3R0pohYEMgTySR4OpeFnyixVQ8Y7um4Ar0sr7I3n2/bYtD4OsJKIBbextSkiEKNb/TF
	ttIx4yKdQGJShwvPk6UIdiAbDgcm3XuTRSXd4g9NrLhXYWy4A57/ZwWi2tEszJIK0AzoyKQxp
X-Gm-Gg: ATEYQzysRFjGVfZIjM2C/tUqQrTTWJS3zMRJheubYdanEbTOQBvFQnCH4lkCguPoj/7
	kO+MGFai7DBXM/n+QWBOwRy7VEQqRY1/0AnkCagKYHmT7Cw6Tyd5a/ohOYr8i8wG4l/guYW/2hA
	iZAT+xgYoibbWUGIjnh7CQ+9b66Ytq8ZD131pj6Qd4NCbCODjNDcvZO2V4Oazkjb8j/h74xUeBZ
	WbzwaO2YcH3t9HNSp8L7KfmqMUKy/AHllG2EBw1iyhicHeB8Uw91hc0gpxxDoy2rXLVfUdri9gp
	BOW6t6HjroApRGVh88vwOmYUnjGM5KrdyMvhHIq2ook2f8QLTN5m6pQO870EIFUUb+rxqK/Ca2G
	TN6ylOcAjqACSSPr3jXlYorofHdzvXAx/DVupmU5SKSPTlLI4Ha3AWVSR8BzJdZzi3CGjXBNBY+
	jD7E+sFVG3X60O9JfUUBNNUwegZKyNTF/AJz1SNlXZuYG48qN4T39JTVPr
X-Received: by 2002:a17:903:252:b0:2aa:f2f3:bca1 with SMTP id d9443c01a7336-2ae2e3e70e4mr68961765ad.9.1772284094392;
        Sat, 28 Feb 2026 05:08:14 -0800 (PST)
X-Received: by 2002:a17:903:252:b0:2aa:f2f3:bca1 with SMTP id d9443c01a7336-2ae2e3e70e4mr68961505ad.9.1772284093963;
        Sat, 28 Feb 2026 05:08:13 -0800 (PST)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2adfb69f996sm83947035ad.50.2026.02.28.05.08.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Feb 2026 05:08:13 -0800 (PST)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Date: Sat, 28 Feb 2026 18:38:01 +0530
Subject: [PATCH v3 2/6] arm64: dts: qcom: ipq8074: Add the IMEM node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260228-imem-v3-2-20fbcc1a9404@oss.qualcomm.com>
References: <20260228-imem-v3-0-20fbcc1a9404@oss.qualcomm.com>
In-Reply-To: <20260228-imem-v3-0-20fbcc1a9404@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772284083; l=1198;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=Q/lDzCFfoz7o0d2bixAcp4DT1a5uRJt035IylCNVoHM=;
 b=B1s2HLvCYKWyOypjuFju32HJBuqXwHo6u1z2v+Ic1UX3SOgkUblS2vXTnSP2kcJALePFXAFl8
 e5zACrauC38DSD4gzQN+cBRt0grA6FWJ6yjTt6UsRcIiIp8ziMVZCFZ
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI4MDEyMSBTYWx0ZWRfX4WTZCZ8YqNdR
 Im1w5Nw/i1/5UA/NSQSJ+nMt/MKVGH9XoIGBx3QYiTAEKKK1DB+3Sm90u+nb0qKbvGUOcY7g2YA
 l7xg/+YJPzH93A+Y4xHDYaq1j5JVT6O7AnGgJ6U+6Vgzo+Cd+wWSRboXu3O2qeK138HBhwiV2PO
 R06uZS/5sDv/D6cLnmy9TMfXJvtVOhDFGoXH+NV9TeZODHLuJSp7/KkHnCO8vblSd/EERTGKdnE
 nh/S6v2sUYsSX0iisYZPMmFhZE1JTzDPKQ7I+tRVbt4dSMOIStl9Lpc1o031c6Skz+G6psdr2S4
 9qRJBhwXW/oZZxUJHkVVUO7M0BfgpkPueamTwaG8cqaMSoFbdw57CMFZTF8PgoX+bT8q2BBG4wl
 l4kWcePAgR/EkgrsaN4ZBmDuLVq0OcHAFSwJfp7ty8o3Dr/E2B3sJtoW/kZbQ8B1mpiDqDIOnpT
 vSYC0ifLL1awJ8Nz9Pw==
X-Proofpoint-ORIG-GUID: 1-o9r4I0X77_pSXQCkoB6m8l9TmS82Y0
X-Proofpoint-GUID: 1-o9r4I0X77_pSXQCkoB6m8l9TmS82Y0
X-Authority-Analysis: v=2.4 cv=COYnnBrD c=1 sm=1 tr=0 ts=69a2e8bf cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=iL0243cPoFzEVPe9DKIA:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-28_04,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 adultscore=0 impostorscore=0 clxscore=1015
 malwarescore=0 lowpriorityscore=0 bulkscore=0 suspectscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602280121
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-269557-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[79b0000:email,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,8af8800:email,qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kathiravan.thirumoorthy@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_PROHIBIT(0.00)[0.131.57.192:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 0409D1C321F
X-Rspamd-Action: no action

Add the IMEM node to the device tree to extract debugging information
like system restart reason, which is populated via IMEM. Define the
IMEM region to enable this functionality.

As described, overall IMEM region is 24KB but only initial 4KB is
accessible by all masters in the SoC.

Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/ipq8074.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/ipq8074.dtsi b/arch/arm64/boot/dts/qcom/ipq8074.dtsi
index 256e12cf6d54417582a8b50e061f40719a4004a1..086b34ba7b09d68e24d2c1da28f303357ce503ea 100644
--- a/arch/arm64/boot/dts/qcom/ipq8074.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq8074.dtsi
@@ -625,6 +625,17 @@ qpic_nand: nand-controller@79b0000 {
 			status = "disabled";
 		};
 
+		sram@8600000 {
+			compatible = "qcom,ipq8074-imem", "mmio-sram";
+			reg = <0x08600000 0x6000>;
+			ranges = <0 0x08600000 0x6000>;
+
+			no-memory-wc;
+
+			#address-cells = <1>;
+			#size-cells = <1>;
+		};
+
 		usb_0: usb@8af8800 {
 			compatible = "qcom,ipq8074-dwc3", "qcom,dwc3";
 			reg = <0x08af8800 0x400>;

-- 
2.34.1


