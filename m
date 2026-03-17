Return-Path: <devicetree+bounces-276661-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4HzTLrNJuWnG/QEAu9opvQ
	(envelope-from <devicetree+bounces-276661-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 13:31:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 364702A9EAA
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 13:31:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2418830869BE
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 12:29:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39A473C5DB9;
	Tue, 17 Mar 2026 12:28:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SM4r0HUm";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="RRiSYIbd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A5953C344C
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 12:28:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773750536; cv=none; b=K02SzMXVrljWpO5eMVboG+PiDDNBOyOgUikl66HMg/R261Vg1aUX59DLBM21l7gi5v8CHrh/g39NE/rEm9sTgZxOvURGV0vFT0aWs/xTN3wrd5Z1qfZXmYjLk/J20Hjr9q8tZ4VC8zR7wizWCZOlCWBoFko2fVTNE4v/LO052Ow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773750536; c=relaxed/simple;
	bh=beLP9xQ8edVP0L/QD810fokITTZ2eQi389EJpzARPWU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Unb/Vy2qNjRHc5dbrCsJ4yt/0c8j5keMOqTqHXIxs35TVbELDwQ5PmQqehxF6hFAYBjI28GxM9caTrwHEBKJw3WvwHIVvWpSqo3e+1WSwenSsEvI3vSZmt5SNwCQo0EIeO4F+vgad6RG3OmODjpjXbfkq7FCGJx22USxAndfZv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SM4r0HUm; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=RRiSYIbd; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62H9NwhX4022274
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 12:28:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	A5kszyOZLcnalHzZyZUpKk7BpGSA4l9C9fICDpudsXM=; b=SM4r0HUmy8dMm3Rr
	NSnmy2UN2ZLzv04dpef1LyqQoeCwrJmBvzKw06BvbCQztf6EjeD/M2T2EzF1b4hH
	16he+DAkf/ZYsrK7rWVF747crTwAs4kDop1ie7bkInzdiVW0HZmYrUWneHh2NQI9
	3RiACP9OoNRNZI4KL5dHWXkycHSLJ24dEQ1Dtux8DwzcKsrr1vuCFi23Z5GeRg5t
	3MzBubl9+Th2lXXm4nJJujSyH8VsPmt4gRpmobEATjYGkhNrF27qOdOBq0xAKGJU
	wSSjG0X3LJnusTBSOVWpK3ZujQeHprErS4Y2oEuFl0jfCN2f6hXXHpI4gmxR/DrW
	RmfrkQ==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cxn3fkp4g-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 12:28:53 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b630753cc38so31750411a12.1
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 05:28:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773750533; x=1774355333; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=A5kszyOZLcnalHzZyZUpKk7BpGSA4l9C9fICDpudsXM=;
        b=RRiSYIbdPDpTkWJvkJwZKKm2rjdbu2aVAeAcoKusvkfHo+mQ/EZjFv+ZofgWjBgcV+
         gjKdPtXgDMy/qcVKmhllxspAcIvLMLNbdD/gD9ie5nXJSEVs5HG4rkj0oL74G2ASaHuG
         qpBKPIUtnn/tPg5Cufz4iNpmwST2wNxk6zcFOMb00I5NvlNz3jfnwUzT8tOqRHh5aoNb
         Ths7vbMyiUJ2JeZcXIZGFEa1UZ1D3+VwWqMNACYQPjeex8aeHItcp+fhBBrjplTVxpsc
         9nlecrizXf0D20+AdVSRjVCIMYh/snE0SrzNG/xc8yRfjyhZcwRSUi6v9OA+hVX9gYEi
         G04Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773750533; x=1774355333;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=A5kszyOZLcnalHzZyZUpKk7BpGSA4l9C9fICDpudsXM=;
        b=St137yVmv6/IdvXwZb4+WkxyuDAV3dgwAqDdokO5bmNDGK00h2QKWGvatsgrL5yPK5
         1RnAO1NhDcbxGw64O5OdkbFPRH7i4/FYdcUx0/WHFENIjtZjEULAI11KC0E64O7TQVjU
         yRwcA49W36j8r9ISiaEe62xQiX79RAqR5pDZquFoPuPGrRTCX6v3iAME0WmLiQ8WIl1o
         ghc8Y5BgXHnMD7C9mQHbfyi4CBkaWM+44PYB5TNNuH8QBCOhm//bCg94yN2VHZDAbVP0
         gKoawazktRgt2GdPFtsi/uXPzg0Z4OuNMqIxMOs2K+1f2gzrvOXymSSMvoZmmFBJ2d9W
         ynVQ==
X-Forwarded-Encrypted: i=1; AJvYcCWeTVyT1aX82PVIwudoPoodUjh4x20ewqJOvrveNmPXh08RiWPZ4SqdXdB7le1MiTjUxpmOH8XsrSYk@vger.kernel.org
X-Gm-Message-State: AOJu0YzHxLNGuPN2oGjY0A10BvvRxLEntWLEBBhMjOftXu74Oo+ZR7TD
	pBS3ZQYgRAKOqwTXCtOgkWpry+o/pBBmrDRzSPEt2r+MftxNplXcntcphKuDiSJdrWo0OfT1pWm
	ZkziqXqRmFkTd+jKSRsaI3zQ1oGOEsfQfQQdtBId/162vura/KOERGirSF88YpbQx
X-Gm-Gg: ATEYQzy2YiMq6MfGQ/BOXxHIWq19U/xkPWF8tSXBVqk4GioTq7P5XNnkhHe486i2giB
	4aV3No2D50H1kcyl2bSiYtyJs0ijJjvqGO4URKH3ml0BIu12XFfAfoQTVa0s+tSNW9tVf4EzgwH
	JZrKhOlaOlRXIbNIbgrXPOuKHianQ+/dbGMV73rj9O/5AT9CgdZINyG6rZ5mu9CKERyZPX3OHny
	8+7srRH62YhKuEIf4ZZenU98+J3DWq3X1uPu0SCXMfeqys2M4tmeiIiZL0Z7RHks9jGl0mhDjz0
	IrRn//ubpGMJ5iFJ5cp41qYVmw8pYU5fL0gU4Beeo/Hr5ehqfBcySoNFk0I35CeYtIhVKETo5dO
	f2x3q6DMl3DOeQJUMfBfM6fFgXuaOJLBRE3lBMaC8cAOoaoU0JzXkAx3GIi4Qp3WuSPk+2gPBsF
	P4xE+nOCpBhmWAw3Lga4myxf4b8zlAGuWBGA==
X-Received: by 2002:a05:6a00:8009:b0:829:86a5:d31b with SMTP id d2e1a72fcca58-82a198d043cmr14174943b3a.51.1773750533028;
        Tue, 17 Mar 2026 05:28:53 -0700 (PDT)
X-Received: by 2002:a05:6a00:8009:b0:829:86a5:d31b with SMTP id d2e1a72fcca58-82a198d043cmr14174916b3a.51.1773750532522;
        Tue, 17 Mar 2026 05:28:52 -0700 (PDT)
Received: from hu-ajainp-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82a07340518sm16654056b3a.34.2026.03.17.05.28.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 05:28:52 -0700 (PDT)
From: Anvesh Jain P <anvesh.p@oss.qualcomm.com>
Date: Tue, 17 Mar 2026 17:57:58 +0530
Subject: [PATCH v5 4/5] arm64: dts: qcom: x1-crd: Add Embedded controller
 node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260317-add-driver-for-ec-v5-4-38d11f524856@oss.qualcomm.com>
References: <20260317-add-driver-for-ec-v5-0-38d11f524856@oss.qualcomm.com>
In-Reply-To: <20260317-add-driver-for-ec-v5-0-38d11f524856@oss.qualcomm.com>
To: Sibi Sankar <sibi.sankar@oss.qualcomm.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Hans de Goede <hansg@kernel.org>,
        =?utf-8?q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, platform-driver-x86@vger.kernel.org,
        Anvesh Jain P <anvesh.p@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773750506; l=1451;
 i=anvesh.p@oss.qualcomm.com; s=20260313; h=from:subject:message-id;
 bh=eJUFlWOASt+GfF9tcmOp5WNaFYI8meeurPuTUj+gCxo=;
 b=b3EcZ3VAERJZsHY31loUO2UH4JEhRprLOnvwzUgXLdb2Vxx+KZR86lVWU81dz05WJ6HBTXKvR
 r96YzEs8WFMC3w19pj+0ByGT1BduxvrXGwUokVtO8skYPQ3+A06eASs
X-Developer-Key: i=anvesh.p@oss.qualcomm.com; a=ed25519;
 pk=8o9EG7gkPe2Er9y9UVCx8MTdcFCwU8Pa54hBZPuduXE=
X-Authority-Analysis: v=2.4 cv=C5bkCAP+ c=1 sm=1 tr=0 ts=69b94905 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=gaXMZf0GDK_To7W6ZIUA:9 a=QEXdDO2ut3YA:10
 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-GUID: 9Nq0kt4TOrUPEGX_IP-xxgOf_fyYtXHm
X-Proofpoint-ORIG-GUID: 9Nq0kt4TOrUPEGX_IP-xxgOf_fyYtXHm
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE3MDEwOSBTYWx0ZWRfX/HLBw2IVxuLG
 oFizPWOKhP1/PY3MH5MC8JcBRJGbdY+QQvfiAhccPuqPMfm5BfMJitvpNCBXg8Y1tMfSCQCnpNG
 uDvzuvqMnIAg+bktHUB+cJA0Z7XWLqrqhroAXkcy/2+EjHjExcopgBC80tMHQ2d6JQELBno3UWC
 jxToMHdvgPRSyeyiyFwmzpW2P9wRx5J7Z42RxYrwgWOFCcMQvdAi6B3TISL1C5qAgFb0VTKjm/8
 SGSLl+QbOGyFCxmQxZtPdKvJcUHekuCyRVXY3Vfw1K7X4dTICgr+lmiIo2k7Fpa4BVjTmAPjaUY
 QuGkdoymlOIOl8u6dTAr2xCRMVfOZBuhlpKVY8yO15Lg24JhyiZlP/k3xM51X4Iop3UPvZymviu
 TO4Qbf2h6a2FYFgrV42uaKm2PEjbf+uP+BezBs3hoaOWCZFIJkwAVwUJnFYO76AMJp7y0OGHNu/
 fL7pE9vs+WzSNAu7p+A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_01,2026-03-17_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 priorityscore=1501 spamscore=0 lowpriorityscore=0
 clxscore=1015 malwarescore=0 impostorscore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603170109
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276661-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,0.0.0.76:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,4f:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[anvesh.p@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 364702A9EAA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Sibi Sankar <sibi.sankar@oss.qualcomm.com>

Add embedded controller node for Hamoa/Purwa CRDs which adds fan control,
temperature sensors, access to EC internal state changes and suspend
entry/exit notifications to the EC.

Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Co-developed-by: Anvesh Jain P <anvesh.p@oss.qualcomm.com>
Signed-off-by: Anvesh Jain P <anvesh.p@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/x1-crd.dtsi | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1-crd.dtsi b/arch/arm64/boot/dts/qcom/x1-crd.dtsi
index ded96fb43489..d523e7cea3ec 100644
--- a/arch/arm64/boot/dts/qcom/x1-crd.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1-crd.dtsi
@@ -1042,6 +1042,16 @@ eusb6_repeater: redriver@4f {
 
 		#phy-cells = <0>;
 	};
+
+	embedded-controller@76 {
+		compatible = "qcom,hamoa-crd-ec";
+		reg = <0x76>;
+
+		interrupts-extended = <&tlmm 66 IRQ_TYPE_EDGE_FALLING>;
+
+		pinctrl-0 = <&ec_int_n_default>;
+		pinctrl-names = "default";
+	};
 };
 
 &i2c7 {
@@ -1485,6 +1495,12 @@ &tlmm {
 			       <44 4>, /* SPI (TPM) */
 			       <238 1>; /* UFS Reset */
 
+	ec_int_n_default: ec-int-n-state {
+		pins = "gpio66";
+		function = "gpio";
+		bias-disable;
+	};
+
 	edp_reg_en: edp-reg-en-state {
 		pins = "gpio70";
 		function = "gpio";

-- 
2.34.1


