Return-Path: <devicetree+bounces-17166-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 157557F16CE
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 16:11:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7FAF5B21292
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 15:11:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DF1312B70;
	Mon, 20 Nov 2023 15:11:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rasmusvillemoes.dk header.i=@rasmusvillemoes.dk header.b="NEjJ9VGT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51819A4
	for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 07:11:01 -0800 (PST)
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-507cee17b00so5753258e87.2
        for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 07:11:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rasmusvillemoes.dk; s=google; t=1700493059; x=1701097859; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=NAmZGLTmGJXV9YK2C2V+/HZinpAhQyW4PPvI5BLDSDo=;
        b=NEjJ9VGTvnXQkawfgAfjIFIOcbQBdGjRz7cCI1K7qN0jLSQ60AP8lb+KTguop8FMqr
         IwJV80RC9juiO2uF7B4Jz9MqEIbZeLQNlXFOn1ppxB4ChULaQ0yrCqBsBtzk6KhOoXxW
         t0hRWzRwMALigKqulTmJb69ObiJh6gIs8/hyA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700493059; x=1701097859;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NAmZGLTmGJXV9YK2C2V+/HZinpAhQyW4PPvI5BLDSDo=;
        b=MZh2VzGvFdyWTBF0EjHJRh22HZMrrwqa6MuXcEAehOpaeUozmb+/fzfda31B1Iw5FT
         t8QfHhlBAFXjhw7aFNG3XjgmjyYq7itNBat7cU5+q/d7YKfy7d2UaR3XyQSGapuMDuDt
         ZduA9FZrog43VcM90LHCAPstBPXqXTmEWEF2gUbWsWdr27UQP6K1lt0NwgtmRY0QNCTa
         RblMwAPnpv+l53xwQivVviK/iL0Wr55RrcPRA3Zo4n2ozWxIM+1RdbilvKrq+cJSSV3e
         A2+2wA79LEQMSVkiBPc68Xwjo9zSreaf7up8+uED0lsjR0DADE+2vdKR9+v/KwufnAuZ
         O00Q==
X-Gm-Message-State: AOJu0Yy83h3YaErG3hBnSECIwBvLyzUKyf6g1Yc9W11LVNDJt+X/h6+M
	uDGWhZCSEQoDl6OoXMoRymQsmZ6TYnjJgEppXgixBQ==
X-Google-Smtp-Source: AGHT+IHnH6t+aeDZ2FqFjKKHLM2XTE0idpLSs9mJN3M22iquOYikzcCdnM4RSlQfzqzHdoWacElXnA==
X-Received: by 2002:a19:5218:0:b0:507:a66f:55e2 with SMTP id m24-20020a195218000000b00507a66f55e2mr5161118lfb.10.1700493059459;
        Mon, 20 Nov 2023 07:10:59 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
        by smtp.gmail.com with ESMTPSA id g29-20020a0565123b9d00b00502e2ab7118sm1207444lfv.50.2023.11.20.07.10.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Nov 2023 07:10:59 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Lukas Wunner <lukas@wunner.de>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH 0/2] serial: add rs485-mux-gpio dt binding and support
Date: Mon, 20 Nov 2023 16:10:53 +0100
Message-Id: <20231120151056.148450-1-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.40.1.1.g1c60b9335d
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Some boards are wired so that they support both rs232 and rs485, with
a gpio controlling a mux connecting the SOC's pins to the appropriate
external circuitry. Instead of requiring the application to know about
such details and handle the gpio appropriately, allow it to be
described in device tree and let the serial core code handle it if
present.

Tested on a board based on imx8mp.

Rasmus Villemoes (2):
  dt-bindings: serial: rs485: add rs485-mux-gpios binding
  serial: core: implement support for rs485-mux-gpios

 .../devicetree/bindings/serial/rs485.yaml     |  5 +++
 drivers/tty/serial/serial_core.c              | 35 +++++++++++++++++--
 include/linux/serial_core.h                   |  1 +
 3 files changed, 39 insertions(+), 2 deletions(-)

-- 
2.40.1.1.g1c60b9335d


