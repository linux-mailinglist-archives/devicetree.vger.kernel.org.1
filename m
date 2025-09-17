Return-Path: <devicetree+bounces-218247-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 425BDB7ECD4
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 15:02:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 71977163961
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 08:06:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79CF5309DC1;
	Wed, 17 Sep 2025 08:05:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="q36z11gy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A81863090D5
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 08:05:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758096348; cv=none; b=HPKpISiPtxrkk1lLAE/g1ABjSyAZpkPvdL2B/YAHyGtgPOcZsW7nqJtxJbEoqaPeDiYFvn2T514xvChn7tgW+MzsUqUTh976jvne17YlK20H09Gy1CuNNMYFKc/dGofRBbKv9TuPMM3KEUX0UOLaImaioDDpiK9N1FjahMGZ2Lk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758096348; c=relaxed/simple;
	bh=7R8rcOL3f1HwsUpPHaL0+BUAREAOiXb98Mm1tlgtyCA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=hlKOD6AsHNMaexoV4ZAO+Hk/GaBuMm3IXt/D8JG4ol/oNcPxYDnNLQ2jLCBxAEAivV3NMnSWD/haKyvAnSTFnwJ5eK2RodlkCCuJYW5c2RypfbWIqzw3AlQVFzWiAxOqi3qgG1/ggUVs4WcT1lewIEYPYg3g2NqJbXgsYoWmCzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=q36z11gy; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-62598fcf41aso8939197a12.3
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 01:05:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1758096345; x=1758701145; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AJ9ovkCr6DqOwPekQL9mbbfb8pXGwCeM0TnyH7IdLxU=;
        b=q36z11gyZrdNTE8ezA5OM6xfLtFubZzXQHslewyItv73P+DyAZK2z807Elnw8XdVz0
         Nhjpz8qu7Z5voY8lAnbNIPTNUZ56qhlnySlqfsBbF5/BaABG4seDea8xe1w4V+aKrYMf
         tJFElNWsT+5anTkHkvv7R7tqPQoy1KW15IF2c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758096345; x=1758701145;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AJ9ovkCr6DqOwPekQL9mbbfb8pXGwCeM0TnyH7IdLxU=;
        b=pvjiUViR6JNp/suYWFdooiypOuhWHvqUAGDABNmZgJ3GPKqXlOjNK/YHCeBo8NOG6F
         2wbBkQKBZfiWSUpWj8dRBCExX3sbacOyI41BsoMG4YeR1Ran2VnflAvnSAQ3r6w1qN/M
         IqZQQfdTK4857jOTDP86/yRNNHc4OsSBpdWD9CoOVN3Rhqhk/bgPXG+j3xOpZ73WWLGD
         oTbklUj8clWucVxpnpXBH35MG99l4we5cV7/q3Vvgo7YIg/oSjFqZ48ydwhR9hLZcfTq
         djbrjJGDZbAhmYLjzKArEbnmfY7alf4IX6x2gLpc6psUVKsayhneJD4T5C7agVsJy82k
         Aozg==
X-Forwarded-Encrypted: i=1; AJvYcCX+pQcdm9ii3fwEEWnBMCY8oRZaYAUuM6yiMi9kbSO5CdlazCA269MoZoooCbaxDu8aDL/iwHGbYl1c@vger.kernel.org
X-Gm-Message-State: AOJu0YzKDg6zpWTQ5xMZWUm4+xDjKlhKEsliuwXdCEVV05wNXTfDCW3u
	FX7JyfiSBpomwSUm6q2dITtEpkg895N/fn9u5jGTRAPTy64kK6nD4IJy3YPHx9ZDK8M=
X-Gm-Gg: ASbGncturtm1zq3qlCFxlx2zwIGFurwQ0a1y2aIEBfElI/rU7b8JbRw/wn5RR3DtMxS
	FgVdkQY8oFpaVWPMF+qz5nknC3A+m6JG9ewNVGT7CnaBy/Su5wxhLtrPWtShdsM0XB4t9VExhPh
	dkLGGj5dOxIYkmDOG5U4474KT62y3aJJlw5nksv4Fo3BGpfM4w/s7qgguc0PIxVY7/XUHaTQCoD
	nju/xVduxivecAsy8cfe8tc9GaYi92FXaEtza+diRy4w60dxjQRABLaNQCRyt3dSY6Pr7KUhkAb
	qm1CiApMJlYgMUg9SrktoOot+HdrSdYz1A/Gd1MlhysrIbLYnXfRoQAkC1mmzhBC3Ns75Cq+J3P
	lhlwUaeeUj1KlsnPvwA+Xkoz195kTFKxBgAp5tawK8C8qAzRlZOAyJNjLsvs=
X-Google-Smtp-Source: AGHT+IFpWQS4pkyL9m52u+iXkDhG4zfzNZwzj6DCSRH4/FjXB7Y5wWH6XeMryYi9+6RpKzp0CFw1UA==
X-Received: by 2002:a17:907:3f1a:b0:b04:7107:9758 with SMTP id a640c23a62f3a-b1bc0e86595mr153107166b.43.1758096344821;
        Wed, 17 Sep 2025 01:05:44 -0700 (PDT)
Received: from localhost.localdomain ([2001:b07:6474:ebbf:1215:4a13:8ee5:da2a])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07e1aed5ffsm924936766b.81.2025.09.17.01.05.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Sep 2025 01:05:44 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Frank Li <Frank.Li@nxp.com>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 5/6] ARM: dts: imx6ull-engicam-microgea-bmm: set touchscreen glitch threshold
Date: Wed, 17 Sep 2025 10:05:10 +0200
Message-ID: <20250917080534.1772202-6-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250917080534.1772202-1-dario.binacchi@amarulasolutions.com>
References: <20250917080534.1772202-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

This way the detected signal is valid only if it lasts longer than
62 µs, otherwise it is not sampled.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

(no changes since v1)

 arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea-bmm.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea-bmm.dts b/arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea-bmm.dts
index 279d46c22cd7..f12084d8f2a0 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea-bmm.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea-bmm.dts
@@ -154,6 +154,7 @@ &tsc {
 	pinctrl-0 = <&pinctrl_tsc>;
 	measure-delay-time = <0x9ffff>;
 	pre-charge-time = <0xfff>;
+	touchscreen-glitch-threshold-ns = <62000>;
 	xnur-gpios = <&gpio1 3 GPIO_ACTIVE_LOW>;
 	status = "okay";
 };
-- 
2.43.0


