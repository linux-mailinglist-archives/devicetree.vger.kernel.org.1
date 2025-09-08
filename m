Return-Path: <devicetree+bounces-214189-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D628B485AC
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 09:40:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F320E1884EF6
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 07:40:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46E032EBBBC;
	Mon,  8 Sep 2025 07:39:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="d3aEOygd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 832512EB862
	for <devicetree@vger.kernel.org>; Mon,  8 Sep 2025 07:39:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757317145; cv=none; b=lDjh1iq63JKVFv1CU6ekz1wk0RjLuhTt9+czA3cjRNQ6ARNouB8fp/x28nMlFDaDbwrvepsaN63eHOV1YXGXvL7JmroAcfZhB8/hawPq4H+k+HCoOF9mWhqMN5KzBdAmU3FiAqPXGVipT9qAvY5QSueE050aqOz1Vd2ib++9F3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757317145; c=relaxed/simple;
	bh=4mkikRFBIlnv519piceNvC2q0vRXXnxeCTIIkGspFak=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=qJcbxmpa9nnXBFpWagCdjDrTUt066w5Tv+nYSH7pmhB4VaqkFMBeo9FafQ+cgn/Y5HuDjkHB/tQs8odJWRmxCjrEFMXgMJX3z+BB4SPJYAjpZhEAkUxeSpuVG9JaXuYoL0zGQ0mDjxwHPS2qwoOOulg7StGs+V+SfXCtQC9QIr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=d3aEOygd; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-45ddcf50e95so13925925e9.0
        for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 00:39:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1757317142; x=1757921942; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VA1N5nJE0Y2B6m6KjWxlCd1B6fND0SNZY3zp3/3Jook=;
        b=d3aEOygdJVNe4z3vFBf8gjuoG/fz4249BUwi+6/6xwnnQ4G5mpXB5UOSCGCYFbstHh
         GaSL7E59+8jxLnRnecQg6syPSMoT5j0nPhcW8Z4dLWyMSnGnrFPL3h327R9glJ50co4J
         Y1l3mtZCkBn7+6A9NvBOD3UZXXlRT5LLRKIRlfYjrRFyM+z42yRLfgXLvI6wLRtK9lHc
         dFYzOgYmf2aYVutjU1rPHaxqn0+djaKiK5wLNF0VfgI1MWxHVOqapmJH9Yg0gOae2GXQ
         eU7sojqxiGUCYFeT9kxRsc7QZoEPk9ptmQOhApLHqawVWFxJAyIz4NU2PUeluTtoXkDR
         yh4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757317142; x=1757921942;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VA1N5nJE0Y2B6m6KjWxlCd1B6fND0SNZY3zp3/3Jook=;
        b=BKdPan1A/S+Elw2THKAT4ta8LzZDbwmUfyrEMWsf58nRdOEsQw3UXey2daFDkERjMN
         jCGBwFzz8870+xh4tEOTEVcL4t9HyzqzFBG1ZoW4DdSYKypQVzFy3oXTDh7ujsb/aaLg
         eXpfJFPNk8Ta4nlnBCjZVtcxL17Pcc7+nQU1log856Ts7i0jLMO/GEFeOJ2MBoEk3vs0
         smt28Y68j7WRU7q4GIHdPZAlp3ni1Rg+9LSYPLIvylR19eUpbFzpcQ1lb11xkhx4H6jZ
         WsSChpItnD/w2xnzNkEdppMONcOkJetXiY91tetcmX1qZDhNLXSlB+HaM/j7VgrMkRr/
         ofhw==
X-Forwarded-Encrypted: i=1; AJvYcCVUK2kd7WN99KPUfui1TLVt7+eZvOfptyoJEWWiIXXhgQ3vKZ1jyLKF3V4xiT3EfNIy7MHSOmo2dLZo@vger.kernel.org
X-Gm-Message-State: AOJu0YyFHEp4GNolkAgpcAv1kDXt9R7LwHbSen9VpKWnAj+NnUMxtJo1
	8XV9gBwfrKA2KCmWKmLrMtJnY729MBWT7Gj78usGkQ/jVNFAnJglu5w01SLnUQHFSOA=
X-Gm-Gg: ASbGncuzOSMgayUHxuk54AJaLk6oI55wCocp8YnPkpuTBVa0U3raVEa3aknxSfqUUUt
	9Zid68krIGJ1iWQk4hEZeopPT6NUPJGk6pCD9UDr4gRLgT1TWBb2ujbIwuA8n/1hgoS2+Ji1Fhf
	IZYBDWAI76cG5cgW7WRRHq4QyA9AdW6QDNZu3oyicSRFzhlNaKMdCINsf4CARe7C9UoI028Dvgo
	n7eCd4WQ1DxI1a5FJFze8eI6w11Cpr0F5aoWm9ZSXB2heOLmt1m2RAPaDopxBHilaIWf9ShFHyU
	/a+6m5HrfDB4FaF9IKpk67fi40r78EU+co9jKzmfaoHT3h6bsJchL5ZeO0qnICliM2SnOI//d80
	rYPUPp382UhrPkfAPO4hcAR+Pf8eVD8d0EqE=
X-Google-Smtp-Source: AGHT+IF1yoHE8XBNSmCWKbccFdvIceSk9MKmYJ3MajrUvEDp0LEWk3b7vAXOa2mkv3XALARmVE71Vg==
X-Received: by 2002:a05:600c:1994:b0:453:6ca:16b1 with SMTP id 5b1f17b1804b1-45dddec8c71mr59299725e9.26.1757317141785;
        Mon, 08 Sep 2025 00:39:01 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:5cdc:d980:b6fb:1eb3])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b7e92a42asm429977665e9.20.2025.09.08.00.38.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Sep 2025 00:38:59 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Yinbo Zhu <zhuyinbo@loongson.cn>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Huacai Chen <chenhuacai@kernel.org>,
	WANG Xuerui <kernel@xen0n.name>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Yao Zi <ziyao@disroot.org>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	loongarch@lists.linux.dev,
	Mingcong Bai <jeffbai@aosc.io>,
	Kexy Biscuit <kexybiscuit@aosc.io>
Subject: Re: (subset) [PATCH v3 0/3] Support GPIO controller of Loongson-2K0300 SoC
Date: Mon,  8 Sep 2025 09:38:53 +0200
Message-ID: <175731712490.48218.8429152317469745500.b4-ty@linaro.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250904013438.2405-1-ziyao@disroot.org>
References: <20250904013438.2405-1-ziyao@disroot.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


On Thu, 04 Sep 2025 01:34:35 +0000, Yao Zi wrote:
> This series adds support for Loongson-2K0300's GPIO controller. While
> being mostly identical to previous implementation, its interrupt
> functionality hasn't been implemented in gpio-loongson-64bit.c. PATCH 2
> implements its interrupt support with an IRQCHIP, and the code could be
> reused for other Loongson SoCs with similar interrupt functionality like
> LS2K1500 and LS2K2000.
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: gpio: loongson: Document GPIO controller of LS2K0300 SoC
      https://git.kernel.org/brgl/linux/c/084d01a173f5f41afd326b1dfe73085972530ca7
[2/3] gpio: loongson-64bit: Add support for Loongson-2K0300 SoC
      https://git.kernel.org/brgl/linux/c/03c146cb6cd14fdab2d2c7ab1b4e8035b54df8cc

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

