Return-Path: <devicetree+bounces-23187-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 11CF080A6DA
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 16:09:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8DECCB20C87
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 15:09:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23453241EF;
	Fri,  8 Dec 2023 15:09:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="21gumZTl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C92831FD2
	for <devicetree@vger.kernel.org>; Fri,  8 Dec 2023 07:09:15 -0800 (PST)
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-a00cbb83c80so250006766b.0
        for <devicetree@vger.kernel.org>; Fri, 08 Dec 2023 07:09:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1702048154; x=1702652954; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=i8hg75fxw9R+dBPdPORPMttaCUpNuozfVfSBn/F7kAo=;
        b=21gumZTlYpHHCyOvLr0xICTvdQASzRB644cNYztLQzfUSSqdgSIHTiG2DgPuVbiIYd
         Mzs9OHJva4WrAYyOrLhX5H3VKdHiSHBwtPWZHWIS61DTrJH3bny20bmnvJLMkeG4hG9p
         1EKIyznSwd8dsALeDm1WSosu/shbrLe8/RpiaJVGoPy/PLCq2stkR3gyY3PmkhDboU/o
         n54wcELF2T1j0P3w6fxZ/WnTx2a1/tcqK+Cxci28+rCKgc2+4tqeTwgyj6IPEsREvcgY
         zD3Y6jTWliGybLBU1DuoWeo9MePcbKSZrRGs7Ng4QyaQaQQXgZ0V2kZDr9zda2zDIZyi
         c9Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702048154; x=1702652954;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=i8hg75fxw9R+dBPdPORPMttaCUpNuozfVfSBn/F7kAo=;
        b=GugUpZI187DHMTKRPA64dyRnKvmDa7AwlGyphJ3/mlhbpK+ZYH/kRUBuCdFLr9tk2D
         aoMfLDNPhL+MnXAG/zcgetOhmDK5mXURwd9Z/jEaq1x88g7otU9IIJDOIchyQEr2KJIo
         NmBxJQLoIPsZDpR8tJRj/JNC3L14mjHQr4c05jlVTtVGESr4qcI+d2tmUM7c22kEhOv4
         Yqttlqg0ZyK3W5K8TdaJ1EnCHfWBLTlmz1dLsluCrtlC+sPGc+yqC/Bqm1P+YhpF7i73
         NPhPkN6IfSEDVPszBirWuX2MZvoZo9VTL9tahgqI2077N/f9f9qlK3G+8MXzesbStexu
         EyqA==
X-Gm-Message-State: AOJu0Yx5hTma9OHP2Jt4RyDUsNufbyTmLoAi5UVLLpY7qd5KH+kiX4ty
	p87xYFn7WwlctTVCWEtZh66pZQ==
X-Google-Smtp-Source: AGHT+IHpNXHD7hMM4qjciCbNAZmxBp44HoDMbmCRqYLv3IH/ca5r9OaByDVmFwDOwqNYTv9DcdmjuQ==
X-Received: by 2002:a17:906:eecb:b0:a1d:ec18:6ada with SMTP id wu11-20020a170906eecb00b00a1dec186adamr86437ejb.104.1702048154429;
        Fri, 08 Dec 2023 07:09:14 -0800 (PST)
Received: from [192.168.55.221] (tmo-113-102.customers.d1-online.com. [80.187.113.102])
        by smtp.gmail.com with ESMTPSA id r25-20020a170906351900b00a1cc1be1146sm1096114eja.217.2023.12.08.07.09.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Dec 2023 07:09:13 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 08 Dec 2023 16:08:06 +0100
Subject: [PATCH v3 10/11] arm64: dts: qcom: qcm6490-fairphone-fp5: Enable
 various remoteprocs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231208-sc7280-remoteprocs-v3-10-6aa394d33edf@fairphone.com>
References: <20231208-sc7280-remoteprocs-v3-0-6aa394d33edf@fairphone.com>
In-Reply-To: <20231208-sc7280-remoteprocs-v3-0-6aa394d33edf@fairphone.com>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>, 
 cros-qcom-dts-watchers@chromium.org
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Rob Herring <robh@kernel.org>, 
 =?utf-8?q?Matti_Lehtim=C3=A4ki?= <matti.lehtimaki@gmail.com>, 
 linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.12.4

Enable the ADSP, CDSP, MPSS and WPSS that are found on the SoC.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
index 9c25e28a62d9..830dee4f2a37 100644
--- a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
+++ b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
@@ -691,6 +691,26 @@ &qupv3_id_1 {
 	status = "okay";
 };
 
+&remoteproc_adsp {
+	firmware-name = "qcom/qcm6490/fairphone5/adsp.mbn";
+	status = "okay";
+};
+
+&remoteproc_cdsp {
+	firmware-name = "qcom/qcm6490/fairphone5/cdsp.mbn";
+	status = "okay";
+};
+
+&remoteproc_mpss {
+	firmware-name = "qcom/qcm6490/fairphone5/modem.mbn";
+	status = "okay";
+};
+
+&remoteproc_wpss {
+	firmware-name = "qcom/qcm6490/fairphone5/wpss.mbn";
+	status = "okay";
+};
+
 &sdc2_clk {
 	drive-strength = <16>;
 	bias-disable;

-- 
2.43.0


