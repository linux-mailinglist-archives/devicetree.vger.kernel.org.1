Return-Path: <devicetree+bounces-280664-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aMtKHQ8RxGnuvwQAu9opvQ
	(envelope-from <devicetree+bounces-280664-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 17:45:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EB92F32943F
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 17:45:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 23EDA30E0D3B
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 16:37:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A00E3FD152;
	Wed, 25 Mar 2026 16:36:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f42.google.com (mail-vs1-f42.google.com [209.85.217.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C0F3FCB28
	for <devicetree@vger.kernel.org>; Wed, 25 Mar 2026 16:35:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774456561; cv=none; b=b6s9BCIhjvMKq5Gvaa2UAPDdURybvv10oTfgBx2XYBEZNBVFAdTMlvHnUOr8Vd0Au5fXsN6Bry+RkA3PFQ9INurQfjuK8ZSZ3XIeDrEo4D77rr7fxjLzgWBgQrKQNUfPiRc8DSw3dJ+C7uo9btCmitgAhroU6tGfw6zrOTtuwR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774456561; c=relaxed/simple;
	bh=vX6p1CDvWad+GoKbzvthJkwyI07/wTijn9ZWHgYK/o4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=sLNeyl/TtD5dd5qM+RnjtHdOcuFGxgzHlObaZNuP2rgcAvm8bmEr5MbJZ0tuZ6DkQ7Wjov2yXY9Y/DGGZihT90ZxgPMNG528XJch9A9zPFVXNH8qVEH82f7EGHCkmgoitk8yIaKUjQ1smn72HeRgmRLicTdSSOhiV23q4/ajCws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f42.google.com with SMTP id ada2fe7eead31-602947681e2so1555156137.0
        for <devicetree@vger.kernel.org>; Wed, 25 Mar 2026 09:35:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774456559; x=1775061359;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sDjwaAywwU03wv0+eLKkG3IGOSH5Z69cyrkxX7M6ckw=;
        b=ilACfTuWNGHnz4DhBjh9HJjNBTJgJ/aIbKon2oIFVWZvX6n/LeTK+i7PEjEdE6LxvY
         P4T2cZtNv4Xa9zmKvJJzF/PLss8eB9PrVi6mUxVrcDvZGwm0Ks+lgQiuP/Wg9CXliwPr
         iFODuByboLks1nOzek1rcOFRHgPPvxkTIwY8Q9NQw/Mby+mh7Q3eBOaS7a66XbmjQAhf
         omMp7dCsCS1mV6kgBWD7Vxx1wAN2P8TUFAXOePV7o+c9JKeIoKf+sRfPGPpkRjuX1Rqd
         IwVq/z6MDl+WeQx0Biaw+xr2hUXdE1QHgYL+lcr6ot8P2ZWYGV6d/0QqBejBBVVMvHOi
         /Phg==
X-Forwarded-Encrypted: i=1; AJvYcCVz0ENIBxgE/KxKVZZIIpqbbV3VEa+DjZ3Yrx1owQxmxzJsFMOIif4c9SD1eUsHz9tSu2nrp+Wit5+i@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0DAxhB6Qk8LrAX+h7VUq0siHbAGOeYCb9dTdnNouuBmJoF6vO
	6+CaFZw4HTKsKDYK/VJZb+QN5+ldSd8DDgDWC8uraiiA9er9by5MzTTilztQM7GzbQo=
X-Gm-Gg: ATEYQzwV8bi1BlahBBoiIslX+WOw6c94Ol3dpfimZbqoBqoQsij1IKCEKbhY5UQQaAQ
	csPOgI9r3GEiWyfNKRkthsfy/BaQhrN5FjedyLQOp6R7bylzVSigdyn06pMyD58E32PbN05ZR86
	axJEKvUPlZhhxt8wzemFr0dSWgkvRF10X2cDAMS1YNk/Jtq98RF4KjuNpnvxmwchuTtKnrHjvnD
	a7kkr8enxA5aZdlzsTr13GnyW1xMnjqbN7CNPw8XI5UkonxITykp3f6roHMqpZNHmXEIph4360C
	BFeeahYyRGMIB5HLnb+gzqPDkkcHTKGPGNAww5s+GF8yChhHqBH+UhKQFjUoFrhGD9PxJalorDP
	/f90b/n15L6avRqKpzDGa/te/iPIISikQihjmzkVLkiX87MprTQwDoz2SfpK4+ix5fa0J8BOc2J
	/w7ZN/GoORuGJcohhBf6+VUx8cNNgmfToXXnNrBeOtAMvWhEV7G6lPTzrk97xSMYGEZbUyLoU=
X-Received: by 2002:a05:6102:5493:b0:5fd:ff75:f437 with SMTP id ada2fe7eead31-603922d8a90mr2364009137.33.1774456559061;
        Wed, 25 Mar 2026 09:35:59 -0700 (PDT)
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com. [209.85.217.53])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-604d50649ccsm202268137.3.2026.03.25.09.35.57
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Mar 2026 09:35:58 -0700 (PDT)
Received: by mail-vs1-f53.google.com with SMTP id ada2fe7eead31-60328e74569so1107743137.2
        for <devicetree@vger.kernel.org>; Wed, 25 Mar 2026 09:35:57 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUFGl8GfKGWM7+CtiR5dLawwRpVxbJC//cA3CZgKnI5nnFQP38nyHHD7CPoc5OExoMRAaUaQFm5I5g0@vger.kernel.org
X-Received: by 2002:a67:e703:0:b0:5ff:ea89:44b5 with SMTP id
 ada2fe7eead31-6038753a92emr2391289137.32.1774456557341; Wed, 25 Mar 2026
 09:35:57 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1772468323.git.geert+renesas@glider.be> <10876b30a8bdb7d1cfcc2f23fb859f2ffea335fe.1772468323.git.geert+renesas@glider.be>
 <20260313215912.GA3415767-robh@kernel.org>
In-Reply-To: <20260313215912.GA3415767-robh@kernel.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 25 Mar 2026 17:35:45 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXFd5Sva4Hu7KufgMfiiF02Z1z+UgLyJH=KYPvch4673Q@mail.gmail.com>
X-Gm-Features: AQROBzAa9n7pyJe-8mgf6m8MWZ5EBfxKw9iKFNekZ5OaRcP6UMYY0cGuEWeDl6U
Message-ID: <CAMuHMdXFd5Sva4Hu7KufgMfiiF02Z1z+UgLyJH=KYPvch4673Q@mail.gmail.com>
Subject: Re: [PATCH 7/7] soc: renesas: Convert to of_machine_get_match()
To: Rob Herring <robh@kernel.org>
Cc: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>, 
	Saravana Kannan <saravanak@kernel.org>, "Rafael J . Wysocki" <rafael@kernel.org>, 
	Viresh Kumar <viresh.kumar@linaro.org>, Ilia Lin <ilia.lin@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, devicetree@vger.kernel.org, 
	linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,kernel.org,linaro.org,gmail.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-280664-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,linux-m68k.org:email,glider.be:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: EB92F32943F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Rob,

On Fri, 13 Mar 2026 at 22:59, Rob Herring <robh@kernel.org> wrote:
> On Mon, Mar 02, 2026 at 05:29:11PM +0100, Geert Uytterhoeven wrote:
> > Use the of_machine_get_match() helper to avoid accessing of_root
> > directly, which is planned to become private.
> >
> > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > ---
> > This is an alternative solution to "[PATCH v2 8/9] soc: renesas: don't
> > access of_root directly"
> > https://lore.kernel.org/20260223-soc-of-root-v2-8-b45da45903c8@oss.qualcomm.com
>
> Greg applied this, so you'll have to respin on top of that. Next cycle I
> guess. Unless you get him to revert it.

That was my impression, too, but apparently he skipped that patch.
So you can still apply this patch, too.

> I'm applying the rest of the series.

Thanks!

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

