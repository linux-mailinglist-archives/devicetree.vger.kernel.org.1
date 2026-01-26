Return-Path: <devicetree+bounces-259413-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KIFDDuU5d2mMdQEAu9opvQ
	(envelope-from <devicetree+bounces-259413-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 10:54:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D0BA8640C
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 10:54:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 589D1301570C
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 09:50:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDA0232D438;
	Mon, 26 Jan 2026 09:50:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iq6QIE/D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F3172F8BC3
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 09:50:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.49
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769421022; cv=pass; b=L2EL9yUrcdsrCk+vtxtXsdJzHRJKCDrlCbRFzm04veUS/LrXgaH+E9Ewsq2Ad6KuLYx4Z7fWgkJtvjNYrpdb/ghkxsaXGIEAkblVYDtEkHQRtzxqdkeugjA9aS1BiOxabEat866wT4uMiKx+paJGIho2R9BibU/y2k42YQf4rZs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769421022; c=relaxed/simple;
	bh=cGQu2EGRQNTg5jehYIe37iXIRI1Qv02jmN9aaHxq5wM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZmdVIrmObPd+KdURnWa2JL4jLMg1mpfDPHdNjndDjdM0Yv8Lo/otjnS4o9FBfLl8cqzaHQfpfu3XDxMtfkt8wyH7xKwBLDVfVEC/nx7gsYcsT7tAQ2FWz+mgAXIMu7UHBahuoTjXLSH6j+2fiweTo3kKWXGaTe6iwH8OH8mR/vc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iq6QIE/D; arc=pass smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-43284ed32a0so2557628f8f.3
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 01:50:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769421019; cv=none;
        d=google.com; s=arc-20240605;
        b=FL0aC+uLqzLQ0YEv4YqWN3rJKj2AHuk4j06/A6T92FGG+dkEJyudHMEG1yo2VRpt70
         Cczxp7/DKRmLuH9WGrfH5SqiPWHGFvN3TdB2eOUDUwVwPW8B8UKxXPql/E+omb0yxqPt
         9zodAHA2AL2f5/Ha0iDpFFQLMh9KdUdVOSWSN4/NgPqLd5K9L6AQiBX4L7Tc0cs16BHQ
         W0EgGm9/aFPPIObUGB3/6bSfEj0ChahNiFoBmL+BtXxCxf6TCJlQJRWGERU9628CZNaw
         iL4RGFCmAhflX+BDXBcwiidrAtvF4NQnmU7SlTrhCVjuoIkrGm+XkNV/Vc+mvHhowTwP
         E4mA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=JqRoZEhecJjcnPHj8nYQiMdf+1z/05ZwRt/vvvbBqQI=;
        fh=AhFPVR6XezbQakqwdZ15y6STy/jeMpMslcJbZjTYquU=;
        b=KkQFb3vSikf2w4aUemFUqZlvQqg1ERismM/KgtTBFgW2G3CFSCqiOwpz5f184kBBlD
         el93SjBIg62wvlOUZyXiGwvapoQe3I4wGhdIzFWmZLr1D2pBR3IxQZYnOM4cmgO8ilhZ
         Iu7kdfFCmvfq0p3AZLyIKeQ2u7FYZsD5gN6t+I54sDXiEix1PS/BvedAIUDHtxCu73yn
         RsbtklGT4RtfNJb0C8TI2pkc44iDakk+rkaWZ5nednC4ziUwrEs9GNHfaQUAtsJEeMTX
         w17J18C7dThAaejJrZo77SsFblFVW58kJc1cpsg/GBIkS5rKZd6tZ3TZilqT1j5IREJa
         YWXA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769421019; x=1770025819; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JqRoZEhecJjcnPHj8nYQiMdf+1z/05ZwRt/vvvbBqQI=;
        b=iq6QIE/DfqD7vFsd361ext8AoZGqm7UKxf7MAEZRBBeGZltWXWBgNJth9yE79b0tq8
         3n7AdwvM7ttL9I3V7wwiZC2AucSbvZ6KHeVAhhWtwbobaNUcDjl3zKCjbHiEHt5nbmJp
         diesw2Sblc5O8YZs+cb1cPgoTlH1KtSPYic89hQ1pHnn+HT1vWCVgRF4QTTmqG4dh3Jx
         4qQpfspJxb3HrP2BydRlhGX7x/7C1KIeSazjWlJnHzresVjk9cH4dsXiyi8WdGeK/7F2
         hfrn2VtvOYnDvuEdD+En0C1hnCfllZBguCLnpyFf1ule7aa93ihWGDWaZLym0nIfq941
         1HQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769421019; x=1770025819;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=JqRoZEhecJjcnPHj8nYQiMdf+1z/05ZwRt/vvvbBqQI=;
        b=GZhrymXR1MqMGXROqBvyNvjpxfgXavWL8+qtp4gKBPPl9F/5yweBKKvf1MAd3o7Yq5
         Ww4ESbTov3CT7nIqki4N/fDBIdHlLIBYGzDBI9PouyHg5Ixph5d6mGt6ObaBCTh9xUWW
         A7VXWK3IPPuY4CTUp+7rk3+JMK/uRPP97JJCrqNQOHNpk2YoJfttc6c8se2mE0QRzKF8
         2rDPritpINXSrkXHjzgp52Xuebp2qBPPYe09dk063TUbE+Nx6jYumGAYNt77latCXCGd
         zlADx/DUzWdfdnC1La4UUpO0mRxGS1xVcR+biMW+LN8cgTpuXvg+ryEMm397UiChUngN
         sklQ==
X-Forwarded-Encrypted: i=1; AJvYcCWQf3IgLID6YvF0Klq5mkrCa5lmmVSoykvD7A6LrFPyUKVqQjKQi297GRBS9cssg2lLlePN9cZZTXCP@vger.kernel.org
X-Gm-Message-State: AOJu0YyoD9dVLZinfHr4Llmlz1eRSSKTDVNsUP1g/9ZftZ4TZf1XaoY0
	dhHVO5+nFxiedBNF/Jc0k1MugQ5havT0b43uRnZYeJTuRYqwsvrDP/4fwOA5ubjg9o2oW12Lpmc
	grXMIXeySN+5EjTIHp58RguykRPmbOnU=
X-Gm-Gg: AZuq6aJoqKm5fKL7O7UgE2KNMTHyFlEcEJmCol5teM/zBgOJ7Tb0d0mCNXZv99ki3Ux
	U2MFYKya/Fc/WfNaxLr5b1Fb8Fa177PI86pDSjZNhmsVsAUVdNJEAQ7aZQKB6QV6+guy926IBLA
	5w+ZXuh1JpCFZ4s5/UNi8rHhiorZ4bwsUqw2zhb9tS9DtoyvxAHiVot49sePiOVCLN1ZrL34M6S
	EKNQxr9NogG0RPEtbcgWSgfBOFaYPX43/vCX/+Y9LZgWKvazRQ02VCI5/wxQF5slP6boaAd
X-Received: by 2002:a05:6000:2410:b0:430:f7dc:7e8e with SMTP id
 ffacd0b85a97d-435ca18f48emr5999415f8f.34.1769421018375; Mon, 26 Jan 2026
 01:50:18 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260126083430.8247-1-clamor95@gmail.com> <20260126083430.8247-3-clamor95@gmail.com>
 <aXc1XwD8Wo2yu4dv@kekkonen.localdomain>
In-Reply-To: <aXc1XwD8Wo2yu4dv@kekkonen.localdomain>
From: Svyatoslav Ryhel <clamor95@gmail.com>
Date: Mon, 26 Jan 2026 11:50:05 +0200
X-Gm-Features: AZwV_QjOQ3QcXL3NXqa7mV6ImDvxW2ANsuss-JfX2KrPKkGoWsTBotuEQPEOLhM
Message-ID: <CAPVz0n3=JPyjm3RypcSec=FZ66W2cq4Mwu2yodR03Ng2jDbxEw@mail.gmail.com>
Subject: Re: [PATCH v1 2/2] media: i2c: mt9m114: add support for Aptina MI1040
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-media@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259413-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,intel.com:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 8D0BA8640C
X-Rspamd-Action: no action

=D0=BF=D0=BD, 26 =D1=81=D1=96=D1=87. 2026=E2=80=AF=D1=80. =D0=BE 11:35 Saka=
ri Ailus <sakari.ailus@linux.intel.com> =D0=BF=D0=B8=D1=88=D0=B5:
>
> Hi Svyatoslav,
>
> Thanks for the patchset.
>
> On Mon, Jan 26, 2026 at 10:34:30AM +0200, Svyatoslav Ryhel wrote:
> > Slightly different version of MT9M114 camera module is used in a severa=
l
> > devices like ASUS Nexus 7 (2012) or ASUS Transformer Prime TF201 and is
> > called Aptina MI1040. Only difference found so far is lacking ability t=
o
>
> s/Only/The only/
>
> > poll STATUS and COMMAND registers during power on sequence, which cause=
s
> > driver to fail with time out error. Add polling flag to diverge models =
and
> > address quirk found in MI1040.
> >
> > Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> > ---
> >  drivers/media/i2c/mt9m114.c | 35 ++++++++++++++++++++++++++++-------
> >  1 file changed, 28 insertions(+), 7 deletions(-)
> >
> > diff --git a/drivers/media/i2c/mt9m114.c b/drivers/media/i2c/mt9m114.c
> > index 4ec033c0ee84..d96a57ebcad4 100644
> > --- a/drivers/media/i2c/mt9m114.c
> > +++ b/drivers/media/i2c/mt9m114.c
> > @@ -368,6 +368,10 @@ enum {
> >   * Data Structures
> >   */
> >
> > +struct mt9m114_model_info {
> > +     bool polling;
> > +};
> > +
> >  enum mt9m114_format_flag {
> >       MT9M114_FMT_FLAG_PARALLEL =3D BIT(0),
> >       MT9M114_FMT_FLAG_CSI2 =3D BIT(1),
> > @@ -421,6 +425,8 @@ struct mt9m114 {
> >
> >               struct v4l2_ctrl *tpg[4];
> >       } ifp;
> > +
> > +     const struct mt9m114_model_info *info;
> >  };
> >
> >  /* -------------------------------------------------------------------=
----------
> > @@ -2186,9 +2192,11 @@ static int mt9m114_power_on(struct mt9m114 *sens=
or)
> >        */
> >       usleep_range(44500, 50000);
> >
> > -     ret =3D mt9m114_poll_command(sensor, MT9M114_COMMAND_REGISTER_SET=
_STATE);
> > -     if (ret < 0)
> > -             goto error_clock;
> > +     if (sensor->info->polling) {
> > +             ret =3D mt9m114_poll_command(sensor, MT9M114_COMMAND_REGI=
STER_SET_STATE);
> > +             if (ret < 0)
> > +                     goto error_clock;
> > +     }
>
> What does the datasheet say, is there a need to do something else instead=
?
> As the polling is there to ensure firmware has done its job, the need
> appears to still be there.
>

MI1040 has no datasheet available and downstream code does not do this
polling. I have tested on Nexus 7 which has this camera and it seems
to be fully operational without this poling, but as soon it is enabled
camera fails will timeout. I suspect that this camera version has some
quirk regarding early access, but I cannot back it up by any
documentation or additional data.

I have a device with proper version of mt9m114 too and it works with
his driver without any major issues.

> >
> >       if (sensor->bus_cfg.bus_type =3D=3D V4L2_MBUS_PARALLEL) {
> >               /*
> > @@ -2207,9 +2215,11 @@ static int mt9m114_power_on(struct mt9m114 *sens=
or)
> >        * reaches the standby mode (either initiated manually above in
> >        * parallel mode, or automatically after reset in MIPI mode).
> >        */
> > -     ret =3D mt9m114_poll_state(sensor, MT9M114_SYS_STATE_STANDBY);
> > -     if (ret < 0)
> > -             goto error_clock;
> > +     if (sensor->info->polling) {
> > +             ret =3D mt9m114_poll_state(sensor, MT9M114_SYS_STATE_STAN=
DBY);
>
> Ditto.
>
> > +             if (ret < 0)
> > +                     goto error_clock;
> > +     }
> >
> >       return 0;
> >
> > @@ -2421,6 +2431,8 @@ static int mt9m114_probe(struct i2c_client *clien=
t)
> >       if (ret < 0)
> >               return ret;
> >
> > +     sensor->info =3D of_device_get_match_data(dev);
>
> You can use device_get_match_data() here.
>

noted

> > +
> >       /* Acquire clocks, GPIOs and regulators. */
> >       sensor->clk =3D devm_v4l2_sensor_clk_get(dev, NULL);
> >       if (IS_ERR(sensor->clk)) {
> > @@ -2539,8 +2551,17 @@ static void mt9m114_remove(struct i2c_client *cl=
ient)
> >       pm_runtime_set_suspended(dev);
> >  }
> >
> > +static const struct mt9m114_model_info mt9m114_models_default =3D {
> > +     .polling =3D true,
> > +};
> > +
> > +static const struct mt9m114_model_info mt9m114_models_aptina =3D {
> > +     .polling =3D false,
> > +};
> > +
> >  static const struct of_device_id mt9m114_of_ids[] =3D {
> > -     { .compatible =3D "onnn,mt9m114" },
> > +     { .compatible =3D "onnn,mt9m114", .data =3D &mt9m114_models_defau=
lt },
> > +     { .compatible =3D "aptina,mi1040", .data =3D &mt9m114_models_apti=
na },
> >       { /* sentinel */ },
>
> The sentinel entry shouldn't have a comma. Feel free to fix that while at
> it.
>

noted

> >  };
> >  MODULE_DEVICE_TABLE(of, mt9m114_of_ids);
>
> --
> Kind regards,
>
> Sakari Ailus

