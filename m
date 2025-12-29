Return-Path: <devicetree+bounces-250115-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DCA8CE653D
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 10:54:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C80CF3007C7B
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 09:54:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87F6D285041;
	Mon, 29 Dec 2025 09:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="SuqviDIE";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="ESbba3Cg"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6EC0272E54
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 09:54:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767002074; cv=none; b=F512Nzlt/tbEkceo50Zu68gezVAXJrbrOT4rX87erEFQqNAjdSZ1WiDrdpXO61yRjF1WLclbswsCnE9AobnT/wnXlWLCB/zR8fL5S0IwX2vzd9Qyh9tA8zkUa+TFgUXB87p5J4OjUrM17RTo1kvYN7lqRMIm9nA6u/o8vjUQioY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767002074; c=relaxed/simple;
	bh=iyn+7uVvVmlzVQr4OGw9gaA43U7J6DW0cM5nn14twVk=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=okQuxlG43UWtf4nvkwz5HiA5Rqq4G7uxPdSJJdvbDi0EeELShuWD8SK8Xs8Ju++bVCFYAZwJZeEtENWl3mTbXrkKfFHKtgs+vkwhiddfRsFOi13usmj8opVbgb5pyFg9tpH+yIByxNgAFFWVDjeETJYMZbEGlvOUoAvfWEfgFmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=SuqviDIE; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=ESbba3Cg; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1767002071;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=KSWobni4I8/LRXBXCGLU3hHGBFzvV9k0DPL4VmrN5NQ=;
	b=SuqviDIE9+i5oTkJ2VU+BmLN9jGf8nbwZnyPYYd5YNEf1YtcJPEmM4AP8AZ7uVq5SWcSkZ
	QtTbKOD1fXdDgpHKzb3JlFcbuUTSG5y2fgKIvX5RSPFpTI5eWob+CRn4tdZUq91DDWFrd9
	qGaQMLg/kuHiQtzYGjP0FSYzwbIj4vs=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-336-UwzOUUDaPUqSqLOgF64_dg-1; Mon, 29 Dec 2025 04:54:30 -0500
X-MC-Unique: UwzOUUDaPUqSqLOgF64_dg-1
X-Mimecast-MFC-AGG-ID: UwzOUUDaPUqSqLOgF64_dg_1767002069
Received: by mail-wr1-f71.google.com with SMTP id ffacd0b85a97d-430fdaba167so4773054f8f.3
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 01:54:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1767002069; x=1767606869; darn=vger.kernel.org;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=KSWobni4I8/LRXBXCGLU3hHGBFzvV9k0DPL4VmrN5NQ=;
        b=ESbba3CgGz+F65FYRaVXtSRl0X+nc5iy0w638631g/l62syU2PfFIdh1eoTaCGDqHI
         ClSK/DOVFnAf9dWlMsCxUOtZR22MpzwnmPiyTO6aVPiTDzyoGSbX3UIS+tqe5kXA9owQ
         OYGgdMYofX10ZFeKOel54OdB5fTiLif1m83YZumNncEytLYv1/TavyPa0DKRNOgbGJHw
         ot2iMbTYV8JWc0jhKQKh4oDEJ7/GEsQlQu33tuT8kZFHWGWBcZzeGTfM6UTTSwz7bpGL
         X+2G9ONetCxtpaynnDz0J/rpR/0QE8wCyRyn7B3nKPJZmhzz8WflzaYIA0+/VumZy0xD
         ouww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767002069; x=1767606869;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KSWobni4I8/LRXBXCGLU3hHGBFzvV9k0DPL4VmrN5NQ=;
        b=ru3kWmpMF5dCN8BOxW6qszwLBbDyamdjSivNcUYAbEm78bEl/Pw42DRNTyOREu9tqf
         /oDp4TTXA132yenK1ZVLShbh3ldl+4ME/aZzArB5hnsjERv/RQRrRYh/pB4l3bAYeb2E
         ApeuVdjTl3tn1MIL/U3vuTNcU5R3SAcmShggalQZ5e+VN3hL9C4YpmHphF2GorpQAPN8
         /TsLKOrb3zEA99vylbeZA19IPNDlVOidrLhcSydyx6KFckKkba51SQ8lpKsW2odlaL9v
         zX+hUPvw37jNjhp5EtadiSBCGvyveBYLpPYEeGo6KFoVUjjTp/Wr5RdfW+SBweBbpBNH
         ZAvQ==
