Return-Path: <devicetree+bounces-272729-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kE20Nul5rmm2FAIAu9opvQ
	(envelope-from <devicetree+bounces-272729-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 08:42:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 87528234EC3
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 08:42:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3299A3056D8D
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 07:39:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98B84367F4F;
	Mon,  9 Mar 2026 07:39:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b="MofstRi3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37991366DDD
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 07:39:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.218.44
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773041961; cv=pass; b=hj0JKLLQjDh549AxO5PyqMF4eQwNN70tl++X9qKkZh9Ktel4w/GycfWNP1SPf6pRnVjrAkkKcBKm95NybWwkt5kyom9J+KLtkRsSXPvB9vzq2J7suyi0Adde+5JVL5Gmv/ZdZQYMSo52d1QiVO0pi+70iq91WNg8Ihhtvygptl8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773041961; c=relaxed/simple;
	bh=QeN6GpIdj1+GFkHjKmwA1WMLMo+3lnYFbA/ivhvcUqE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kqILLpASlHFb/QffcUAKdYIA7XdhJrXZViI00rFnImg1onyuWgU1fUgh3PBuqWlKwLA4h+AaRQwIeOCoVdHgi3391FYYFUp/o6nnllvOobE12am/FjyjZkHcmdax7KWJJgprEbFPfSRfDx0H75YxEfgxZYymTNFi/GWhv7edu+I=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net; spf=pass smtp.mailfrom=flipper.net; dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b=MofstRi3; arc=pass smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flipper.net
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-b96e579c0fcso154010566b.3
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 00:39:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773041958; cv=none;
        d=google.com; s=arc-20240605;
        b=K7R7gwC9EBkv/flr0G65dDZcj8nHQpwVOFa2loCQTyWyuAad2ruX2/eP2N6bFYx67i
         iprOnqhHgRH21uDZzQZ3VJ/DCpj3CiIKl/IPptPpYyBviicKFJOc7I2RUZTYj2RBeM5a
         6zNBm1lKXW9vUoQzUB1bC6nWuuw0nUgEI72cRjY7z50KJe1RHcXvBj3psFuBZ2SbjVX0
         jMgcdN27YcZlBxOMqFDfKV22xT41ya4hwrvxNmAX+CGZF8MfDtV49Xu8RumjXUZ/tQvZ
         Rdny5CU7XDT+VWCmJNZfP9VoGGRyiqv+u7b0JLsaH0u9HYG17OIhNtAMQI3lr8cbw5o+
         rh+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=ZZxQV4lJDzLHey1T0g/ZUdvj0+WObWIH2mF1XtFb9lI=;
        fh=/1PVP+pVgGzC7N5TTEmWqJILPXwqYGWE5RMb8TfBy2c=;
        b=ZLC48QeOqWC7Lw2cgL2tqkO22JZXeIPy5cyNavkKovdgCMSQ3YZnAqGAcZZEIwSn5g
         yIJSiEUrqPZIj5DBXBa07ka4dH/ZnxRtcXcbeUTUVS2ILpvHojv1/JaA5y6YsQGX29+h
         VKTa4dMl/wrRjThD2z4wHh3rd1Ft7ZdJtalYJn8j5ZfbzojXIfEh5aWag+NMDS/WxAha
         XVEIq+tULJsYCjOkRC5dYHCzfuf5SL8jug5s9bGCfcwUAuDAJDaQFcwqPINZyOAXlPOz
         8+/hB5oMFEaPqImZugBe53khl+L9yLjl+nHfm5mut8BUhBXChz5vxxFipNmU+ikE4+PH
         VkVg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1773041958; x=1773646758; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZZxQV4lJDzLHey1T0g/ZUdvj0+WObWIH2mF1XtFb9lI=;
        b=MofstRi3xZEecv4sJ9DYgAjCDV6SD99KcdA8dHw8EITCPPImilk6deTafpyCk2Qp9k
         CvQUL6R4OV8BkD2/2mvtXz9KRARnIv76fzNvApPhtk1Y9coSvlAGmg85VD1mMEQO/Nyj
         EDOmzTZK3w0OX+gbRuz72PLzSjrvB8WmqE/2KodLotXV8cDh4vSng8gypK0MsZcTV0xo
         +WeWa6QxsYharQ6AYrc0CdAG5i9fcvNkDPvGcsT42cJJ7ZN72DlcTbmD2BTlYK5HINN5
         9l8o/WjHXmkNV9FHHgqsQ+Zn3tKnNcjjQ0n6EAp0DRT3NJ0s9Qy0ACz8EmkqlKSBLOW6
         v9Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773041958; x=1773646758;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ZZxQV4lJDzLHey1T0g/ZUdvj0+WObWIH2mF1XtFb9lI=;
        b=r3n4R6bcTdsc040C29z5eT53p/vM8ePAUNaLblEC1IEV/DZ7KduoEt4E+ptQDeq8RY
         6vdxHv8kjDaXAid4v05ALuGTUhCD0tCBf+ThFiy0ee8q0dJyq+XxsVP9fcf1zrJOGPP4
         JQ0uVVrbC/uJP1U9ZWzxqno3Kgwejm8KAZFaIASfabM0miMysgeaYfl6ccxZB6nxK1En
         R+pqXCQ5TOSAX648BYgejZ9ZV70zm6SOX1c4CSwAjneoalQwVDg6hPE0aOWTpqrAw7+K
         Utcf2cxtjnO7ha8C66GVQt+eEnujXVtrASTVp2W7U0ed1HgYJE7VXl5GVsoEz+Fqn7EM
         5BEw==
X-Forwarded-Encrypted: i=1; AJvYcCWTrGSeMghuGaL2th/tyra9NCi3KYISplazBVcVvXjcXVPgBCVa0zHSx3oJ3WJKEMDAR3qb8uxYWVpo@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5DW9qDlw5ZSmwKWi/A6o0BbexuxMryW2TTgIQYIeaVbppbRhI
	sldSezzu+HWlVbnNz55X97UX7eLZeTYLd8tC8xyhB5Aktd7e2vGPwhUwlqSZVlNG9j0wBXM2li8
	vYuwaWc1aHQ5hSU6lB3koTCCJxeL5t6L3jx/8uq2p5w==
X-Gm-Gg: ATEYQzznem1NIJeyTwVu6Qdm5gBQbUIm94DFpGFRAhs65865rz0oCkLX7Vv0wX7MI0w
	q6cj5WrHmSqGkQqChZ1HpDQ4lRmOBuuW/yOZlgusq2lvDCa6y+M/jp8zKFndQ/+U9fGuSPdF2+S
	RWSB0do0MLv1WDJD/CJuUfxWUTWMADNOHnKIDMHGqozqK8p8nFLWccWLuB8uEo74kvjS/dBjDaT
	nnlbV+Tp62UPTP6baVKsqLghhz4Va5kraHdby+HCmmRGaSnCDP1nxnpf4EOJ9ji+kHrqwjFlAjE
	AreVvFiNtUMDG70BKA==
X-Received: by 2002:a17:906:9f88:b0:b93:722b:f7c5 with SMTP id
 a640c23a62f3a-b942df7eb6cmr627858666b.29.1773041958288; Mon, 09 Mar 2026
 00:39:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260303-bq25792-v1-0-e6e5e0033458@flipper.net>
 <20260303-bq25792-v1-9-e6e5e0033458@flipper.net> <20260306141541.GP183676@google.com>
In-Reply-To: <20260306141541.GP183676@google.com>
From: Alexey Charkov <alchark@flipper.net>
Date: Mon, 9 Mar 2026 11:39:10 +0400
X-Gm-Features: AaiRm5104XhGOW-J_13frBQZh5T5BSocJtleW8XWylE3jcKvvEUsQUPIIi1o86U
Message-ID: <CAKTNdwHq=XQmTwVwU6U0q4uqTx5dXd+0ET1EizQOVR8izo6FRA@mail.gmail.com>
Subject: Re: [PATCH 09/11] mfd: bq257xx: Add BQ25792 support
To: Lee Jones <lee@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Chris Morgan <macromorgan@hotmail.com>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Sebastian Reichel <sre@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 87528234EC3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[flipper.net,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[flipper.net:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272729-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_CC(0.00)[kernel.org,hotmail.com,gmail.com,vger.kernel.org,collabora.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alchark@flipper.net,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[flipper.net:+];
	NEURAL_HAM(-0.00)[-0.991];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,mail.gmail.com:mid]
X-Rspamd-Action: no action

On Fri, Mar 6, 2026 at 6:15=E2=80=AFPM Lee Jones <lee@kernel.org> wrote:
>
> On Tue, 03 Mar 2026, Alexey Charkov wrote:
>
> > Add register definitions and a new 'type' enum to be passed in MFD
> > platform data to support the BQ25792, which is a newer variant of the
> > BQ257xx family.
> >
> > BQ25792 shares similar logic of operation with the already supported
> > BQ25703A but has a completely different register map and different
> > electrical constraints.
> >
> > Signed-off-by: Alexey Charkov <alchark@flipper.net>
> > ---
> >  drivers/mfd/bq257xx.c       |  60 ++++++-
> >  include/linux/mfd/bq257xx.h | 417 ++++++++++++++++++++++++++++++++++++=
++++++++
> >  2 files changed, 472 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/mfd/bq257xx.c b/drivers/mfd/bq257xx.c
> > index e9d49dac0a16..a6776c8c94f2 100644
> > --- a/drivers/mfd/bq257xx.c
> > +++ b/drivers/mfd/bq257xx.c

[...]

> >  static int bq257xx_probe(struct i2c_client *client)
> >  {
> > +     const struct bq257xx_match_data *md =3D device_get_match_data(&cl=
ient->dev);
> > +     const struct mfd_cell cells[] =3D {
> > +             MFD_CELL_BASIC("bq257xx-regulator", NULL, &md->plat, size=
of(md->plat), 0),
> > +             MFD_CELL_BASIC("bq257xx-charger", NULL, &md->plat, sizeof=
(md->plat), 0),
>
> Please keep these out of the functions.
>
> IOW, please put them back where you found them.

Thanks Lee, will address in v3.

Out of curiosity, are there lifecycle implications here, or is it more
of a convention to keep them out of functions? I've been thinking
that, given they are only accessed during the initial probe, it would
be neat to keep them const and initialize once, when the matched
variant is known. It works in my testing, but I can't vouch I've put
it through every possible corner case, especially various
built-in/module combinations or probe deferrals.

Best regards,
Alexey

