Return-Path: <devicetree+bounces-269295-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cMCrBXuwoWmMvgQAu9opvQ
	(envelope-from <devicetree+bounces-269295-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 15:55:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 21B781B950B
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 15:55:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3CCD73002B5A
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 14:54:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A819D4266A2;
	Fri, 27 Feb 2026 14:54:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com [209.85.217.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56B662BE7C6
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 14:54:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772204088; cv=none; b=MAATQVkBnykI2/h4ItfXRQGrjrTBy8zR/26poFdryZEVEZXnBPvj01TmqlvrvdIjV7lXTgl+WV+Zw/tyopI6gPkmRbHWeYqZkvyHJ/yo7ZsqhSlxjwy2u0tOKHA8dMnk48k+7xa36/Q+E9HeaAP/8+vnciCxTeisVIHEw/yuDGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772204088; c=relaxed/simple;
	bh=IbjpYjPyt7LrSqOdqijcKxV1tTGpTa+DCJfx1+OEgl4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pvtGO4EN1zFKp9rrHBk6RAC2h/bPEv846FwwzwZIpJ3vSBONXrXUxiiHxyxVnJW7v4CuKOXISCmx3PYpeFVVEuRpQOKriaP2Eg4e0HgEMNUNXPXiaKvDi/uDILeKbvuLihHXKpHqPXiZtj1T6db1gFPa7voWxsr4m21mVjIRcZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f52.google.com with SMTP id ada2fe7eead31-5ff09bb6271so1357157137.0
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 06:54:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772204086; x=1772808886;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6Aa1HeQGt1TkOvVVQBH3CIgad0zCtpC8qvA4TYkUZFM=;
        b=m0+RcbRjDn6OdHlSLGYZgyDNUsNO9Awm8vBN9bXeZuN8Nm8vbMxMP81xx5tnTSJyKj
         ruM3u62uomjhlOvdhVjmKK4XIX7GEHwzy98COMezCQIc9OfvR2iEI52k2VYt3SG9Rr4T
         a35yVd33g0iZOCL7KFOB5M/xQTYkw2cEcVVwVP6iucJmeJoUgTZsvLuRMwDGt+sXJRMi
         C5hp2rOnc06ODvOf3Ft8KwaPfM9ukxFy4EqTbkxRLLV2emQ0UDLkcAxKcEC5GtLGlvto
         o23VSPgKwopLC/J802M2lJJZ/h5hzQPJfdo+FvfaicncIoyVLWFh859hh/x5YsWDunT7
         b6Ow==
X-Forwarded-Encrypted: i=1; AJvYcCVP6Hqkb72SWlhZ7m0N0klVZJvU34rvjOVj4WApeEE67SXBHGR4ziIPX5uEDqoLeyuDBdIt4yziHAIW@vger.kernel.org
X-Gm-Message-State: AOJu0YwMrn2UQcVDXlsMKEFG5WXAOmvkD9KxglzHiLR6y9gwOElpYoSA
	06oEpZ9NDqr2/0qTOBkSMOm1DleRwzP1DMC+OvucaK67rvOXL8Ke0daJ7yJQje68/P4=
X-Gm-Gg: ATEYQzzyRjiCzxmDpOnFQ0Tv2ddD/PrP7IFZHVwoCocsc2nsBPAXSdur2CrgxY4TO64
	rGdyq78DIImIwFsptrVFpbU1ulqUhgswjsnbDStjHo+We6LnFWxrE8CZLsPijd8rUHrRfOzX5PY
	6X7HfaV2QKBO5RLM3yZdGMTAeN4W5nEtHjZ6ST3LAzy14bejs84uCXHzYCoRGND5J759QrHQPWA
	vlFVG7eUDAUJAeb3yKwP122CCPTgJCfa183D0zu8hP3Jlz/kBnblQ2GCb8ftIETa33gZxgeBCZV
	cmuEt8YCJfB7LJjJeJ9jg/WSpBchhrc1uqxJ/zOcthyqk8QgjYNc0t8OI1IV79xg646Wcs6RLbU
	53yFRyb6EDY9hTjaleYhpUOE5AO3EhP2JOVslULcsYW9E62Gnkl2xA20prcTJNth7X3DnQMZw+H
	T2DdTYj1QyAWQ6iay4BlWzFM+ItpZ9eG/6QY75gie/QLVOEpzudOhqtrnJASfISHNiwcx3Vh0=
X-Received: by 2002:a05:6102:419e:b0:5fd:f9fa:db61 with SMTP id ada2fe7eead31-5ff33481824mr1441805137.1.1772204086138;
        Fri, 27 Feb 2026 06:54:46 -0800 (PST)
Received: from mail-ua1-f43.google.com (mail-ua1-f43.google.com. [209.85.222.43])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5ff1e3e6013sm5754697137.0.2026.02.27.06.54.45
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Feb 2026 06:54:45 -0800 (PST)
Received: by mail-ua1-f43.google.com with SMTP id a1e0cc1a2514c-94dd05a4b44so1212309241.1
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 06:54:45 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUnfZ1XCjrPbIArKWWzVaCghJfpahXmXmTbe7W6YTI0XQiqJoNlgaheoPuhs4sg7VlmX7AZajtW72Qs@vger.kernel.org
X-Received: by 2002:a05:6102:3a08:b0:5ee:a6f8:f93b with SMTP id
 ada2fe7eead31-5ff1cda999fmr3969088137.2.1772204085197; Fri, 27 Feb 2026
 06:54:45 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260128215132.1353381-1-cosmin-gabriel.tanislav.xa@renesas.com> <20260128215132.1353381-3-cosmin-gabriel.tanislav.xa@renesas.com>
In-Reply-To: <20260128215132.1353381-3-cosmin-gabriel.tanislav.xa@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 27 Feb 2026 15:54:34 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVeH3eWZH6-b4f-cTY4W3Tyi+ibfkJtE5A_-J=nwqNB1g@mail.gmail.com>
X-Gm-Features: AaiRm5123zFOGxobgOmfUt0Ahb4WpCv50faXTjLep6czwjGjFva_w8fossmC2MU
Message-ID: <CAMuHMdVeH3eWZH6-b4f-cTY4W3Tyi+ibfkJtE5A_-J=nwqNB1g@mail.gmail.com>
Subject: Re: [PATCH v3 2/3] arm64: dts: renesas: r9a09g077: wire up DMA
 support for SPI
To: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
Cc: Fabrizio Castro <fabrizio.castro.jz@renesas.com>, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, linux-spi@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[renesas.com,kernel.org,gmail.com,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	TAGGED_FROM(0.00)[bounces-269295-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,glider.be:email,mail.gmail.com:mid,renesas.com:email]
X-Rspamd-Queue-Id: 21B781B950B
X-Rspamd-Action: no action

On Wed, 28 Jan 2026 at 22:52, Cosmin Tanislav
<cosmin-gabriel.tanislav.xa@renesas.com> wrote:
> RZ/T2H (R9A09G077) has three DMA controllers that can be used by
> peripherals like SPI to offload data transfers from the CPU.
>
> Wire up the DMA channels for the SPI peripherals.
>
> Signed-off-by: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v7.1.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