X-Forwarded-Encrypted: i=1; AJvYcCXhaNhFCJMdVk1ETCdqvmKXQRyn1OqTP8hwWpt3fMYd5aEaBe4S4Z4B0mcvLcm4W4hV+8LN18p3VDYX@vger.kernel.org
X-Gm-Message-State: AOJu0YxTLOctRb7WR9TvOCIl4rlKC3DXAxhb/1iTmkrRtQH2Xi04EYF+
	5frGl8VawB4pxIGQL+D02oEcehU1bvfuQTCYbs0nj8k2LgHsse4LSVzhfwWlwIcg9LLtXdemevh
	reml9AooGFwGR5PBC0e3PlnWpOyd0DyfM3lKumWoS1UUhvOnEcNTYYA6skFRGxGY=
X-Gm-Gg: AY/fxX6Xn7qEaPi9SoWdlH+jjzf/EVmZI5HO+78qcyLbH+kkQOxxMq3QxYqUdX5PVrY
	sEZA6eJyFOG8Auq9oapDARdrdRT5vDWD1/eZsfdYK5jKevjxv2BSUT/6z2vdyrdx9tgRQlpG7mG
	PQGdm6dFddNkQUtfzwHE1yYKIfdsGsr3GFyYRg4A3/6xCLaL/SWfzeDqxDbLbuu0iLQqdoIpTcV
	hZKgOuOuW/ltuMl3/5DgvqAQuWzHYfo/Fnqh25ZF+jeMMs5+oTicPyz3tWEVK9BD+uK3Vf7k8Fj
	byZ6kVf76UbUbQkdeXtIdDb0O48pzYZ5XyIXWyowfb1PrPAe4X/2idGZmINHqUNWOuEuftgW9l9
	dpYgbd7E10UFbOMj0/F715ygKYAf2a+6tVQ4L6zFA9C8SEjSu9+DEwQeKrXgn09gZGacc
X-Received: by 2002:a5d:5d09:0:b0:431:c60:c5ed with SMTP id ffacd0b85a97d-4324e4c1687mr36359693f8f.13.1767002069037;
        Mon, 29 Dec 2025 01:54:29 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFsxoEoP95m6ReZSz6r1q2uhNFZf5kjQYBZyqztpeqeumiInWw6+7PbX5zUgH0PIl8ztva/+Q==
X-Received: by 2002:a5d:5d09:0:b0:431:c60:c5ed with SMTP id ffacd0b85a97d-4324e4c1687mr36359670f8f.13.1767002068663;
        Mon, 29 Dec 2025 01:54:28 -0800 (PST)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4324ea830fesm62245404f8f.20.2025.12.29.01.54.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Dec 2025 01:54:28 -0800 (PST)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Yixun Lan <dlan@gentoo.org>, Ulf Hansson <ulf.hansson@linaro.org>, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>, Adrian Hunter <adrian.hunter@intel.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Paul Walmsley <pjw@kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Alexandre Ghiti <alex@ghiti.fr>
Cc: Iker Pedrosa <ikerpedrosam@gmail.com>, linux-mmc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org, Yixun Lan
 <dlan@gentoo.org>
Subject: Re: [PATCH v2 2/3] mmc: sdhci-of-k1: add reset support
In-Reply-To: <20251223-07-k1-sdhci-reset-v2-2-5b8248cfc522@gentoo.org>
References: <20251223-07-k1-sdhci-reset-v2-0-5b8248cfc522@gentoo.org>
 <20251223-07-k1-sdhci-reset-v2-2-5b8248cfc522@gentoo.org>
Date: Mon, 29 Dec 2025 10:54:26 +0100
Message-ID: <875x9phaul.fsf@ocarina.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Yixun Lan <dlan@gentoo.org> writes:

> The SDHCI controller of SpacemiT K1 SoC requires two resets, add
> support to explicitly request the reset line and deassert during
> initialization phase. Still using devm_xx_get_optional() API to
> make the request optional.
>
> Signed-off-by: Yixun Lan <dlan@gentoo.org>
> ---

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


