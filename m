Return-Path: <devicetree+bounces-23508-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4233980B772
	for <lists+devicetree@lfdr.de>; Sun, 10 Dec 2023 00:21:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EB56A280F75
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 23:21:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E8B51F95F;
	Sat,  9 Dec 2023 23:21:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="u8IX79F2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E91E71BB
	for <devicetree@vger.kernel.org>; Sat,  9 Dec 2023 15:21:37 -0800 (PST)
Received: by mail-lj1-x22f.google.com with SMTP id 38308e7fff4ca-2c9f84533beso36651731fa.1
        for <devicetree@vger.kernel.org>; Sat, 09 Dec 2023 15:21:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702164096; x=1702768896; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JgDxAEuhsmBMeANv3N0te/wPGHFbBpN6eVt4De9yE3Y=;
        b=u8IX79F26AnVEj39zeGc6Uyoirw3WFaciJ9cS5OgF85Vq0SNvgcUP88PepS7m9nNGz
         Qy7t7fO+OYx7nuftWVuGsImKI28lpjzKI3qx9/DYSTDtEDsDX8XHLQIHT68oj33067GS
         aYtgExbeWtpjmwlRqlpiC2Oy0NZ1elkL0+8uJsmmi0gT8IuTVrrrd0U7uu0H/wyhMXHh
         pOw1+/Ur64cndcIziKt0uxsrIkQuRBFj5jLb9HByPGWYRzCmWwb6saqzx+sMtd5SygKY
         M3tsMhFwYlkuQVqSFmt9+lGNaBmRF2yASvD2gw/BjH7zPOV64jN1VL/xt1BQFhQgW7zu
         S4kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702164096; x=1702768896;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JgDxAEuhsmBMeANv3N0te/wPGHFbBpN6eVt4De9yE3Y=;
        b=cV6lynv3ntF/Ruwl6PYKiLVPgbMOEwlvyHoYAGcc3FtbI045/Z731WX8pGfTgKe6Kr
         3pnT8fIKL8n4bl8JtOWyJiep0nnME5ADPJ5TF85guepMalHFoHIiKd91vnY15xN8VESh
         ByVHhEfWHJBQGSTplg16zcw1RcxgQXKA8W6H6rz7nh/gcly22uwHkzzZDiP4KEz/zLRT
         yowNCWR0WCOrIpjfo/T1AB1/piTljqPryQ22HcnrS8NVpeQhvgTzgFiXmbbKpIps8Wwb
         Kwo5zoauA6EnJAS3O8+lLS3+3tZuAF8CLxzIqX0cskAqy3vY+n6Yq1GWldAP8JO4jkF3
         it5A==
X-Gm-Message-State: AOJu0Yzio1mt9VIjsX4psdRNOFyM9Butv2uOi4u1qpaiZVJ7wQtUL811
	WVeocTJgEnSBj4ZmoWZTeI5IWQ==
X-Google-Smtp-Source: AGHT+IGUzLLBnvyzByTUcEtcoTK0ECG9194KSNjYB+OpKYDRaX+qfDCUoY7QFKr9d9SKUTVhFBsolA==
X-Received: by 2002:a2e:94cd:0:b0:2c9:f4ac:ccc6 with SMTP id r13-20020a2e94cd000000b002c9f4acccc6mr704022ljh.46.1702164096346;
        Sat, 09 Dec 2023 15:21:36 -0800 (PST)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id z18-20020a2ebe12000000b002c9f59f1748sm685258ljq.7.2023.12.09.15.21.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Dec 2023 15:21:35 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Clark <robdclark@gmail.com>,
	Sean Paul <sean@poorly.run>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Stephen Boyd <swboyd@chromium.org>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org
Subject: [PATCH 3/9] arm64: dts: qcom: sm8150: make dispcc cast minimal vote on MMCX
Date: Sun, 10 Dec 2023 02:21:26 +0300
Message-Id: <20231209232132.3580045-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231209232132.3580045-1-dmitry.baryshkov@linaro.org>
References: <20231209232132.3580045-1-dmitry.baryshkov@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add required-opps property to the display clock controller. This makes
it cast minimal vote on the MMCX lane and prevents further 'clock stuck'
errors when enabling the display.

Fixes: 2ef3bb17c45c ("arm64: dts: qcom: sm8150: Add DISPCC node")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8150.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
index fb41f91cefc6..153c531c1d41 100644
--- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
@@ -3925,6 +3925,7 @@ dispcc: clock-controller@af00000 {
 				      "dp_phy_pll_link_clk",
 				      "dp_phy_pll_vco_div_clk";
 			power-domains = <&rpmhpd SM8150_MMCX>;
+			required-opps = <&rpmhpd_opp_low_svs>;
 			#clock-cells = <1>;
 			#reset-cells = <1>;
 			#power-domain-cells = <1>;
-- 
2.39.2


