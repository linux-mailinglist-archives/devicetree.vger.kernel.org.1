Return-Path: <devicetree+bounces-255022-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id ACD70D1EB8B
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 13:24:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 7B2EB3002D1E
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 12:24:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BD4F397AC4;
	Wed, 14 Jan 2026 12:24:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com [209.85.217.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DC70397AB8
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 12:24:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768393490; cv=none; b=dHodaNlKC/5yZQ6XwsWOwRSTn0+mKOrrhcMMBwhuGMaSkt3SMgT8ugswh6/u+02mY9nHl/fSxBFS8NJ1kCYQrAEk6Nrm1SsVg2vGFqLR+45eGHJCF8n58QCwRYY8ectoHqw6RZ1/Zj+oKLFYQJ3leGP+2nGukyVlpj/5frphQuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768393490; c=relaxed/simple;
	bh=w2SWEURfKBz0bwwAwkZCgLtw40Isa8GTATbHUjONPg8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Xk6TBdmkEGmUyX/yQCRrGcLLuJe7A8g5QjC0vQuOuoOjKiIU3DnEcMcfcEEsFc+iFccKFdvPpmJ0cyBjhXzEWSrQvLTu7aU2t5g7my5TITSjecOypF15koyN0VUnI8OxPUF+IVrbTFTAKkA7g1Hgg/fcMSlgqla2ziVPKEEDX6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f47.google.com with SMTP id ada2fe7eead31-5ec96028b32so5324987137.2
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 04:24:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768393487; x=1768998287;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kPnBQEyeWBOms5sIla2SSLSuUnKgu8H+Zu07ilyLuCY=;
        b=HKBjHETAiiy7zRCd+NItzPrCgoQbBUu7H9Ej0O0t4khtgoa2sfkOV5hPQU4xAZamTu
         qyEiuhoRrHQQ84YzbobbC9cRyhN/K9OGKDMHfeV+cYeBsTLQVuuEK3rv6Q8lRr9LKxFd
         nTIlDbiaYi7GOCXGKuG/CqMAOlvlXySa4IxJUbSOT6nq0fCXJGcZ1Nz9QC9jptO1QOAw
         CBC+XS2L8V1kqnJCULmfaU5bz9x+JUz2/0AOjoM1t9E+Lv8C1+4n3LdK+a3fwLxhGomE
         qdDv6xwFiUA6HBAWdY2oNejBz7++Ljxu0E4KmcjEf1ntPsleved+Gi2RTnAacrZ+N1TZ
         lm2A==
X-Forwarded-Encrypted: i=1; AJvYcCWbqOGAIQVAXjkHnkWCvKajZPa2m1h9j6J+UJ+MbNEAoRhAsuDGoNqTPRWAGXdaQ0GDmWYakPlxj0tX@vger.kernel.org
X-Gm-Message-State: AOJu0Yz82zBDu0395y9WoVQtV2ypAOyN7fG2k/jXOZoSwBXJjPttes6q
	4JDnqU2WEOSY4ZKMI96/NgyZI43G92DmiSiONDWXVZvjaY3loptaQt7V7UrJR5Kn
X-Gm-Gg: AY/fxX6wDIk3IXZtYba4W6lPOJnlB0dvtmJ0jCXUxtrDyMkBo1Ir3FpCgawkz7rGvTe
	OLHHt6DNjJdrK3KCpK0/hJh3dlxvD02CgLQjMQrdlxDb/wmtLTuWPe23hgOkM3/66bRpNRHEyj0
	VI7ntj4zZlfOYE8nRVZzZXVzeSy3hIjhfp/xX9cs9nLjOQOFoSP0ZEpq7jT2b2znG1kZGn3KPZV
	MCPO+VOLZTsiSVZMChtrBWuOzAKP0UNidnzJiTaRCuqkJSIlAuIWcNRYlwcnb4ikhOReYKxOZPe
	znDNWQVS2sTS0E82oAJGpug+Vc2G2t9SqwKMNuqNsteeu3Gid35xf0Z+6U07HHmKHCuWWmdHU5V
	IHIcECh0NswrTV+ospQz1JjbmO8M3JWMzjKg3D5Tm31WEYxJA0fcBX1HNMk+9P8/NY1PxbOmqU6
	/hT/ymY3L0Hcb3axxtX0bv8G6TJx+0d0pzo7OA64MfbO8k1RCp
X-Received: by 2002:a05:6102:c8d:b0:5db:cfb2:e610 with SMTP id ada2fe7eead31-5f17f668909mr1117396137.41.1768393486830;
        Wed, 14 Jan 2026 04:24:46 -0800 (PST)
Received: from mail-ua1-f48.google.com (mail-ua1-f48.google.com. [209.85.222.48])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5ec772afecasm23025357137.11.2026.01.14.04.24.45
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jan 2026 04:24:45 -0800 (PST)
Received: by mail-ua1-f48.google.com with SMTP id a1e0cc1a2514c-93f5761e09aso4977688241.1
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 04:24:45 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUXRN82A1zNmBX2I/CcicIzEScAIZPTmy3cNZC78YgniWg3aNLl/zSmRti7t2rLMrT+K6Jq4EpbMOPd@vger.kernel.org
X-Received: by 2002:a05:6102:3f12:b0:5ef:b0d3:295f with SMTP id
 ada2fe7eead31-5f17f4045a2mr981972137.8.1768393485227; Wed, 14 Jan 2026
 04:24:45 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1763638659.git.tommaso.merciai.xr@bp.renesas.com> <9d1cf2cdb1c11f24378404142e4c8aff680c6961.1763638659.git.tommaso.merciai.xr@bp.renesas.com>
In-Reply-To: <9d1cf2cdb1c11f24378404142e4c8aff680c6961.1763638659.git.tommaso.merciai.xr@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 14 Jan 2026 13:24:33 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWf_kX0nokg_CVWdb8FVsgW_5nYAOLp9xA-cL5FcaRJhQ@mail.gmail.com>
X-Gm-Features: AZwV_QhYgKxrCjqzp1sGfk0YsUT5meGZG-9hjk5Ki9UznzjaHJDOa63FHH-zXOg
Message-ID: <CAMuHMdWf_kX0nokg_CVWdb8FVsgW_5nYAOLp9xA-cL5FcaRJhQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/1] arm64: dts: renesas: rzg3e-smarc-som: Enable I3C support
To: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
Cc: tomm.merciai@gmail.com, linux-renesas-soc@vger.kernel.org, 
	biju.das.jz@bp.renesas.com, wsa+renesas@sang-engineering.com, 
	Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 20 Nov 2025 at 12:52, Tommaso Merciai
<tommaso.merciai.xr@bp.renesas.com> wrote:
> Enable I3C on RZ/G3E SMARC SoM.
>
> Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
> ---
> v1->v2:
>  - Dropped overlay and moved I3C support (pure bus mode) directly to the
>    rzg3e-smarc-som.dtsi as suggested by Wolfram Sang.
>  - Removed alias as suggested by Wolfram Sang.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.20.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

