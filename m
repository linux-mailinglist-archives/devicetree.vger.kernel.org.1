Return-Path: <devicetree+bounces-253308-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CAB8D0A81C
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 14:53:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 54680305D9AA
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 13:49:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07C18350A37;
	Fri,  9 Jan 2026 13:49:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f169.google.com (mail-vk1-f169.google.com [209.85.221.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A1CA33506B
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 13:49:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767966566; cv=none; b=LusxOmjiot5+ZgYU138PVnwMPnSXO0El8mUr9VSgGz3cIBxlk4H5NHCKpYYEIy90OHHMIaxtTRYMkcRZX0Niovzlk+TANs/GAoRQ5O6HRVsxFkoIZtryTsEgx/0HEYnKRUsFqNUSOxcxpIXsowuPyTIhVNfD/KmhTZVQ8az7A1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767966566; c=relaxed/simple;
	bh=WLFUrhNxJ/XDPIZxprmACvVsb1Pyo7q0wLa37Xprya8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Jc4USDcguA05TghQp2Vpt/+wwJR3IjYV8D+bxru2EMsgU6/MyQWWXuFZO6uRYZEEHWUFQxMsckk8siBwUWfr6c2c4MUX0FuhZ6oRNboLHmEkOnhOmiJZDfUF9BIdLza3ITgy3jZ+utoHiha8SDiC2HtMiOlwU9mCCK0y8+0/YnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f169.google.com with SMTP id 71dfb90a1353d-55b24eedd37so3195175e0c.0
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 05:49:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767966564; x=1768571364;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1K7NOffoek8SfFkqFSd9+BgcJllduHoywKqDwRr4NrA=;
        b=SqpPL1jXqR0xD7EtR3qGhsGCZq03oG0QqwFnQom8/W0pCppWm7W218xSloK1kUs9NB
         +feIRScAJsWQ6IateqCwJnUKTLrvHHKA0YShfSSnsHGFqSpdeKNZiFG6OtyZWZSR29b9
         HAlDoQ3uX4o0L0D2+XUXxvO2+EdFzYcLJFXoNRWoVjt1tftf5XdpujLglgJnB3L0JDS/
         e8MaB2iUDv/oJaNWAeD/BUfaP/uTJHPOe49sTZuJfP4co6rY11Bo6YDJ3eEsrN258nZF
         y1gIdz4KBeqvVGtN/Jdws5kQJT4DeNBljr9v+NDcYsE0D50iGtbCoztR845XqnqnlnyK
         oNdg==
X-Forwarded-Encrypted: i=1; AJvYcCX488UxmqD5SU7bDpI2/p2HQ1YWP/ZhclwfjG2esSeba0jsLXBOP5N/kuVfwAJBYlHQkSK1EyTIlsIj@vger.kernel.org
X-Gm-Message-State: AOJu0YyhPezBudQPpYOT448afHtvonz5yEGfNDM2TxKVdApGasxsAqNT
	aquUjA8Qxh/jf/pB9K/AsiI7jMBgwbedXw8zojD5MrXIbdT6hi9IvL2e4G/NsCmn
X-Gm-Gg: AY/fxX6f8iTX8WCmPYbM01BYuzqYfoY7iIdFLxZnKFK6Feq6w4FLSVr5y9WbC8uCSSb
	fq/zc+/FhbZ88UoIE0C5S0/br7WAv8n1vIB4roVfcZimMBmBOk7ye1CIQknpFsEGpVJnTM+LlZ4
	2LjsTxy4IPjo+1lPtSeQxhmyNTiN2XMDo7jiagmohmTlVDXOA3RKRwdQHETXnxxvsdkHiZVC1uy
	geoz5I1Ph5sS5m/Wcgay7rUwCQVof/6qBAW/n3Tv0TfFwwojy+cZxRwLpHWqWebJHphzQ0NYtXS
	5qScJUGKxKck8mEuubAPNS3DY1UpDlF2fKMeqj7ztey4OKJlc6L+53N90Bq5Vn3rCLu70soumds
	qvF0E6g2BNXrx86m1pGEMmTln4q1LZm9msWWZfVEI6A/LP7iHx1li04/69tDJNR77Rn8tAKzc2R
	bDKIUoRfsyBckenQBkXujLq2vQHxSrzLtCvLhnx9gryzVRMkuN
X-Google-Smtp-Source: AGHT+IFWcIkzZf6+OWNBxoKZoCdrRV3Eyg9q/UOAb5qNCiHBnk5BtEjN8ESKC858OcLCRMv/GSNA4g==
X-Received: by 2002:a05:6102:f85:b0:5df:c33d:6e54 with SMTP id ada2fe7eead31-5ecb1e6f41fmr3764520137.3.1767966564341;
        Fri, 09 Jan 2026 05:49:24 -0800 (PST)
Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com. [209.85.222.50])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5ecc521d7b1sm8531095137.0.2026.01.09.05.49.23
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Jan 2026 05:49:23 -0800 (PST)
Received: by mail-ua1-f50.google.com with SMTP id a1e0cc1a2514c-941063da73eso2948389241.3
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 05:49:23 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVxpKSn52wAbg1Lso6LUGWpXF3dRJIjNevDC8OMKZI3hw8nkIrvS9xkDb3w299bqvrXWmXokzxgaeN6@vger.kernel.org
X-Received: by 2002:a05:6102:800e:b0:5ee:d0ff:7254 with SMTP id
 ada2fe7eead31-5eed0ff7574mr1607434137.34.1767966563511; Fri, 09 Jan 2026
 05:49:23 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260108195223.193531-1-cosmin-gabriel.tanislav.xa@renesas.com> <20260108195223.193531-4-cosmin-gabriel.tanislav.xa@renesas.com>
In-Reply-To: <20260108195223.193531-4-cosmin-gabriel.tanislav.xa@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 9 Jan 2026 14:49:12 +0100
X-Gmail-Original-Message-ID: <CAMuHMdX39Bdg_LBry8QmGTR9Z=CNs6xGksFbzJw-8oDt4CcOqQ@mail.gmail.com>
X-Gm-Features: AZwV_QgbNm6q3mt1zlj7hyuAc6e9Eu-odKmqzHG0qAir3pZOPVNUb1tURDFNGtE
Message-ID: <CAMuHMdX39Bdg_LBry8QmGTR9Z=CNs6xGksFbzJw-8oDt4CcOqQ@mail.gmail.com>
Subject: Re: [PATCH v5 3/5] thermal: renesas: rzg3e: make calibration value
 retrieval per-chip
To: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
Cc: John Madieu <john.madieu.xa@bp.renesas.com>, "Rafael J . Wysocki" <rafael@kernel.org>, 
	Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
	Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Magnus Damm <magnus.damm@gmail.com>, linux-pm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 8 Jan 2026 at 20:53, Cosmin Tanislav
<cosmin-gabriel.tanislav.xa@renesas.com> wrote:
> The Renesas RZ/T2H (R9A09G077) and RZ/N2H (R9A09G087) SoCs expose the
> temperature calibration data via SMC SIP calls.
>
> To prepare for supporting these SoCs, do the following changes.
>
> Rename rzg3e_thermal_parse_dt() to rzg3e_thermal_get_syscon_trim().
>
> Move the syscon usage out of rzg3e_thermal_get_calibration() and into
> rzg3e_thermal_get_syscon_trim() and remove single-use variables from the
> private state.
>
> Place a pointer to rzg3e_thermal_get_syscon_trim() into the
> chip-specific struct, and use it in the probe function to retrieve the
> calibration values.
>
> Now that syscon usage has been moved out of
> rzg3e_thermal_get_calibration(), remove it and inline the calibration
> validation into the probe function.
>
> Also, reuse the TSU_CODE_MAX macro to mask the calibration values, as
> GEMASK(11, 0) and 0xFFF are equivalent, and replace the hardcoded 0xFFF
> with TSU_CODE_MAX in the calibration validation.
>
> Reviewed-by: John Madieu <john.madieu.xa@bp.renesas.com>
> Tested-by: John Madieu <john.madieu.xa@bp.renesas.com>
> Signed-off-by: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
> ---
>
> V5:
>  * replace hardcoded 0xFFF values with TSU_CODE_MAX
>
> V4:
>  * pick up John's Reviewed-by and Tested-by
>  * replace new macro TSU_TEMP_MASK usage with existing macro
>    TSU_CODE_MAX
>  * remove "Validate calibration data" comments
>  * inline rzg3e_validate_calibration() into rzg3e_thermal_probe()

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

