Return-Path: <devicetree+bounces-100409-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A20096D851
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 14:22:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6D28E1C244FA
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 12:22:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1018A19EEA7;
	Thu,  5 Sep 2024 12:20:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="Vq6DTIoj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1286219AD8B
	for <devicetree@vger.kernel.org>; Thu,  5 Sep 2024 12:20:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725538841; cv=none; b=UuhBdVndN/o6DFuTIUvy+Cgo1zEOrVq7+F3U58cDk2qdiRaNj6ZvoXAJevao0urumAgKMK6ACOSgu4OxM11M8pn4Vp3oY2Uf7wdev3f95OHDcORkxEb6KLksbW93/lglJyCqJWSL2U5zE1gSH3qvsqx9Oc6YDc7Ig5VebCjEO1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725538841; c=relaxed/simple;
	bh=d6WJddhun4HJvMbLm+fmJ2JZlxp0djfpfRlepqwkzwA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=bF2MbOMUKHvXdN7QibZICSEZ+Q05wa/H4GF0nPkzHPeKghpmfPb9BE0wMMMSZbXFKUvfQx8IskAUTsh1wC5CIOS5tZCk6eEvovzH0YTfN72T9beuO8UKze4T4u1E548++OzHbrs/rl9YQlwcF+g7EcR2Rt8HTMVW4I5K/ROx9iA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=Vq6DTIoj; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-42bbd0a40faso6353905e9.1
        for <devicetree@vger.kernel.org>; Thu, 05 Sep 2024 05:20:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1725538836; x=1726143636; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gUTBDQ3R7lg9yjFQy51ucEUiL1cminpTXLLq8RTN/Q8=;
        b=Vq6DTIoj6sqd6/PQ3+CxcElIFUceGY8F2+08d/BPW/XeOnvU8c0nHbJr8zRFiao6X3
         t8WGCAhCRd3glVvBkMlMQRmOtR4/m3R95EtFN3g4arWb6F0oes/m0GYTpXYX0DZMav/K
         rokwDnRJmC3pfXccWu0lgOp+x2JQZCQ/JHrXAc6TvIfOpcC7nxmAEMSb2fpweIPNOIfk
         ENa0vg83d7v37S9t4zEZSdWMKaZE1zCKm173sKoDySrzFCyEmYVzU288+znYRTYmCYCi
         Ag1D6VLv2plPQMXwib++3ENVuH7emR1gpvJNuaqz115wuTVTBlSiun3F+xr2KxcajGEX
         4lJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725538836; x=1726143636;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gUTBDQ3R7lg9yjFQy51ucEUiL1cminpTXLLq8RTN/Q8=;
        b=Ix3nRZ9uK4yPKaGWBwkWEtp4lIO/NdjvD47NmdMH1qY/AF0rATdv3HdpnzxyCg8uHo
         rRVBVUO49gk+iUMjCH9uuDWZm2Wab0chkX81VZ0ik5cxhGjvyfBrQxIfHzkoIw92A5Td
         UXxDu/LvIyr6JZ+kn8fKIsKvKvcQpqPV4gyhud4n7YhUIszNRpHrzGkb+97ClvovB3ci
         J9XIIPlFT56RFVu1eCQJNusFDfxGiEKCZaedYx5DaFJT+8O90WOiMV0R73vhQI9+1z1v
         I0gbVA++EiOj0tgL+GBNYR37ZuEE+8dNfZwQNasdLxLBBZ2qH2s02ptI08PBIN8iSFtu
         AGrQ==
X-Forwarded-Encrypted: i=1; AJvYcCUMTbfRq0ksce2UY2gNoUwSp5X82f4AsQKKzB8zb35/GdseRrlOjBgWP6k4l52BZJmmMVapq/asOICX@vger.kernel.org
X-Gm-Message-State: AOJu0YzR1R3kymBUrBFEnqkrJYYH5P8yw1dMZAlUeUkqgytf5DD5lv/f
	N++AbgGsDDHVyxCwkIxa4oaJUokIrqabgDIvuUvz/qaoWvtwXo8VPof/Upp4DmE=
X-Google-Smtp-Source: AGHT+IGSQzjFcSPvZhlrrAcUSpzThCnyg1YJpIfCV1RMXMl3ZVM0P7DXFNMe1faorV31A2qjyVpodA==
X-Received: by 2002:a5d:4b81:0:b0:374:c2e9:28b8 with SMTP id ffacd0b85a97d-374ecc8f2bamr6939773f8f.18.1725538836244;
        Thu, 05 Sep 2024 05:20:36 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:cbe4:ce99:cb33:eb1c])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-374be2edf08sm14645764f8f.6.2024.09.05.05.20.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Sep 2024 05:20:35 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH v3 4/4] arm64: dts: qcom: sc8280xp-x13s: keep less regulators always-on
Date: Thu,  5 Sep 2024 14:20:22 +0200
Message-ID: <20240905122023.47251-5-brgl@bgdev.pl>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240905122023.47251-1-brgl@bgdev.pl>
References: <20240905122023.47251-1-brgl@bgdev.pl>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Remove the regulator-always-on property from the ones that used to be
implicitly needed by the on-board WCN6855 now that its PMU is modeled in
device-tree.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
index 88b31550f9df..1a9dac16c952 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
+++ b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
@@ -479,7 +479,6 @@ vreg_s10b: smps10 {
 			regulator-min-microvolt = <1800000>;
 			regulator-max-microvolt = <1800000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
-			regulator-always-on;
 		};
 
 		vreg_s11b: smps11 {
@@ -487,7 +486,6 @@ vreg_s11b: smps11 {
 			regulator-min-microvolt = <1272000>;
 			regulator-max-microvolt = <1272000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
-			regulator-always-on;
 		};
 
 		vreg_s12b: smps12 {
@@ -495,7 +493,6 @@ vreg_s12b: smps12 {
 			regulator-min-microvolt = <984000>;
 			regulator-max-microvolt = <984000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
-			regulator-always-on;
 		};
 
 		vreg_l1b: ldo1 {
@@ -545,7 +542,6 @@ vreg_s1c: smps1 {
 			regulator-min-microvolt = <1880000>;
 			regulator-max-microvolt = <1900000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
-			regulator-always-on;
 		};
 
 		vreg_l1c: ldo1 {
-- 
2.43.0


