Return-Path: <devicetree+bounces-258218-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id g9V5O+PKcWleMQAAu9opvQ
	(envelope-from <devicetree+bounces-258218-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 07:59:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 50705625C5
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 07:59:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 921474E028C
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 06:59:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 308EC43900B;
	Thu, 22 Jan 2026 06:59:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iZyv43Id";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Qcw/5kvb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CE79330648
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 06:59:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769065182; cv=none; b=j1auIXgFkeL+TYgmad8HBgX1DdGzWCaiitNFXxXnN2BiIl891qakfJ9ZAEXUmxUHWNn9XjZvkmvt4xfC0qSlv9kcUgy4vMo19VhcjDZYt5gpNXN1lZd8sLahQ3mOj4FvcmUJS8T9MW/+lEHJz3BftVrA/YSb/61s3nOm6o8u09Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769065182; c=relaxed/simple;
	bh=bh0u1bpVbwToworSpszb8hcjz+Pr25WbvlfBAL3qr5o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=iQZfwfZPliFrIaCS5nP6eKmsSHIxfT5+Aprsjm7Pv8FoH2nE1U9FIhj1QASi1q9He36TnwZs1y9101tPQc1PTIFJSbBxFlREbDwFFHeUcKg8KcqMZkNUJZkpo2O6hmlRepUmxdIQordSbnxGl60njHPn7JgWpWFt0LEYjkk9wHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iZyv43Id; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Qcw/5kvb; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60M5rSBC3902104
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 06:59:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=7pz7tYxOgVsNKayD/oohR3
	0r0S1TD/X1DQ+lgYpNCcg=; b=iZyv43IdyQGe+JAT+5tpDvurEzt9jqWCuxHdfW
	vqkKFY1hxpSkQ0HHoK7D5wgW1Mc9jzWEPq0luIWdSX/9JBTn0UXYjsS1gjN0OnNa
	6WY16hx085OVPxwXdetqy15wwju58VFA0B800665ZZRzWTw46oCrnDkv/e1ADX3F
	x+sPotQkTwANKu4wBhNNlFILOX+dIFnfbKc3uRcxkHwuWMblcVJjWsnilYVQKoIl
	sSHtgElMKjW47RAGcvK7tJh5FUy9B5WQtZ6QOBWgojJY8gp/pOhhXhxKRW7wTTXQ
	5vstM6V9ewN5cpMWZCcNaZ9wY2RZF6IDYPEAvfBUrhdoIldA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bu4khhsh1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 06:59:39 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-29f1f69eec6so5987025ad.1
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 22:59:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769065179; x=1769669979; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7pz7tYxOgVsNKayD/oohR30r0S1TD/X1DQ+lgYpNCcg=;
        b=Qcw/5kvb2ycXYG2b3gMMxz8gK86g79ctggkxTB5AwNviL3gzRP3T+/LmPX/i8I58ke
         IPdlwvgRhYRq8GLf8XpLkt5Yg0tbbkBeWxaSiOOcw9mhx8BXOXdmFPOMimllC2D854oM
         DQKwT9jelM4XyIWwEhUauent6s/pfmWxzoDjONs8LbdCJwNrhjqvpOtTa0rzTMGvJwtZ
         HORWbp0rDszcblbwCF6zWBBnuRWkUcjVpNf/J7okb2I/hcyO3MHSw4gTzI8LbmlicqPD
         DNsS5O8h/9Ot2torxufDhPt10pn7aCoie1M3kJH/Vn9cHENXodq/0BlPlN8IvNPjjBXh
         ggBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769065179; x=1769669979;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7pz7tYxOgVsNKayD/oohR30r0S1TD/X1DQ+lgYpNCcg=;
        b=CgAYtLLFxJ5EAUrY7B2vQ73uDYBd3awItxB6IW//qxtjbZuoF+j85BgpjWlnTjyV8Y
         uMyZQbAvLKJJ9YXw2v1f8yg3XGXX25TSixdRrLfFhXVM2gv6kn7aiJkMdMucaAgdA7x/
         ylIHG/o8Twn66um3d9WZvq8YKU/2BH0vr7U86hRGVbBbTgUW+lUDwa6hPzOe6xpls9h9
         0Y9fy2rL7cZLdiYe1yF7hTjCXvUl7OYAU+bf+ySk9EH2w0qUeSqMxhrDF1Y30N5jYIui
         l1l7uexaqBJu01yJV22RhGgqJeqwIe8WAZ2spEMo9e9CeU+uU41z2ScLjUQz5GqO7jy6
         VjtA==
X-Forwarded-Encrypted: i=1; AJvYcCVMXPvMHSmVzZp2NH49wbbreRz2GDwZaJx6rIcLPhkKGmOvnQxhhTqGyopFDbOSpPdCMn7Xf9YIUBSk@vger.kernel.org
X-Gm-Message-State: AOJu0Yw3kY2a6gxY1d88F5M1tY0bGJHhE4PT1llPB1hThjsRuC8ajc8W
	xlfSgS1/rR80/Xqdg+qYKTgfbYzBv74Ub0nG05778iW/5Z01lNUbfosWNOHmv6WbnBqQlCLY1x3
	qpCOSBV8ubi8jwp0ST+qJnQDuXPOqqo71fqV1CQ3svIi+EJtvg4yGCFLdOV+84bA=
X-Gm-Gg: AZuq6aIs6KzB4btEVkH5Nn1q4o4kurRvxIVeXXVNUt5YunyHvtRcgZK44UZ2gvMC88s
	Eigdk6BuE4aTr5mUGSTNG7F4+gFFif5p1lhUg6vn5pAJeGNaXJwL1fQkDRn+JJj4ni/pJbyMHFd
	lT6RTKrPbE2EiWQsRm3eQUwFlP8pHIKqJ+M9ikWeobN/ZivB57bYpNrWFKgaQE046TAcdtDWTFc
	IaJQHU++Ql1EC6yI9o3uSROIlqCin3FSxuPaMvbeix2iHKeGa13yZF0A5o5lSt+diZqUxfYlr8F
	35immDJ29bii/hwiuzU8TKm87Zh+PqvXYheh7l01l9PRm94fwC3/aBQFPD0Pr5s7B4zjngnAWWM
	0IY6htor7gDF2QWaP35N3JNyzzhyYrh+Wk7C+HSo=
X-Received: by 2002:a17:903:238e:b0:2a0:9402:2175 with SMTP id d9443c01a7336-2a76a389ca3mr67487395ad.27.1769065179005;
        Wed, 21 Jan 2026 22:59:39 -0800 (PST)
X-Received: by 2002:a17:903:238e:b0:2a0:9402:2175 with SMTP id d9443c01a7336-2a76a389ca3mr67487145ad.27.1769065178520;
        Wed, 21 Jan 2026 22:59:38 -0800 (PST)
Received: from hu-kotarake-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a7190abcf0sm174960975ad.12.2026.01.21.22.59.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jan 2026 22:59:38 -0800 (PST)
From: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
Date: Thu, 22 Jan 2026 12:29:21 +0530
Subject: [PATCH] arm64: dts: qcom: monaco-pmics: Add PON power key and
 reset inputs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260122-add_pwrkey_and_resin-v1-1-a9fe87537816@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAMjKcWkC/x3MQQqDMBBG4avIrBswWUjjVaSE6PxpByHKBFpL8
 O4Gl9/ivUoFKig0dpUUXymy5Qb76Gj5xPyGEW4m17uht86ayBz2n674h5g5KIpk4+E4WT8n8JN
 auiuSHPd2ep3nBR/L/aJmAAAA
X-Change-ID: 20260121-add_pwrkey_and_resin-9e2df19bfed8
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, kamal.wadhwa@oss.qualcomm.com,
        rakesh.kota@oss.qualcomm.com
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769065175; l=1558;
 i=rakesh.kota@oss.qualcomm.com; s=20250919; h=from:subject:message-id;
 bh=bh0u1bpVbwToworSpszb8hcjz+Pr25WbvlfBAL3qr5o=;
 b=iMNfaTUtOPU4KZCmDyN84roxvdiwXU3ngCqDgGFLF+ez/1QayWaeHdtqP0G2QXAdvONSBKI9U
 Ad5BqSh0qNZCZGhSRibcF/ObVvjJcLE7rJuC8PIYke5YSeINsTBu+J2
X-Developer-Key: i=rakesh.kota@oss.qualcomm.com; a=ed25519;
 pk=dFhv9yPC8egZglsSLDMls08cOvZKZkG6QQn1a/ofwNU=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIyMDA0MyBTYWx0ZWRfX0KJZir32RAW6
 P+TUShRZDZI7LLGFAZnEtcu3e9fDM3wnxJy0UV3vkyjPbKJ40lnvNIexjFlLOAAWfxUvNR1Ci8G
 SIOyYCKwDKkt9qtetdVKkSP1KRetlIkOQCWTtDqhN0rpdgRm/2HDvV6ceyX5rACO2lh+B4Fo6fl
 5aNZSNNRJJqQ/1KBG24eurYEcZhwBByRMXr2Syqwed9mxayn0FQjlCCQfERGgsDKTVB96wFlkc+
 KSCKYDtIsXOpLrmM+E3Ns3onc1Bk0QElOa7L0Sluhq7s1Qsz46PQn3vnAO7ZPgepItTPO6Tsvym
 RBJO1RaddoYvbY//DxQYusERo7Ymfva1vN8xrDx/Owf6WWqtAzqrKE1CwPHFym6TRIpYVTF6cdZ
 khA+8HsSAWtElTbFUr5aSTKlmQ7I7yY8HtH39Eiob0rYOfJYDsix7wtcnVX2bzSF/k5rD9y5QfD
 M8zyhObM7RTI5qnrdcA==
X-Proofpoint-ORIG-GUID: Kw7xVvhrfAsq-lazd4FgUuSuhFcmNHLW
X-Authority-Analysis: v=2.4 cv=UOjQ3Sfy c=1 sm=1 tr=0 ts=6971cadb cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=waYKtz62x7MdsOGo3IQA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: Kw7xVvhrfAsq-lazd4FgUuSuhFcmNHLW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-21_04,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 suspectscore=0 bulkscore=0 adultscore=0
 clxscore=1015 lowpriorityscore=0 impostorscore=0 priorityscore=1501
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601220043
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.96 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,0.0.0.0:email,qualcomm.com:email,qualcomm.com:dkim,dfw.mirrors.kernel.org:helo,dfw.mirrors.kernel.org:rdns,0.0.4.176:email];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258218-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rakesh.kota@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.23.212:email];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 50705625C5
X-Rspamd-Action: no action

