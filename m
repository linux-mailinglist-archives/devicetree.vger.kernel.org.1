Return-Path: <devicetree+bounces-163601-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 78AE9A7D710
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 10:01:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 14BAD3A9580
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 07:55:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86FDF224B1B;
	Mon,  7 Apr 2025 07:54:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="gY9vH3Rq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7348225795
	for <devicetree@vger.kernel.org>; Mon,  7 Apr 2025 07:54:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744012452; cv=none; b=uF3FsKfdDcHN6/l+eUGF5kVyFF/cTzmfXtTnpNzktw5IeMfUmv8mYMgnUfxSpBJxAEdgIsnv7+WbbonRL1jWrjFoC91FJm6IVvqNLOc/aw4TmT7B4Yf2Arwo6dZNVi4Sk6jHeP+mdjpuwwNPxHiLlt2ipKNJyXBpkgjGtOYK/Gs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744012452; c=relaxed/simple;
	bh=CIvTP/MtFKlZ44qkNUVxMOzv+BaCzXjhTrSxyHWhQJg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=RINTS//srvTS3tzpz8ggklDeaGHOnDGbbdfQ+Wrn07/86TvOlZNvGt3OLLh6Gm4bHGFEUZRROHwFVDTWuncEhaBknUQ/iYS5Mg1lnAnOcnjlFKDCHoYI2vVrDu5wgMll7CxRRIPNWhTks8+9d+yLrKtyehSAZutNLiQmS7IWx1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=gY9vH3Rq; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-39c31e4c3e5so2428819f8f.0
        for <devicetree@vger.kernel.org>; Mon, 07 Apr 2025 00:54:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1744012448; x=1744617248; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hWxLTEfGg4dc1Gy9lnOUuyFlka68Uiuevn5CcOM/QrM=;
        b=gY9vH3RqdQR+gB31TeRw9A4NMKK4R3ko1BGYlzuJt71XNoeAmw+yVis7vxE7clYIX7
         K8FLRG621Tl9wxo4pULgNMDj5aS8hRxljj0KKnmvRqRpJVJzj9vPr+xXZFfRW+dbPsXc
         UPX/wIqJpVv9C1lF5idpaltVzoMLYRuhyLfStO6LLeg6sBuTNby27ccQ09a+uoY84OmT
         orCiCGIqRns6tTuP5ByttYjUZDMztsypTQCvFM8EUT0GINoq7WMglffZLpZPitzsLZCu
         ZTtlGuGVHqVdSK/KMmj/AFhfj03ge6bAXFgmO4N/5oQtePoVkJUA7UP0NC4SO8CKXJuL
         1FYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744012448; x=1744617248;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hWxLTEfGg4dc1Gy9lnOUuyFlka68Uiuevn5CcOM/QrM=;
        b=Gt0ZjWQUGefECaq/ldwZlenYoma3whqaHUDqbDWPe8YUqLcuB8HAEa00/BULWSiWFz
         +hOc63gtmAsfckjyWnzHhciG2GPBE0UooZFmQmrz29QC1+t6NrT3GsbZwY2lRB5/dTVf
         ZNynBenyQL7c1J16o48nYm+RlhtVGAuTQubDafQR+oyoQDHqwS7VsNFmA6TmGvKwrxTK
         il0/UVTUC18vtjJ9tfKeg9eraMxyQk725VdH4NXwOlRVqILNBlx5WQkhpxPKsvR39kDY
         S71yHu+9oWz7meNz1Q1bDe6zTEigegawjrQMpTvYSfvdZF+wModrhO06EpVu8Kb3JgeA
         iLsw==
X-Forwarded-Encrypted: i=1; AJvYcCWxRD5Dvn+N9kD+fMSfMpP+iSgxcgjNews/heKvPjPRzdFBT6sL4Jli3lBuTaANa4M49J4YmMcidQ6/@vger.kernel.org
X-Gm-Message-State: AOJu0YyA1tNOu6voqb/vnZTVTpldAIwQX8RB1RVUO9k8e5WiegvK1neg
	P7W95iKWNHQwnd9H8Gy6SV/SIOhz18hRVckDTCAjHy6ebF8JQElfdHECFraGDN4=
X-Gm-Gg: ASbGnctHoQJWHfVt51jB1ANUmOWO3Q3YKkhVvDoReFk9CSYtLPxjNTXsajmSujj2Hvn
	mRXdRPzLQg64Aql3pIVIfW+lOsCPH9EXSel69Pf1HmTMZQM7ar7MeYKYQxOwmW7jbYFUFfmFrDQ
	thzO0wS4l1R4wKMdImrfnBIYwfKLjbXPuxTR1uhDVORl+1zXIrRNZA0DbyRuk49V9C9tw9fDhsE
	XVQAJYJC89D53pIDTZ1fdpqacr7fzBwogLfT5rB+T9oFV6mTk6ycvc+d816lINVpiSaOcNPDwI/
	qhiaOYgse+4XoCTUJc0RsxhL1cfBa6UPsORm/zhD31Nw
X-Google-Smtp-Source: AGHT+IHuTVRTtHbtmx6FjkvlzIbJVnydF8KMECgaQSarUJ94LjdvsgdrKIpoRqGzKFTua17ynl8uDg==
X-Received: by 2002:a5d:5983:0:b0:399:6dc0:f15b with SMTP id ffacd0b85a97d-39cba93cd69mr8684049f8f.48.1744012448217;
        Mon, 07 Apr 2025 00:54:08 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:8c64:734d:705a:39a7])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39c301a9bcfsm11494514f8f.33.2025.04.07.00.54.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Apr 2025 00:54:07 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Samuel Holland <samuel.holland@sifive.com>,
	Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>,
	Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>,
	Srinivas Neeli <srinivas.neeli@amd.com>,
	Michal Simek <michal.simek@amd.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Manikandan Muralidharan <manikandan.m@microchip.com>,
	Maxime Ripard <mripard@kernel.org>,
	Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
	Sander Vanheule <sander@svanheule.net>,
	Bert Vermeulen <bert@biot.com>,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	imx@lists.linux.dev,
	linux-riscv@lists.infradead.org,
	linux-renesas-soc@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: Re: [PATCH] dt-bindings: gpio: Correct indentation and style in DTS example
Date: Mon,  7 Apr 2025 09:54:05 +0200
Message-ID: <174401244312.28249.6012698269615129555.b4-ty@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250324125326.82270-1-krzysztof.kozlowski@linaro.org>
References: <20250324125326.82270-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


On Mon, 24 Mar 2025 13:53:26 +0100, Krzysztof Kozlowski wrote:
> DTS example in the bindings should be indented with 2- or 4-spaces and
> aligned with opening '- |', so correct any differences like 3-spaces or
> mixtures 2- and 4-spaces in one binding.  While re-indenting, drop
> unused labels.
> 
> No functional changes here, but saves some comments during reviews of
> new patches built on existing code.
> 
> [...]

Applied, thanks!

[1/1] dt-bindings: gpio: Correct indentation and style in DTS example
      commit: f4271a891dca46ecf6813273ed63e502862f45da

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

