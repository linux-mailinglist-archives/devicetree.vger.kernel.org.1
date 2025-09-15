Return-Path: <devicetree+bounces-217585-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 74442B5859D
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 21:56:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 30CB11B246C2
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 19:56:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BD0E296BDA;
	Mon, 15 Sep 2025 19:54:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="BdQMIcQM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBE6A28DF2D
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 19:53:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757966041; cv=none; b=RdckkP19hYWDFXtfkPvAhDTLOM55gRrMsEFHn/kO/HiB2SXc+lv0vJqbD9H3qfxs4k2SYgT3vQewV7+HQfaSMirldHePtj378DuzdK417xEe/+VD+B9GiIvTUaIpp9GjzBqZODEhgFRXmjtkkc6zShC56YZnnG6WXBxOUhLXeXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757966041; c=relaxed/simple;
	bh=7R8rcOL3f1HwsUpPHaL0+BUAREAOiXb98Mm1tlgtyCA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=MdK7J87jfOr87OtNmtGAYOZC8GtOit4Jl+jS24f3ndT6j+4qrcW3ONlofg5JE2Ui0TKjzncOB9xL/l78RJay0tXRrGpxQ7c7WJ2svQo91WA8zEUO0leU8gOpWNrcjl4ptBEJTcWybxz4N1RX7yTXmY8ibs1uW1Jix4DaFb54qWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=BdQMIcQM; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-45dec1ae562so42205885e9.1
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 12:53:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1757966038; x=1758570838; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AJ9ovkCr6DqOwPekQL9mbbfb8pXGwCeM0TnyH7IdLxU=;
        b=BdQMIcQM3C1ZUH8eqXcOCVq1rTJXq2L/71mDnR4i86VjxoDtEYdPDl9LYJT2t/KlxP
         0AF/4qH8J98MknbzreSQ0Wgxj+jJDXiAIXlcq6B0lDhf3qNJgaulUJCYe0ux5dWvBQb5
         xdq/zFLh/BakheuUx3M6nl5r9TE8ObYPHlUqo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757966038; x=1758570838;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AJ9ovkCr6DqOwPekQL9mbbfb8pXGwCeM0TnyH7IdLxU=;
        b=XhM3cLN+8XOIBb+pbJf+NgfQEIsUtSv7pB9IRXUDtCW2QmFqKFp+C0aeqmUkVEL31X
         JCyY/+NIBe0bZ+2KnH6mmBmTbl7i59ajEFx1Tgv0oBhRPS+b8VM/qsb2Y41kBDpi2Dkn
         OZ7zNFxye5Fkkx1MSk79lGTtgf6+lgj6l8HK0HlPn4b5YUxUTAWSrM5rrcKvobLdYWAA
         Qzp0hI1BCLWLwtJZhA3l2VIUdjX5JFgHkBRlLf1qGgxAaPu5IDq7Ztc+A7YmdcmsC1kj
         r0/yezyB9y0AW/0a30L5rVNvv7Yzt0ebRt6yXW5SqPauso7pIbz2oAbeyFSFBePqu18h
         eXrg==
X-Forwarded-Encrypted: i=1; AJvYcCUD9lUjHphcPGtnyU7Tl9HB2V0DYipcTqXrHt203J2RRBY60adq4xRqw7zvbtW6+tCXDLBlEL+m+2CY@vger.kernel.org
X-Gm-Message-State: AOJu0YwLZvX3GtuEHQiWfVesjbB28wVa0oZmxMZA0toSTfp874nAPC+t
	GAB6wOnU2MX6YfjWVNJ9aCrJFNWSdvEoDU42a6AGpK+t2B5GYAfOvRsAKwIvc/QmB9g=
X-Gm-Gg: ASbGncs/Mqs+8U6F0/e+yGzPgr2+NAO9Zhq4cn0++Yse60cN471WkAmcMX8oAFRAVr/
	hPxuHrNMDkJFfVHTzdWB3lizsMGPaoGZYaG9mWYn/cg1Q1ne7rb6A6MSnzVo15YAdLpPIWZ0rzs
	PbNN4fjRB+Iv+g/J7LFsnw/9Nx94gRKmiy3esCrifgFKw939n7eHs6TXp+UaHDKOp3FcImHkTVG
	o7JSNsdFNcm6BG0k3nvHPckyK1TNhUZ0tSXfQGnIz6y8ADxnEQyfCLz5Ggap80j8/PDbcEub5mu
	BE7TUGRZDj9I9q6oMdU1ZOvmEjYJ7qcsvjgIljH4AIMKe6xh1Ynd8BW0PpDLYOOL5CxWB+7ZjhT
	CGmc6LMv9ugQPa6rB5teTqPdbxiXjL8/m2ZkI12sxu2WaSnjCSnupIo0EPPx4imfFZk6qigiRlw
	==
X-Google-Smtp-Source: AGHT+IFndz1AmdXVeKfJS9fz0y2h9S+/Rc1JyiVoAbeqVDR+ayQsA7o4g+R8GMH0hF64MGhaZdupYg==
X-Received: by 2002:a05:600c:6a06:b0:45b:8f5e:529a with SMTP id 5b1f17b1804b1-45f211d660bmr96982405e9.14.1757966038162;
        Mon, 15 Sep 2025 12:53:58 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.40.230])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45f32640f49sm530985e9.9.2025.09.15.12.53.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 12:53:57 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: Frank Li <Frank.Li@nxp.com>,
	linux-amarula@amarulasolutions.com,
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
Subject: [PATCH v3 5/6] ARM: dts: imx6ull-engicam-microgea-bmm: set touchscreen glitch threshold
Date: Mon, 15 Sep 2025 21:53:07 +0200
Message-ID: <20250915195335.1710780-6-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250915195335.1710780-1-dario.binacchi@amarulasolutions.com>
References: <20250915195335.1710780-1-dario.binacchi@amarulasolutions.com>
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


