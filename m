Return-Path: <devicetree+bounces-110817-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A291799C0A8
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 09:04:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5557C1F234FB
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 07:04:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3098145B18;
	Mon, 14 Oct 2024 07:04:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="cAbzGWCs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F43713C9CF
	for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 07:04:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728889469; cv=none; b=D6S+wQNBXh6oR9j82RTG1HK3d6yGXBL1gPtr2pDR4uqBmNh6kVygHFVqZTs8IiqSFIqAT+dFl4EJh/OtfqIwG+EYWL5YaQ/fycZbGjaxVgTTdxyD6bLwq1Wwqd/eGMnDlhmsqPrlJ/kx2LiX1r91FCwCCf2R4UWyYeVwHXtvc4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728889469; c=relaxed/simple;
	bh=1tnQkcrlnmhSLkcCnpIoVZ9FM8DguvSHLh+6Afm+r9A=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=euNETyDKGtiGpijf/Fp2GybbFpYUQ4sNVRTYhUEB4QUF4iLoVQMM7PJngRJBIHWUI1erAjNds+BpUVtngMD8N5TUICpnF0uFAX2nOikYk59TLuLfrFHLchF9oLRDLergwq9JuKWAAvp8DFKUuz5Z1PSEl8jjYuIqdaYTqaAxYqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=cAbzGWCs; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4311420b63fso29311225e9.2
        for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 00:04:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1728889466; x=1729494266; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FZPk1p46Il+cHBCE9t0JeMt9zPjBTrGoxmAeiUZmgWE=;
        b=cAbzGWCszz7nsUSp+8tLwOU5JhdCRI2TSMfEDqJFFItcx7+5kV2GrT2xoYYSoGjM/U
         PxMeYkcKHu+mn3dW48PSRciL17K3z2VELCNmQzB6d2fN55xoGCWF9xwN0wgp+Ff7eM0+
         PPbhm26kYgpYJ6I134JAbYOVUSTVZ/9aa4OvnHHA7Zn4O3EtKVXFJOUDEIDRxCXMCcGl
         cdMbDYeQXJfmqB98oi8k8Vt1o4kzVasLF94URMQekWUA06UEWOomLFsfaIFD88hau1iD
         oc53x3gZTthB3d6AYn4ebnXBjD6secf5Dz+HqZLKrtR790pe/jcvJlPQ5KGPvN66dvur
         eXog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728889466; x=1729494266;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FZPk1p46Il+cHBCE9t0JeMt9zPjBTrGoxmAeiUZmgWE=;
        b=Qke+KTzzj4cLkXfLs6DV79/F4l2asMGob34bhzhQ8WY4lVZu8W0To2k5WG7QfPR73b
         SUntpDvOhde7XR3XjQZcVQpg2KzYqLHJaxiOvfyq0358OLlysrPEGjIEV+8ziiByA5uf
         f6yFWZy4cGbDj6Rfxx5yQKmadJDnaIzFqpBbPX57ot2+BTjZOw4iWz+04C6I8su+06cS
         6NT7uy6dUwWtcGbW1EjZDJUPURJTX47sLOpTdtYLqPUq9BZe1otMMVtasVKp0W8ouT1D
         Rqb7Q/eqQgQUzKREo72pO0uXmg/quH2lMuR2H7Z9qUXT6mbrFFBHXJSupTwidvJNQhet
         nSCg==
X-Forwarded-Encrypted: i=1; AJvYcCUmdbFviNO488vwZ3kj/KT7rvyZ9WPgWflULtCBXO/y93SaLHNzNiTJinYoQ9IkjBbQ4qfnJ2nU3b5z@vger.kernel.org
X-Gm-Message-State: AOJu0YyAONeXgwHhUloiGR0cMrstmoyvRg/mS8wXg7TtZdgbzoCk0BeM
	so3P4ChVyW2GZSDHh0QmdAixbkwleGSapiICBgEuiQfvMg0Hq0cSVx/ogBY9NQkH6x4026t4Jiz
	O
X-Google-Smtp-Source: AGHT+IFXZQD/K1TLeG6NfOcqX47mkpjTTLPrGn0buq1ncVnep+McVxEHfHC0HAl+62igUxMhH42q8A==
X-Received: by 2002:a05:600c:1c9d:b0:430:57f1:d6d with SMTP id 5b1f17b1804b1-431255d5099mr63896535e9.1.1728889465611;
        Mon, 14 Oct 2024 00:04:25 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:de54:ebb2:31be:53a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-430d7487c4csm143659185e9.32.2024.10.14.00.04.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Oct 2024 00:04:24 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: linus.walleij@linaro.org,
	brgl@bgdev.pl,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	joel@jms.id.au,
	andrew@codeconstruct.com.au,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	BMC-SW@aspeedtech.com,
	Peter.Yin@quantatw.com,
	Jay_Zhang@wiwynn.com,
	Billy Tsai <billy_tsai@aspeedtech.com>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: Re: (subset) [PATCH v7 0/7] Add Aspeed G7 gpio support
Date: Mon, 14 Oct 2024 09:04:23 +0200
Message-ID: <172888945458.6232.12570065156992505241.b4-ty@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241008081450.1490955-1-billy_tsai@aspeedtech.com>
References: <20241008081450.1490955-1-billy_tsai@aspeedtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


On Tue, 08 Oct 2024 16:14:43 +0800, Billy Tsai wrote:
> The Aspeed 7th generation SoC features two GPIO controllers: one with 12
> GPIO pins and another with 216 GPIO pins. The main difference from the
> previous generation is that the control logic has been updated to support
> per-pin control, allowing each pin to have its own 32-bit register for
> configuring value, direction, interrupt type, and more.
> This patch serial also add low-level operations (llops) to abstract the
> register access for GPIO registers and the coprocessor request/release in
> gpio-aspeed.c making it easier to extend the driver to support different
> hardware register layouts.
> 
> [...]

Applied, thanks!

[3/7] gpio: aspeed: Change the macro to support deferred probe
      commit: f1bc03e7e9bbbb18ad60ad6c6908b16fb7f40545
[4/7] gpio: aspeed: Remove the name for bank array
      commit: d787289589202cd449cabed3d7fde84e18fb6dd6
[5/7] gpio: aspeed: Create llops to handle hardware access
      commit: 79fc9a2fcc457f4375118fbcdb6767163870b5ff
[6/7] dt-bindings: gpio: aspeed,ast2400-gpio: Support ast2700
      commit: bef6959a3746fc8207a0ca75e239c95d7409fd90
[7/7] gpio: aspeed: Support G7 Aspeed gpio controller
      commit: b2e861bd1eaf4c5f75139df9b75dade3334a5b6c

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

