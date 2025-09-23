Return-Path: <devicetree+bounces-220452-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C604B9656A
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 16:41:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4F0527B9C86
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 14:37:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1456279335;
	Tue, 23 Sep 2025 14:38:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="l7yKRojH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00BAD946A
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 14:37:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758638281; cv=none; b=rDFMgP56/IegDXI5KOuOYMwFqGZeKz7b4KTHgoZh3fI1eCcn955Lnu4EjPCNWWka6aMUjOzw16JBVI0SysAvcRAXu1Ixv4DufWQGy1gWn2+0HnZyMlgtNRKhc3PJvHmFDsLXSel/Qiqpmw/z62D59bftS3V5IkOaK+jJTQ9xHPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758638281; c=relaxed/simple;
	bh=vk6FwPi++rlEIdnq7B8swuH4Hfip4zJuCa4DgVBSD4Q=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=rBI8btimg8amQxUeC+kZ0m4aAvZUl4vEbWg+QKq0GivsQaTHleif9s/BrbRiSb9vm3tUWnYmmblVRM+RYUZgnau7N5JHcHt/CApE4zA1a3MOhmBrJuLhykKkC6SZGzN9BsnAK/6YkULHSxrEnQXs8TvfP/3HQuwvgwnifB0FjxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=l7yKRojH; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-b2b4318a202so394014266b.1
        for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 07:37:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1758638277; x=1759243077; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BIxVfZFoAEsIwCtiKpIw9ltXsqh5nL/d8yl3mBu/8Nc=;
        b=l7yKRojHmr/mJZmd8M7gn3XgCqz4rF3PUCd8ePCsDIKrimpRXTgxyU6WwH/hgGOQAu
         +JsHV+tdhDuMrTpAFLD0kg/t1hm021kTodDASdsG1Kl4xPSnyFvsUXWxX279Mt3JLCFJ
         v955NI+12GkDBNoOaXxHGAa0FSy2zPiDiMXbM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758638277; x=1759243077;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BIxVfZFoAEsIwCtiKpIw9ltXsqh5nL/d8yl3mBu/8Nc=;
        b=VgXHstF8SMgnHrk9aNIBWYrCURbkDIhyYqFWJmta/OuqQ9wWEOaEB9h4LZlg8JvHXI
         KZsSet50eb3Q3qiNoow4QSTiHd0ajEWEOuUOCl3AmQJIsqLeaWU4NUjHpAzwA8TukDtf
         sShoR/Aw2svOlXYhk1T+TQaRhwsPMFa480vtI+BFttgKWiKG1huaTGqcu0Q0nwknZtWm
         y+a1yRd9CS9Muk8BNd1KvQ1wXxOwkRykFJjV9x4vF6xuOBhTb4GqrUnXE1FxQuUlvxdi
         1zhiu0CVhBMzjEHslbFvnrshVonWXB4yaR3nQVJ48FBjcxInuvqUaquU5zXdzztyiCvz
         +93w==
X-Forwarded-Encrypted: i=1; AJvYcCWBA0lagM7KY8DOBj2JLNRaSWFpw9rEqKj9rsZzi2kLJNO39iIHipzqw3YwHNPpPwmPpu52OBWRznfW@vger.kernel.org
X-Gm-Message-State: AOJu0YzkGOLtcu2X1SS0q6Ey//aazVgv0uLbweHtVxSHf6cjK4t3tP6D
	dZqXTU5oI7n0UyDQYaz+5CLMwn5qYjrOCjSbkvrZYvhnywz39BLteMLwHrQ2tixpLEo=
X-Gm-Gg: ASbGnctExvG1SgwDAsRcw8ZEtjkHzJW8mfFKxJ7adxg+c2Vq+X/YUeIluuI1Ds2G12v
	XGGpl6hxcDuVEZcIHQ8/ZEhxBN9XkfFDIxsBAYjWHZxqxEC4FIZNDCBgznd6kXMOjy49+OjCwoR
	aACs9A68yQx8T1vNZ0MM++1oJEIGdGQazk4VhhnvS089bhvyTItWdDCsuOKERgpU8TbveZdC/kt
	eUjp7E7C1ya8m+JfkhYprWIR5cqhc+UNx4aaBcjAwLSKCl9EoGKpH//a33eqY7/YJD66V4Piyoz
	rpPnGM3cUhrkLqV+kUX88sfRQFt63IWu+DihA/0DaTHDWhsnF6bwCCbEZwqZrq2XRKbl/FVVZwx
	8JysyOO2a4pZ6r91U42qoWqtPxk0GXUQp4jBMa/tYi4CyKqV1lUzM1zqWxQA6gVHRRJ8w/cHkQW
	FPdb/9PpQuSgRClnjpcbaYA0kzQtfNDBq1Kkzg5xU4ypt9bNIMcHykUYSafUiDm3bY8XXup48id
	G0=
X-Google-Smtp-Source: AGHT+IH9SMkFkR71Kx+KKn5T55TYlat8HlxhxiB+GViGIA9Vt0hQfUrdnZ3e8AKspkcyGYH3r9r1+A==
X-Received: by 2002:a17:907:3d8d:b0:afa:1d2c:bbd1 with SMTP id a640c23a62f3a-b301e5ad661mr314613866b.30.1758638277092;
        Tue, 23 Sep 2025 07:37:57 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-82-56-38-125.retail.telecomitalia.it. [82.56.38.125])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b2a2a5f6c7asm665204666b.28.2025.09.23.07.37.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Sep 2025 07:37:56 -0700 (PDT)
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
Subject: [PATCH v6 5/6] ARM: dts: imx6ull-engicam-microgea-bmm: set touchscreen glitch threshold
Date: Tue, 23 Sep 2025 16:37:36 +0200
Message-ID: <20250923143746.2857292-6-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250923143746.2857292-1-dario.binacchi@amarulasolutions.com>
References: <20250923143746.2857292-1-dario.binacchi@amarulasolutions.com>
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
Reviewed-by: Frank Li <Frank.Li@nxp.com>

---

Changes in v6:
- Rename touchscreen-glitch-threshold-ns to debounce-delay-us and
  update the value.

Changes in v5:
- Add Reviewed-by tag of Frank Li

 arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea-bmm.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea-bmm.dts b/arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea-bmm.dts
index 279d46c22cd7..f251a1028355 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea-bmm.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea-bmm.dts
@@ -154,6 +154,7 @@ &tsc {
 	pinctrl-0 = <&pinctrl_tsc>;
 	measure-delay-time = <0x9ffff>;
 	pre-charge-time = <0xfff>;
+	debounce-delay-us = <62>;
 	xnur-gpios = <&gpio1 3 GPIO_ACTIVE_LOW>;
 	status = "okay";
 };
-- 
2.43.0


