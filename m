Return-Path: <devicetree+bounces-42504-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id EC77A857A0A
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 11:12:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 630ECB236B1
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 10:12:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A32EC208A7;
	Fri, 16 Feb 2024 10:10:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="1hBmwRTP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 965401C6B9
	for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 10:10:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708078259; cv=none; b=o7tM3hNZHueETFzRBEJW5rLw6L1A4NHNEXJyoPKTzsw6YBh0E1OKcHCyi/89DTyBR2QpIA4lJtHK7VxpwjT+sSqGP5NGIVvVbCR2vAFeNe57tO7OsA470nyMuyrkSGaBL/b6IVTLmgGmjlaTlCr4FcIYPLMr6K98uJo0+vzaLns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708078259; c=relaxed/simple;
	bh=4Du11M3VzUfqimWgLoJBAywNDaWIGTyQLxBL2NShpoY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=RQV3198wX4ZsIO7sA40F5HjdIF0ET7a6e5ZdT4bEuAc/TLKDyXEBIJQwIKhZwI0A3qnfk5vS6o0oK/WZSCwRyhsuMrH4zt4uO5LwQHGERi3T3ZqxhBSBehEdY8iiBVL9wzXvwl/3Gmj+0hv6FM0CsRBHuTYwMLzwp0WkSajwhAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=1hBmwRTP; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-a26ed1e05c7so251981766b.2
        for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 02:10:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1708078256; x=1708683056; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AmseNUB8XmILHTMGFvZmTPWMBMRG2oDjG5cDxIINlKQ=;
        b=1hBmwRTPxKDwlQdzpcNmd2xv4t7A6XCkx2uRGL4Db/3l4GA/nJhpvCilxWuMB0a5Dy
         LWaWrUngGtm3vjILB4B5TUPs9jOucnVm1nNmMKGr5/Kx5qVrVaDqwRoML6Nm+d1tDAdk
         lRwXtpa8wikntFu4yq5W+5TOYtGgeYUd5mJParJr83vU8jxW/muqHnwc9xFdMRn3cdfN
         o4RbTTH6Ay0pnnXHfA1kZee4tZe0tpXHi0OKj2ds6+ZvfpQN/xxJSgw0K2jthZwbgxnX
         KcNQqk6UvZngVIa30so3ew/RDZWMfV3a7Onl+JMdo6E+0cP6xXeivgAHJElsFpl/yY3e
         l8SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708078256; x=1708683056;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AmseNUB8XmILHTMGFvZmTPWMBMRG2oDjG5cDxIINlKQ=;
        b=tOw92ivlpLsl/RtvlgxmZJmbVW2F7aOBUdofCTz8bcXkQ/C3Cj/hCQysZ4z8Fu9czK
         0fhCTg96iti5RwFYdbvR0Wraqduxhj32rPvTsa2NaYBkza0EKO4wCVfqIOWj8XFvzOZL
         a8lesRNjtaf8+9BitP4JreZT/Y9+GNpkcwzsjnrRlB4g7QYbnEoF0MqGfY0WCjMUMkyN
         hFrXmUvTpftbF78d7vgNa9jirt/KXDrs5Pd0Lo2IBBE3umHOHMCxGQSfaHkKODEDzEq+
         FlDJ/yg5tFIyjIy29LF/gsPpdXlgI+2NdDUL54I6P56L0C5JUEDcWmSUZfUwMGIu0okI
         w/zQ==
X-Forwarded-Encrypted: i=1; AJvYcCU3Q6PQA8tVFpRV7jjNJF41Q4ouhFNlD36+Knbcu4iwrb/o6x1htWfK2V6lH6Fcj9/2KNi1XtbZppVpW55FzqW6vrA/TWp94PXOBA==
X-Gm-Message-State: AOJu0Yw9LCyZCC7WlhJBsNv/ImA42yTt4bVUmp5aavaro7z3LtDbLQ+L
	59tjoqAUc4q1PHLsYqgwV9HhK4L+PF1lHmu8uwTp43cPd4jLLaQ6YCKzoNGO4RU=
