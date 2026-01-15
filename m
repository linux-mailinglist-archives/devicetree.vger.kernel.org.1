Return-Path: <devicetree+bounces-255527-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E10DD23DDF
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 11:14:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3215930277DD
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 10:13:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8F2B3612FF;
	Thu, 15 Jan 2026 10:13:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UJSH0icB";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="OjpcitDX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 993BB3612EB
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 10:13:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768472012; cv=none; b=KDpX41UpMuFkcLENOM84hxwmXgyJzhgfgav+fFDjIYUb0Aw98r8hkqAjwYN3R/qZQT2JHogGOBB5xsbe2p4QB+eOBJeTChB1r6IQJsq+e9AJ8jEEjlMgz5qbsX9dlkR4kUYj1nCw4cYqcnDwpHLVL7jqlesPFwiSCzTB5vZM6MQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768472012; c=relaxed/simple;
	bh=IAlQ9wjSqjHi2sXh9LPkom3twHwIndc2QkvvmikUsaw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Z8RhQrkiH7gMJZPTVMUrgsNTnaCJrMe7KgY0hm/ThNO1LGoCZlIWKrOgaHLaosBlW/nwuB+z3CUJX8WfuUHec/4vsdURMMSHrIXcJuq5aMZRqLkcMtAZ3ZWmHLRYwPicUdbUZ+3XvsSPjZj9+HYUWZexsZ1JW0jmD4AFnE0ws6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UJSH0icB; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OjpcitDX; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60F6fxMS1851611
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 10:13:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+IAiypVbNNKr9va4u59sYj1IRIL4ZDpAjwidA5VMHVU=; b=UJSH0icBZG4JWex9
	IT6fMWUNjjDkVEGAU3dtiD/+ldFsmwWkdcV0JJ9MwrhxGqgH8xWCq2D/cBCeWYM0
	N1JsBfpn3p3WOi1ITzoRHewgHFfDQCXxfSgWDJ3BbLWQpDHfvNy18E1V9+ZXHXkh
	aTKTkHv9PTuX2IUhEdFymJ6fz6ub21towKGOd63vJ2hkaYRMnWj2QsJw/dlDTMHx
	woNEOYYyZKWNpzQrv0cei9oE7d67Kk4sTKqff85V03j/GQciSjfcuH40P4rlAbbD
	C35xArHk0HTX3h/qxI1aRwgDmwHfi/EuKDVIfMQEa2IExqeay3jZOi+TNS0nu2T+
	PT2CIA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bprej12h7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 10:13:29 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-890586c53e0so18585756d6.2
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 02:13:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768472008; x=1769076808; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+IAiypVbNNKr9va4u59sYj1IRIL4ZDpAjwidA5VMHVU=;
        b=OjpcitDX9J7FKkhTT25gKqOUSMtDtuintEIvSunHttPWyDdtuUyJa0Nrwv7DnwJyO8
         jzuAxuPnXqoqg2VAzvBa+TV7VuDL2oLH0icikvNDd1rRokeqK0JpufTAfGUXXl17F/Ea
         /6eI3FYMZ8QvCpyMM9IrH2SIXi3RRox6EsLKjCxsYLf1aK9JpXusq6DI2bduJeCO3v/f
         bebKIZ/W2e08frbC4Z+FaLUd4n3IOEFO2lF3KOL1aigCRIpVtm8NyNMdfPKUNZo7Bt1h
         v2HLbttiRZfuJj3isz27RDCdsJyyiNAoJm/0NQLCf+kklClLd69CO3UYiPH8s4j5bFJt
         9R6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768472008; x=1769076808;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+IAiypVbNNKr9va4u59sYj1IRIL4ZDpAjwidA5VMHVU=;
        b=EdkkR21SYX0H9pcbTeik5049g8Gl0Gov0ury95gbqsHjky9YCJS+aXD+mDUtCQoOWJ
         wcT0qXQocYy3Bd+T6Hdy4Hx9cPO58itgYILU1whUKmjwlLW7tOr1qL2qar9KSO+F5oqd
         eA3zwP5qI9FkElWYH5FfrAjjFUbzsApFpfrDxqwqVPaYqajjq+7jrzApkL2puZ4Edfi8
         UqIX1tzDxKRsq9vosGupasM8HIldpC8FpvCeRFM9VgvC+lYh7AY7Ar9v1wXHO4cSXBdf
         fhvtnnoE6DHPIdUAUsCLbu0l1KDFoU1jqaUlmd6EkmxqKemM9k+Ld2ScrQADzs0j2lKJ
         w71g==
