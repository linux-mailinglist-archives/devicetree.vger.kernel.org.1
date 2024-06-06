Return-Path: <devicetree+bounces-73133-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 33B828FE177
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 10:48:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 352041C23205
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 08:48:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C53EC13DBBB;
	Thu,  6 Jun 2024 08:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="a9lqW+da"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D993C3A1A8
	for <devicetree@vger.kernel.org>; Thu,  6 Jun 2024 08:48:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717663703; cv=none; b=GhPDLcZRP89q3+5J1q08XwKi7+kEe/HIYnR8H+tJDf7O9YC7fdB81dN5mDtcSt2sO6Zw8uDYlenOHMZxUnPIfP+LFhV61OilL3gaYUMrjenvO2XCKtur8b3BtazBU292yg5O1upeCpNeA63sVC1IS2TmDglQDqDKRRp1idzuIJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717663703; c=relaxed/simple;
	bh=39vRtYwQYEqRtQHSzA7n3fy3WwXerX7uCL5YXSWhBzg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=mal240NEGtfo8lRpvPelTDuXHYHoywSJ2JyKmib1iChouIubyRiMN/bMV7qavq8mz7W/3Bgg/DZmqeNuSiz4/FnyzH9fvsx/OFcU+9Me8Uq4rYANkkfN9xK1G9MDzPgXLuE1ISHozTHfzN40MOMVicSWBX0B2xrAidn1ZdCD/a8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=a9lqW+da; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-35e4aaa0f33so765438f8f.0
        for <devicetree@vger.kernel.org>; Thu, 06 Jun 2024 01:48:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717663700; x=1718268500; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZnzrYhtyWZtGZAeRI1cKgoE7VfeX1i9ErTFoBPCkmqo=;
        b=a9lqW+daSTIj9wr1JNoUYe5efT571UpTBWL8S/I8fYVWBoXniZaVeoCyvRgdeT+j1N
         4g4sfyEiTn4mWmt46SG3xZAZmbFvV+KzN3D41hKsIUGKBUWIJwlUiPw+Fzd0tQ3h80uD
         2l/V5LWEVK/loB37roWK3pGk/ZfugQ5S/jqYe4vAOmKGbyLGxEDmQCA1OZ1OtXTKrO5k
         AyFGZL0SlWVjtE6H3tvILbo4qY+ZjjsKOXPew76keOEkTHOGBuX6JXAM9uGOr2583GJa
         ieyMeLQwetOC43IzxLbVCKg0MgfrDHZxW239FHlmrE/T+CRAg89rdS9+Oxcet3kvGAuT
         DSlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717663700; x=1718268500;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZnzrYhtyWZtGZAeRI1cKgoE7VfeX1i9ErTFoBPCkmqo=;
        b=HsnjwY2NISsN1tCQGWlZ+s/FsD7gPyoLbEBVq2knQROlY49lZsR2eXgiqo4zmwD3XV
         vNI4RIgcj+4SlRJCFsJMfli2m0XI5PPOqy8VN9nyVZ07c0g30IAVkLw2X30HDUCmjdj+
         Fc2vrZSmIvHeZz0jeeO5fJmtbSGWHMtarhBmpUIYTMkh78JvHph6mt0QG0D9p3TIqDPJ
         TU9fF4gNu2W6/+hC21zy4NHj1pPfUDCwgfpWMJ4jppMvPJj+u/M7aoj+Sh274TTrG2hU
         Jyebxc1fZ459XIxhCWGBqpIMn0CAfvj0r8JvwB7WOm+sDCXgvieZLz5tncbFjGvgDhH3
         +zBA==
X-Gm-Message-State: AOJu0Yx1vxCSankN4vp+ZT9rrXLZWZOpL3A2dh/xNcE4gq3gEUGBzAuQ
	Y2mieuG1uh9EQl2EUMIoWBYRQxKO6aj/FF6TBKViXI/AFD8H2heBk1JdHTAs4pg=
X-Google-Smtp-Source: AGHT+IG0BYg8K/c4KQaRBp1EUc+GvZgM8axaFHE4i1jfIJetCHXj272C1ENl7iKjvIyI47e6l1NdOg==
X-Received: by 2002:a05:6000:1d93:b0:35e:ec99:77ce with SMTP id ffacd0b85a97d-35eec997812mr4343277f8f.22.1717663700253;
        Thu, 06 Jun 2024 01:48:20 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4215c2c690dsm14227445e9.34.2024.06.06.01.48.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Jun 2024 01:48:19 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Thu, 06 Jun 2024 10:48:12 +0200
