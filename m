Return-Path: <devicetree+bounces-248305-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id D27A4CD0EF9
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 17:41:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C13ED303F5C7
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 16:41:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C32434FF6C;
	Fri, 19 Dec 2025 16:41:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="iR/HRyWy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1CA7347FC8
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 16:41:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766162492; cv=none; b=sPCCWk6kQOvpCHc39Nd/89Vmmk5re9DEq6g0edektTlTmOdAXI2lALXnB7sRpU14eyH5OhqsjuXTphDg5SXhHxbYjz+u4fMPWRxyeGdPSyX3ezd6xr8i13WFpjUseX2bCOzZD2sb+XctGkIx5TgqxF0hdIkTnnd3wRFQHEuyANk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766162492; c=relaxed/simple;
	bh=LbaF66ke8LZxZbzBSqWF+LbtIQHMEYFknVPL8JPpg/I=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NM+NFoyNrIqz8GQgLw0+7djz9/nKMzGdZdW6mobWPmhNQObhPsgGY20H86WV6DqwWO2p+5WXERfBa8TRiZlgmtn6HRb6IahEbmREAaAy6k2OxuV5s7cWTsDmm4tbkNCwfPdxAQfuKybjX/A4uzRj94fWo3zJzlBYJ+spiv+OUI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=iR/HRyWy; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-b802d5e9f06so223253066b.1
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 08:41:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1766162484; x=1766767284; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=e2Cw2KB1P5Y6mcnQJX0NULNND1p0iocVjya6HA4fgP4=;
        b=iR/HRyWytBvsluQHGs1uWbZEyhdPClEaoT+6qL2mpen5W8cwT16x/EKBTRCLrVnH/R
         0Z6KI0JJjxzMvtzUZwHXX1AeDtT1KNqo7y0d1xOIgrDqZJHGINyrqOIgnDYSj4u/UlRS
         Lge7gKT4q93y2b+mSRklybGNo0Y+HKvkm4IC3Yiz/aQVJj2cg31QsckiRTtA8QkgBhx8
         j+cDWpA0ECla214yE1h4uPUUzOfPsnfC63Fxy1xKDuo/FQKEm5qU65GG6IodRM/PkZEJ
         AsfCna+CZvjwRbTl5y6repf0fc1rj6pMbHEnSUgbknAj9WTOfDWljTcIOEf+uS3Y35PX
         6lNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766162484; x=1766767284;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=e2Cw2KB1P5Y6mcnQJX0NULNND1p0iocVjya6HA4fgP4=;
        b=SkH5IoAcz92qqUw+10rY0YDx0hKvFtUxkf49ueQJQ/QW1EwsE/Wp8amLeTmUny7IbB
         gtIssHbU5bo5rtswyKDfSl43xT0nU9oDtvDJztq1Mb+ewMfY7VLo+m+HNxfArzu8OxBV
         QEgO6I1soCHVNXRagYuFUdjXVcC/eIRLXr0Mnv5cjxnPswubfiN6RrZAZ0HF+i7opcFD
         cJbSdFzhGoEOPN/6kG6kXLeKrOHqdGvp8P+aaafnYwiEMQpG+A0E+qjdlOZ8v1p2sKW2
         hzXALH/WKLVAG773eNYLfiAJLwIcs406V3pcKJ3rSnGUo8WDsGjfaYt6kcS3C4ZreE4D
         Libw==
X-Forwarded-Encrypted: i=1; AJvYcCVjHB2cBL4QB9vad+dW4Q02Mj7aI6oHYBdu932vXKMaA7Bw64D8SaAmQ5CFNjvQvKJ4ShCjUDesPt5j@vger.kernel.org
X-Gm-Message-State: AOJu0YxPXyYFfX9FwYGFLmgtIaA+epqw2ifhQYgcIkgiIaDJP0tN+BG9
	Nl9ZMrUAumSoF4jUzAAwU4V+fQ0QvyQEhOeNlxGE3Jy1t68iUq5lWJSFT/ANsBJqx4Tl0OXQPF8
	ZlI2of78nxJmh
X-Gm-Gg: AY/fxX5kdU6LzconIOoCmvE02cIYiuU1VAL6QWXJShLTeYE3DCj3VpKG5C2kmkkBff4
	Wcuo02aqVJ9IP1vuwwexNHFDD2MYQXYm4zHT+9Rg7w7iJ8DNxTXSHOqn60hPkL537hCwBqQSPsT
	7HLi8qYATKWnuL88JlS+L1/EVuBG07FoA0B4tn5D3B8oEhqEbEzSpJvSy1J2peQX5u36VFtGJ7Z
	59DqluwSti6sGLkykodBmmh+wQ5sKQshykzeeOKYVN3qDqW9ELfP9FexJEvgPC/KiZUn//jqKWE
	x0sdBn1/j391PtFyyZqh65Om1eFd6fw8McCRD4EZQbwI5EzsGjYA0qVvVJ4B2su/GbLjfLyL/WY
	VxWb0I9u3MsjQ9bbd5ZUDcgYsXb7dWFQBw26JuFmIO70OC+DFJ6JJLi42Z/yDoY6zoOHTpxyNew
	5M70ennqWCkmV4oknweCHWjjyftj2T8xG8ceSeSKuukydzVTWnZ5IOBb5MCem16Ufs+j5WvLRoS
	m48cRzm2yjt72kioBrEyyZ5W6CsQ5fYaVw=