X-Forwarded-Encrypted: i=1; AJvYcCVxcVyHANdK3WIK/N1MJXXFDS29Jc1gG9ZUB5hrqxyKTSGMyqZw3HqDXMuzUibIuAYKYIxmUTi5w5fz@vger.kernel.org
X-Gm-Message-State: AOJu0Yye64Ppv3Rh1u6X9c6CQErlBD9cpN17ATpnUS+QS/CwjY4cJrF0
	Rxk8wqVt9JUKw62qOeJuRHRIV4vVMmDfjmqi+aPxOs7N3VLloqLYAg/X3aNKk0kbVaa7akNniTI
	9O8hnOx/WK0qj72NtUEL7WpHbRwheABNo0VrpzRkSrTk/GlB5Afwa7ZqzFHZmD7Ba
X-Gm-Gg: AY/fxX4ErVopjqbH+Kk37cIFFkJDC3oUCJqhZqtdNqWkUCe2x3WdczKZu1S0AxNCXHu
	zMD+sD/oz16GyOzg/HNWTYqf+4a1A+PKrsDwXz90FJgF8s3xY484cTVe2j7KYFBbIg34K4+fcat
	51E8VgvGogmIhxmk6fMPaD1J6do8ivnICQkv87ulpsSLD844EdYKOAoGMO0ZdxySNerKPflvuTG
	HuT9VfzdXESXWCfYs4/eJxmLPd3wy8rHLOu51YMcCpQ92cSaiHz2m4498GeYBtQCp3GBOZ4hxAw
	qT8fXyGmPGh8gzukGGuqlCqW6VKU6pv2ze1Wr0WArhLsd9+nKTD26mYqu4zkDKoOZOww4Q5DDIB
	BJfR/USoWpS/UkDRd98DYjOdDpi2DdcNRgEJWnfX9uaBWUi/iQf8LeBLxMw0DOAt6j0GHPHv+VN
	RR
X-Received: by 2002:a05:6214:2b09:b0:882:3781:e29d with SMTP id 6a1803df08f44-89274362a8fmr76524496d6.10.1768472007740;
        Thu, 15 Jan 2026 02:13:27 -0800 (PST)
X-Received: by 2002:a05:6214:2b09:b0:882:3781:e29d with SMTP id 6a1803df08f44-89274362a8fmr76524156d6.10.1768472007315;
        Thu, 15 Jan 2026 02:13:27 -0800 (PST)
Received: from WENMLIU-LAB01.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-890772340b9sm199959576d6.26.2026.01.15.02.13.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jan 2026 02:13:26 -0800 (PST)
From: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
Date: Thu, 15 Jan 2026 18:12:39 +0800
Subject: [PATCH v3 3/5] arm64: dts: qcom: talos: Add CCI definitions
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260115-sm6150_evk-v3-3-81526dd15543@oss.qualcomm.com>
References: <20260115-sm6150_evk-v3-0-81526dd15543@oss.qualcomm.com>
In-Reply-To: <20260115-sm6150_evk-v3-0-81526dd15543@oss.qualcomm.com>
To: Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Robert Foss <rfoss@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, imx@lists.linux.dev,
        linux-arm-kernel@lists.infradead.org,
        Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768471975; l=2240;
 i=wenmeng.liu@oss.qualcomm.com; s=20250925; h=from:subject:message-id;
 bh=IAlQ9wjSqjHi2sXh9LPkom3twHwIndc2QkvvmikUsaw=;
 b=BRX2gKz6e8V0TWE0Qdo7jEe8nKdfVoDB1q0PAiVCcYJ53QlRwT4om8ubdmD3nmrj8eDbHrTdy
 Ui6NFJL5ESiBpewiWXg88g6rQbTsH0wl+pzV2SHQuyQA4lBIYCzWsTl
