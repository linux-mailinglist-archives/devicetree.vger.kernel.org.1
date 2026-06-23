Return-Path: <devicetree+bounces-314841-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id fpOtMreFOmrc+wcAu9opvQ
	(envelope-from <devicetree+bounces-314841-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 15:10:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 206076B755F
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 15:10:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=lkPCSvDv;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=gmxS1Rk1;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314841-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-314841-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7ED0230EE8E7
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 13:05:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E6822D7DD7;
	Tue, 23 Jun 2026 13:05:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC6EB2D5937
	for <devicetree@vger.kernel.org>; Tue, 23 Jun 2026 13:05:33 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782219936; cv=none; b=N6PlFAGm61bl4QSMcKKIo+cBK7NYL4GGve4gFYk4Y1UUlE2xl0PH70nrSlbp9OXvu/zPVJ+A9hHC4HWaMMUXMT0mrqoi+lZa2sBYvPw00U9oC6VsAvinGxEiBgTYfMV66BV91XZrb+zH4VQqGvqQh+T6f7JVs88hpv/YcVBqr8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782219936; c=relaxed/simple;
	bh=smafLhLJEyw2iNEacE9cOrBfHQUswwkZ5s1LBtIJeG4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MMKl4+6VC3GL/pQojesobjJt2j02G4PB/v1JLB95WFPxD8ziaI9d69nru512XMsc/U67DHFTpvh68i2xUcr/wN7e4uXJNjPyuBSwXV7aNRK2PWW/FvWs7+FNPEd7haXL1rlriKkLhcwjZFY6Dul7Gok8RFjY4pBwliUfHS6O4Ic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lkPCSvDv; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gmxS1Rk1; arc=none smtp.client-ip=205.220.168.131
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65NBXo2O3668848
	for <devicetree@vger.kernel.org>; Tue, 23 Jun 2026 13:05:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XZEilT/cbhc2S9bM/NCuST9uY/pwrLjDS8ZeCvp4RJE=; b=lkPCSvDvwwAjFhnY
	jt5EWZNvC/9R+0phaE1zmAlMjMdi4cjLcOrPa6jBbJPq+R77u0BjByaaSZJChktW
	fsOkLJ9CvREbPk15y7AZCg7hQcINjO0Ju+OL4FNy6L2o8pe2WnAHfnxNH+6X++i2
	gN2IpOd1mymebpctIWUX3zm128lhKT65AZOyI7A3Zi8ryasBBSPD9+uLCKa30DFl
	c2GWMYatKuRUVGLu840XQBdNT65ZPVSuB5v54n34A11Av3dDQ8Qy4qAUpqO1G+tg
	r51E3JqILq4XkjbgclbxqVgmo8BoRqf0MyeU/MzmEt5Xs4nGCSI9cz/e75O03DOv
	MzHSSw==
Received: from mail-yw1-f200.google.com (mail-yw1-f200.google.com [209.85.128.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eyppyh2rq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Jun 2026 13:05:33 +0000 (GMT)
Received: by mail-yw1-f200.google.com with SMTP id 00721157ae682-7dbb5e586c1so115968607b3.3
        for <devicetree@vger.kernel.org>; Tue, 23 Jun 2026 06:05:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782219932; x=1782824732; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XZEilT/cbhc2S9bM/NCuST9uY/pwrLjDS8ZeCvp4RJE=;
        b=gmxS1Rk18MwmVbDHty5/rmzPsU4eKjpinXwhoLwHwGeh2H6oGvYyUNyCMzxRL0nYIM
         4aqYWAC0geWaF6eiAsisa2+CexHKFxGCGr7MWgGH/xAk1DvfLgtqx2Vsg/G+PBe0Brw3
         O4roPRaomCXV4IrEuBFT9T2RR2JjcB41XWm0yYfCUL02izJmWKx3SWFPGWagxYKQ/pYo
         v8H6FKDr44ztHwwiJ4u5vp+4o7UjhuTRJY7Y6GnTgDvApztS7SSv9wp9VbD4PiUmXOh3
         6gxyiiYLqBzr2HiE/TgFfkc1SEazTR8kOSnSVXZekb07sNdfMPbKkUGyByakebDYHTuG
         NTwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782219932; x=1782824732;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=XZEilT/cbhc2S9bM/NCuST9uY/pwrLjDS8ZeCvp4RJE=;
        b=WTatjLEAN/9VZ22AHIzeZC0IOibUe2JfHMjxDqljPMkVvpre7euDy9CH1Sjr6EI2Yl
         xKGO7dtlIZfObH3Z3HMIGu071jZDR8anEUAJFvuGmUvqjlg69U3IKZkEIgrmJqEZJDPE
         uphzy22chvYEbRAd8JScYTJDbGQ+U3f72W6/uuOdCiIAFbkj4inCX4oc0/Yyocm3UwOw
         AF/YZVHFqgbamxVSL4e2hUAYO9Q3aKraAFYW9LVoS6DLtUG9kAWWyiR4eOO8ZJ/NaUCT
         0HofCr65QAIqEtHNia5rKf50CSvnQInuUF+YUaoikHNGYcTcWthNlol6qVJhefjx+J0S
         ErWA==
X-Forwarded-Encrypted: i=1; AHgh+RpKPet1M8YrB5qjErWfrzhl4hPyMsxgiRbz1glDCW/FbetxaROeYNJE4ZGX1Gm6GFOdA6YkryCFM2dC@vger.kernel.org
X-Gm-Message-State: AOJu0Yzij6vhTUc0QgaoA0cWtOXVvjgkQ1JPE7qFHNs7/aoBuXYmtxx9
	weRfaFBntdwwqOYkzBHtNOyxM1cvyuDbd25aTuDHcPqlOdE8rMdWG6XfaQe7CaHlKbuXHXKWE7+
	PI/JMIebV8L/o8XExj6NmdtSY20jzXJo7NExzvh4bZQFDU/CSA5AIji0b+ycfRNCP
X-Gm-Gg: AfdE7ck2Tgn+hDiQfmtxqG+w0Th9ZA+8P5XXI4+EOP9G/At3AcV54iOhBjt3flD1sTn
	zaIRz9BkaHS9aEP6J3uVtQiACDDwoJ1plPJBpYiHLCxM9eBCdO/jJdAIfRM0yPoT/AcJthJVmo0
	x7YEDb8/n4WZ8PRvwmZBiMh7Y4JTgpNtZC2NmYfFQhmqx2L+z96oXjqECdRBb0uvBcL6cFZU7bu
	GPxqRRDcSd6GFVqcUJk/XWxMa1DqLzbQMgwXcPIAh0QtbXkLHkh/Efo/Xg4ClKxNYFMjw7hMa1p
	RfyDo58ENDwDWiHijin9i0TiKsa48OOYWq04fN/dx1+IKr4rGpfofidMRCP6cQFLiGGCdwsLd4Z
	VeTVpuerambisMPScVx8EfuyYevKnRVjdvDfrPi/B8bzb9kMCHz98xQiEDQ==
X-Received: by 2002:a05:690c:4805:b0:7fe:5866:a7b0 with SMTP id 00721157ae682-806df092f82mr22223147b3.52.1782219932093;
        Tue, 23 Jun 2026 06:05:32 -0700 (PDT)
X-Received: by 2002:a05:690c:4805:b0:7fe:5866:a7b0 with SMTP id 00721157ae682-806df092f82mr22222697b3.52.1782219931585;
        Tue, 23 Jun 2026 06:05:31 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-8025ffc700bsm44091127b3.36.2026.06.23.06.05.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jun 2026 06:05:31 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Tue, 23 Jun 2026 06:05:19 -0700
Subject: [PATCH v2 3/3] arm64: dts: qcom: glymur-crd: Add refgen supplies
 for PCIe PHY on Glymur
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260623-phy_refgen-v2-3-4d15983bf91d@oss.qualcomm.com>
References: <20260623-phy_refgen-v2-0-4d15983bf91d@oss.qualcomm.com>
In-Reply-To: <20260623-phy_refgen-v2-0-4d15983bf91d@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Qiang Yu <qiang.yu@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1782219925; l=1649;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=smafLhLJEyw2iNEacE9cOrBfHQUswwkZ5s1LBtIJeG4=;
 b=7Kd81yogwU1NAopdtPSSktTw91Z1Pmg1LdcC+9LflG5ab8B2OnAr8wt4npVlhUOgeGMPsSudy
 AXdkXs5nTVnDIItXDiaW6058DsfoTbCYjh5w1Y8PbXmcDlRxIR8jCEX
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjIzMDEwNyBTYWx0ZWRfX538PSMlj8pmG
 RMcCv3IwG5DrnpsgRcs/Gv65xr3NsBw33bKvG1wzxwUoL1d0Rpum2mKmifvoksfJ8mJcOj519z9
 ne04jEhW2Y3S9mhQoIOn9eXgetTwvP5hhazfqq+8krb+++/P8QSsKXxxU0eGxdTiURsK0laV7PL
 CdlIofZ1ss3xXatdHbg66X2o6+iCpYTcQDfbUGn3kSVa0op917TlPhdmDVqtjL/YH8yPSPq85LC
 QpyYGeYQzQzgd6f5vnFdIQVugoZ3aIpD1E5ZBVGQWrCnUxMZYVbPGYazSPyg81X7iaX1aNoeJXS
 aYfR9xS51itL4zNX4cF21pZCgL3QjwYeCM8l5Ecinh0bvYg7jXOR08yUjvkzv8Y/96TwsY+SFdv
 1qeUG80ykbD59lBkGG1n61QgrcgUfjU1zKp4h5/3cXtehLTQruu6DHxgageZaIdOkr1edojt7E9
 14Ggl6TICwihsNycT0A==
X-Proofpoint-GUID: IsKHsvopvaPYxN5jdvxTHGOZgeljBxc7
X-Authority-Analysis: v=2.4 cv=dvfrzVg4 c=1 sm=1 tr=0 ts=6a3a849d cx=c_pps
 a=NMvoxGxYzVyQPkMeJjVPKg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=KHiVlrKLFnca6Sl0sUYA:9 a=QEXdDO2ut3YA:10
 a=kLokIza1BN8a-hAJ3hfR:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjIzMDEwNyBTYWx0ZWRfX7IfPTJpOMvFp
 gPSP10Hj/tyKT6ybnWBENmu47VV5ctn58BmyAEnDo9Hy4eVvogubwRGakuWW25brV/ylO3/1zcO
 N92vNwFZBNP9FPIjdcFhFJLLbuwZ3Og=
X-Proofpoint-ORIG-GUID: IsKHsvopvaPYxN5jdvxTHGOZgeljBxc7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-23_03,2026-06-23_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 spamscore=0 adultscore=0 clxscore=1015
 suspectscore=0 malwarescore=0 priorityscore=1501 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606230107
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-314841-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,vger.kernel.org:from_smtp,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:from_mime,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo];
	FORGED_SENDER(0.00)[qiang.yu@oss.qualcomm.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_RECIPIENTS(0.00)[m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:andersson@kernel.org,m:konradybcio@kernel.org,m:linux-arm-msm@vger.kernel.org,m:linux-phy@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:qiang.yu@oss.qualcomm.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[qiang.yu@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 206076B755F

The PCIe PHYs on Glymur require a reference voltage provided by REFGEN,
which in turn is powered by two LDOs.

Since there is no devicetree node for REFGEN, add the vdda-refgen0p9 and
vdda-refgen1p2 supplies for each PCIe PHY node.

Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/glymur-crd.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dtsi b/arch/arm64/boot/dts/qcom/glymur-crd.dtsi
index e784b538f42e..bdf7db3493bd 100644
--- a/arch/arm64/boot/dts/qcom/glymur-crd.dtsi
+++ b/arch/arm64/boot/dts/qcom/glymur-crd.dtsi
@@ -454,6 +454,8 @@ &pcie3b {
 &pcie3b_phy {
 	vdda-phy-supply = <&vreg_l3c_e1_0p89>;
 	vdda-pll-supply = <&vreg_l2c_e1_1p14>;
+	vdda-refgen0p9-supply = <&vreg_l1c_e1_0p82>;
+	vdda-refgen1p2-supply = <&vreg_l4f_e1_1p08>;
 };
 
 &pcie3b_port0 {
@@ -471,6 +473,8 @@ &pcie4 {
 &pcie4_phy {
 	vdda-phy-supply = <&vreg_l1c_e1_0p82>;
 	vdda-pll-supply = <&vreg_l4f_e1_1p08>;
+	vdda-refgen0p9-supply = <&vreg_l1c_e1_0p82>;
+	vdda-refgen1p2-supply = <&vreg_l4f_e1_1p08>;
 
 	status = "okay";
 };
@@ -507,6 +511,8 @@ &pcie5 {
 &pcie5_phy {
 	vdda-phy-supply = <&vreg_l2f_e0_0p82>;
 	vdda-pll-supply = <&vreg_l4h_e0_1p2>;
+	vdda-refgen0p9-supply = <&vreg_l2f_e0_0p82>;
+	vdda-refgen1p2-supply = <&vreg_l4h_e0_1p2>;
 
 	status = "okay";
 };
@@ -528,6 +534,8 @@ &pcie6 {
 &pcie6_phy {
 	vdda-phy-supply = <&vreg_l1c_e1_0p82>;
 	vdda-pll-supply = <&vreg_l4f_e1_1p08>;
+	vdda-refgen0p9-supply = <&vreg_l1c_e1_0p82>;
+	vdda-refgen1p2-supply = <&vreg_l4f_e1_1p08>;
 
 	status = "okay";
 };

-- 
2.34.1


