Return-Path: <devicetree+bounces-82723-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D18EF92578F
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2024 11:59:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0F2F91C25B40
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2024 09:59:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA1BF142E77;
	Wed,  3 Jul 2024 09:59:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="YJyBCCR4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F259A142E89
	for <devicetree@vger.kernel.org>; Wed,  3 Jul 2024 09:59:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720000760; cv=none; b=DeAx85QvMjSafkmEew2+8oyWU8IFRuy+6M/CZzSAHAZ8N1N1YEPOz2PKZTcBxJT5+BZDmuBBSApOsLa2E+GPpC1Nq2g/4fY6IvmavjCykIOjFYvgK0k2mxEKTeB6TMI7nB/8dCfAf0jMfvEcbShRqbNcnd73C9bKiz0n90ThLFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720000760; c=relaxed/simple;
	bh=sGAtnatO2J6eXqeP28h5k3NsoxK3kBN+dN2HTxFUaNQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=chahuqbNIcFwf8a1A4ysKL0HnCmxJK7E8/pJJJNr0tWbw8RxbiBkxcGrl4qwmw2ob5Lu3hK5Otr9D5SjMBo7LK9wbIj4+tO2LobOMKoz1U0WbMDnT7x9Wgp7Mq+zSuzDpDNG4IHKiX1DqJGz0xGbINk8HdfrIPQcXQDkFuCwujM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=YJyBCCR4; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4257a390a4eso27977845e9.0
        for <devicetree@vger.kernel.org>; Wed, 03 Jul 2024 02:59:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1720000757; x=1720605557; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XXjn2sMkd3Qhei4SC2lgBtREpiH+FC34ffCKLhev/MQ=;
        b=YJyBCCR4AVPYr3FiuUnJ8It7BtdlO36YcC206Al/buLgp1HV3y5SHYb26/J1ge5YLh
         M7/cc0hYftF7NDlbhvl98soeZ1jlZf/hvJySEPJLTuxzCrNHA0djZvU+zKko14DN2/vh
         rVK9m/Eq0aY/VUlVMxF/RLGSLDjSS2tmFnWGA7bfH0hqqMgWmhGO2B3kE0BMwaglbagE
         WgUZXaUkT18xfADsBCto2XeKkU+niT5vAkuBaPszyVcr8j/dkgm8Jvy+dy/wTkSPu6zP
         a4a/icG/OGFAQRfaqB1tvMqCff/sm+5EuWaVYmW272oO+NdMVJG1z7k7i20/eRoFuRY/
         0FMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720000757; x=1720605557;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XXjn2sMkd3Qhei4SC2lgBtREpiH+FC34ffCKLhev/MQ=;
        b=FJd0Xb326MUAByLZPuKs/KOUzZ/LEP0yxPeUxTqYswpnFg3BnZzM9B3elKaJhpLGCT
         KuJOmfKOn4cWRKq9PFqZCFfRN6XcIXxQjE4nRFaWs+XdrPrlYBZDwZKP8nBwXionDXdU
         Ig/maGw2O8WuZQnyFbLQs3B407HrmTBefW/xY1QVOHWDlOB+0tMialOSDEx1n2B49BRt
         DcP5DjktcqD3hvX/VmfRd9m+KOdRW9X7aYwBCpijGUuETLn1L1eaxV4hUVOthX+ad4iC
         2W3hO7WMIV7sltSYGJxXuWGfwqNQAl2e37zvlv8O76fXtxIQyLlVL8yqirtG8jaEPOeo
         jbEg==
X-Forwarded-Encrypted: i=1; AJvYcCUo8ISvyOphSeXBzjxpib9BMS85JsmojAgiWDtgiRj7mWTyjLW+PWKpxC2uGvMvOnWF1Il50RqsbT2U/653I1aCR50OSm9lI8Eb5w==
X-Gm-Message-State: AOJu0Yx2TiVjXszolKVWWXR+7/O/CKZRef7vXd+iz1wa3U+h3vqmfnQB
	VRwjO3P6dg7F/+vBg5fVfyz5mX41OPcv6yb1gXFbnVPc3XIKYwPS4DazeCX/8FaBs5abMW98YEt
	3
X-Google-Smtp-Source: AGHT+IE5t/Pvc5a0A5rMnsuOFd3tzIXs4aS23G7++Z5PDz6z4fb8QnIv+IEonyMakOI8QAVhkpkcDg==
X-Received: by 2002:a05:600c:1c88:b0:424:ab90:ecf0 with SMTP id 5b1f17b1804b1-4257a020ecdmr79604865e9.31.1720000757100;
        Wed, 03 Jul 2024 02:59:17 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:c37f:195e:538f:bf06])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4256af376f5sm232858195e9.6.2024.07.03.02.59.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jul 2024 02:59:16 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Bartosz Golaszewski <brgl@bgdev.pl>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	imx@lists.linux.dev,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-gpio@vger.kernel.org,
	linux-i2c@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Li Yang <leoyang.li@nxp.com>,
	Magnus Damm <magnus.damm@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Robin Gong <yibin.gong@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	Stefan Agner <stefan@agner.ch>,
	Frieder Schrempf <frieder@fris.de>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	Frieder Schrempf <frieder.schrempf@kontron.de>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Bo Liu <liubo03@inspur.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	Fabio Estevam <festevam@gmail.com>,
	Gregor Herburger <gregor.herburger@ew.tq-group.com>,
	Hiago De Franco <hiago.franco@toradex.com>,
	Hugo Villeneuve <hvilleneuve@dimonoff.com>,
	Joao Paulo Goncalves <joao.goncalves@toradex.com>,
	Joy Zou <joy.zou@nxp.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Marco Felsch <m.felsch@pengutronix.de>,
	Marek Vasut <marex@denx.de>,
	Markus Niebel <Markus.Niebel@ew.tq-group.com>,
	Mathieu Othacehe <m.othacehe@gmail.com>,
	Peng Fan <peng.fan@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Tim Harvey <tharvey@gateworks.com>
Subject: Re: [PATCH 0/7] Add support for Kontron OSM-S i.MX93 SoM and carrier board
Date: Wed,  3 Jul 2024 11:59:14 +0200
Message-ID: <172000073641.11832.10658723886073687420.b4-ty@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240702103155.321855-1-frieder@fris.de>
References: <20240702103155.321855-1-frieder@fris.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


On Tue, 02 Jul 2024 12:31:12 +0200, Frieder Schrempf wrote:
> From: Frieder Schrempf <frieder.schrempf@kontron.de>
> 
> Patch 1-4: small DT binding fixups
> Patch 5: board DT bindings
> Patch 6: support PMIC driver without IRQ
> Patch 7: add devicetrees
> 
> [...]

Applied, thanks!

[1/7] dt-bindings: eeprom: at24: Move compatible for Belling BL24C16A to proper place
      commit: d83c217778e7425d10105001150c5670e07f88fe
[2/7] dt-bindings: eeprom: at24: Add compatible for ONSemi N24S64B
      commit: 3a9ba4e32230df6c48cda1fd5cbca6facacc74c2

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