X-Developer-Key: i=wenmeng.liu@oss.qualcomm.com; a=ed25519;
 pk=fQJjf9C3jGDjE1zj2kO3NQLTbQEaZObVcXAzx5WLPX0=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE1MDA3MyBTYWx0ZWRfXyz7gquBq1x3T
 pdKaGNoq6pBtcdE1x+bnh3nhDgdr1SYqv84EZd4p2cUH/GNv6LMi5RTZSY6Gq0mo5jaM4tXJDKO
 56QFjB5GoMHMsKZZc6Gnkv3T9s+nsx/IfsSVr2AUnFMwYx9oQLO8zichYS885xj69AXFCWxi0LB
 J56i4Na1Bjr0TVWVbRWkRtUSmdZudSPfMGns68qw4aEz2CRRti+6PGKBnuqfxWZUOkhx3PJ3wQi
 Yn458y4TfVY6/GUeAA1wsqqGGrL9VG2EJiu9lPol9EbdwDkQctZr1DnW7ssjNhvll8VKm4ows/1
 YvJUEsB+YLSpgZhL5sBFuNSOa2zo3gXrC/L9P9f6cM6jXim/Ta35P54yeM8c1KKMe3cVVbINpTV
 AjYe9UHm8OTQnxrVAq4EhA2T37HUwdbGjCbNx72q0sYrz3D5HjvckLrD0bA11zYfc0J4V1YkPR0
 dl/irrSWimaeI3P8WdQ==
X-Proofpoint-ORIG-GUID: PlfXowhYMeIilVrehMelFt9twXJ0Y8Mi
X-Authority-Analysis: v=2.4 cv=Rc+dyltv c=1 sm=1 tr=0 ts=6968bdc9 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=RMWakvN5gFyazINGlFsA:9 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: PlfXowhYMeIilVrehMelFt9twXJ0Y8Mi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-15_03,2026-01-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 spamscore=0 suspectscore=0 priorityscore=1501
 clxscore=1015 bulkscore=0 malwarescore=0 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601150073

Qualcomm Talos SoC contains single controller,
containing 2 I2C hosts.

Signed-off-by: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 arch/arm64/boot/dts/qcom/talos.dtsi | 51 +++++++++++++++++++++++++++++++++++++
 1 file changed, 51 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/talos.dtsi b/arch/arm64/boot/dts/qcom/talos.dtsi
index fe59975d56d6e65163dc7fcce8e08c50fadc3786..162bbe353b62342478885f22972a816f1b60d820 100644
--- a/arch/arm64/boot/dts/qcom/talos.dtsi
+++ b/arch/arm64/boot/dts/qcom/talos.dtsi
@@ -1554,6 +1554,22 @@ tlmm: pinctrl@3100000 {
 			#interrupt-cells = <2>;
 			wakeup-parent = <&pdc>;
 
+			cci_i2c0_default: cci-i2c0-default-state {
+				/* SDA, SCL */
+				pins = "gpio32", "gpio33";
+				function = "cci_i2c";
+				drive-strength = <2>;
+				bias-pull-up;
+			};
+
+			cci_i2c1_default: cci-i2c1-default-state {
+				/* SDA, SCL */
+				pins = "gpio34", "gpio35";
+				function = "cci_i2c";
+				drive-strength = <2>;
+				bias-pull-up;
+			};
+
 			qup_i2c1_data_clk: qup-i2c1-data-clk-state {
 				pins = "gpio4", "gpio5";
 				function = "qup0";
@@ -3790,6 +3806,41 @@ videocc: clock-controller@ab00000 {
 			#power-domain-cells = <1>;
 		};
 
+		cci: cci@ac4a000 {
+			compatible = "qcom,sm6150-cci", "qcom,msm8996-cci";
+
+			reg = <0x0 0x0ac4a000 0x0 0x4000>;
+			interrupts = <GIC_SPI 460 IRQ_TYPE_EDGE_RISING 0>;
+			power-domains = <&camcc TITAN_TOP_GDSC>;
+			clocks = <&camcc CAM_CC_SOC_AHB_CLK>,
+				 <&camcc CAM_CC_CPAS_AHB_CLK>,
+				 <&camcc CAM_CC_CCI_CLK>;
+			clock-names = "bus",
+				      "iface",
+				      "cci";
+			pinctrl-0 = <&cci_i2c0_default &cci_i2c1_default>;
+			pinctrl-names = "default";
+
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			status = "disabled";
+
+			cci_i2c0: i2c-bus@0 {
+				reg = <0>;
+				clock-frequency = <1000000>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
+
+			cci_i2c1: i2c-bus@1 {
+				reg = <1>;
+				clock-frequency = <1000000>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
+		};
+
 		camss: isp@acb3000 {
 			compatible = "qcom,sm6150-camss";
 

-- 
2.34.1


