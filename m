Return-Path: <devicetree+bounces-170088-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 58F73A99B70
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 00:20:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 72184447DE5
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 22:20:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45FE021FF58;
	Wed, 23 Apr 2025 22:20:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lGmv9FSl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C7BB20766E
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 22:20:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745446815; cv=none; b=pwpxVS2z0fFtlqVhCqWsmc5zxPG8OW08EJfRHjrHUr8iMHAOnyj9KeqNoNbCFvby2dyvW/8t7H7fwflhJOGRQWL2+fnw++oMUvGYYSYq5C8z8u4GHwp/8AohMYj8D3O7Iybr7v26pwhDMN2eGm9FeVq1V+2yQ2apxNubeztVtIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745446815; c=relaxed/simple;
	bh=d4qeaIA7SY31QL7+qANqSnYfVRN2R0ewfTenj7rKiJQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=c4g/Mi2cYvbsWi6UoiKEy9VhkxVJzXB2Zdk2HvbUTig0imOmehWVVWTkfjHWh7ojegMRMA91AjC9DP+gzU/7ultfvU7H9WbtmJxluHTLhqLWFVgV3lpuFpzziC0Ot7daWNuUSvHVcDiO08CWOO7rXgfLCmvlPb7a3x6ThOXJ8rk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lGmv9FSl; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-54acb0a5444so58078e87.1
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 15:20:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745446811; x=1746051611; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OfE4q0oZOZOnhqZk9qWEc7BpSWc8UZ9AjI+wnkJRUig=;
        b=lGmv9FSlfSZQqJYjoPkmED4TkgsTixXB/4ImOD6HP7PuYj6adyazyXhgHJdZYRi6as
         QX3dqP6T9Jfr5ObmIlS5tR8QAHxT1ccVC7h5tnYDuHbLKSi3QftIGdLqc/f2lPJ7dYpI
         HsjFOzQBA8bvvYeo/GYRQ3sWVFLfNMCdL0AZCKoS24oirat6oEPd/llq5sRmtFEj6evn
         A+as7ZXW9wLv4zIaU7q5YhxthFRnddM95EPAbmCPJky9HGaU0Ps7gZY+2VvaOnpLXWC/
         4BEKN70jViJ+Ws4LS+oL2UQDpNBo85/Ck6cZ43QsoEjk8mJUaxoRq00oReP4vIhHqeeY
         MeIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745446811; x=1746051611;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OfE4q0oZOZOnhqZk9qWEc7BpSWc8UZ9AjI+wnkJRUig=;
        b=uIEMom2BSqmaTYJfhWAPLnoRT9+eLWSiQQR9EKP6Gl6ZQyZKtg7yS/tSFVUhE1I06m
         AG+7l0bdCnOeOTFnSQpg0yxRRQjzgrJyBOIi+xM/VcJjnhUp7wFOOAwbM7iIT1ZksSKZ
         5hdPyARpenBpnwmtLYy3K7CxqRt2SAqoMWmMbAu02ouxM1Xh9LGCoLM6sZmGtxOjz+MN
         ph19fDdkPylAaukwUElWYc/qsfRUyr0e7UuTfBTGmE4gFDb3SoR0jVDjSbyK18AvbKWO
         8cv1iTRF2ABZSSfkWwku8INpSY3MHjcCwc4bTbmnfU2uZ1miFX/j6Q3LM0ntYnpNNKFy
         tmCw==
X-Forwarded-Encrypted: i=1; AJvYcCUKZNIyoFuVlvPaRXV/0C2w4pEKkmnd5rjlVfuAzvB0AotDIXfk3k6Kz11BdKNZXccuThCmqSkIHYEF@vger.kernel.org
X-Gm-Message-State: AOJu0YxyNrvkLR1etJFpvVhSVsws+bMkd/ZUO5TXZnk0OATyrHl6YI3P
	I3zqFAMXAYq7oRau5dq89LOsNiG0M7TsNYFhI1Me0Lzfy18MIe2QbaGP8Yy9o3U=
X-Gm-Gg: ASbGncuRo84873Gy0CtHY1M9rhF9YfxaakIV7NNUSH5XG9kK/Sr85yMmRk5GU/nruts
	pQ+6tWNn2p5BOkdOxo8UmeKbcNya0GTfXnjTjh+/b6/bq0z+xrbLHYcZ9stofJOBYGEoTyDwFt2
	mNZZDeaFmasOlu8a8SiT/sRdhAW7XfDtCOZmIspLKNlFMqmOUZEGDM2pg+wOscu9mkJCeCodA7o
	V+IQtJmdG7axP8tWTspas9jHu6RHy2uTLQL6jTiPMZmkZA01rymsLo9NsmKqbjPs6i3+gDs2LDw
	S2FkekJPfQft2cXvVwZPiH74da12G7gf5s0qG3wmZ63cT+EcDjcBNl9lW+CBWzI21eKfrdjYcC6
	KutH838I8/GFGN4Rt1W1SIhbp7kgWmw==
