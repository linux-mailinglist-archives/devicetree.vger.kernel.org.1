Return-Path: <devicetree+bounces-223388-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 33C01BB3E09
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 14:23:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EE37A16C3CB
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 12:23:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D39E280317;
	Thu,  2 Oct 2025 12:23:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8BE53101BD
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 12:23:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759407810; cv=none; b=lsOEndP/OqWXcuctRwf3PEHA5jliz9r63AVXRGsrM6k3dacZiRao+zgCzK0zQQZvj0FXWg2JNyX7sMU8bdLepzWMJsqZ72O0mRCWdd6jWKjLeqiZ2aBLGHenFiEvY50uxChBsVqqzVjYfbC2EQ2lUw96uXY5s7ITzVfWFwaGlfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759407810; c=relaxed/simple;
	bh=gvmbEnM8Xq9x/tMwG+SeGSBdS/Mqy/IpPOizc/FKLiA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=vBNZ+EcFQW2TiByYHLyfNWzDks/PyZ2tNqcx9iq4j87oFcIHZGsls9GTyvqJIzbLmdahVvhFdffoT6RCp5A/uXNGZlz8CxM6UsPLjg3pdlrOtPQLTE7W/Or843CwLs1RNiSSbvtCvpztUdgkvSGfqmR44brWZxpdpYNVGBbJwnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-637e9f9f9fbso784966a12.0
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 05:23:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759407805; x=1760012605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JQMLIxPrWBfFJ+so4wBwnJ1QOuXysLo+deF3cZFSCvo=;
        b=DgmRJCUdMkCEg2zYlhnrTycq7LbhVkkxCCF6mg6NaqEPNwFLzH4Gmv353nGNZ7aPhr
         1MciJcL5jud9KTiLs65Il5t5hT6MUEW+fFGvmyhGLepJD6IXjFAXSeXy30/0GhSFVq7a
         InTHBopO5VTuhoPUkxJANeDdg7OmAsb4tGGJvoBqappzMx4hCPeOUIW3dgXs6Fb+ZGBv
         HMFDxFAjesOWaG2Qj4t8ebTWtOAeRoiRB+np8kYSkMShD8uOdn1lfOAfUB09UG2VnXrC
         QRPm3ZqDy4rjLuLZMwCmllxRFOqdNaatPkI3/fXHn7xu5nIuylM0sChMA5YuAf9vUSNA
         oFNg==
X-Forwarded-Encrypted: i=1; AJvYcCUf8DFXmj0m0s3o/pg/nsBdrRsGeMlBBbOM4ecEPtiazSLNPyfUMbKKEeXvMjGCcfvGkj4Xf4v7BHG2@vger.kernel.org
X-Gm-Message-State: AOJu0Yzn/pXsfHRJ/PrYSvl2mV0pi982Txwhn9WitSZzwo+2/5u6KaQl
	B4Jr1JILFzfhFzlHfl3cDftCcsuWCOT0y1ZdDYixiqcrLEsGDeAdMCZxOx/z9RinNFY=
X-Gm-Gg: ASbGncsaPkfyu5F7G3W+Avtr8YkBTegmaggWZADhM0hC1DxTO1z5HebMoYNJQFmaJ9v
	ujkl+k5qorXL/ET0/l5gzy2cpxYbKfD7R8dJj77Im/dB9Yigh1K41w8PQctkJXZT4XA4pYSeFz0
	u37xhKpt6awc5ICFZJ4PeSeRWHfVKD0bqNZN+7hJ9uR0u8EEG54qUypr03F49GbhEghLSMFI2OC
	AzrDuqjIk6FR+OKDkcpWj6KLeHVoPLPm89frlSsC6lbFIutKB9oHA6NxmbA61g1ZAeMmCucqdQ0
	gWIbhEKTa7ZWHg46VaLeWoxQAEcnOovx1KFbgEfAG00O2zL4cdbKMgI/djh1ztK2iKl/fHjnETJ
	RRqFHDOol86P8KoZ0Ez92trOrBDrP9YuJrkKFmnIt797iB+jKL5eubRDPOohnd0C/YslrsAvj+J
	ylGgeqHHSA
X-Google-Smtp-Source: AGHT+IEgiOuq5/tmZzSVtaCUGS0Az1v3GesGoW0YsBTA80f41uZ1hr9utUOBTu5MEReLfzrDvJNxfg==
X-Received: by 2002:a05:6402:510b:b0:634:b7a2:3eaf with SMTP id 4fb4d7f45d1cf-63678c4ce67mr8493230a12.18.1759407804917;
        Thu, 02 Oct 2025 05:23:24 -0700 (PDT)
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com. [209.85.208.52])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6376b3aa9e4sm1768584a12.7.2025.10.02.05.23.18
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Oct 2025 05:23:19 -0700 (PDT)
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-637e9f9f9fbso784659a12.0
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 05:23:18 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVkfz7fKw3wCgWPNNRG7rBFqkd4TG/SuBwGCVAQDfXVgxi1cHNcNwoz6f3iTg+tAA64MRy5+qv6F2db@vger.kernel.org
X-Received: by 2002:a05:6402:31eb:b0:634:cb54:810e with SMTP id
 4fb4d7f45d1cf-63678c7b7f1mr5768917a12.31.1759407798672; Thu, 02 Oct 2025
 05:23:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251001122326.4024391-1-cosmin-gabriel.tanislav.xa@renesas.com> <20251001122326.4024391-6-cosmin-gabriel.tanislav.xa@renesas.com>
In-Reply-To: <20251001122326.4024391-6-cosmin-gabriel.tanislav.xa@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 2 Oct 2025 14:23:04 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXD9eUSJGNH0+naHSvf8MjqZ3ctdqFp8wkrMq=qY9Zaww@mail.gmail.com>
X-Gm-Features: AS18NWAfWE-zmoZFShiXGWGVfqa0891jOjlp3tuzjqrJNKFCJ5kcTO_xUtaAquY
Message-ID: <CAMuHMdXD9eUSJGNH0+naHSvf8MjqZ3ctdqFp8wkrMq=qY9Zaww@mail.gmail.com>
Subject: Re: [PATCH v3 5/7] arm64: dts: renesas: r9a09g087: Add ADCs support
To: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
Cc: Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	=?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, linux-iio@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 1 Oct 2025 at 14:24, Cosmin Tanislav
<cosmin-gabriel.tanislav.xa@renesas.com> wrote:
> Renesas RZ/T2H (R9A09G087) includes three 12-Bit successive
> approximation A/D converters, two 4-channel ADCs, and one 15-channel
> ADC.
>
> Add support for all of them.
>
> Signed-off-by: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

