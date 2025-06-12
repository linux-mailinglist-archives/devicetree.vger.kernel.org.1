Return-Path: <devicetree+bounces-185063-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 661A6AD650A
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 03:16:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 06F173AAF5A
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 01:16:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A694215F41F;
	Thu, 12 Jun 2025 01:15:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="K9psXQZ0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B3321547CC
	for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 01:15:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749690959; cv=none; b=dYnJs+vvRlIqxjmAWZ6bWxboCvwEHoSn9DChqgLprtYLBMJ/GskpBtueJ9h691OTyDxVSdfk4IU3q9c9EreT9KEduJtvL11+4hpRX4OVUtGRqG28J649cgv4M22YeUz3i5xbplYtCzPv4U1RMivfb7orJ7V8EPj1r6BM0mUeR8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749690959; c=relaxed/simple;
	bh=lRmpab9D7U7Xj9Gg2kKMV8W8QS5flFvrcHN5YkABJeY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=oivNrmdg83sX2QhSlk4Jw+aXSFgr4iOD5RSnIPGVOnVhA75o2RMSqTmjw75/KQVUMyP2xFO5MAZKHNiQWQsixzVzY1bDBb5SryIqkRd1tPlrDgf/BHdX2YD8wxUyEkqyN3rrRmIjFz6TMSR23g1j7rI00/znzK9BbHlR6QpicV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=K9psXQZ0; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-32a80cc8c88so688741fa.0
        for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 18:15:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749690956; x=1750295756; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z0iMkhzgEkgnzNz7VpgQGchMjTI01cfv7nEZTNImKIA=;
        b=K9psXQZ02X3RMtr2K1xrRUDPgchcMIla3HHmz8pgvDjpNouEInPDvXMsq7MOIuGQal
         LxswlFnOdpelfJEnXlaintvbtleAHzn+1X9/4wYF3+FFjcM/eW51qt+gY7gQDcSfhCid
         1ad/30+6INPBZKmoqoFGy1KvNUSiIH51eU7FbMeuBdp4GZg/C7KtNoDNP18wHQf5u36R
         a69cJK+nqpc25GT7CXJSytIXEFbn9ux3/YeiyRO8kt6sUVHUg3iYfBZA+6ki+A69WpYf
         0C9wlU+YmXw/9hvTg6uGuqi0CfpTZuTEa/bniRYQfxPdNOPBfparSvHvLPio/jHlQVdE
         NUaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749690956; x=1750295756;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=z0iMkhzgEkgnzNz7VpgQGchMjTI01cfv7nEZTNImKIA=;
        b=bZsSE8hCSSO4XEW2Dc4hKlPoLVBjIGW9OvnZ3yp0ZnygrPw6sSOgUXj3NU8FPeZ0dn
         nSjLeYX3idcWwraASZT8ICpguP01Wq7Ouhw1dQ/+ztpTcqNs3Bm1x8lsIf5gPuO3uiS8
         KBZ0VGC+Llv7bpjciRjacSHIvA5hZGTXxrvDk569USaovvN8uNL2hgMGYuMiAPlgM0gN
         cTQbBhFqRvxPVWeuJZhDgcwfVycRp1Mw+JI9qHlpfsEPzseWpFe3/YnJyskgfs3YQdNJ
         Cz6xe/AkDYyuRDumCbKCiJd9vlz1f5qXciOmR4D6Szwq1oBnQWfcUKZjdgUyGITvtG7a
         O2EA==
X-Forwarded-Encrypted: i=1; AJvYcCVZlufT89oDEj3vg3vo1Tqt5kwTphqCUkbAmS5o4gHL9IGAg3Qiw68DM7MI0NqALGyqTzmSSaX9Chfn@vger.kernel.org
X-Gm-Message-State: AOJu0YxFhkOVrpfnil5H8EHrmdD++1iNNxYp5lW4AFozfJWoidZMcXXF
	mpyPe0YP91YBHsdwK1Nix+1HOxXm/SNaSrz4nfScXRdcuHpxlEWuR0IU+g95F6yk+nE=
X-Gm-Gg: ASbGnctN0SsBZ7vEu3AVE8lM1ERZbpVESTzdtlpBl+GBhxuhM3XZ2e5BcbMFLgdpdwU
	aZbJHJ4Cm2EqiV6qYf00DGMcPr2ixtkmc5hnsz+CtNAJiJU3T6jR84qF8Wlh8xYaWXy1YoKa4De
	GCnzgtJqbKR2IiBmn2CUwm0GxwN4jTcSL/qjbb0gD61yAj1nQ7qePoz/ketUYiKx815kC/ImvP0
	Hsymxog3edX9Gzh1RUtY4Mn4b3yTvsI0cAHU2/ha5J3rYgYYQrBYEjQL0J85tjytdghoJEYoJUH
	e3olRmz2AIqIkVf4hlXcl6zZ/a8JjfNzRIOC3nU9yFTeweFc2mc0RYYPGbcUL078rvrBvFmY5MI
	IGFUtWtJR742aUqtyXBL4T8lZruJZlagsiYmIwe6z07ymywi0f6Y=
X-Google-Smtp-Source: AGHT+IH2ZVcSy/XT+P2sjhcrkyYbmgicFFUm992Rw/xmvLwsvTHEafUlWtKGMTeH3cdMFAbAsWhVRA==
X-Received: by 2002:a05:6512:2206:b0:553:297b:3d41 with SMTP id 2adb3069b0e04-5539c140937mr563611e87.8.1749690956123;
        Wed, 11 Jun 2025 18:15:56 -0700 (PDT)
Received: from localhost.localdomain (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-553a7018069sm62808e87.157.2025.06.11.18.15.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jun 2025 18:15:55 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Conor Dooley <conor+dt@kernel.org>,
	Robert Foss <rfoss@kernel.org>,
	Todor Tomov <todor.too@gmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 09/10] [RFT] arm64: dts: qcom: sm8250: extend CAMSS with new CSIPHY subdevices
Date: Thu, 12 Jun 2025 04:15:30 +0300
Message-ID: <20250612011531.2923701-10-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250612011531.2923701-1-vladimir.zapolskiy@linaro.org>
References: <20250612011531.2923701-1-vladimir.zapolskiy@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Following the new device tree bindings for CAMSS IPs introduce csiphy2
device tree node under SM8250 CAMSS, which allows to perform camera
tests of the model on an RB5 board with an attached vision mezzanine.

Note that the optional 'phys' property is deliberately not added.

Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
For testing only, do not merge.

 arch/arm64/boot/dts/qcom/sm8250.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index f0d18fd37aaf..401a32679580 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -4613,6 +4613,10 @@ camss: camss@ac6a000 {
 					     "cam_sf_0_mnoc",
 					     "cam_sf_icp_mnoc";
 
+			#address-cells = <2>;
+			#size-cells = <2>;
+			ranges;
+
 			ports {
 				#address-cells = <1>;
 				#size-cells = <0>;
@@ -4641,6 +4645,16 @@ port@5 {
 					reg = <5>;
 				};
 			};
+
+			csiphy2: phy@ac6e000 {
+				compatible = "qcom,csiphy";
+				reg = <0 0x0ac6e000 0 0x1000>;
+				clocks = <&camcc CAM_CC_CSIPHY2_CLK>,
+					 <&camcc CAM_CC_CSI2PHYTIMER_CLK>;
+				clock-names = "csiphy", "csiphy_timer";
+				interrupts = <GIC_SPI 479 IRQ_TYPE_EDGE_RISING>;
+				#phy-cells = <0>;
+			};
 		};
 
 		camcc: clock-controller@ad00000 {
-- 
2.49.0


