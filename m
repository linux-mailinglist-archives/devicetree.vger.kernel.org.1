Return-Path: <devicetree+bounces-134725-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D9CB99FE5F5
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 13:45:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8C8461622A8
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 12:45:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6FC251AAA03;
	Mon, 30 Dec 2024 12:44:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iaEaihNy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E7821A9B49
	for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 12:44:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735562698; cv=none; b=JiKDy/nAfAlLlhUIjBIsTYUFyo7eKtcP/NkzbYwBEwWcTOi8Jxv99R+hw+pxnRXDkUMiPTkDZuYQNnumUugLGYxcGVLc2XC6pBbV3jW6gC/h2q+maFmmgMKa29LjCXVWcy2VFiqh+f7/cziTxX1HK4lCYGmJgJnr0fa+8QF82HU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735562698; c=relaxed/simple;
	bh=MjE+gCPtd3g9S1tORrv2JHiLOE0a8BYC25RRtAjy814=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=iGbtXmKvdWHDbgD7CUS7YZ8fgxd8rR0jR4i8q2x3I04AFa2ND7s0SnnO+zbPeDp0sak2DPD5VNb+K4i5zaFW4XstG4LfQSpyBeVzNcebFNYdTb1rgpJzu+WjO4DqJ110cr96DLjP6Ft+koi4kRpkO351cEy0xmUPkN6NfAUenpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iaEaihNy; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-43624b2d453so95824055e9.2
        for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 04:44:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735562694; x=1736167494; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IDLpHZqYoth1wOxgJJwZS3j1+oo/RlvEJVFdtpMBXi4=;
        b=iaEaihNy2nCgjHitDeuTqKJxSUXsGqRqn5eVAZ7w2bK/36td65ki9utNLLmlp3KPvr
         OWGNaq/hSeUiEDqGujeIdH/Je1UKWRmDpfBTjoruIcrLwTN7UEftNY4Bk/LAacbdAVjw
         zS3k9F86cJZ8hK8u3zzTnQpBMlj5mFaYsdGeH5jgTEFj+qU++nwm8ktWR2H9h8/C2nLp
         zx1f9sBSLYW8w2S+2cV39RgNKj44a5dQr2YyrS+Bl8ZLxYRnRVf/4rf+MGIAmPjpCSsD
         SktvlAPFxFkGGyKbN0HUIPlJRvJrv4Ip+DBlOTiY/UzHi+bfIcpQRoTmgbGDmP36ekaO
         nn1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735562694; x=1736167494;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IDLpHZqYoth1wOxgJJwZS3j1+oo/RlvEJVFdtpMBXi4=;
        b=BZQfu4gJWfNJtLvxPyOTsf/bIVdt2+Id0YJgEK9VpuYy8QFErJjJciOtAggbi1CR0K
         /dVEmj1KsBSTPB76MZEwATP7HPmxH40GvEykkD6x3UMC3nNE5S0fk7BU26dJI3UqbRVu
         lh0g2ti7vnwy+CHVDffVjBaj7bRVu9Iq6bEYCdi4Ra9OGJBFpjW+HfboWa7nWbkG6wmN
         YgMWs1avGPO/6ZUn0acQ5gjk2yPMjE1tmL35tetri3R3jO1djagSXAowqm55SZbd/nH2
         PJ2fKGtdS84YSa8pUj0Ulw0WbycP1euHmB/TQvXs948HQk6ohdq79zpjIbfksB5vG2xu
         GYcw==
X-Forwarded-Encrypted: i=1; AJvYcCXNu/lo9ew6DU2PYG4hdTskFQNEGRFu1rw0ceE6OVdWz3iXLDk/ltsOnyopWu2R2w4HPhxlCjtuwaa0@vger.kernel.org
X-Gm-Message-State: AOJu0YwZmat0AX5AidPudFQZ3uTZZna917cx4fUMSAUmyoUx8IQz+7yp
	25riEPuSNmAPUPkfDfyTuX0yFn7rXwGv3ZJBpy3MyPvU4bHnhX3q6a87NgJ5Q3k=
X-Gm-Gg: ASbGncuhBM77ketk1arXvRxF/CjE9iISWRLbLqaJrAzYk+naodF/Rt2Lrofoq/mP6mR
	rmrquABI9gg0pR9ZbqqpK1xH7upX9RmbJ7AVLXRSoimhJ1wrk2CqN5w4PDBld4URNe8bE3CVbd4
	cNWSifRPUehj6fiODL/WhmETyQ0m8cxoD8AUHQPcqdXHi7JhnRZ1QByP91/3+kRB5aM657HzL3S
	4Vo/UR8JKHrM19oOlU0WaFL/6MAac5N8iFMZwVehdCA2bIKdZEfE41WS6X8JRD2uGMLyjkpFVFu
	Xg==
