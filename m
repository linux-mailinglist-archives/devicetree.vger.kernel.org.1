Return-Path: <devicetree+bounces-276224-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +LjINeEVuGl/YwEAu9opvQ
	(envelope-from <devicetree+bounces-276224-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 15:38:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A2C229B889
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 15:38:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8AB3F308A8A9
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 14:35:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B2B1293B5F;
	Mon, 16 Mar 2026 14:35:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com [209.85.221.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351AD2BDC1B
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 14:35:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773671716; cv=none; b=Uz4UG/w1WPw3ULUQjpspfIiuElvbyT6gazIvhui9BugN/ld0wUnXtKwKXp9CjNotuTkw/VY7Yt1WwQ1i35+/7NP2dcTURK0t5NUZAb841oEN/pv5QoOIRkUo5F7cg8DNjOo2FoM62XeOFeq/W3JxXxYYw3dh/Ux3pkHvefSOsT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773671716; c=relaxed/simple;
	bh=iy9mAbo+s/T9dKdx46UM1/G3Wgr+pl5kUIJdFdPPHoc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=svAkA6d/gDXMugfYDn9yuv/ue5HuTr1O1qtR3WfazBT71qnIV3aV8+031B4RkMyILO0thCZtRtV/zW5z+YoeVHfFtVmt22lMzxNivp6TOjmowomBE3tVErOM/sxO0MMznU4yeGOeDwC/f6rvD6ADIf45nArGGsIckPSInwIT8zA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f176.google.com with SMTP id 71dfb90a1353d-56b71eef805so718527e0c.1
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 07:35:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773671714; x=1774276514;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cEi22uqCpnp8wHRA2MLlWKOoRU5kiNMxo6iy2SBbAHQ=;
        b=JdiJFGFt1NrgnESECU8xg6Dhs0ciiFqmH9+U5zXGw2zynEC+BMWJAfLmy7zvzxv+HH
         mltRusQq60QpC59MokcnvqlBLxgWGfRiSEJi5b+eaAsZAQe33JtEWWKW1RyJ0fCOOkhl
         /0LZ60IPKWLzjskCroCsGQqfKcrVPUI9U5Tx671/4WiAc0CWaWpXIJDWMh1ulh/nulSl
         q4iQc6ZYhJayi4a1ihGziT7DrWeeSGu/PMU3bsOK7SPExX6inCoBsZ0+kd59sizowclv
         DD0wLikozvGpjHGsk5q3rDHe9XMxrjpt3UDSISoPz/Q/WBTMIwDjONvN0u1f/twfT46C
         bwUQ==
X-Forwarded-Encrypted: i=1; AJvYcCXarh6b/eOQKvS0fKDXM2dWkeTTbRJU7TcHUASHuM/dQhX657tWa6EIUh21R+SinMRDpS7ggPemMVYb@vger.kernel.org
X-Gm-Message-State: AOJu0YwYzjVMs6VoHCitkvLe7P4wAM/JsfqJtOQts/rSCFPIs0V0NfN4
	AwBqwyCeHFk8OLmjIsrol8LeFm2aHOjSEyDrmMOOUBsBhI3tFFRR9c0UIjoDIC5U
X-Gm-Gg: ATEYQzw1XvUaTRJ9+AUnkahBa3hTz5v3gMu0xyf+grA2jOde0FHxxIPYw0LCFysdl+G
	Yb1vOcYejEqfOoi89cRayztCRaqk/OQzUse84S9kga1a/zJzR555fnUvolW7cew5TrXtFPdhJrQ
	xcUkgDnTqMkkmSv/SQ3wIy3Le4o5lCqWWIZjRSbS8+7on4+acCHnmqBULE4LFLJEmGuPB077z1a
	l2895hbWGBdtivw6h+8n+IjkpRq7YdJ5pYvQxt55+cz4HAlQQjngBg/g+vhePJaMJ5OsWtbZ/ny
	DahRct1XAajgCta2mlOcgxHCPXPBCNQ73uJnLhq3/N7tCyR5NKZCd56d+jJR1so+74j9Ix/PqWb
	tckNjkL6xXyOSo2+wzFBagZcMny+UdCeQBH8/a8zPThL+1UOHu3bLAyqvn5SpjKCWLOze1nd5Xx
	ZjPLCpTn5t5NwgogO5U14botGG9qyuDyepWZR7zi9nis5+nCf8ju8a1+jn4DhA
X-Received: by 2002:a05:6122:310d:b0:563:c3e7:6132 with SMTP id 71dfb90a1353d-56b6291ab84mr4875086e0c.10.1773671714072;
        Mon, 16 Mar 2026 07:35:14 -0700 (PDT)
Received: from mail-ua1-f44.google.com (mail-ua1-f44.google.com. [209.85.222.44])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-56b79fd4a84sm2739530e0c.12.2026.03.16.07.35.10
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2026 07:35:12 -0700 (PDT)
Received: by mail-ua1-f44.google.com with SMTP id a1e0cc1a2514c-950d235b500so305542241.0
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 07:35:10 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVWNGdNVsO5AC5PIRjiVJMxhZsw0/uRV4p27c2YQBHvP4zi4fAZAsX8wwva8j3kpBrphQli8p8AUzkF@vger.kernel.org
X-Received: by 2002:a05:6102:3711:b0:5ff:be25:8934 with SMTP id
 ada2fe7eead31-6020e176ecemr4558310137.8.1773671710334; Mon, 16 Mar 2026
 07:35:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260310212927.3372410-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20260310212927.3372410-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <abgQpsArW3VrCAns@shikoro> <c3af22f6-d937-4539-8eb7-d7f0b0892ca2@kernel.org>
In-Reply-To: <c3af22f6-d937-4539-8eb7-d7f0b0892ca2@kernel.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 16 Mar 2026 15:34:59 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWdyK6YKSrExmvzG9sPdr-xihJROAeZGLh=xAB6sObVsw@mail.gmail.com>
X-Gm-Features: AaiRm53dfSLRgvt3HKUnwt4jeNK1RNa3l_ZjqMoT8LvOA5hXcJ4fFaeKP7Uw9XE
Message-ID: <CAMuHMdWdyK6YKSrExmvzG9sPdr-xihJROAeZGLh=xAB6sObVsw@mail.gmail.com>
Subject: Re: [PATCH 3/3] memory: renesas-rpc-if: Add support for RZ/T2H SoC
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Prabhakar <prabhakar.csengg@gmail.com>, Rob Herring <robh@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Magnus Damm <magnus.damm@gmail.com>, Biju Das <biju.das.jz@bp.renesas.com>, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[sang-engineering.com,gmail.com,kernel.org,glider.be,bp.renesas.com,vger.kernel.org,renesas.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-276224-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.955];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid,linux-m68k.org:email]
X-Rspamd-Queue-Id: 3A2C229B889
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Krzysztof,

On Mon, 16 Mar 2026 at 15:21, Krzysztof Kozlowski <krzk@kernel.org> wrote:
> On 16/03/2026 15:16, Wolfram Sang wrote:
> >> Add a new compatible string "renesas,r9a09g077-xspi" for RZ/T2H while
> >> reusing the existing xspi_info_r9a09g047 OF data. This allows the driver
> >> to bind correctly on RZ/T2H while the register differences can be handled
> >> in future updates as the affected configuration registers are not currently
> >> accessed by the driver.
> >
> > This sounds fragile to me. Can you add a comment somewhere in the driver
> > or headers so people wanting to use these registers will find out that
> > the SoCs are not compatible anymore?
>
> IMO, this patch is not needed. If you need to handle differences in
> registers, then you add dedicated OF data.
>
> The change here (with the bindings) is actually confusing, because
> effectively it says two contradictory statements:
> 1. Driver patch: devices are different but they are compatible in
> meaning of DT,
> 2. Bindings: devices are not compatible
>
> So you need to decide which above, but not both.
>
> Eventually provide extensive arguments in terms of how DT understands
> compatibility.

I disagree.  Using the same of_data can does not mean the devices are
100% compatible.  It can also mean that the devices are different, but
  a) The differences are not handled yet, because the extra features of
     one variant (or both variants)  are not yet supported by the driver,
  b) The differences are not handled explicitly, but implicitly,
     or elsewhere.
     E.g. the different number of resets is handled implicitly through
     devm_reset_control_array_get_exclusive().

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

