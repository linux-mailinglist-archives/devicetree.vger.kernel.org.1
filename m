Return-Path: <devicetree+bounces-121585-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CB259C77C9
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 16:50:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5C6402824A7
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 15:50:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 871522022F3;
	Wed, 13 Nov 2024 15:48:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="D8MFZpFY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61C16148828
	for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 15:48:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731512929; cv=none; b=I3iIMQ5zPfq5QIPcUZ1CkoWXo1E8l5n98o4TdOtP65K3eZGCQjNV9V5z+/QGlNBI1wPuIdwyZnCCoP3YLZpSuZbKDxzoea6xAjINE9CeGS2X0f1oW7nbc+J9VS/lAdbGqYjQpDuH+uUeUbRPwf0eOGkCwQmAuGwVzhrR36oFQ/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731512929; c=relaxed/simple;
	bh=xTy0814t50k26n3IdWEnCW6RpXe9FNt3pkGR9JMo8Wo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=SUGyNlJIIx2rsZSkO/I2hrEkAO1vxW+kvNtkwOHQv0AAkq0SGdHx0ZazHwBqVWDtyNFiDn2SpE0aLMOaKmuG8fA0+z3wEOsgsnrBHb4OC7htKPAXKGRRGPFuyQpfu2FPTZXn07H/NRqHFKmqHNYOJY5irBlYDjSKAUxq13W6zVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=D8MFZpFY; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4315abed18aso60578175e9.2
        for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 07:48:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731512926; x=1732117726; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9QLp1s6RunFlEIPDGsvb0lHzi+DB0IAKSMWyP0xL4Qc=;
        b=D8MFZpFYr8Uvccs3OkpIsaXeFgtxAlk4fGbvb8MJG/7WqF/zuiY5Rp1SUK/6PKFKkI
         UjBgX9dlFQO5j9b31qCcATD1M3r66BdJRoazwA1o9lb1OeHr99NfIs9Slnz4U/XTh6uE
         cA8AtiY9sYaqgA7xRSXwVEbEepCjTvte3B9RPJsn/xkN4wjkbKbfASCSer24V5n3bs2I
         1rh/tXZnqzGQPwArn5tBXAJUFh1/efGE4jWisCM7DP08dbwNd4UNMhTIZ45mD055zBWC
         2C7a2P45qme9ELD4A5L59JxemKBj/mrEkoom5WhsIMjoXsuyCEi9wtucbs3IucdyXgv3
         QO9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731512926; x=1732117726;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9QLp1s6RunFlEIPDGsvb0lHzi+DB0IAKSMWyP0xL4Qc=;
        b=bwcqRo/hYiCNQ4h8veKrOu5+JWyu+Ib4AYFpYjkJohuvoM+1ppfbksSej+UokMtXjQ
         zogMbNqQNKf92wiC+pnwayNjBxHo2oWVAha3uBC3COo/bqzMUVky2+WQ1tGVWHApuyiW
         0aU2tXLY1Mry4CPEeCk+8yZIK/ZysZ92i4Yw9YDbxdV/g/8t3IJnEyJ8KX2zjO89WVho
         NCsCukPFDZFaNyYYaJ8ZZxr4Pxq7KGuPcDP6gXN/U0yEveKi9Q+wO3R4KhCX9TtkOrGY
         8oVYqYRcFz2dY3V0zMMIbGtj6+XWW/4k+NAiRtqJVYwZ8HsnoHivdnYW6VfV1EkPrbfx
         NS5g==
X-Forwarded-Encrypted: i=1; AJvYcCU48GoZBGQKPGLIpbkC+NHktHEcYEK6mIw88erXUXBYi5KWqzbnWz70u7ckDLiSb6w4v5ZwQuhcYBUT@vger.kernel.org
X-Gm-Message-State: AOJu0YwP9ofuoiWbFWgAG1Uk9I/Ylgpx9CYwi8N/+4JviR5g8mQARN9d
	QB4qUnzRijpgXE3OaSLVrDxE6E6GZe+bI2CaFZe0wXh/cm/mtCNLS641yJQovKY=
X-Google-Smtp-Source: AGHT+IHhsJ5vHXywCMjF85D0QDjPH1adB7FRz0zTJs0n2OMOmH517AP2qB1RCaElCXb/vLCQ/ACOcQ==
X-Received: by 2002:a05:600c:4f88:b0:431:51c0:c90f with SMTP id 5b1f17b1804b1-432b7518dcbmr164295975e9.21.1731512925721;
        Wed, 13 Nov 2024 07:48:45 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-432d54f772asm28445345e9.18.2024.11.13.07.48.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Nov 2024 07:48:45 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 13 Nov 2024 16:48:33 +0100
Subject: [PATCH RFC 7/8] arm64: qcom: dts: sm8550: add interconnect and
 opp-peak-kBps for GPU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241113-topic-sm8x50-gpu-bw-vote-v1-7-3b8d39737a9b@linaro.org>