X-Google-Smtp-Source: AGHT+IHcMyLakLOiabV0zgp9j2BbCuOpJ/ILNqwAtFawoKOVX3o7aGBaAA9adOk/BitF1e97wb/uow==
X-Received: by 2002:a17:907:6d23:b0:b7d:266a:7728 with SMTP id a640c23a62f3a-b80371f8f50mr342762466b.44.1766162483979;
        Fri, 19 Dec 2025 08:41:23 -0800 (PST)
Received: from [192.168.178.182] (2001-1c00-3b89-c600-71a4-084f-6409-1447.cable.dynamic.v6.ziggo.nl. [2001:1c00:3b89:c600:71a4:84f:6409:1447])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037f4ef1fsm270073866b.64.2025.12.19.08.41.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 08:41:23 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 19 Dec 2025 17:41:12 +0100
Subject: [PATCH RFC 6/6] arm64: dts: qcom: milos-fairphone-fp6: Enable
 panel
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251219-milos-mdss-v1-6-4537a916bdf9@fairphone.com>
References: <20251219-milos-mdss-v1-0-4537a916bdf9@fairphone.com>
In-Reply-To: <20251219-milos-mdss-v1-0-4537a916bdf9@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Rob Clark <robin.clark@oss.qualcomm.com>, 
 Dmitry Baryshkov <lumag@kernel.org>, 
 Abhinav Kumar <abhinav.kumar@linux.dev>, 
 Jessica Zhang <jessica.zhang@oss.qualcomm.com>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
 devicetree@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1766162477; l=2578;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=LbaF66ke8LZxZbzBSqWF+LbtIQHMEYFknVPL8JPpg/I=;
 b=Rv0hSkSQEMyym7EIZ+cVRBj/6SP1f7dhM4pzbEWfaCF2YNFHzOP6VQw+YLffiycuav+hx1xjB
 GC1ASefj0LAB0zCj980vbPgQ3vI8SRE/lnefKNNv4uybbds++qyTiBv
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts | 71 ++++++++++++++++++++++--
 1 file changed, 66 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts b/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts
index 92b40ab56c26..8cddab412581 100644
--- a/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts
+++ b/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts
@@ -612,11 +612,6 @@ eeprom@51 {
 	};
 };
 
-&dispcc {
-	/* Disable for now so simple-framebuffer continues working */
-	status = "disabled";
-};
-
 &gcc {
 	protected-clocks = <GCC_PCIE_1_AUX_CLK>, <GCC_PCIE_1_AUX_CLK_SRC>,
 			   <GCC_PCIE_1_CFG_AHB_CLK>, <GCC_PCIE_1_MSTR_AXI_CLK>,
@@ -725,6 +720,51 @@ &ipa {
 	status = "okay";
 };
 
+&mdss {
+	status = "okay";
+};
+
+&mdss_dsi0 {
+	vdda-supply = <&vreg_l4b>;
+
+	status = "okay";
+
+	panel@0 {
+		compatible = "boe,bj631jhm-t71-d900";
+		reg = <0>;
+
+		reset-gpios = <&tlmm 12 GPIO_ACTIVE_LOW>;
+
+		vci-supply = <&vreg_l19b>;
+		vddio-supply = <&vreg_l9b>;
+		dvdd-supply = <&vreg_oled_dvdd_1p2>;
+		// avdd-supply = <&pmiv0104_oledb> (VREG_OLEDB): 5V-8V
+		// elvss-supply = <&pmiv0104_elvss> (VREG_ELVSS): -8V-0V
+		// elvdd-supply = <&pmiv0104_elvdd> (VREG_ELVDD - OLEDB): 0-8V
+
+		pinctrl-0 = <&disp_reset_n_active>, <&mdp_vsync>;
+		pinctrl-1 = <&disp_reset_n_suspend>, <&mdp_vsync>;
+		pinctrl-names = "default", "sleep";
+
+		port {
+			panel_in: endpoint {
+				remote-endpoint = <&mdss_dsi0_out>;
+			};
+		};
+	};
+};
+
+&mdss_dsi0_out {
+	data-lanes = <0 1 2 3>;
+	remote-endpoint = <&panel_in>;
+};
+
+&mdss_dsi0_phy {
+	vdds-supply = <&vreg_l2b>;
+
+	status = "okay";
+};
+
 &pm8550vs_c {
 	status = "okay";
 };
@@ -883,6 +923,20 @@ &tlmm {
 			       <13 1>, /* NC */
 			       <63 2>; /* WLAN UART */
 
+	disp_reset_n_active: disp-reset-n-active-state {
+		pins = "gpio12";
+		function = "gpio";
+		drive-strength = <8>;
+		bias-disable;
+	};
+
+	disp_reset_n_suspend: disp-reset-n-suspend-state {
+		pins = "gpio12";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-pull-down;
+	};
+
 	ts_active: ts-irq-active-state {
 		pins = "gpio19";
 		function = "gpio";
@@ -910,6 +964,13 @@ pm8008_int_default: pm8008-int-default-state {
 		drive-strength = <2>;
 		bias-disable;
 	};
+
+	mdp_vsync: mdp-vsync-state {
+		pins = "gpio129";
+		function = "mdp_vsync";
+		drive-strength = <2>;
+		bias-pull-down;
+	};
 };
 
 &uart5 {

-- 
2.52.0


