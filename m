Return-Path: <devicetree+bounces-20026-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 09B907FD8EC
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 15:05:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8F8ABB20E2F
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 14:05:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CF863032B;
	Wed, 29 Nov 2023 14:05:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rE3DPTLV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0763B1A8
	for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 06:05:44 -0800 (PST)
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-a02d91ab199so923055166b.0
        for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 06:05:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701266742; x=1701871542; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vIpe57LK+ad4j3gXLtYhpcdtMPnG7fFGsBLCvb5Xl00=;
        b=rE3DPTLVdTe+gXcLth66c37DX7SHlmOGKngnUuV7dpsbAkjqxCnzvmwNN7Su83SGBZ
         nXGKvARiV4aMEOPSHjfyFl2zVG9+xztHErG9zsFZ0vcc97QL/PjJyEbAjvo+RI5x9442
         ubwPmw8l3Ovv6vhL4mWGReiFyWSlzaAC8ngcr8xmvjcYCREzQmXaQ3/eOfi17xiUzS/j
         SfflkVLzvOFbZUFY4LAIoyAwoXOVTktVknOtBrGqiBEiT+rGvdQzCVTuYKt73/1a4S32
         urydTKiOt7Tv2jn7l243x9sMmD2zqwT3J1pqrQvA6h26HlpcbD8BJjIQkYJjEU1KpJ7+
         cuvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701266742; x=1701871542;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vIpe57LK+ad4j3gXLtYhpcdtMPnG7fFGsBLCvb5Xl00=;
        b=hSFQGXXuIHIX69rryqyRgA//561XcHiAAGkJIAN0TDxWRq3KGfYDyNjH1J36MzPpuP
         zf/0xnCle0iw6jz96UhN5e/fgprxLSMvTTBdVTpnTJx/M2M2fOikSdhUTNu/93haToKa
         RldXPRc7Us7Wctnw1Y0jV3/h5XuQ2pb84tIVoUllgze7Z2fbHyZtPkGaAcggY9wxT85k
         veXiYxHN2EGa+Ar99RxmQsqSDsXtmHIohA31+RfHdgEk0dXhrdDcwGv2K2zv0mr/LIZJ
         z+I/yYNcOwqRoUVuXQ5RlJZi3ADfwJwwRn8SLhX4wdd78TMJ9JtLR6Rjr03Pp7T7wukB
         Tqcw==
X-Gm-Message-State: AOJu0YxRjI59Sh9W6Z/iLAIYwHwa3auuFDzWYL97tYPSfHGbssdwRp2h
	0kID6Y0xhJSev6IU/5WqbtGiaw==
X-Google-Smtp-Source: AGHT+IEQVZGJKNnT5Gk0etakEOWrLbSJedZgEcktiPi8arX5Jm4KIFYIq/ld/mtUihzQQFDAOFePzg==
X-Received: by 2002:a17:906:fa06:b0:a0d:ebfe:e404 with SMTP id lo6-20020a170906fa0600b00a0debfee404mr9221770ejb.22.1701266742475;
        Wed, 29 Nov 2023 06:05:42 -0800 (PST)
Received: from krzk-bin.. ([178.197.223.109])
        by smtp.gmail.com with ESMTPSA id o14-20020a1709062e8e00b009fe3e9dee25sm7947530eji.61.2023.11.29.06.05.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Nov 2023 06:05:42 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH 2/2] arm64: dts: qcom: sm8550: correct TX Soundwire clock
Date: Wed, 29 Nov 2023 15:05:37 +0100
Message-Id: <20231129140537.161720-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231129140537.161720-1-krzysztof.kozlowski@linaro.org>
References: <20231129140537.161720-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The TX Soundwire controller should take clock from TX macro codec, not
VA macro codec clock, otherwise the clock stays disabled.  This looks
like a copy-paste issue, because the SC8280xp code uses here correctly
clock from TX macro.  The VA macro clock is already consumed by TX macro
codec, thus it won't be disabled by this change.

Fixes: 61b006389bb7 ("arm64: dts: qcom: sm8550: add Soundwire controllers")
Reported-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
index 52e8f4c52426..2fd3faacf554 100644
--- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
@@ -2199,7 +2199,7 @@ swr2: soundwire@6d30000 {
 			interrupts = <GIC_SPI 496 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 520 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-names = "core", "wakeup";
-			clocks = <&lpass_vamacro>;
+			clocks = <&lpass_txmacro>;
 			clock-names = "iface";
 			label = "TX";
 
-- 
2.34.1