Subject: [PATCH 05/12] arm64: dts: amlogic: sm1: fix tdm controllers
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240606-topic-amlogic-upstream-bindings-fixes-dts-v1-5-62e812729541@linaro.org>
References: <20240606-topic-amlogic-upstream-bindings-fixes-dts-v1-0-62e812729541@linaro.org>
In-Reply-To: <20240606-topic-amlogic-upstream-bindings-fixes-dts-v1-0-62e812729541@linaro.org>
To: Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2472;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=39vRtYwQYEqRtQHSzA7n3fy3WwXerX7uCL5YXSWhBzg=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBmYXfLG+HbYBIAmTUEl0ylD8D+ogCR9+kGUPijqzl9
 PktHmhOJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZmF3ywAKCRB33NvayMhJ0YHqEA
 CvUi5i3wSgl93xNoeNepN5W+1OOMgpo+kxK8rbUTf14l+5gou6zj/XcFER3vtR65wo51Za2D4bmzy1
 mBmmFX19ciNIcpQwhxOf8VFrRVmpF5fVUqkIrw04G7qGR4+/twNjqF3zhbcVrlTXyEEDfJ2eqjsqgq
 8uL0m/nSvr+nnHDAdBrFwWPM3Pw+riSaRTozWOXzJcMuCSGqXwvmSIma4wrUwyeYvOrEk4ftKh58CC
 mvcAFsVzZkO3DTmH7Ic3uNv8Lql/l/briLqCiUwCIX4e5/HdGe3gx6X53roXPSLC5O5P9TJft6Xhfy
 Ug3JdAYDumQqNFV1Iip6j38HIMFEhR73gUbyw8kD4ofojscj8RUCVueYPvk6bACR8LQf16GbO6lNbY
 7YALkBcrNzAKuEHOcEUaldbSMppfc0xBJizC5ScUITlGMOZDff9tIiGtneyjxKmizAhBZwnRW2Yngl
 fPoVbG8+R+GFc7jUqjaArt4bt6BlYeUxlo9dVJ62HoLgK1P4edKgrSnedPd7kJSwenKhE97SAag/F4
 G+13o/UMUuQaWKbds8lJJyq6vuBEVN0A32h5fsVQN2AOahxEhiYRuKaL1B1X7TetUvjn0MCbih/axY
 Hoqai+OdzCo8Uio8oD1WP2O8z41CvTHpwspZkp1RFuUXW84U8xdzMrYacZnA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Fixes the following:
audio-controller@300: compatible: ['amlogic,sm1-tdmin', 'amlogic,axg-tdmin'] is too long
	from schema $id: http://devicetree.org/schemas/sound/amlogic,axg-tdm-formatters.yaml#
audio-controller@340: compatible: ['amlogic,sm1-tdmin', 'amlogic,axg-tdmin'] is too long
	from schema $id: http://devicetree.org/schemas/sound/amlogic,axg-tdm-formatters.yaml#
audio-controller@380: compatible: ['amlogic,sm1-tdmin', 'amlogic,axg-tdmin'] is too long
	from schema $id: http://devicetree.org/schemas/sound/amlogic,axg-tdm-formatters.yaml#
audio-controller@3c0: compatible: ['amlogic,sm1-tdmin', 'amlogic,axg-tdmin'] is too long
	from schema $id: http://devicetree.org/schemas/sound/amlogic,axg-tdm-formatters.yaml#

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/amlogic/meson-sm1.dtsi | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1.dtsi b/arch/arm64/boot/dts/amlogic/meson-sm1.dtsi
index 6822c2f3cfed..d13cf5b4aac7 100644
--- a/arch/arm64/boot/dts/amlogic/meson-sm1.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1.dtsi
@@ -275,8 +275,7 @@ arb: reset-controller@280 {
 		};
 
 		tdmin_a: audio-controller@300 {
-			compatible = "amlogic,sm1-tdmin",
-				     "amlogic,axg-tdmin";
+			compatible = "amlogic,sm1-tdmin";
 			reg = <0x0 0x300 0x0 0x40>;
 			sound-name-prefix = "TDMIN_A";
 			resets = <&clkc_audio AUD_RESET_TDMIN_A>;
@@ -291,8 +290,7 @@ tdmin_a: audio-controller@300 {
 		};
 
 		tdmin_b: audio-controller@340 {
-			compatible = "amlogic,sm1-tdmin",
-				     "amlogic,axg-tdmin";
+			compatible = "amlogic,sm1-tdmin";
 			reg = <0x0 0x340 0x0 0x40>;
 			sound-name-prefix = "TDMIN_B";
 			resets = <&clkc_audio AUD_RESET_TDMIN_B>;
@@ -307,8 +305,7 @@ tdmin_b: audio-controller@340 {
 		};
 
 		tdmin_c: audio-controller@380 {
-			compatible = "amlogic,sm1-tdmin",
-				     "amlogic,axg-tdmin";
+			compatible = "amlogic,sm1-tdmin";
 			reg = <0x0 0x380 0x0 0x40>;
 			sound-name-prefix = "TDMIN_C";
 			resets = <&clkc_audio AUD_RESET_TDMIN_C>;
@@ -323,8 +320,7 @@ tdmin_c: audio-controller@380 {
 		};
 
 		tdmin_lb: audio-controller@3c0 {
-			compatible = "amlogic,sm1-tdmin",
-				     "amlogic,axg-tdmin";
+			compatible = "amlogic,sm1-tdmin";
 			reg = <0x0 0x3c0 0x0 0x40>;
 			sound-name-prefix = "TDMIN_LB";
 			resets = <&clkc_audio AUD_RESET_TDMIN_LB>;

-- 
2.34.1


