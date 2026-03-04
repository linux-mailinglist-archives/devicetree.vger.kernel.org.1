Return-Path: <devicetree+bounces-270928-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uNDgLM/wp2mWlwAAu9opvQ
	(envelope-from <devicetree+bounces-270928-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 09:43:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 235151FCC98
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 09:43:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B035B30810A8
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 08:40:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1DF139099F;
	Wed,  4 Mar 2026 08:40:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HzR/VolI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35D5139184D
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 08:40:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.42
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772613621; cv=pass; b=n15ncGCyVmoGOMp3TT/bjyiacUEYSvKW9Ttqddw0oIL1okBYogYgN6k3JOPWMnGGzPv4aUgzqaBcvXFfdCFhKGZeeJiHukKcAomHaqItqqxkZVFjQ8xv7DUAxtJY4zjhCqUHibsblpow2dmk/i7TSvvI7Z5KdIYGML4UA/Odz0o=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772613621; c=relaxed/simple;
	bh=BjJ6xJV0OvlriaqNkucLEaU/Z9qFOGjZ/IGwRvxOUDU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=j1KVsFu/QVpuW7uulwJzy4Es18DnIU9PnibH2M4QPZjuq6DcnDylOeoku7NobWD9HBby0JtMC8OzTgIXBv04D1PERaVVAFn+ATd/NM1lbAK8hoeg5aswQuUXK67QxzEiS6l6XV3A/chGAPk7Nt4wSJEKLqW6mVDNsuY0py8xQcw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HzR/VolI; arc=pass smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-483a233819aso64230165e9.3
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 00:40:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772613617; cv=none;
        d=google.com; s=arc-20240605;
        b=FIXQipJUf0iJkGD/TnPbWBWipLEiAAW0mxmdh7FRf1TEgNVq13aTlfCGR1SaJ4ZEFf
         goEnckBmuwDIAn+vfC9Vvtnw+lG465Rey5mUBgmpl/KuI5cQWuwNxLKXFwFjeqbbO6A8
         5CUkcuruZiqjk/GvJciKjXZmZXuruTQh7f+zFJPi9fLEza3eSVIdGRr7I9l3425dXvMN
         ylxq7EJzKQc9Kx9ON/YuAJxOoJqdgWAKz+iDXSnWTVVJ/vPIWLLAj6Gmft/FMC0OmNjU
         HM0GJsxMLztilJP5ZJXn0/GFpc+FyvYAqJHY9Nki58WxMwMJC/qLgSXaNur/L1Pm8NOg
         3MRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=PToNCG/C8hBrD2f8Fqj5gn5SsgI35QaMUla9CaktgXY=;
        fh=dKXiHnhcAHkmcU6iarz/GHMmIoIWGYs3gzBsV7fZLc0=;
        b=Gx+9fcnsMuQx2/KjW1M2ZrAjrxJ56YwDH9UwYF9W7FKPVi0huSYz/92PItrUIdjiv9
         rXiLREenS5Dmjxu2XI2E6EomW/C0qXSgxfSUuyPDWvWvrmFtX88bPsgcE+inOsDpyWIc
         7I4NvFf/Nw3s3jCQiUmOaE0muVoNcieVES1JK3xu2FF6bLCUncw3gZTXqXSV4+19FHRc
         gNK6KdV9zm0VklRAHw7RrBEHXiYphqYw7dDyrEAXsdJ1mAXxY+UX+nqkburtC+i40gUI
         x6522o9z+hD9dNUb6L+0U1grJus/jM7HTgeHNU4NipeiKtmhdbwoRuNXWTTEOR7A+s25
         a8kw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772613617; x=1773218417; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PToNCG/C8hBrD2f8Fqj5gn5SsgI35QaMUla9CaktgXY=;
        b=HzR/VolI3B38dUjo5bkIV4Zv8a0lmKjnpz3yBzzs14v2y3yWJ27PlFgfwzwbkx0iHj
         9R5xt2aIk9rc4L1b5nltlEaQgqID4ivyPrf92AFPO6nqn/iwPRXp02r+WlpWwS8ImKhS
         DmMoXXrRZ//JO+SsGdoFl5DndabEnGmGcwkDfL/40aX/AT107yk13mkDAHtmhtynZtmk
         ruj1cEwhmJATVluVDdaCox4h5Qsh1873qhSvPSbnQNWVZU8qq6ZbyVNe0F3ndEWInmri
         /3huvUFwmhUJNQqLTYQgUT+N2aTtRO9Okb7GeRIhIV0LzJf/5Q4wKElnk19ExOzbZDbr
         AqnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772613617; x=1773218417;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=PToNCG/C8hBrD2f8Fqj5gn5SsgI35QaMUla9CaktgXY=;
        b=HJj66wxlbIywN6Vc9uDOCBc7T9NLb2WYlEWIXyqtkwrb8A7PjcPbgZJsGVxcDZXNpw
         3K3jnYnIkgg9MB3mxsXkGOyCmXFY4FQdFqb0Fm/dHVUdCBgCJe8XDqARxaOPXR+mWszw
         ocQUe4+10P1eyYdWrkJEkpRsIRXJeccHLUxGXkbBJ4Vub2tebIueUXeOjLhLOYXBM5R0
         4/v599cR7Aa91CZp7ozwujJj/FxYScRZNqnFNTwyQ1ISiiEr18EJ2rYhfiJVjxt3BTTw
         D90Wq4x20i+b8QrJkbrJcP/fTCoU6VAehHLGaaTIsVHyKpNrUDNVW9yyVO8iXCzTS+4d
         Anwg==
X-Forwarded-Encrypted: i=1; AJvYcCUag7FzA3ZsA5O/93FB+hs4uWVYrKISwx+aXKHuVfX8CSszVn2sRbg2nsmlIdVJsH68OLD220/h3+3S@vger.kernel.org
X-Gm-Message-State: AOJu0YzGy4Rw5TcYirOBccNXMLE3m0JCRcMCn20Tnv05LWJXTnYfaTsQ
	3FK1dylZA2bUuBfgvIPpHNDMX3W0K1D8M+HXno9f9DOPvcsdbd+5ltHKx2a+1mwbinu+lw9vsb4
	YOUODMG4VGp0OHFbfnVcJWS2gGQWUCws=
X-Gm-Gg: ATEYQzyYTJCUqKTPeLTEnO2OfX3BVMKs5ZbzooC6Zis1QP655N8ymrOgO79iplHYP9C
	GK1VmPRqjvCGX5LoqO+DWZ/W3pJ7WEEEkzuBaVhu5KOjUbgGbHUZLQU7TTaoS9OTL7vfNxMfXGs
	bmQkWDjVemIYCdjw4sWMxTjybCOElu3ttj3YUIZzN7sklKlEVEPM0GiPUk7pIDT4nlGhr9UgoBK
	rh3tMAOpzROPO4N9dFQH2xpTpkSP5M/0ar+5BfNoY6nDpoFitrnkZ0unE+BCF3DynxeBRDzLZlN
	zgtGX4ATTM3iBfHY5yI=
X-Received: by 2002:a05:600c:348c:b0:477:5b0a:e616 with SMTP id
 5b1f17b1804b1-4851983beafmr17136285e9.5.1772613616974; Wed, 04 Mar 2026
 00:40:16 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260212122302.29211-1-clamor95@gmail.com> <20260212122302.29211-3-clamor95@gmail.com>
 <1cb955d5-c813-4b52-8f0a-51e4635d7b27@oss.qualcomm.com> <CAPVz0n0CSFhYKnzLWsSo_7kE_nDsBKJ1cS+A5ZQ6gt9DWLtxAg@mail.gmail.com>
 <aafuPQ171Jwo12D-@kekkonen.localdomain>
In-Reply-To: <aafuPQ171Jwo12D-@kekkonen.localdomain>
From: Svyatoslav Ryhel <clamor95@gmail.com>
Date: Wed, 4 Mar 2026 10:40:04 +0200
X-Gm-Features: AaiRm501RsxWyL5sfj2qe_GSU5MTvwMpcXbGWTlrKFBEqfbE3BqOJ9UScvPBd4o
Message-ID: <CAPVz0n0moFZkubOwDnXGpMLg8S4LW9KEFgnFMH5PmrEzExH6bg@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] media: i2c: mt9m114: add support for Aptina MI1040
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: johannes.goede@oss.qualcomm.com, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-media@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 235151FCC98
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270928-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,mail.gmail.com:mid,intel.com:email,qualcomm.com:email]
X-Rspamd-Action: no action

