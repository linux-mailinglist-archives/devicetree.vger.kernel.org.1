Return-Path: <devicetree+bounces-224472-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 44CD2BC4319
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 11:51:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id E3B50350FFD
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 09:51:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09F8C277007;
	Wed,  8 Oct 2025 09:51:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com [209.85.217.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A28C243376
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 09:51:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759917077; cv=none; b=jYpwDcLlpjPz9n9nEDVZ171rGw3YxJpGyJHv52DyDiTwlVZx/7JRFFTj0TRKpqQ0Phh/pQPeBMzwq7dgFoSMxI4Ef4ikAfYn2/ZBVd8ozkhUTrg/P4PLkIWbZLT3g+nKdo92rsys0YXvCgx0vL0FukgP2vrKqcSwX/arqwCtAcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759917077; c=relaxed/simple;
	bh=r+ToGzTI6uxWEPYumm60pPHWI41nkxsIjrp4Zp1EsqY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LnG+o9JXImHDIjS08Mj+lTnDT6X07euAGrswjKxHlfRxcNEyccScFku/x3uItuoZ4EtXGW/TuifruDihv3lZMS7VvV5rhkDdiPq0VLjxl6OtgxmwVBcZgKufaN8KG9jK4slgf6yb/6ho2vOiCShnnu4ZF75JVRhyE5gRCWrCFDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f41.google.com with SMTP id ada2fe7eead31-5c72dce3201so3041591137.3
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 02:51:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759917075; x=1760521875;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=G09dlK4ttSR1bBxdlZNpESQsXtEQhLpmRygu9mDDuZI=;
        b=xDoQC4oivKgRtuKBPvGpmteulzf/Rv04gGG934Af8A3y3uqjPI9ihiQrn/4uZFULm2
         8ZsrkA/gxMjm9E1ZRVtMHGPTJ4Nn9YUrbQiGsbAx+7C5VXUvu5JSb5IaVi3CI1ry0x2l
         X/Af0hwWrtlw9aMyUdzSEARf8OLfjrPopQmEYIl01TWLGlUzUk59YKFH2DykhMwZjsae
         ss0+o9yF2dSCIubXEQqs1iO0TD1KuaJ3qkjic4oen8TIgB8JpqNpyshrmCNu8Bg5eiIY
         XuK7601cN/j4+G2+zkHInCF+vunawcVUzu1agAEn97/EueAMHxHKk3UQ4g1d/rmegXtb
         Q5Nw==
X-Forwarded-Encrypted: i=1; AJvYcCXF1volMKnHvfRTFL7Ep2xJa4EXIrZzMK9GIAJcubsgDKh/Ve4gsMVwEm2EOAo29KhwUjhYpWreC5vz@vger.kernel.org
X-Gm-Message-State: AOJu0YziRE7D1dhwGtHXSf2+2Ni0XqNXYPguglrw5wZYPNtkyoxZw29N
	/QdhhJwKKEebLd892H+gUP6pxEAo02j3ia03lt92Q1xWU+Yu3QfRbgwT9HY7og+Z
X-Gm-Gg: ASbGncv/QQpj/ZWOI5lDze+FOEuva4DKNmkqL8PV9Ifk3UnulV0FOHxM1xLl7Xo4DGC
	EC9dJ379oXc0vOq8MXwM7l+a+56ETYa5WFh8ruQAW3/mfCz8fojNPBXRkOhKPMbGJi1/Lhsae1C
	ksnSj4gbnX3Cp4nbmZ9/MPFzP+9z7gA6MYcJHORc6+4KTBPgTjdPfVi5uUe2vaUOemXUfhcQh6T
	tBMcrCMtqZ9KJScd8PAsi30ZfbSZPAKOjwaqCcwDUA1XrlCW24lCNtM5ldFnfaacWjAeaHnUOML
	A3Gl84ABC2mcaujs/v2wYdAeCqab8cSdBFu/JwMiK+OR2Kchli5j8w0i6DSZFaXzGhKR7Vjgohd
	oX5/TiQZYbA2HxqsAlL6nwl5ay6W7IDCztKh+E4IpPjuSvrekdYTFYwIYWgaPZx3cXN8eye8ne+
	gFmrwbNMk/
X-Google-Smtp-Source: AGHT+IFGkD+EmozZqlNISuot1jxMg9ETeqWJ9lAZzMg/QmDwfbxCJ6kZuc2GKwWEfb0cY8i+HLfNkg==
X-Received: by 2002:a05:6102:6c6:b0:4e7:db33:5725 with SMTP id ada2fe7eead31-5d5e21fcac5mr929920137.3.1759917075024;
        Wed, 08 Oct 2025 02:51:15 -0700 (PDT)
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com. [209.85.217.45])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-92eb4ede9ddsm3902881241.14.2025.10.08.02.51.14
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Oct 2025 02:51:14 -0700 (PDT)
Received: by mail-vs1-f45.google.com with SMTP id ada2fe7eead31-5c72dce3201so3041585137.3
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 02:51:14 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCX3lyDFh/ZHbkuW++UX40O5SwaENhIAEhKNBAydiVs0Hrtr4z4TxuO6tRQJ2B0yQGyIVO6yEYkbPX60@vger.kernel.org
X-Received: by 2002:a05:6102:512a:b0:519:534a:6c20 with SMTP id
 ada2fe7eead31-5d5e23afcd1mr853215137.30.1759917074311; Wed, 08 Oct 2025
 02:51:14 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251006172119.2888-1-wsa+renesas@sang-engineering.com> <20251006172119.2888-2-wsa+renesas@sang-engineering.com>
In-Reply-To: <20251006172119.2888-2-wsa+renesas@sang-engineering.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 8 Oct 2025 11:51:03 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUb105BF1pNtqMpq2N2Yrh0Rp2hAxuzaZZWXfQfou=k4A@mail.gmail.com>
X-Gm-Features: AS18NWDRVT_iGSvxNuYXIG-QZwF9FHymRVnJQTzRE7VPezsiv6NxhZyhisJFrAc
Message-ID: <CAMuHMdUb105BF1pNtqMpq2N2Yrh0Rp2hAxuzaZZWXfQfou=k4A@mail.gmail.com>
Subject: Re: [RFC PATCH 1/2] dt-bindings: iio: accel: adxl345: document second interrupt
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org, Rob Herring <robh@kernel.org>, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	=?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 7 Oct 2025 at 01:20, Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
> The pinout of all the supported chips in this binding have two interrupt
> pins. Document the second one, too, even though the Linux driver
> currently does not support the second interrupt. Boards may have it
> wired nonetheless.
>
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

