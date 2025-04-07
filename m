Return-Path: <devicetree+bounces-163883-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 42E8EA7E678
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 18:29:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D57BE19009E1
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 16:22:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 418F2213E71;
	Mon,  7 Apr 2025 16:19:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="hgBbv+tn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3806F207DFA
	for <devicetree@vger.kernel.org>; Mon,  7 Apr 2025 16:19:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744042743; cv=none; b=H2kUE+eSwY1+G02lz2cq0s8gkwbtEuP6JZP/e0w5tKWF4NW0zbkQIC+YHDHaiDeoR9qld1r5hEEwz4g0nOP1BIXnpNdtMxibrNVqh5zBN+VkM6H7beKEDUlr0nteHvvDTaNmbWhQIpG8cp5r2f3tq2WkO74f0Y+AJ+5c65Oq4qc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744042743; c=relaxed/simple;
	bh=oQfeLGLwN0ia9mkF/LrZhoiRwa+hmOwNqpU0xO/chsM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gm2I89YzArJPMCYvNI2+fGd2c3gSOS2kWmE7lqQNdPLQrlVIiSYBpnOSfvvhk8dj5ac07k7M5Xq9UeyEf8nfxrTeyZNhfkIj3Yn5qnFdPqkIuNxQQrFKUd+XDaphJQ7nRtzNFgny0PZoO/mJvI7ucRQMfDsB4343VpbEenFYXBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=hgBbv+tn; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-391342fc0b5so3605037f8f.3
        for <devicetree@vger.kernel.org>; Mon, 07 Apr 2025 09:19:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1744042739; x=1744647539; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=FlvRbUOqYjIG9Hb+k1k+g6fdWn9FeWH5VnocqRc/bEs=;
        b=hgBbv+tnGW2Hf+TMWrtQEODiGSglq6jGf9+7Y1Gycp6G4O7jzt6JO/fF7WJ5+dHBJE
         YfOpDUxFiIqHxEhHdxmp6x8F4ESdRjp0bQqBSCmvM5MeKUybnM1lr95MmMhVrFqZALWE
         gwsjKtsG7zE9TgORbAprhJXQoUv+ILeE9f6A5SdJkkwdZjaPCGf5wR6inFvdLYuDAx6w
         1o19DFH92b3dXNTz08eWIweW4F/w+NcelHOzdkncik5fxzhF3k0f0MWLDiksEoj0z04H
         +yiAp8xANdFRLQOLN4k1zqZOJcRrypNgHw3TK8s7tSvOwNUEZR/I6lPXtRCVG/S2bHJR
         k3ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744042739; x=1744647539;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FlvRbUOqYjIG9Hb+k1k+g6fdWn9FeWH5VnocqRc/bEs=;
        b=d8Gm6jumLogFv3Dndo3ty+F8CZMey3hYZ8rokwGpmPLT8jWd7NaASipv+/zskJaHQ6
         VPYysJ4aa7jPKIGsAXVrdm/3ycK7NbmYTBrdFgXP2DyB2zHwISaP6/iQMp6G2V9KUJPA
         M2hOfNZQ4SNHNGOfRgRXIZ4FUM8v12NYvDxIheGJFih5H2G8eaTlrhCtuHyQlrg5p9x0
         urIuCG/QIaq0pECYj9/Il4MadjuBVzZhsqjhKp7ZG73emY0jGQn3PyBr+K97c1hu7Q8x
         Q15jt+DCzw/Cel3zHpxSd547eL+P8Lt/vpKLEo4wrg+QVyDLqdJC0XcJ++ya42vo4zb5
         0f1Q==
X-Forwarded-Encrypted: i=1; AJvYcCUzgikhDA4pnOMoFLIlb4NRDp8fzWya3Zp/0O5xEhdSDnPeujJ7U9bruFux5jWfFxqKcUS1QbkeTzj/@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5Gle6bHFQsr704W0CDi0Ozwmo6nmwuhbl8DgPxWHldPnzBAEQ
	ZBdsRcsXSj5lsV1tFPOqLf868//j22UO9kxQGZu2B8O46B0HWBlSIv9jiExWp0kD8FJGR7QS17O
	vqVE=