=D1=81=D1=80, 4 =D0=B1=D0=B5=D1=80. 2026=E2=80=AF=D1=80. =D0=BE 10:32 Sakar=
i Ailus <sakari.ailus@linux.intel.com> =D0=BF=D0=B8=D1=88=D0=B5:
>
> Hi Svyatoslav, Hans,
>
> On Thu, Feb 12, 2026 at 06:44:06PM +0200, Svyatoslav Ryhel wrote:
> > =D1=87=D1=82, 12 =D0=BB=D1=8E=D1=82. 2026=E2=80=AF=D1=80. =D0=BE 17:53 =
<johannes.goede@oss.qualcomm.com> =D0=BF=D0=B8=D1=88=D0=B5:
> > >
> > > Hi,
> > >
> > > On 12-Feb-26 13:23, Svyatoslav Ryhel wrote:
> > > > Slightly different version of MT9M114 camera module is used in a se=
veral
> > > > devices like ASUS Nexus 7 (2012) or ASUS Transformer Prime TF201 an=
d is
> > > > called Aptina MI1040. The only difference found so far is lacking a=
bility
> > > > to poll STATE register during power on sequence, which causes drive=
r to
> > > > fail with time out error. Add state_polling flag to diverge models =
and
> > > > address quirk found in MI1040.
> > > >
> > > > Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> > > > ---
> > > >  drivers/media/i2c/mt9m114.c | 29 ++++++++++++++++++++++++-----
> > > >  1 file changed, 24 insertions(+), 5 deletions(-)
> > > >
> > > > diff --git a/drivers/media/i2c/mt9m114.c b/drivers/media/i2c/mt9m11=
4.c
> > > > index d5b142fe68a9..a4b021702a1f 100644
> > > > --- a/drivers/media/i2c/mt9m114.c
> > > > +++ b/drivers/media/i2c/mt9m114.c
> > > > @@ -373,6 +373,10 @@ enum {
> > > >   * Data Structures
> > > >   */
> > > >
> > > > +struct mt9m114_model_info {
> > > > +     bool state_polling;
> > > > +};
> > > > +
> > > >  enum mt9m114_format_flag {
> > > >       MT9M114_FMT_FLAG_PARALLEL =3D BIT(0),
> > > >       MT9M114_FMT_FLAG_CSI2 =3D BIT(1),
> > > > @@ -422,6 +426,8 @@ struct mt9m114 {
> > > >
> > > >               struct v4l2_ctrl *tpg[4];
> > > >       } ifp;
> > > > +
> > > > +     const struct mt9m114_model_info *info;
> > > >  };
> > > >
> > > >  /* ---------------------------------------------------------------=
--------------
> > > > @@ -2279,9 +2285,11 @@ static int mt9m114_power_on(struct mt9m114 *=
sensor)
> > > >        * reaches the standby mode (either initiated manually above =
in
> > > >        * parallel mode, or automatically after reset in MIPI mode).
> > > >        */
> > > > -     ret =3D mt9m114_poll_state(sensor, MT9M114_SYS_STATE_STANDBY)=
;
> > > > -     if (ret < 0)
> > > > -             goto error_clock;
> > > > +     if (sensor->info->state_polling) {
> > > > +             ret =3D mt9m114_poll_state(sensor, MT9M114_SYS_STATE_=
STANDBY);
> > > > +             if (ret < 0)
> > > > +                     goto error_clock;
> > > > +     }
> > >
> > > So I would expect a flag called state_polling to be checked
> > > in mt9m114_poll_state(). It looks like you are only disabling
> > > one specific case of state polling, not all of them.
>
> There's a single user for mt9m114_poll_state()... I think the current nam=
e
> is fine.
>

I will name the flag `state_standby_polling` if everyone is fine with
it since the case below requires resending anyway.

> > >
> > > Please rename the flag to reflect this.
> > >
> >
> > And which name you see fitting? There is only one instance of using
> > mt9m114_poll_state in this driver, I see no controversy in naming.
> >
> > > >
> > > >       return 0;
> > > >
> > > > @@ -2527,6 +2535,8 @@ static int mt9m114_probe(struct i2c_client *c=
lient)
> > > >       if (ret < 0)
> > > >               return ret;
> > > >
> > > > +     sensor->info =3D device_get_match_data(dev);
> > > > +
> > >
> > > This can return NULL when the driver is manually bound through
> > > sysfs, which will result in a crash later on when checked in
> > > mt9m114_power_on()
>
> Svyatoslav, can you add a check for this?
>
> I guess a few other drivers also suffer from this...
>

Yes, sure. Should I set it to return neg error or fallback to default entry=
?

> --
> Regards,
>
> Sakari Ailus

