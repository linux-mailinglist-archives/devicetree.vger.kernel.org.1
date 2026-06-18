Return-Path: <devicetree+bounces-313535-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id BvzGCEgDNGorLAYAu9opvQ
	(envelope-from <devicetree+bounces-313535-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 16:40:08 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 63D226A0F91
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 16:40:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=flipper.net header.s=google header.b="WK/YJrWy";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313535-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-313535-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=flipper.net;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1C14030465F7
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 14:40:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5096B31326B;
	Thu, 18 Jun 2026 14:40:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5907308F39
	for <devicetree@vger.kernel.org>; Thu, 18 Jun 2026 14:39:59 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781793601; cv=pass; b=aZ6obKjWz5DgJWKl+qnYFzJKKxJnXD/vUx9iU7CZOqsZagto540hkFgq0zSVYJw46d58+0+samYoFzHuhDLjoMKpn5GAX9WDKn/fBLdWD3ru8X/KpZ5fvnbHiI1woYUoOULY2fVjv4nGPEq93NZYrl1wmyzWv/7WUiL9NtT3CWc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781793601; c=relaxed/simple;
	bh=UkpsRRzdvfZ2ngOuRswzY3Iyir7MwU52PzLXrSQ4q5A=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=EOO/+KxRU+NHDgDN+DlwB9N0vbZ8XMrypxkx34zvdiESWkwAKFeEJImB+Ww7sqLjHR8CRZ0sO4AwGBg/Wz6pnBI+aXDZI3mHyvW8cVg/Yhjsh/CKjmpZOVX10auLagXCYsMQW97hUqbWyg26jIa/DRBzlCTRT+k9CqxzPJ27oyo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net; spf=pass smtp.mailfrom=flipper.net; dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b=WK/YJrWy; arc=pass smtp.client-ip=209.85.218.53
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-c07fcdd75d3so68186366b.1
        for <devicetree@vger.kernel.org>; Thu, 18 Jun 2026 07:39:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1781793598; cv=none;
        d=google.com; s=arc-20240605;
        b=fKGtRcKHqDeDFSw/6zA/kdFX7A9hdD+ivYhvSocQYUo0lGS1MqyjJG1UkBTiZxreXP
         K7+gmME9c8UdqgciOy3BPK5W/7KRCNo8mt9/Cyj56OppnR3nXuD4eqn27K0nc2g49Zxv
         3ivdWEbhvJ2WRPbW3s63BXOxcqNrUa4mSt2Jm3OwyOxDmTuGsNonJ9UuO/YbrkoEDGU7
         m9CHOIOh51iUvj42Yxubk3yaO94A8xvSWaq0jdCRUr/qgiTrAsF/fZ8BH/1sWrrZ4ef7
         +Rp8s/LwTlaUR+ROaPbT0iRtv/ZbeyEdg8680fmK4IwTHUvs839oBpIQN1n7U6LfqCep
         /e+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=klc37y86Bp+o8UgyvGFZJuEx2h0iQwGBFLogZZiStCY=;
        fh=pHj+q6B/yIF2QpjTRgok5ynUEdryUkJDrJqXQqxn/uY=;
        b=FFp8FoPB5jIQWxazDa0SL9zyvntOjcx/Bv1Fvc4HJpriSUZhQYaYytfIHpESZGBG6u
         N/kTqAvyz6a8lJsGj2uPLuxdEKsBY+9v7ysBc/e46b9uEsTFq9UrPvDTvg2vXVs+SwJB
         lGHO31NRRgnkTJbf3TlOlRzVskRNOZOvIoj14YB1/Ygqb+5om7Mx0yR+bwWnDyc0dgs3
         RP/OajonKKvjT8agYv8nQxreVJ3dKwBR3w2uw2N1W/2+pvPdZtwcSnJlkKapFh/PKZra
         zXLJ5I03VkTW18P2m+B050me0kI4kbccZMkipizS07a9rDsKo1a7sn/6VWLGhi2dj1Ym
         Gg9w==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1781793598; x=1782398398; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=klc37y86Bp+o8UgyvGFZJuEx2h0iQwGBFLogZZiStCY=;
        b=WK/YJrWyNAN7pt6wUal1bZmiGaxB/Xl10dOxSI/b7JxE40wrB35AKoDoA4dkW3DImi
         xNE5noq/XfA6WTSzZ/MUVZIWoChWCpziV8leOWnGus+C2bmXP9JZN6MYBr2ArpLIDqJ2
         L4ybxDrC4yfqgSXgbr8OUzSfHtnk+7ws0DWLxDLsbdey7I8A8Onc46BxPYPNXJdhya27
         tWnyRooRgZETznuDpPLofO/ALExB+0FEqFy6N0sT+Q8jZKc6TotsP7jKNEzaaIdEUNaB
         HwTVu1FjDQt7+qs/0f018poZ+O1shnOYJByVJ+y8rl34HnxtqvRU+A2F+qY/klAPvbVs
         wS7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781793598; x=1782398398;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=klc37y86Bp+o8UgyvGFZJuEx2h0iQwGBFLogZZiStCY=;
        b=ThmSObw7ddGg5M/W4yaZLATIb9WjKhTEFjVHrAceVitamPQGcWKbFD7hRLEhZXc6BB
         mrCGVM3OsbLxxZxZ71PaA+MGo5HYOAmk1MLVuSELzfRmAuhkOip86xw4NigE4Pm6aLmM
         coZZFOeMCz+PLAZcj6rmZ7mdC87HLwcuoQFamF+JdmVC/+9xSqrNm2QL+9AKnawlprmD
         qhhzZnvUnPdOAp4q9ElMkvKQxB5z3ym6bNjbXbdRNc3ohlq4uC18laspfVKanmIyDVxE
         H+dN2KeAIv5fwJefs7HBxiRz5QFgAz7AKRfQ7BXTYEPSRaZguHa53FCYR4nB+YnWd9sw
         i2Yw==
X-Forwarded-Encrypted: i=1; AFNElJ+RbMA+qFiX18PRzMlDrh+2yh+APegdQbyWKvX81Ce6ftlTzInOGcsnOLDlshMT3qN4IhASdZIap13w@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6viKfrCQaevUFZzdLNiRsIwtgCwk+bIow3PqchdDjTRtd8LX3
	lTJstV5SbpecO+Ah+8meyjYIR9iL5cm3hsi3u/EWqDFoVssv7ccH2jvy2V1Lu6KxGo2NrpEpLmJ
	WCHVeS8jz3YbHxHa3+MQ+sMAv3o1AMDRZ5raS1VrCsw==
X-Gm-Gg: AfdE7cm7ecQskEN3JawDfKbiU7ovJ/tuJ4mPjjoGnNzti1AKF9Uu99Cs73wWVE0/2Cc
	4vm81oEbciQgkkfZnUrRj4cFAT6iAl4FiJdbtvIcPqbGWM+O/bEWB8T8w++1zIKA9du5hBpDp1X
	gwhq0jM8SFP5PCg2xCzBsnEmv7QL4iEz8022HtAeSxB1YE6moYni5hCjvQJ4CKvYaPxCUVe+NHg
	zALUuf6YKCOx61R0L00wtPF185BMfZxxmybbCp4/4cOWa+v6fXTGoYJKtcHRgQ4H4KtWKeLdz6t
	LqgVnUIabwyfVwzkELhjk/WxhCyd/w==
X-Received: by 2002:a17:906:209a:b0:c07:6950:4490 with SMTP id
 a640c23a62f3a-c07695ff1c8mr122729166b.42.1781793598164; Thu, 18 Jun 2026
 07:39:58 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260612-dh2300-mcu-v1-0-ab8db1617bc0@flipper.net>
 <20260612-dh2300-mcu-v1-3-ab8db1617bc0@flipper.net> <20260618124034.GI1672911@google.com>
In-Reply-To: <20260618124034.GI1672911@google.com>
From: Alexey Charkov <alchark@flipper.net>
Date: Thu, 18 Jun 2026 18:39:51 +0400
X-Gm-Features: AVVi8Ccbf4bgucBpzfdBMYf6dTmoR9eMWMyjmKeq_8LMA4KsT1l7bFz4pMkxg6A
Message-ID: <CAKTNdwEta01QjuaqfJ339pCTKMT_4K9QbmvFu9OBt=M8-JSDKQ@mail.gmail.com>
Subject: Re: [PATCH 3/4] mfd: Add support for UGREEN NASync DH2300 MCU
To: Lee Jones <lee@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[flipper.net,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[flipper.net:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-313535-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_CC(0.00)[kernel.org,sntech.de,gmail.com,vger.kernel.org,lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:lee@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:heiko@sntech.de,m:lgirdwood@gmail.com,m:broonie@kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[alchark@flipper.net,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alchark@flipper.net,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[flipper.net:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,mail.gmail.com:mid,flipper.net:dkim,flipper.net:email,flipper.net:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 63D226A0F91

On Thu, Jun 18, 2026 at 4:40=E2=80=AFPM Lee Jones <lee@kernel.org> wrote:
>
> On Fri, 12 Jun 2026, Alexey Charkov wrote:
>
> > Add a driver for the HC32F005 MCU used as an embedded controller on the
> > UGREEN NASync DH2300 NAS.
> >
> > This part provides the shared I2C regmap to be used by function-specifi=
c
> > sub-devices, and instantiates the SATA drive-bay power gate regulator.
> > Implemented as an MFD to allow for other functions of the MCU to be add=
ed
> > later: vendor binaries imply that it also provides a hardware watchdog
> > and somehow serves as a wake source, but so far only the SATA power gat=
ing
> > function has been confirmed in absence of documentation and sources for=
 the
> > vendor firmware.
> >
> > Signed-off-by: Alexey Charkov <alchark@flipper.net>
> > ---
> >  MAINTAINERS                     |  1 +
> >  drivers/mfd/Kconfig             | 16 +++++++++++
> >  drivers/mfd/Makefile            |  1 +
> >  drivers/mfd/ugreen-dh2300-mcu.c | 60 +++++++++++++++++++++++++++++++++=
++++++++
> >  4 files changed, 78 insertions(+)
>
> Did you see: drivers/mfd/simple-mfd-i2c.c ?

Oh. Now I did :-D

It's exactly what I needed, thanks a lot for the pointer. Will drop
the boilerplate in v2 and instead instantiate my tiny child device
from there.

Best regards,
Alexey

