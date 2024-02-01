Return-Path: <devicetree+bounces-37656-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2929E845CA5
	for <lists+devicetree@lfdr.de>; Thu,  1 Feb 2024 17:13:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5C88B1C294E5
	for <lists+devicetree@lfdr.de>; Thu,  1 Feb 2024 16:13:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DFD0B77A12;
	Thu,  1 Feb 2024 16:13:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YUGxfB0J"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A84ED626BF
	for <devicetree@vger.kernel.org>; Thu,  1 Feb 2024 16:13:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706803995; cv=none; b=OogiZxiqyhBQB8cwf9SgTALhxd6NsBlSZ/VVIJ2Iu89YF/qmgfG0251gfOcYWusI9ezNCyYQolG0hlgqmgF2YY9TDPH4TJE6yhvzq9CK5k3a/GQHPUDmKSVTkC5fO5UtHvyxsOvx722Px3UYWjTvsnXAmvQwZfUro/PwDDMoF94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706803995; c=relaxed/simple;
	bh=GP+X1ArMeG/tG2Y1s867iydFsyCr47gDA2fB2MdS+gY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=uA5BxJ3in1JipSvGmdKpIYPjbvGXzdKQNBSkKOs4nDXzPbooqkc6XO2fETLn3BjriQ0ix+B7B+g+OrVliEeKcFwiC+wmTVtEQEPBFBVMR/OYcbC5PEBAr4dL/gXj3NIuVvj7hPCbo7rLlScS/vFngI6dRMFpHKPLTp/1RqVdZqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YUGxfB0J; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-a35385da5bbso194980966b.3
        for <devicetree@vger.kernel.org>; Thu, 01 Feb 2024 08:13:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706803991; x=1707408791; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q34bmt6v/3YhSDrxvXW9WWNgkiR+qYi4pyj+IFIv9Uk=;
        b=YUGxfB0JxrM+BKdgIbC1XQkPCbJ2PzzX4nFdLwkMABjjggwNGn47k0YdFw1PjNY3HS
         dD06KFs2wdVA0hPPnqlHoqCKZ6tzQFIlehS2lwpzq0Fd1Ya6tGFkvehnpmJKT/M0TjHz
         Sq2oj6O372KHv74LAdkE5qbkvwGWl69X2id8+QWjsHkZExCPv1PwdRv87PRXFnwiW9e4
         OlMiI34zJJLKGkIt0+xYBQwgoSQY96WqgiploqS5ZFsvF+DoN2da1cj1ScOGql3aMg45
         p0+5fK1GzbdcW0mR4N6LAi6DjTnmdqnUDq/4+WsUobgb8U0wP4gmU2IoYunxlzV52bk/
         ILqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706803991; x=1707408791;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Q34bmt6v/3YhSDrxvXW9WWNgkiR+qYi4pyj+IFIv9Uk=;
        b=oE2mrWx/GlbkFoianBMB9zgj1UuSrHymjpJZWVbot/EV0inszuPypMw6R+aWVv0mTv
         Exbwk1u5RlIQ02QCFUrPlFWChhLjJMuLMlY5XjkgX7240zuTXH0dYhRosKVHqug0HuRm
         arSYA3EjLi3tdX9LCwk3YB+vIlFDRELnPQRKxaEFAhshADoi0+/xApIpLyninUSX4i45
         hNG9OyS9UkyQtOVX5TesSKNPf2kOU1dloHIfQDs1ojVzsckS7s3buxI3gxRfsMCxVYvN
         AbtrSsupQzhHWvI3YFXMDPGslOm4HZl9e4Ai1165ijlH/qrJrULlLAqpSNF/Ff/0Id79
         GbuA==
X-Gm-Message-State: AOJu0Yz7YQNVthpAY46LoY1+YdQuS/zA+mklIjxe6O5yvN7yweaexacb
	w5ie5vKvvbKFgRf14GnsMqVOOuK5cZWwCEnB4SmVo6hppr0NO3XuUsBA3iY2gzw=
