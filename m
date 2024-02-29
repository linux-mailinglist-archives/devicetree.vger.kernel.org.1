Return-Path: <devicetree+bounces-47176-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DC3E86C5C8
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 10:43:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3DE191F23E34
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 09:43:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B08C60DFC;
	Thu, 29 Feb 2024 09:42:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="O1jLiK5t"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E67D660EC5
	for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 09:42:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709199749; cv=none; b=nGv1k97d3UBBenomk7T0KS5ncwWgIsWHPDiU8A2t82cC6iwM0VMw51J3UYkGkLOxlbfQXbVodaBYIqyidwIMgLMKFKvnPTcK/ekhdu0SPGsZn3LDI7rXZ3EmDAgffWm1+8Ld04/6RyKphwj7Gets8kmKaz6p5lsSgFIvXWCvpvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709199749; c=relaxed/simple;
	bh=7uKC/FvBJpACc0ZQ/imEXkYWFQ7oYf5ML6Z59yi/fM8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ShxBtM30VbfmgdzLOJJqUo9MOqC3gMZUGanCZ0CZRrNAXCffRbqiO5VPZ+LTG6DIteOyL3xV5sjRfCSadyj9XDQvm32axIpOcDYErQMtKYwaP7FKB9Y6wptWT/nzVhAJTxgov9jWGz/kEMxqXw3m3j+HpFmvQ528348GN9RFA+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=O1jLiK5t; arc=none smtp.client-ip=209.85.219.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f180.google.com with SMTP id 3f1490d57ef6-dcd7c526cc0so760806276.1
        for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 01:42:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709199747; x=1709804547; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7uKC/FvBJpACc0ZQ/imEXkYWFQ7oYf5ML6Z59yi/fM8=;
        b=O1jLiK5tNdoIuhCWhmcMHOSCl+L+Kub7p0BfgOb1lMu1o2jlqrTYRSyoKbF5aRoX4z
         5MSaYrAQnCbJeGc5GXnMbEPeYADekqm4IAUkFJriINVsoqRmrzRFt0DpwDirM9x56BIF
         UbWCEfxBvaTDPDM+9ixQMC34dC9XkT5POpdhDExEmPyrM9uQOct4w6HuHa3MFqbo1vbX
         hi819j8TpZbYX4vof/2qWPfXVI1wcLVBQbR1ARAlWrdsxb83xn8LYzKnN07W/iOOnX9m
         GtPP1IOks/RruAlPcHdKCQ4ulubCKdLdWFOWzO4eMrh+MgYwipz9wkftRO2+zJ9VdfXW
         6Y5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709199747; x=1709804547;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7uKC/FvBJpACc0ZQ/imEXkYWFQ7oYf5ML6Z59yi/fM8=;
        b=DuOtC75aVnI+e9r1mPqf3yiqw3zexkopzoY5lDTTyCrSX+yL98rMzbj/T9dy9xpmgx
         cLBm3GG66RhIyIZmYcb7cm5TBPkGMf0J2xSKoen1L/+SDX5J7TZjNpVnumtXJzsBvJKz
         /5wLg83PK+VOiz8Ks+hnDMrMxgbKpZnEZzIf9GuFC7SV3hT8p5iYUXcYuLYwf4LMWWCe
         DL6fZFTLu/3ecHhlCdeysQvEvZHDUAzz7n/3bovxELxJzOlvnz0J8asItweVJO3Z53dl
         2/Vl6lHASAerDXtU5ZKd9xWjlS5fxLy8vLeVTra0rwcGtbI88+gYCNHGXYLPOmRng8Di
         DLZA==
X-Forwarded-Encrypted: i=1; AJvYcCU3sNEH3u52l+HwdlpTtFZlEdw08DE+Mc+sGkBBzIZyqMPq2fwgcwW2LalpLLCOT37P4M2tyMpNH/xk5F+gV2sH7ydPNTqOladUrQ==
X-Gm-Message-State: AOJu0YwbU0AMsTht2scQvttChw+jnV/NnVd3qB/oWUjoS2wjPPLRI9y9
	xdfiPUYu6JT9UsEGp3OnK6nvX/0YkIrEoIvylfzTsa5lNnScXNInCGx17koJ5q+q0hm+PmljvX1
	nqEUhk3ZUd5OucIDbXlvGNDlis6pe3Qw4VX6kRA==
X-Google-Smtp-Source: AGHT+IEpJ3NFu5a8qlfTHTx/bDighLY1fBT+nS1X9VL0cGXlwBe5EOlcAMNoF6lc/EO/wb8zGIf7qpxZCEmSAd7rIAg=
X-Received: by 2002:a25:ad62:0:b0:dcd:13ba:cdd6 with SMTP id
 l34-20020a25ad62000000b00dcd13bacdd6mr1498057ybe.47.1709199746956; Thu, 29
 Feb 2024 01:42:26 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240228-mbly-gpio-v2-0-3ba757474006@bootlin.com> <20240228-mbly-gpio-v2-29-3ba757474006@bootlin.com>
In-Reply-To: <20240228-mbly-gpio-v2-29-3ba757474006@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 29 Feb 2024 10:42:16 +0100
Message-ID: <CACRpkda7m9qvTED-meROn=U1RQUYe4sW47n9EJisPFoVV10Z0w@mail.gmail.com>
Subject: Re: [PATCH v2 29/30] MIPS: mobileye: eyeq5: add resets to GPIO banks
To: =?UTF-8?B?VGjDqW8gTGVicnVu?= <theo.lebrun@bootlin.com>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Thomas Bogendoerfer <tsbogend@alpha.franken.de>, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mips@vger.kernel.org, Gregory CLEMENT <gregory.clement@bootlin.com>, 
	Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Tawfik Bayouk <tawfik.bayouk@mobileye.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 28, 2024 at 12:28=E2=80=AFPM Th=C3=A9o Lebrun <theo.lebrun@boot=
lin.com> wrote:

> The two GPIO banks share a single reset line.
>
> Signed-off-by: Th=C3=A9o Lebrun <theo.lebrun@bootlin.com>

Acked-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