References: <20241113-topic-sm8x50-gpu-bw-vote-v1-0-3b8d39737a9b@linaro.org>
In-Reply-To: <20241113-topic-sm8x50-gpu-bw-vote-v1-0-3b8d39737a9b@linaro.org>
To: Akhil P Oommen <quic_akhilpo@quicinc.com>, 
 Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>, 
 Stephen Boyd <sboyd@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
 Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Connor Abbott <cwabbott0@gmail.com>, linux-pm@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
 devicetree@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2162;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=xTy0814t50k26n3IdWEnCW6RpXe9FNt3pkGR9JMo8Wo=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBnNMpTUkjA+wwux/4I7KQrmdXKIWToek9n3/xCqvqa
 drjlifKJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZzTKUwAKCRB33NvayMhJ0dPpD/
 4tNTq3Jga253HLV0W9pD5OuDlR8t8KvIXXyV17X+2j4V8DHNENp9TR9TdAhfUJuQnj/9y0D2zSyXAP
 gkrIds2ZigtWraGgAGb4eX9X6iegJnW8v4DapwoYwc5FUB6KjZ9jnut+oV3dEFftAr5/Pmwg+aOpsi
 u34PZ/fxNGtvOdIguu0lHD4gesyBfyncZoyIGBIoLP6Slwu2gMwOt92vErrlYtgW9Xw41qoMcr1LiM
 AvwPgzRab2E7N0VMXaViFkojH8vhz7PplQW8WmQ6zlv0pbcIe0NSvGlTQ6njZJTMy0ymCFcqk5XH7f
 2TDhWwpf4imPdYhj5QDu7DWbBIX09OI9YZHLFUp2O/uhLTvPIVIVM8rYwPgj9QrRr3HE733+X4Fw4r
 BAHhTpoNQ5DF+49m9mB/+c/gXPCmfeR/qscl4gsns3FIUF13IRTlyzECehCEFaFLzc/d2qlSjwgRNJ
 XMaeVevwuOfyI7/LcWtzTgexvvUEKjXWygVw3Rh3ARcGjrIfGvhBUbvyHJ+20YHFpV4lcV29WFF8cr
 h3uClG6c2biDO/R/CZKW1jAr0Ru2y/hANIEYphScZeKygVmQQaVcNotxMcB9eNB4S3GBMKVFQY7zIM
 6Zk6cW1OBVMJpRnj8sF2uJxqY5b9+ucb2KhJXFjzQ4XK4g830Z8yzK+p9zVw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Each GPU OPP requires a specific peak DDR bandwidth, let's add
those to each OPP and also the related interconnect path.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
index 9dc0ee3eb98f8711e01934e47331b99e3bb73682..808dce3a624197d38222f53fffa280e63088c1c1 100644
--- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
@@ -2113,6 +2113,9 @@ gpu: gpu@3d00000 {
 			qcom,gmu = <&gmu>;
 			#cooling-cells = <2>;
 
+			interconnects = <&gem_noc MASTER_GFX3D 0 &mc_virt SLAVE_EBI1 0>;
+			interconnect-names = "gfx-mem";
+
 			status = "disabled";
 
 			zap-shader {
@@ -2126,41 +2129,49 @@ gpu_opp_table: opp-table {
 				opp-680000000 {
 					opp-hz = /bits/ 64 <680000000>;
 					opp-level = <RPMH_REGULATOR_LEVEL_SVS_L1>;
+					opp-peak-kBps = <16500000>;
 				};
 
 				opp-615000000 {
 					opp-hz = /bits/ 64 <615000000>;
 					opp-level = <RPMH_REGULATOR_LEVEL_SVS_L0>;
+					opp-peak-kBps = <16500000>;
 				};
 
 				opp-550000000 {
 					opp-hz = /bits/ 64 <550000000>;
 					opp-level = <RPMH_REGULATOR_LEVEL_SVS>;
+					opp-peak-kBps = <12449218>;
 				};
 
 				opp-475000000 {
 					opp-hz = /bits/ 64 <475000000>;
 					opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS_L1>;
+					opp-peak-kBps = <8171875>;
 				};
 
 				opp-401000000 {
 					opp-hz = /bits/ 64 <401000000>;
 					opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS>;
+					opp-peak-kBps = <6671875>;
 				};
 
 				opp-348000000 {
 					opp-hz = /bits/ 64 <348000000>;
 					opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS_D0>;
+					opp-peak-kBps = <6074218>;
 				};
 
 				opp-295000000 {
 					opp-hz = /bits/ 64 <295000000>;
 					opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS_D1>;
+					opp-peak-kBps = <6074218>;
 				};
 
 				opp-220000000 {
 					opp-hz = /bits/ 64 <220000000>;
 					opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS_D2>;
+					opp-peak-kBps = <6074218>;
 				};
 			};
 		};

-- 
2.34.1