X-Google-Smtp-Source: AGHT+IE+I9fBEADVIjN7SDphyfBYn/i+b453SplfEkYPdBXJjOYKvhNQayV6lHRGw+nR+1rcKzfpFg==
X-Received: by 2002:a17:906:ccda:b0:a36:8431:6edf with SMTP id ot26-20020a170906ccda00b00a3684316edfmr3473176ejb.37.1706803991073;
        Thu, 01 Feb 2024 08:13:11 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCUg2vdg4XPrKNhZSPv1wlhWejmWOxOAo8h9pzcN1Ibm7irEEC8b+0oQjBGbGEdfRla8CbuRZwXJmq+zYjaWSC0ElS2peyaYobN+x6jwNsSn5AHGRmsl4w1OvttfQJGTADOgnOXRr3Iyx+1A9yU/tfXW+z46K7kLVhG6Ut01dy9QeyLPNzzgTmsJKEcF5vdSRNEp5/Glk/Zn82lwrIsRPMFNzlBT2dmW4kV9031O/ponV0QuOKmaGoy4gvWMZl/Gh2Gi1RFZO9wPuL0PIpub875RkqLgShma8Fh7w0MspW10wHsY0pboS0+gtdwJK7WDb6iaNEiyowPjCcsWBbdcWUU5SKE356zUihgrj8FfWpU/52znOmpUoD0z19Dy58GQ/ShN0xsqlh5FXzIrLegPxENq7NxlE7R1AvX6ko+tAe3YRq5Kldj/wDJ5/iOn3oqMWlrdoAEUzftW8SM84/vVkwN7Zsiqg9mBg1Ixb3Tta2l9OE4wVzBa3gVVfdsMypad17vPvtrwQqmBit7xaOc45TW+cLudUHiufwkt5/6IEomTckDh4lJ6JUAjwFrjY6S87fAUyO9JVf4urSevABjoffglQdCRoZFS5psHo46BRNvKSdHwsvrmFD1Kd+AnKTF1nUMpeIvK2MQLt3dMBY5Vd6lF9HTe5d88AKlcFtmQq2lWivSEryUNxA==
Received: from puffmais.c.googlers.com.com (94.189.141.34.bc.googleusercontent.com. [34.141.189.94])
        by smtp.gmail.com with ESMTPSA id hw18-20020a170907a0d200b00a3600d7c2fbsm3449288ejc.176.2024.02.01.08.13.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Feb 2024 08:13:10 -0800 (PST)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@linaro.org>
To: peter.griffin@linaro.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: linux-kernel@vger.kernel.org,
	kernel-team@android.com,
	tudor.ambarus@linaro.org,
	willmcvicker@google.com,
	semen.protsenko@linaro.org,
	alim.akhtar@samsung.com,
	s.nawrocki@samsung.com,
	tomasz.figa@gmail.com,
	cw00.choi@samsung.com,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	=?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@linaro.org>
Subject: [PATCH v3 1/7] clk: samsung: gs-101: drop extra empty line
Date: Thu,  1 Feb 2024 16:11:37 +0000
Message-ID: <20240201161258.1013664-2-andre.draszik@linaro.org>
X-Mailer: git-send-email 2.43.0.594.gd9cf4e227d-goog
In-Reply-To: <20240201161258.1013664-1-andre.draszik@linaro.org>
References: <20240201161258.1013664-1-andre.draszik@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

There is an extra empty line here which doesn't exist in any of the
other cmu code blocks in this file.

Drop it to align cmu_top with the rest of the file.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>
Reviewed-by: Peter Griffin <peter.griffin@linaro.org>
Reviewed-by: Tudor Ambarus <tudor.ambarus@linaro.org>

---
v2: collect Reviewed-by: tags
---
 drivers/clk/samsung/clk-gs101.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/clk/samsung/clk-gs101.c b/drivers/clk/samsung/clk-gs101.c
index 4a0520e825b6..27debbafdce4 100644
--- a/drivers/clk/samsung/clk-gs101.c
+++ b/drivers/clk/samsung/clk-gs101.c
@@ -25,7 +25,6 @@
 /* ---- CMU_TOP ------------------------------------------------------------- */
 
 /* Register Offset definitions for CMU_TOP (0x1e080000) */
-
 #define PLL_LOCKTIME_PLL_SHARED0			0x0000
 #define PLL_LOCKTIME_PLL_SHARED1			0x0004
 #define PLL_LOCKTIME_PLL_SHARED2			0x0008
-- 
2.43.0.594.gd9cf4e227d-goog