X-Gm-Gg: ASbGncsgER7tQhaw/H4ymvyDCaUMvzDa2SHa2xq5nsoU/pHKsP///Q25s8e9SjpzxP6
	ITAHG3yFxvjb9PpO2QHCUR/45T3c7sAJj7pgxW3ecoMgjYeL8CTJzPFGF7Uma0chZzKIHFzqKhb
	6tjAqIH0rrVztygLJZYVo1oWdYpMOcZRTc+wRFOVzMX0HqYJg2eKRqWs+zEM5+eG4Mu8nYXo1Eb
	BFar8JQWBzPuWQWlSohZCYyZCF6Wa7UeyEQQB3fO+WryAREKIMP0iGkZ9AjlAOPXdoPPQub3X5L
	EGagsRvXhEqriSIQdunLo26bY/zDHkqb/czwkDw4PxSqJVhR288ymYGOOi085EDDuYKJY/ua9qd
	JAeYNsoGb0Afg0RPg8xEwf6yGsKyaAgDbMmlbDA==
X-Google-Smtp-Source: AGHT+IGAiFgCHKC4NxdMI0XYxiblAlo6teR2sZ4ryX4FXGKNTm7nHjhUAQ7KJxNf9HDeA8CDyhXndw==
X-Received: by 2002:a05:6000:2285:b0:391:3049:d58d with SMTP id ffacd0b85a97d-39cadc85ab6mr11452084f8f.0.1744042739225;
        Mon, 07 Apr 2025 09:18:59 -0700 (PDT)
Received: from aspen.lan (aztw-34-b2-v4wan-166919-cust780.vm26.cable.virginm.net. [82.37.195.13])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39c30226da7sm12857720f8f.98.2025.04.07.09.18.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Apr 2025 09:18:58 -0700 (PDT)
Date: Mon, 7 Apr 2025 17:18:56 +0100
From: Daniel Thompson <daniel@riscstar.com>
To: Pengyu Luo <mitltlatltl@gmail.com>
Cc: Jianhua Lu <lujianhua000@gmail.com>, Lee Jones <lee@kernel.org>,
	Daniel Thompson <danielt@kernel.org>,
	Jingoo Han <jingoohan1@gmail.com>, Pavel Machek <pavel@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Helge Deller <deller@gmx.de>,
	dri-devel@lists.freedesktop.org, linux-leds@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-fbdev@vger.kernel.org
Subject: Re: [PATCH 4/4] backlight: ktz8866: add definitions to make it more
 readable
Message-ID: <Z_P68OP1c8XcbXle@aspen.lan>
References: <20250407095119.588920-1-mitltlatltl@gmail.com>
 <20250407095119.588920-5-mitltlatltl@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250407095119.588920-5-mitltlatltl@gmail.com>

On Mon, Apr 07, 2025 at 05:51:19PM +0800, Pengyu Luo wrote:
> LSB, MSB and their handling are slightly confused, so improve it.
>
> Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
> ---
>  drivers/video/backlight/ktz8866.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/video/backlight/ktz8866.c b/drivers/video/backlight/ktz8866.c
> index b67ca136d..5364ecfc0 100644
> --- a/drivers/video/backlight/ktz8866.c
> +++ b/drivers/video/backlight/ktz8866.c
> @@ -24,7 +24,9 @@
>  #define DEVICE_ID 0x01
>  #define BL_CFG1 0x02
>  #define BL_CFG2 0x03
> +/* least significant byte */
>  #define BL_BRT_LSB 0x04
> +/* most significant byte */

I'm not convinced these comments are necessary.


>  #define BL_BRT_MSB 0x05
>  #define BL_EN 0x08
>  #define LCD_BIAS_CFG1 0x09
> @@ -47,6 +49,8 @@
>  #define PWM_HYST 0x5
>
>  #define CURRENT_SINKS_MASK GENMASK(5, 0)
> +#define LOWER_BYTE GENMASK(2, 0)

I like using masks and FIELD_GET() but this is not a byte. These are
the least significant bits.


Daniel.