X-Google-Smtp-Source: AGHT+IEFBLHwxXJt1asTOahfnWRFfQrjT2n96iyqqSw5MxmmI7YBGbK2f4gUIEpHP2qagQIO6O1jXw==
X-Received: by 2002:a05:6512:2386:b0:545:d54:2eb4 with SMTP id 2adb3069b0e04-54e7c428501mr48703e87.8.1745446811391;
        Wed, 23 Apr 2025 15:20:11 -0700 (PDT)
Received: from localhost.localdomain (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54e7cb371a2sm19547e87.57.2025.04.23.15.20.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Apr 2025 15:20:10 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Robert Foss <rfoss@kernel.org>,
	Todor Tomov <todor.too@gmail.com>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-media@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 3/3] arm64: dts: qcom: sm8650: Add description of MCLK pins
Date: Thu, 24 Apr 2025 01:19:54 +0300
Message-ID: <20250423221954.1926453-4-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250423221954.1926453-1-vladimir.zapolskiy@linaro.org>
References: <20250423221954.1926453-1-vladimir.zapolskiy@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add fixed MCLK pin descriptions for all pins with such supported
function.

Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 144 +++++++++++++++++++++++++++
 1 file changed, 144 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index b24ab52413f6..3b13c0971d7d 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -5959,6 +5959,150 @@ tlmm: pinctrl@f100000 {
 
 			wakeup-parent = <&pdc>;
 
+			cam0_default: cam0-default-state {
+				mclk-pins {
+					pins = "gpio100";
+					function = "cam_mclk";
+					drive-strength = <2>;
+					bias-disable;
+				};
+			};
+
+			cam0_sleep: cam0-sleep-state {
+				mclk-pins {
+					pins = "gpio100";
+					function = "cam_mclk";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+			};
+
+			cam1_default: cam1-default-state {
+				mclk-pins {
+					pins = "gpio101";
+					function = "cam_mclk";
+					drive-strength = <2>;
+					bias-disable;
+				};
+			};
+
+			cam1_sleep: cam1-sleep-state {
+				mclk-pins {
+					pins = "gpio101";
+					function = "cam_mclk";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+			};
+
+			cam2_default: cam2-default-state {
+				mclk-pins {
+					pins = "gpio102";
+					function = "cam_aon_mclk2";
+					drive-strength = <2>;
+					bias-disable;
+				};
+			};
+
+			cam2_sleep: cam2-sleep-state {
+				mclk-pins {
+					pins = "gpio102";
+					function = "cam_aon_mclk2";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+			};
+
+			cam3_default: cam3-default-state {
+				mclk-pins {
+					pins = "gpio103";
+					function = "cam_mclk";
+					drive-strength = <2>;
+					bias-disable;
+				};
+			};
+
+			cam3_sleep: cam3-sleep-state {
+				mclk-pins {
+					pins = "gpio103";
+					function = "cam_mclk";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+			};
+
+			cam4_default: cam4-default-state {
+				mclk-pins {
+					pins = "gpio104";
+					function = "cam_aon_mclk4";
+					drive-strength = <2>;
+					bias-disable;
+				};
+			};
+
+			cam4_sleep: cam4-sleep-state {
+				mclk-pins {
+					pins = "gpio104";
+					function = "cam_aon_mclk4";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+			};
+
+			cam5_default: cam5-default-state {
+				mclk-pins {
+					pins = "gpio105";
+					function = "cam_mclk";
+					drive-strength = <2>;
+					bias-disable;
+				};
+			};
+
+			cam5_sleep: cam5-sleep-state {
+				mclk-pins {
+					pins = "gpio105";
+					function = "cam_mclk";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+			};
+
+			cam6_default: cam6-default-state {
+				mclk-pins {
+					pins = "gpio108";
+					function = "cam_mclk";
+					drive-strength = <2>;
+					bias-disable;
+				};
+			};
+
+			cam6_sleep: cam6-sleep-state {
+				mclk-pins {
+					pins = "gpio108";
+					function = "cam_mclk";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+			};
+
+			cam7_default: cam7-default-state {
+				mclk-pins {
+					pins = "gpio106";
+					function = "cam_mclk";
+					drive-strength = <2>;
+					bias-disable;
+				};
+			};
+
+			cam7_sleep: cam7-sleep-state {
+				mclk-pins {
+					pins = "gpio106";
+					function = "cam_mclk";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+			};
+
 			cci0_0_default: cci0-0-default-state {
 				sda-pins {
 					pins = "gpio113";
-- 
2.45.2