X-Google-Smtp-Source: AGHT+IEx+EjUvqrBzV4PAtPCBp243WaSXbZ+nFxE7SAb8/Q9eS/Y4pW6QHUW+vszeMVp4CD2bZZOQw==
X-Received: by 2002:a05:600c:1c25:b0:434:f4fa:83c4 with SMTP id 5b1f17b1804b1-43668b5f691mr289484785e9.29.1735562693049;
        Mon, 30 Dec 2024 04:44:53 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4366121955fsm359913215e9.21.2024.12.30.04.44.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Dec 2024 04:44:52 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 30 Dec 2024 13:44:47 +0100
Subject: [PATCH v4 4/6] arm64: dts: qcom: sc7180-trogdor-pompom: rename
 5v-choke thermal zone
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241230-topic-misc-dt-fixes-v4-4-1e6880e9dda3@linaro.org>
References: <20241230-topic-misc-dt-fixes-v4-0-1e6880e9dda3@linaro.org>
In-Reply-To: <20241230-topic-misc-dt-fixes-v4-0-1e6880e9dda3@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org, 
 Felipe Balbi <felipe.balbi@microsoft.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, 
 Douglas Anderson <dianders@chromium.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1244;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=MjE+gCPtd3g9S1tORrv2JHiLOE0a8BYC25RRtAjy814=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBncpW+LGCJGzICf/b+yISccugtrJLqq7SowdHDcO6V
 4FcoekaJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ3KVvgAKCRB33NvayMhJ0asvD/
 9z3WwwyTtac2VrqxP98TJpNPOBfwU3KgPwNlPRFFA0z5SoS6smEPbPjCjfo0EpwzQVkFqD31SqctRD
 W+Y6cqGR7fCnkNpj+rrBfJT3EcdIISLcMHEJNaSVXyEKVIY4J3jc43l+jVTY6Vvsh9s4uxHpJhf7lA
 NOJhqbrmcb+dnAd1Q8lMHn6V+HotTud8P9dtOMu0iY5T3OD9DE9avjp9zC0r0zVQ7MuwLyjHDA1bM6
 2MLUxainboUwDNnSDCNYDILGGGQ+H0mluVpi7vcJMP3Uku3w0ZdF6EkFqgecCqaN1407zRb8WL7ukw
 Z3RSIOL/X/yh6k+x0KwlxSeFrhQUkGxUiJ2N3ucNuS0qHvJfcZyWAvB/V53Jg0upGnuaaXrFq3vVcB
 l+tC5nXrboWNRkMRp4I3TKoe5uLrlx6tBpugVrsnhJh2/mLoPkTKOen5xFIM3fCTHC0AgwVP/cj+DT
 EaDhSe+bx29neFj8zbz8rZbT2s4qF1CSsumhlxQ8Oe88tc5UUV0DCxf732XJqfVMbxhidihWfmbIBb
 rA8/vTwBlbt4xmCB5Xz74sYdXi9Gnx8oM/cQKf2JV5TKgIvyF241M/sJFTOwNJ/I/La7sEHp4ujVjk
 2dsw2ysUBmsDqXhWBwEVAw169H8EbrapMArKJd4CzwQ4oRjC1aE244P5xYzg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Rename the 5v-choke thermal zone to satisfy the bindings.

This fixes:
sc7180-trogdor-pompom-r2-lte.dts: thermal-zones: '5v-choke-thermal' does not match any of the regexes: '^[a-zA-Z][a-zA-Z0-9\\-]{1,10}-thermal$', 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/thermal/thermal-zones.yaml#

Reviewed-by: Douglas Anderson <dianders@chromium.org>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc7180-trogdor-pompom.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-pompom.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor-pompom.dtsi
index ac8d4589e3fb74b9d9105a8ca2b0cce72de22d86..f7300ffbb4519a7973c74198fc0f9ca2d770bc3e 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-trogdor-pompom.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-pompom.dtsi
@@ -12,11 +12,11 @@
 
 / {
 	thermal-zones {
-		5v-choke-thermal {
+		choke-5v-thermal {
 			thermal-sensors = <&pm6150_adc_tm 1>;
 
 			trips {
-				5v-choke-crit {
+				choke-5v-crit {
 					temperature = <125000>;
 					hysteresis = <1000>;
 					type = "critical";

-- 
2.34.1


