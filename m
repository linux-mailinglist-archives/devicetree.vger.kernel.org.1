Return-Path: <devicetree+bounces-267637-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SNN4DDW1nGnsJwQAu9opvQ
	(envelope-from <devicetree+bounces-267637-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 21:14:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8117717CC61
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 21:14:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F10663040198
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 20:14:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0F36376BC6;
	Mon, 23 Feb 2026 20:14:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="Db4IhOv2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 307DC770FE
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 20:14:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.50
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771877681; cv=pass; b=EFVGNvbH+hxrs6FmF4BvzycQd/inxmJzqWYfY2Q4vZD1QXMJZg1jn/IXgHHsV/mWRdDM4CML4W0O+ifYMfqmohK2DjyWVQHtcTAZAXNPSZMPumG9PftqilYqVDdzqncQTYMYKGP9zKygMIfPFoZq/BmEG8RfVqREtGQ5K1G5PJQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771877681; c=relaxed/simple;
	bh=nA16AXtOAnzAMKQXT0kCHh4QEsWPir743Z8UnTfui7Y=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=OkQifRdn1mw065fNBctq+ZqmuYfwdaeupF5AMvwo56/O+Cu3y0n5Gs7FmxqdzK86G5ECcDXS7MFgWM2U/rML4ki7io7zvs37i/UBTzvtr9Oa3sBHbvi+Vx0+3+sFx1UdNIpQmbiqxoMFBEmpdGpkAy/nqL5Pf8/Da9g175Y2Tps=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=Db4IhOv2; arc=pass smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-65c4152313fso5473397a12.1
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 12:14:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771877679; cv=none;
        d=google.com; s=arc-20240605;
        b=a9f4EW/Mt3m9AtE8k0e6i3piGzFNa8oypus17SW+XiCPEhnWvk9kBMeFrh8lloL8Wp
         gYlZp6EsWilFTqhAin4BPMYbh4A0urfYnv+tZHQwKw+shCA/+gj5r8LappfObkHXeQKO
         gDuCTrVhkaazx6AGCKJ0BH0a8WTGOXQ6GRDPzBBoeEZ10Atgmy1FQzWcBLAH5iNWjFB/
         BZJMUAFT9MrzhYx5ANWlQ29EvSZ+9ioJvuUQoQ5wmgkvbYaxfTsd89LYfr+gk4jVjdGz
         zywVRqSYunnmroL76eUVxflir7bkhXvHn8ISHYCYIB9GH1FVnvKsFo4PtC+1/jlTtnEE
         fErA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=s5RZgQiN9LRRPBUwx9tg90lOISfa/rsQmb3YEFiGi18=;
        fh=yNagHDBuTj+zUb6U20493G6KB1VcNFLiYRn2xg0b4WI=;
        b=l3kcbN9nlUVvIfmDRaPMtWnMaHuIXA/Yiv33hXxv3bhqOxE9W8jJeO5/tykymQy4jr
         rw/ESF4lEa9kKSnQuxktEGlH2Lyz0a1fHLsK/X5hmJyvkgcuJZPh47E4EqFPv8APQw/0
         SyT22QDG7ujKgltqEqgnSJ161APiLL7ujDKsSPxmwxkbsdR1/nYcPd/HIhLn7geb5gHP
         kTpXuqedAK1fz3Jd3tSgvM2HrRqSy64tm50m3Qaq2hGEBJe0TPeBkmBZE485YhtEK2ST
         ctmSVSK089MeZ/YPxUe/ChKn3y+kCQo0S14ziB7idsRAFpeZ950QiQqXslBcuPM5VFxn
         C+/A==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1771877679; x=1772482479; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=s5RZgQiN9LRRPBUwx9tg90lOISfa/rsQmb3YEFiGi18=;
        b=Db4IhOv2N+vJsYpbVmDioP6OEyYY0rnMxZzVVV+M3zgo03Ojicl60hGVzWuGHu4TSp
         g7CctgpVKvOceWFq8MakGnmm+w+UvhbAfck63pNmFK93RmkA/d7C0xdV9j6pTdSfG1xn
         y3syVDRqWw2oD8Okvp44vTDrs+z0u4riazJDvhkhtymwY1SSTgERPOxpJcl7/PZoxJh3
         WWAy5uCByWVwiFGodANvJTuNNALsEskKHCPM+49djF2s5hsn79U7L8Yq0ad+AloFPwqj
         B2B6MQpzxk6/F8xMqsbpu+t9clPnlebXdrKSbMaQ1TSxXveyRQPphoZYTekxZvwDaCvY
         Wllg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771877679; x=1772482479;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=s5RZgQiN9LRRPBUwx9tg90lOISfa/rsQmb3YEFiGi18=;
        b=wFKUv5faeDqHT10u4mR78TDxtqshp3fh/Ehxr/fmEY523QlRWQKFl1pmvbBR9vcGWD
         C3dPFqhcRBmxlxP8M5hgIyQATXeWr3AilScnYnGdZAjTBwRUmtiRltlcFbIhnawQ9Vuq
         H7TXAV2TmAXClQGp653KVsgIYUvkU4wVigrSV1UcO/z1DdkPZJCm79ijULSiYOOq9Pww
         oFUceoRuMaDFtTuJJdW8MGz0S9f+FMd93LUbwV6m9MbZ9GcvO8oNLzdxA5ONzIR88B3H
         +fKf91Y379yuB53SiU/MNSrqFZxYydFtWigizTA0ReJ/4mEUcIoIvXf2EDZUoqG9THHR
         fxxA==
X-Forwarded-Encrypted: i=1; AJvYcCX+kq0vx06X09NGOrO//5/WYxIyvbY+T2wgTVteurAsdamCGflW/CqLZqXbr66jiDWzvmsfm+CPVdhb@vger.kernel.org
X-Gm-Message-State: AOJu0YwedxeTV6MItnpvYBURuKMX/1ShzYz0QWjkPucpYvujyPW+uEh6
	aVc+He2kpH6wQpOoLJ/wEFZml7U3wuWXlXdO1TkpZmn88g0LOTxV19BkVkZmS1FqypYemQ7fs2b
	he4EcMB+EeGF7OfvcJXOImXh521VzhdCAs0diBu8=
X-Gm-Gg: AZuq6aKO/40LPztlJhFCSfOBPCwUNdVc9/uOYlfEDqPVTUjxOljB1N/fj2BSRcQP2yS
	KJSWrePLsdgOl5KyiFWv5ZbIWGbwxpqvKTntFny/pgQ0yGIshaBCO7cInjrvAaz8AfqND/HnyfB
	RZoD+UtJBsklWF4OzKdzGFyYir7x+fCnDkvS1rm0PEIhwf02ZvGrdHQ3tDS5vq7fBQyS2k01p0S
	s6WDn0DQ+mEAMJlsm6kl8ouo2H0zwuW4vgxuw+EiG7B0aWEm6sYdHvcKQWomM6kh5HDyCqoIMUE
	5AFfBx8ekYcDoYE0Zh82UYIfXyLtu6vc/5m1
X-Received: by 2002:a17:906:eec4:b0:b91:949a:721 with SMTP id
 a640c23a62f3a-b91949a077emr32138766b.50.1771877678105; Mon, 23 Feb 2026
 12:14:38 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260123093322.1327389-1-richard.genoud@bootlin.com>
In-Reply-To: <20260123093322.1327389-1-richard.genoud@bootlin.com>
From: John Stultz <jstultz@google.com>
Date: Mon, 23 Feb 2026 12:14:26 -0800
X-Gm-Features: AaiRm50Ga4oMdcVdPVuyNBi2IGP1JlBI-F2cv9ZWk5n7MHWt5lEEKQ1itdDrDwA
Message-ID: <CANDhNCrSjp1F0PifJXmxrAbRiTC=d_ZXeiiT5kGuM=gNke7ebA@mail.gmail.com>
Subject: Re: [PATCH v3 0/4] Introduce Allwinner H616 PWM controller
To: Richard Genoud <richard.genoud@bootlin.com>
Cc: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@baylibre.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Paul Kocialkowski <paulk@sys-base.io>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
	linux-pwm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267637-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FREEMAIL_CC(0.00)[baylibre.com,kernel.org,csie.org,gmail.com,sholland.org,pengutronix.de,sys-base.io,bootlin.com,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jstultz@google.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[google.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,bootlin.com:email]
X-Rspamd-Queue-Id: 8117717CC61
X-Rspamd-Action: no action

On Fri, Jan 23, 2026 at 1:33=E2=80=AFAM Richard Genoud
<richard.genoud@bootlin.com> wrote:
>
> Allwinner H616 PWM controller is quite different from the A10 one.
>
> It can drive 6 PWM channels, and like for the A10, each channel has a
> bypass that permits to output a clock, bypassing the PWM logic, when
> enabled.
>
> But, the channels are paired 2 by 2, sharing a first set of
> MUX/prescaler/gate.
> Then, for each channel, there's another prescaler (that will be bypassed
> if the bypass is enabled for this channel).
>
> It looks like that:
>             _____      ______      ________
> OSC24M --->|     |    |      |    |        |
> APB1 ----->| Mux |--->| Gate |--->| /div_m |-----> PWM_clock_src_xy
>            |_____|    |______|    |________|
>                           ________
>                          |        |
>                       +->| /div_k |---> PWM_clock_x
>                       |  |________|
>                       |    ______
>                       |   |      |
>                       +-->| Gate |----> PWM_bypass_clock_x
>                       |   |______|
> PWM_clock_src_xy -----+   ________
>                       |  |        |
>                       +->| /div_k |---> PWM_clock_y
>                       |  |________|
>                       |    ______
>                       |   |      |
>                       +-->| Gate |----> PWM_bypass_clock_y
>                           |______|
>
> Where xy can be 0/1, 2/3, 4/5
>
> PWM_clock_x/y serve for the PWM purpose.
> PWM_bypass_clock_x/y serve for the clock-provider purpose.
> The common clock framework has been used to manage those clocks.
>
> This PWM driver serves as a clock-provider for PWM_bypass_clocks.
> This is needed for example by the embedded AC300 PHY which clock comes
> from PMW5 pin (PB12).
>
> Usually, to get a clock from a PWM driver, we use the pwm-clock driver
> so that the PWM driver doesn't need to be a clk-provider itself.
> While this works in most cases, here it just doesn't.
> That's because the pwm-clock request a period from the PWM driver,
> without any clue that it actually wants a clock at a specific frequency,
> and not a PWM signal with duty cycle capability.
> So, the PWM driver doesn't know if it can use the bypass or not, it
> doesn't even have the real accurate frequency information (23809524 Hz
> instead of 24MHz) because PWM drivers only deal with periods.
>
> With pwm-clock, we loose a precious information along the way (that we
> actually want a clock and not a PWM signal).
> That's ok with simple PWM drivers that don't have multiple input clocks,
> but in this case, without this information, we can't know for sure which
> clock to use.
> And here, for instance, if we ask for a 24MHz clock, pwm-clock will
> requests 42ns (assigned-clocks doesn't help for that matter). The logic
> is to select the highest clock (100MHz) with no prescaler and a duty
> cycle value of 2/4 =3D> we have 25MHz instead of 24MHz.
> And that's a perfectly fine choice for a PMW, because we still can
> change the duty cycle in the range [0-4]/4.
> But obviously for a clock, we don't care about the duty cycle, but more
> about the clock accuracy.
>
> And actually, this PWM is really a PWM AND a real clock when the bypass
> is set.

During my free/personal time this weekend I was tinkering with Orange
Pi Zero 2w and was able to use this patch series (along with an
hdmi-phy patch and some dts changes) to get HDMI working on the
device.
I'm eager to see these land!

Tested-by: John Stultz <jstultz@google.com>

thanks
-john