Add the Power On (PON) peripheral with power key and reset input
support for the PMM8654AU PMIC on Monaco platforms.

Signed-off-by: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/monaco-pmics.dtsi | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/monaco-pmics.dtsi b/arch/arm64/boot/dts/qcom/monaco-pmics.dtsi
index e990d7367719beaa9e0cea87d9c183ae18c3ebc8..051407cd83eef8eace8521084b1ad012a5192ace 100644
--- a/arch/arm64/boot/dts/qcom/monaco-pmics.dtsi
+++ b/arch/arm64/boot/dts/qcom/monaco-pmics.dtsi
@@ -13,6 +13,26 @@ pmm8620au_0: pmic@0 {
 		#address-cells = <1>;
 		#size-cells = <0>;
 
+		pmm8654au_0_pon: pon@1200 {
+			compatible = "qcom,pmk8350-pon";
+			reg = <0x1200>, <0x800>;
+			reg-names = "hlos", "pbs";
+
+			pmm8654au_0_pon_pwrkey: pwrkey {
+				compatible = "qcom,pmk8350-pwrkey";
+				interrupts-extended = <&spmi_bus 0x0 0x12 0x7 IRQ_TYPE_EDGE_BOTH>;
+				linux,code = <KEY_POWER>;
+				debounce = <15625>;
+			};
+
+			pmm8654au_0_pon_resin: resin {
+				compatible = "qcom,pmk8350-resin";
+				interrupts-extended = <&spmi_bus 0x0 0x12 0x6 IRQ_TYPE_EDGE_BOTH>;
+				linux,code = <KEY_VOLUMEDOWN>;
+				debounce = <15625>;
+			};
+		};
+
 		pmm8620au_0_rtc: rtc@6100 {
 			compatible = "qcom,pmk8350-rtc";
 			reg = <0x6100>, <0x6200>;

---
base-commit: 053966c344dbd346e71305f530e91ea77916189f
change-id: 20260121-add_pwrkey_and_resin-9e2df19bfed8

Best regards,
-- 
Rakesh Kota <rakesh.kota@oss.qualcomm.com>


