Return-Path: <devicetree+bounces-236945-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 93EE8C49A77
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 23:53:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 84ADB4E241D
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 22:53:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FD182FBDE1;
	Mon, 10 Nov 2025 22:53:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AudvVO2c"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com [209.85.128.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01FE32D8DD0
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 22:53:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762815213; cv=none; b=GLlyo3x9jCUkxiS5Q+RtTFi8Bwx+oA1YGqgGag0uVc72qiq1kf4OIHDTp8YnGwiKj4jlF62Ih6RJ1t7TKilT/fqV+Y2aigDuumbPKq8OBNxTDBTdl79OTh4CGwWfm3Pwh/OdjFFbQLQmxoCbhvdlmvWVEHkVHDPMeVqhn7Rxs9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762815213; c=relaxed/simple;
	bh=wisYcRrfbRCUS5Nty2NE2uua4YAjjkpHuPSNAbv96NU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=iCzLMzJyvZ/iMdffrVbZ/KRqwOzO1smpsZAXZYdkuBSo1IR6fO8mAjwIUfvVGyZ0pGJVMXhNDdqD8k7dBDOrbe/AAX1XppLypvHRL+qezp++Vhu8UzDSZOXoaCHxv0sKgzdfyO1tpIO0DXEIhzoJiHWqtj1YbQiAW1aU7Y4okg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AudvVO2c; arc=none smtp.client-ip=209.85.128.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-7866375e943so30552977b3.0
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 14:53:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762815211; x=1763420011; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wisYcRrfbRCUS5Nty2NE2uua4YAjjkpHuPSNAbv96NU=;
        b=AudvVO2cMkyPBBwt2VKR/f0oHN0f0k6h118jW+/y565F5diSyp65yYptVRGZrhn55I
         KsPpNbCg2Q1HLaO/Xz6IGyRYtCtHKiJm7xnfEU94r57rSGr3FK+syusG69becW1ZwiYo
         6eUbAn1YGKK1sRnYF80Cl7sLxK5YPzsr2J0OYi19GxKh7UonFjagPCXlB9d60lOqH6q3
         8EALVKAAcKl3odRqL5NJF5fvc74qARSfXqFkCo5BO26UkK/F9SQ4HhU+zG1B95HrhBva
         c5VtiSOAheZ2LaAHL3fpfwdUPFlCoJt7Ij3aa9/615Y7tZ46vD1gTPo6DHyo9ZV1/87A
         p03g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762815211; x=1763420011;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wisYcRrfbRCUS5Nty2NE2uua4YAjjkpHuPSNAbv96NU=;
        b=ZlcSNxP44u/u+nMxrlYGeYuhC/+F4swMl3ioAjJR7vcu8YKua5wcwhnItK8+us5d98
         CacjNXkU8EkgY6HiF5f0HKs6di870Y7cm9XwVAy3bV4D0DqqjYWmWaWh1eFOLiTXH3t9
         cfp8Q+75JwJe5+byih/lkLGsQXoYjt2kR41sN2Ph8JXb1geLmLiXKel8+OsVCfj4mJtC
         As2+9ScuLAkkQjLQKS+oMKaFLDmHub5i9d/QO4vfUGluzqPpO1JSabauDXi2VkyVdLl+
         aOp28ccWbEz+qUF+pRvP3RpwGXj0qjwpLlyfA/YMb6muUnlQPKA2/L+gNmwEdQiL2Qj0
         amXQ==
X-Forwarded-Encrypted: i=1; AJvYcCX6Q2WSZjmqgNR5ETDLbmgQ8o/mkdOgC5bd0zdeqyspt0x+X/MCj2z6goGliYhmWVZxj6et+0jvOtCk@vger.kernel.org
X-Gm-Message-State: AOJu0YxCTacPW/8vnyG1mQlr6IH0CPzNb3ifvFeS9sbDIrqmrr+4eTUQ
	CtrhGGKQBsdPJYrwb/aTcF4Q947nzVtGMOhRqz/2qNPRna6wL+r9r21/f2K4ZLiS3Z5dTZppCyY
	Dqstf3mXGwGp13KpwjYyzliXUoxAFaYI4yipeo51Nqw==
X-Gm-Gg: ASbGncvuTScsKYlAkBnWKNypYvp6e/YDd1nWL2UipxOdj2K513OoccXTVdE1+Q9ZkAF
	U3QirPPo6int6qHuIkjH+9Dnlx60MUssJiEaedtbX4cJrOu/Gyb71zUzZ4WvGC5uEFj9esr9ZO1
	r+cFTzd+6+mD/k5AqW8bN3fIw4X+kaPRQXjX25FRssAQGUQlKkw4+xrVPC7c3pSC72d65yQRbXR
	AV/41ctb+r7vavUykeJ0PpgTk1nMejN1wIu5p95mien49IigfrB7QutnDUC
X-Google-Smtp-Source: AGHT+IHNyQvNqmdYrM78QwHVRvJjiWbfKP8B2ocT8ZX+eLdaIL3JAgnLzsUw0lJqDlEMqAhgvtyOmYzmDcTqXg2ZMiA=
X-Received: by 2002:a05:690c:b96:b0:786:a8bd:3511 with SMTP id
 00721157ae682-787d5344644mr101270777b3.4.1762815210861; Mon, 10 Nov 2025
 14:53:30 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251105163610.610793-1-jelonek.jonas@gmail.com> <20251105163610.610793-2-jelonek.jonas@gmail.com>
In-Reply-To: <20251105163610.610793-2-jelonek.jonas@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 10 Nov 2025 23:53:14 +0100
X-Gm-Features: AWmQ_bkxttTo889YZn0qA_t2H-4zQ19FSfxreSfKwmw2tLV48lnj9lIQa9TIwuI
Message-ID: <CACRpkdbo-mT18fws2J1eUsN=-KQQ36YLiWS-p6nTwRqHnmDq5A@mail.gmail.com>
Subject: Re: [PATCH v5 1/2] dt-bindings: gpio: add gpio-line-mux controller
To: Jonas Jelonek <jelonek.jonas@gmail.com>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Peter Rosin <peda@axentia.se>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Thomas Richard <thomas.richard@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 5, 2025 at 5:36=E2=80=AFPM Jonas Jelonek <jelonek.jonas@gmail.c=
om> wrote:

> Add dt-schema for a gpio-line-mux controller which exposes virtual
> GPIOs for a shared GPIO controlled by a multiplexer, e.g. a gpio-mux.
>
> The gpio-line-mux controller is a gpio-controller, thus has mostly the
> same semantics. However, it requires a mux-control to be specified upon
> which it will operate.
>
> Signed-off-by: Jonas Jelonek <jelonek.jonas@gmail.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

