Return-Path: <devicetree+bounces-249060-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 84980CD8E5E
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 11:45:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AD7BB3020CE1
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 10:40:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4674D3446BE;
	Tue, 23 Dec 2025 10:40:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f196.google.com (mail-vk1-f196.google.com [209.85.221.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F266934CFCD
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 10:40:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766486454; cv=none; b=f78Bfnhrk42VXamXTDd9iRx2umcMpzItIjRM099hAyvNh3x+G3pHu/O0sdcplDXEESzJw9ZS9A56rliMKG0L+QU+D6/PsMLGezdgvm5dLTipYg0MwkYL5K35mju0GnI3N/ef2yqzedpQbZNAO4BhemzGSMRCY+B89H1d6jwPr7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766486454; c=relaxed/simple;
	bh=He4BjfuJKlOVZCSqBFYthIZfM2I1ZkSLAml5bdxckng=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SvmSXCBYvoewu6DF0BTWg5+lkhiDZpSt9IYPmM5jLZJTpsiBnyf69lhFpjVdonOFH0hvRWYfEXLVobMPjnpAIJvfmh0c8OWivx000fQrMRYKBWhoKjNFTOcO0YZtFVIcY6MVy+w++idYF4qAzEMWqr+maIXC7dKQQcysi9fIL4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f196.google.com with SMTP id 71dfb90a1353d-55b6a642a4cso3274620e0c.3
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 02:40:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766486450; x=1767091250;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ju2WEPZhFSwJDfyX+hF0G6cQfKmw2zuzSQc8O9oxIig=;
        b=qK9C9i2alf8T401YQ03S8DAsmj3u7JsFPVrEmiY5UYJcqBtZuJ1PQSBtX93A3gyjAM
         +GEea2SRVbI/O1r4wqDh+jrHhDR7U6sXwSXm7CnqC7axzLZ/doPLYcoL/aPF+UEVeEfU
         HUYkGv307A2yATX1vOxkfmx1JtqGw9PHFZEgsML0BqnSz2t/dhOxuzeAuqsbzGetbTbl
         iF3eW6pfDosA5HYegTg8cg2a9vGUHwMygHeefwNOhQEN9ETJlsQcm+UazuuH8QKCIF+b
         ZerFh4lBjtStk5fAbXQlrg3htMBTMrHelpkne1yJysCWg6WkMKGJfVBTc4L9fol9svpx
         gJwg==
X-Forwarded-Encrypted: i=1; AJvYcCV+fzs27EU9k2He+V8wM5kZOwy4GX8nbdf4eaRLoKLZYdTXnkQMyOrNFvI7JClLFRQeSq84ccuBFeid@vger.kernel.org
X-Gm-Message-State: AOJu0Yy03yFBDs8IkMipfHx7oMl0olv3HX71Rl6GZP0M1kE2z1zvbXDW
	EU20csNM3nZe/kZg+ohLfq+Y53hpL05AAoXKmNNTs52ughwULYIekpEP5qT6udAe4/0=
X-Gm-Gg: AY/fxX7CZW/Qd918pMIWK8hGYhcwXw04gEZREyR9Yz/gq/sREbSfo9xjJ64nJSqPV0+
	Fz7Rr2rZ2i7wNJJzJazn8ib4sZ2UYaepF02PWt6w+20UsIJoZPBKR0o7UcIOtdKHq3yQ3h+5dze
	AxzzsxHmuqYkpJ3w6v2F3H4yy+5tCGVLmQ5l1nuyIx1+HdO6l/SogOJy5bx/REoIpqOEiih23O5
	9zpppzLki854VCRRmVwJysPzACepYBV5qanbSIYpeXFr6w/vD5AvBS6+rxlFcFPrKb43401RsDz
	WKX6ZpMtvx9zN2ezkb6IdKrWeHy22PGZ5uTDcBPhSrp7namrm68CbMLyc1AazMkHO10yPSjJoiE
	E0Mm4MmnNAkYALkw+ejZ9FSzkfgpWXJpOzx7rEk6ZBC/mNN36Hh5WuP/oWqh4RHIb+oQhmNULf0
	BrWxfIu9W9Du50wZezAbR9CQie4BXjqAm4BfjIBk/+B/b6hfp5
X-Google-Smtp-Source: AGHT+IEptzYRSKgtC2XQAs5UVkwjZTvmoDfl2owHO078UFji2Mph2KoM4lxo9ylVYwDIHsB2nzl57A==
X-Received: by 2002:a05:6122:168d:b0:557:c6d3:5c0f with SMTP id 71dfb90a1353d-5615be6b746mr4412229e0c.13.1766486450593;
        Tue, 23 Dec 2025 02:40:50 -0800 (PST)
Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com. [209.85.217.47])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5615d15f5d4sm4237948e0c.18.2025.12.23.02.40.49
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Dec 2025 02:40:49 -0800 (PST)
Received: by mail-vs1-f47.google.com with SMTP id ada2fe7eead31-5eb3c50c688so1872782137.3
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 02:40:49 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVO2s6MB22QIAPn6vXTh4T+0fZoDfZP1cHltu0wckViq8YgIG9rQFYVXREWstepyt0IETrxLQvqkP8d@vger.kernel.org
X-Received: by 2002:a05:6102:688c:b0:5df:c10a:6683 with SMTP id
 ada2fe7eead31-5eb1a817ff8mr4650551137.35.1766486449690; Tue, 23 Dec 2025
 02:40:49 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251209091115.8541-1-ovidiu.panait.rb@renesas.com> <20251209091115.8541-2-ovidiu.panait.rb@renesas.com>
In-Reply-To: <20251209091115.8541-2-ovidiu.panait.rb@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 23 Dec 2025 11:40:38 +0100
X-Gmail-Original-Message-ID: <CAMuHMdX1QQWf4mTDRPgOdRGLttUMPewbRaq1GrksBK6xA-mi+Q@mail.gmail.com>
X-Gm-Features: AQt7F2rxebZz2lpc976a4wNX_gG9-mxMoPf2hgGvnyD8PTUzp05nnW-kYeuYB18
Message-ID: <CAMuHMdX1QQWf4mTDRPgOdRGLttUMPewbRaq1GrksBK6xA-mi+Q@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: thermal: r9a09g047-tsu: Document RZ/V2N TSU
To: Ovidiu Panait <ovidiu.panait.rb@renesas.com>
Cc: john.madieu.xa@bp.renesas.com, rafael@kernel.org, 
	daniel.lezcano@linaro.org, rui.zhang@intel.com, lukasz.luba@arm.com, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	magnus.damm@gmail.com, mturquette@baylibre.com, sboyd@kernel.org, 
	linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 9 Dec 2025 at 10:11, Ovidiu Panait <ovidiu.panait.rb@renesas.com> wrote:
> The Renesas RZ/V2N SoC includes a Thermal Sensor Unit (TSU) block designed
> to measure the junction temperature. The device provides real-time
> temperature measurements for thermal management, utilizing two dedicated
> channels for temperature sensing.
>
> The Renesas RZ/V2N SoC is using the same TSU IP found on the RZ/G3E SoC,
> the only difference being that it has two channels instead of one.
>
> Add new compatible string "renesas,r9a09g056-tsu" for RZ/V2N and use
> "renesas,r9a09g047-tsu" as a fallback compatible to indicate hardware
> compatibility with the RZ/G3E implementation.
>
> Signed-off-by: Ovidiu Panait <ovidiu.panait.rb@renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert


--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

