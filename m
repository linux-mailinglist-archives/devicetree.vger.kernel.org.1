Return-Path: <devicetree+bounces-260475-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YC5fJjolemlk3QEAu9opvQ
	(envelope-from <devicetree+bounces-260475-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 16:03:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 30B57A3762
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 16:03:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 93FED300ECA9
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 14:56:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D88EB3596E1;
	Wed, 28 Jan 2026 14:56:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="f3G76YeO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A58E5363C79
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 14:56:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.47
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769612184; cv=pass; b=WUofXBj641w15Oouoz6i/26Sy4PDYyJkSsZ27XcyYWrUVilFzTAiti8QLyalkl4Lkr4fZ5MXG4oN/zuyVATUjljPGPIbS+46PpwNJoWgjkIYqhPHRO+dX+Tme3fEo0AOHZjo+K3InZtq9mQUUAA3LIlZ3HseNf15CshPXGO0ANU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769612184; c=relaxed/simple;
	bh=EVu1yjm2sCSH347cnxIIN5CS5fZ0PPDkl5yHqr9O3m8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=FhnDj4lfWsFq3Htk2C6tBqMPTrvcWKncJ4wKVnbh6SsPngwp4CUNO1wnSMrswErcuP9MvZd9vCFSgntXzYQrq66Z2YAoyEN6bK74k1CD99bF+MouQ5WphF79QVKw2stgxc9u+vseQxgrTDA1sZ7tFAdzChn1fBcqoy8ljNSNg3s=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=f3G76YeO; arc=pass smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-47ee07570deso53732445e9.1
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 06:56:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769612181; cv=none;
        d=google.com; s=arc-20240605;
        b=OiKiKLnWIT/61ZhRAVxoLXVX9MrFCnYUSMFcnhS7jf1aXEAyc4yAUB97dXvdSLEXH9
         PJ2as36ORRGAO8XQsO3laNP+qgfDRaPa3itUyHAS4mSaVqOD/VzfpQ4TtEmKnCpMqFpC
         DrS7XaVYWAnY7prrMFBf5MaxJERSKNCHBh6Jqp20/7zjOQQqk5DiAr8hJwfRH+W5RqhJ
         4YYwCaUiUhrlXNSaTQq8mQO2RWTIWlsLFJ4/KsWVu+iewAn6Y8y7uDQi0ClZCNg4IVhH
         Pt7sniZ6v+EMHwd1hQfvpR47c9wPrXrXSNjiGju58Dhlt3/cMVDtd/v1W78/yfNESU3v
         Qttw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=0sDQgFSx2RRb1nOLPB+bPpWnj2q8y8tYmqRGjrufYJk=;
        fh=pv2iEOcL11RhQFt5ErIKsnCkc4IRyK9NdT7txTVbQ+U=;
        b=LIS072Pplm6S2YcWui1TEUGu9cEgLRdJrjxKGb/WePxgJGMdYAv+6+vwDjPoZkjnE7
         oO1WSojoR9OW+zThh21AzqX9fqaBxFXz6jhIGDMYyA3G4+j/sOH18k0YPvSDW8wBYhZW
         DRiDSpSxxe0NoGTbQDeChxZ8EQ9lTM7lQ6tHXfo6LHxRivAODyT5wN24hv0F7o5UzkBh
         5jdBzWCphhG0ERT9eMsOcDhTnRywU6bwsrG2YI7mHNfPS/SJyV8VIDPBZTmhyHv+MBbn
         NSYU7f8l6OeMa9hr8YVuBKNkRcVtS8Da7Z1OlmnKjHsWYxb2eL2hhOCcR0WSAxSR8KZQ
         YtaA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769612181; x=1770216981; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0sDQgFSx2RRb1nOLPB+bPpWnj2q8y8tYmqRGjrufYJk=;
        b=f3G76YeOiEHyENf9g52/vSLyH6ODo5PBf/YFpj+jlJHHAfZE1tZmnIpiiLfcqgFiqX
         vlYT0q2mZT8US/R+B5/3KoIOIG2Gyy7KgtAKrIucVnhpGX29d5NfZaK8ILTArWilwEH6
         UkeaQhoWc70ZOxZ9FTCNyhxJMcjIE10G83wOiiLr5ysu20ozQcppSUCMwOYDBBo3mJM+
         y91Km2rMkLV/isFD6l2LiSxc2nmCyHsBWbNZbiOqgB3FhAGN8OlpFDrwYgtGAO+0vcnJ
         NVw6ivpxbVpUndlCtw+j+t+odX0qmhnUbDs55OkMtSQo9N/UcGjAvzOJi94oO4N0D5Wf
         Vnxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769612181; x=1770216981;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=0sDQgFSx2RRb1nOLPB+bPpWnj2q8y8tYmqRGjrufYJk=;
        b=Z/C+B7eKdagrsmxFfKYx8qoBjYfvt5EBDPG7KhKITjDGBtOPIQXI0NN57RhV3/43ZY
         GnAn3UOHeSF+oh3tYD2tef5HisIgIGuV5SV7WLy0zb6BvApo1xcftc8o2ArAQgi88lC2
         8qi87HESotG5MOQ/iCsv/M1eRJmbzHfEPOFhMuBLF9vBsTYn7R32gRc5qQVWsp6ER0qF
         n3cHvB57uN9ZTcW7tpEG+bQetufHBBQaKw0GSX9gC6SYc8aRu/khQ21YHHceu8gr9FDL
         WO0oflu/lNloRVS47wmigA2vNKE/Gm7QNv7D73fQlEIyjFSItuMxAj5Vt6id8vR5L8Jh
         f9+g==
X-Forwarded-Encrypted: i=1; AJvYcCU7yYuIlREcPf1pfjd88KE50tit+r3Ilb2dWIOm561V1TQ+J/Alti2rW7e/o7hba6xAQ6KkdWOwWR+L@vger.kernel.org
X-Gm-Message-State: AOJu0YyO92juFK5h+RNSg6F0bsGj9T+iLw+/YFHDHWKGxiEQXJagtgu+
	JYn0vL/IC+Et018l0Jb8CGGtCKCC8U7RRYeTIDp8x2fXP21VjS9BWddS4VHeeEvQbpeb6sYbXdA
	Gx92V1Rfmk4PNlT8xFdO60Q+TMQ8hOIY=
X-Gm-Gg: AZuq6aI1pKLfHkfrBCrCT6UyyR25blbHM0PKz47taUwQnhCdBHNpwBDmRTMypHrQjWI
	PATYxjpKJBMxWBfhm8hRx9n8MPHT19lo4A6e29rVTIe58VDik3PvFfmN2WUeWh7HupR1223MR33
	NfdND4oHcqq0d1wBESipydeAqTBb+T71iyLNS15aCqk5SYkOQDbhUDo5/aP3ggsTRBUP2YRqUBb
	RZusYs8acaROcBbnN6rzwxc7kI4AqVRITSORsJb/LdslQlizIYV/no+wg28a16NDbOxyP3Z
X-Received: by 2002:a05:600c:6995:b0:477:7af8:c8ad with SMTP id
 5b1f17b1804b1-48069c92c03mr77375295e9.31.1769612180594; Wed, 28 Jan 2026
 06:56:20 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260126083430.8247-1-clamor95@gmail.com> <20260126083430.8247-3-clamor95@gmail.com>
 <aXc1XwD8Wo2yu4dv@kekkonen.localdomain> <CAPVz0n3=JPyjm3RypcSec=FZ66W2cq4Mwu2yodR03Ng2jDbxEw@mail.gmail.com>
 <20260126100554.GC593812@killaraus> <CAPVz0n3mG79Q0E=F5a3iSdd9TcVXFXuLj9vFkX3if2zVzpR=eg@mail.gmail.com>
 <20260128134015.GD3210848@killaraus>
In-Reply-To: <20260128134015.GD3210848@killaraus>
From: Svyatoslav Ryhel <clamor95@gmail.com>
Date: Wed, 28 Jan 2026 16:56:08 +0200
X-Gm-Features: AZwV_QjJQ-I7MJVEX2aVHiKfhhQhypXKro0R8HiX7wTlGmD3ZZDgBuJ9W3dSOZ8
Message-ID: <CAPVz0n17H5vhWZm9WyamjoRcO1J8H9O35Y2GReOT1kCrAaymqA@mail.gmail.com>
Subject: Re: [PATCH v1 2/2] media: i2c: mt9m114: add support for Aptina MI1040
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Sakari Ailus <sakari.ailus@linux.intel.com>, 
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260475-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ideasonboard.com:email,mail.gmail.com:mid,intel.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 30B57A3762
X-Rspamd-Action: no action

=D1=81=D1=80, 28 =D1=81=D1=96=D1=87. 2026=E2=80=AF=D1=80. =D0=BE 15:40 Laur=
ent Pinchart
<laurent.pinchart@ideasonboard.com> =D0=BF=D0=B8=D1=88=D0=B5:
>
> On Mon, Jan 26, 2026 at 01:50:13PM +0200, Svyatoslav Ryhel wrote:
> > =D0=BF=D0=BD, 26 =D1=81=D1=96=D1=87. 2026=E2=80=AF=D1=80. =D0=BE 12:05 =
Laurent Pinchart name:
> > > On Mon, Jan 26, 2026 at 11:50:05AM +0200, Svyatoslav Ryhel wrote:
> > > > =D0=BF=D0=BD, 26 =D1=81=D1=96=D1=87. 2026=E2=80=AF=D1=80. =D0=BE 11=
:35 Sakari Ailus <sakari.ailus@linux.intel.com> =D0=BF=D0=B8=D1=88=D0=B5:
> > > > > On Mon, Jan 26, 2026 at 10:34:30AM +0200, Svyatoslav Ryhel wrote:
> > > > > > Slightly different version of MT9M114 camera module is used in =
a several
> > > > > > devices like ASUS Nexus 7 (2012) or ASUS Transformer Prime TF20=
1 and is
> > > > > > called Aptina MI1040. Only difference found so far is lacking a=
bility to
> > > > >
> > > > > s/Only/The only/
> > > > >
> > > > > > poll STATUS and COMMAND registers during power on sequence, whi=
ch causes
> > > > > > driver to fail with time out error. Add polling flag to diverge=
 models and
> > > > > > address quirk found in MI1040.
> > > > > >
> > > > > > Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> > > > > > ---
> > > > > >  drivers/media/i2c/mt9m114.c | 35 ++++++++++++++++++++++++++++-=
------
> > > > > >  1 file changed, 28 insertions(+), 7 deletions(-)
> > > > > >
> > > > > > diff --git a/drivers/media/i2c/mt9m114.c b/drivers/media/i2c/mt=
9m114.c
> > > > > > index 4ec033c0ee84..d96a57ebcad4 100644
> > > > > > --- a/drivers/media/i2c/mt9m114.c
> > > > > > +++ b/drivers/media/i2c/mt9m114.c
> > > > > > @@ -368,6 +368,10 @@ enum {
> > > > > >   * Data Structures
> > > > > >   */
> > > > > >
> > > > > > +struct mt9m114_model_info {
> > > > > > +     bool polling;
> > > > > > +};
> > > > > > +
> > > > > >  enum mt9m114_format_flag {
> > > > > >       MT9M114_FMT_FLAG_PARALLEL =3D BIT(0),
> > > > > >       MT9M114_FMT_FLAG_CSI2 =3D BIT(1),
> > > > > > @@ -421,6 +425,8 @@ struct mt9m114 {
> > > > > >
> > > > > >               struct v4l2_ctrl *tpg[4];
> > > > > >       } ifp;
> > > > > > +
> > > > > > +     const struct mt9m114_model_info *info;
> > > > > >  };
> > > > > >
> > > > > >  /* -----------------------------------------------------------=
------------------
> > > > > > @@ -2186,9 +2192,11 @@ static int mt9m114_power_on(struct mt9m1=
14 *sensor)
> > > > > >        */
> > > > > >       usleep_range(44500, 50000);
> > > > > >
> > > > > > -     ret =3D mt9m114_poll_command(sensor, MT9M114_COMMAND_REGI=
STER_SET_STATE);
> > > > > > -     if (ret < 0)
> > > > > > -             goto error_clock;
> > > > > > +     if (sensor->info->polling) {
> > > > > > +             ret =3D mt9m114_poll_command(sensor, MT9M114_COMM=
AND_REGISTER_SET_STATE);
> > > > > > +             if (ret < 0)
> > > > > > +                     goto error_clock;
> > > > > > +     }
> > > > >
> > > > > What does the datasheet say, is there a need to do something else=
 instead?
> > > > > As the polling is there to ensure firmware has done its job, the =
need
> > > > > appears to still be there.
> > > >
> > > > MI1040 has no datasheet available and downstream code does not do t=
his
> > > > polling. I have tested on Nexus 7 which has this camera and it seem=
s
> > > > to be fully operational without this poling, but as soon it is enab=
led
> > > > camera fails will timeout. I suspect that this camera version has s=
ome
> > > > quirk regarding early access, but I cannot back it up by any
> > > > documentation or additional data.
> > > >
> > > > I have a device with proper version of mt9m114 too and it works wit=
h
> > > > his driver without any major issues.
> > >
> > > Does the device reply to reads of the MT9M114_COMMAND_REGISTER regist=
er
> > > but never shows the MT9M114_COMMAND_REGISTER_SET_STATE bit being set,=
 or
> > > does it not reply to reads at all (timeouts on the I2C bus) ?
> >
> > I have re-run check on Nexus 7 and TF201 which both have mi1040 cam.
> >
> > From data I have got:
> >
> > "mt9m114_poll_command(sensor, MT9M114_COMMAND_REGISTER_SET_STATE);"
> >
> > passes fine, which is good. Previous time if failed with Timeout
> > waiting for state and -ETIMEDOUT. But
> >
> > "mt9m114_poll_state(sensor, MT9M114_SYS_STATE_STANDBY);"
> >
> > still gives:
> >
> > [    2.921791] mt9m114 2-0048: Timeout waiting for state 0x52
> > [    2.922777] mt9m114 2-0048: error -ETIMEDOUT: Could not power on the=
 device
> >
> > commenting mt9m114_poll_state made camera work, I was able to take pict=
ures.
> >
> > If you have any suggestions for testing, let me know.
>
> Does increasing the timeout help ? I'm wondering if this patch could
> just work by luck, with the sensor no being ready quickly enough for the
> timeout used by mt9m114_poll_command(), but hvaing time to get ready
> after power on because the driver doesn't start streaming immediately.
>

No, increasing polling duration x10 and x100 results in the same issue
as if not touching it at all

[   26.613606] mt9m114 2-0048: Timeout waiting for state 0x52
[   26.614702] mt9m114 2-0048: error -ETIMEDOUT: Could not power on the dev=
ice

> > Additionally, not related to this patch but to mt9m114 device tree
> > reflection. The MT9M114 driver exposes the IFP device's sink pad
> > first, which causes issues for external devices that rely on the OF
> > graph to get the correct pad information. Laurent, may you consider
> > swapping sink and source pads of IFP so that source pad is set first
> > and correspond to device tree port or at least if you and media
> > subsystem maintainers are fine with such change?
>
> That risks breaking existing userspace applications.
>
> The issue may be that the IFP entity doesn't implement the
> .get_fwnode_pad() operation. You will also need to make sure that the
> downstream driver calls media_entity_get_fwnode_pad() instead of
> assuming the pad number to be 0. Could you give that a try ?
>

No, and I am not the only one having issues with this driver

https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/dr=
ivers/staging/media/atomisp/pci/atomisp_v4l2.c?h=3Dnext-20260127#n1022

> --
> Regards,
>
> Laurent Pinchart