X-Google-Smtp-Source: AGHT+IGal/6tJIPm3J0RtSc6ctiEJ5BTu7plrarS8+4pAaRz8meufv50XtRwP5cMKv1YKhUbtkQgvA==
X-Received: by 2002:a17:906:6bcc:b0:a3d:f81a:d50b with SMTP id t12-20020a1709066bcc00b00a3df81ad50bmr112120ejs.70.1708078255900;
        Fri, 16 Feb 2024 02:10:55 -0800 (PST)
Received: from otso.luca.vpn.lucaweiss.eu (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id s18-20020a170906169200b00a3d1897ab68sm1398019ejd.113.2024.02.16.02.10.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Feb 2024 02:10:55 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 16 Feb 2024 11:10:51 +0100
Subject: [PATCH v3 4/4] arm64: dts: qcom: sm7225-fairphone-fp4: Enable
 display and GPU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240216-fp4-panel-v3-4-a556e4b79640@fairphone.com>
References: <20240216-fp4-panel-v3-0-a556e4b79640@fairphone.com>
In-Reply-To: <20240216-fp4-panel-v3-0-a556e4b79640@fairphone.com>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Andy Gross <agross@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.12.4

Add the description for the display panel found on this phone.
Unfortunately the LCDB module on PM6150L isn't yet supported upstream so
we need to use a dummy regulator-fixed in the meantime.

And with this done we can also enable the GPU and set the zap shader
firmware path.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/sm6350.dtsi              |  2 +-
 arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts | 53 +++++++++++++++++++++++
 2 files changed, 54 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6350.dtsi b/arch/arm64/boot/dts/qcom/sm6350.dtsi
index 5a05f14669be..c8099b10ddc4 100644
--- a/arch/arm64/boot/dts/qcom/sm6350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6350.dtsi
@@ -1328,7 +1328,7 @@ gpu: gpu@3d00000 {
 
 			status = "disabled";
 
-			zap-shader {
+			gpu_zap_shader: zap-shader {
 				memory-region = <&pil_gpu_mem>;
 			};
 
diff --git a/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts b/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
index ade619805519..4e61da8078d1 100644
--- a/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
+++ b/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
@@ -68,6 +68,14 @@ key-volume-up {
 		};
 	};
 
+	/* Dummy regulator until PM6150L has LCDB VSP/VSN support */
+	lcdb_dummy: regulator-lcdb-dummy {
+		compatible = "regulator-fixed";
+		regulator-name = "lcdb_dummy";
+		regulator-min-microvolt = <5500000>;
+		regulator-max-microvolt = <5500000>;
+	};
+
 	reserved-memory {
 		/*
 		 * The rmtfs memory region in downstream is 'dynamically allocated'
@@ -373,6 +381,14 @@ &gpi_dma1 {
 	status = "okay";
 };
 
+&gpu {
+	status = "okay";
+};
+
+&gpu_zap_shader {
+	firmware-name = "qcom/sm7225/fairphone4/a615_zap.mbn";
+};
+
 &i2c0 {
 	clock-frequency = <400000>;
 	status = "okay";
@@ -404,6 +420,43 @@ &ipa {
 	status = "okay";
 };
 
+&mdss {
+	status = "okay";
+};
+
+&mdss_dsi0 {
+	vdda-supply = <&vreg_l22a>;
+	status = "okay";
+
+	panel@0 {
+		compatible = "djn,9a-3r063-1102b";
+		reg = <0>;
+
+		backlight = <&pm6150l_wled>;
+		reset-gpios = <&pm6150l_gpios 9 GPIO_ACTIVE_LOW>;
+
+		vdd1-supply = <&vreg_l1e>;
+		vsn-supply = <&lcdb_dummy>;
+		vsp-supply = <&lcdb_dummy>;
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
+	vdds-supply = <&vreg_l18a>;
+	status = "okay";
+};
+
 &mpss {
 	firmware-name = "qcom/sm7225/fairphone4/modem.mdt";
 	status = "okay";

-- 
2.43.2


