Return-Path: <devicetree+bounces-259470-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yF6kGwZVd2nMeAEAu9opvQ
	(envelope-from <devicetree+bounces-259470-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 12:50:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E052B87D61
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 12:50:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CF7EA3013A5B
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 11:50:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 182A2333441;
	Mon, 26 Jan 2026 11:50:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mY9Sx1HX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8690F3314C3
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 11:50:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.41
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769428228; cv=pass; b=fMpHr6Svgvw1e2bIiM8UTdJlVJZCusk3aK4TUfl1YAEfXJpDvTVq4g+ouxf37tsXPrHFTUW++iPXY8p/Dez8samAXGxN8SxuiVhEbieXC1uEHMSFx6EsV0KGuZJurBS+06FOBR/I3Ofdy+heXM6u8LIJZ9MtcNzfCSWoGUPwkEw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769428228; c=relaxed/simple;
	bh=XQkQbhBqa04ILqL6Liptn0tVNAS9js7mMWPpmUZmZgE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HP5QfzJHFBnCimCJpnzLmpQupoGscPZFFc+PtMT7lD9oTglnOKawi99NerVQfHlhq/4NUfijj7xzPbN116WAilCErvieIZmCJ0/MH6pFWHoWOUAmRoqWxZ5XlIxdY8Dk7WlJnelxoFfQdqhddJTtqrk4nBdLdkUDl8dAhGYH5z0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mY9Sx1HX; arc=pass smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-42fbc305882so2635421f8f.0
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 03:50:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769428225; cv=none;
        d=google.com; s=arc-20240605;
        b=T8NI+wRYrBLzABKx+MDNa8Jx+K3wtwgVPl5CdcYPlqVSsA7NDnN2ZlDOLkDN3QbTrw
         gxhGBzTAR3uzOhukmOW/3HXZrk3/QjOPw8iaS7n58He6JpjkR9rc1MsJToX61vljKKsR
         8yS2NHRS/0s5vbvd1OV5dIDe/j+kSJ0qIAreHbDDPZFcda7QNx4mKF7yckAu86pDmb7B
         x1pxLmrrgIstnspz5f1MRmtqC727Vf4Df0YSPJt/IooJdSq44UdyFWQY2jL6LNeL+9lg
         WRvZm48blTv/Qm559uvj5AAC4kwE4SaiD2s1zlUI+TkzHgdMFgiIbWk/1b8umG+kk9qW
         h7SQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Ra0VzQyXqvqMiUXnGG93m4Na2kxsj2UXiL65l4S1Qy0=;
        fh=mOUYVKcFFqin8FEMm29Gw9VYhYgBD5K8ryI8kyMd0Zo=;
        b=czOHtgzhz9qNsK59NLGS+mjDZoyJf3covkiOzSsV66OElryaWpHM7yqvjJdWqhhG+1
         1au+xm+XR9899yTbekvJm2Y/8JyFBvygN8vDEpJzObVefOo+FcdshcZNo6graHUEUpK5
         lvtXVrnuS4QyomQMllXrNNK6Kh1Q6idf/XoFtlS3KLbNWseuMRMyiEX9jz8GwSQMveY7
         EnzZGiYoGZvjBSOx4ofsz2U+0P7wpfHSdNlVgEzNa3Ay+5K7t/QCGaF6+5ai0SCSPLPK
         O8t6k5hZK2pzinvYfYZeAxiWfEH6SW0fdqZ60uMoPlDQ8+aD7xdHBtdHBUCE0T01BQOM
         oRcQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769428225; x=1770033025; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ra0VzQyXqvqMiUXnGG93m4Na2kxsj2UXiL65l4S1Qy0=;
        b=mY9Sx1HXy6L2cQboQvCEqlhjnZwI39ax9M3yLRcHhmM+OFTfmCjzvF17GFgRZsGufs
         qh8YvqJzDkV0P9kzczBV3HyzSM3jqIB/rPuL5isXgDJO0V7ANy3czdoGeVyGdQMGc0Pa
         Zn8Ch4etKT+gM0G/+oSpcXsKaFdPZrzURBxZWHutIxzXyhNl99s628areIc3xlTIBLFM
         Le3/I1XFMKPiX27GlDRHiVGN8FgvY8xLoJ7CvfKE+J5WHLQiUr5QTdDRyGGOiACosgq+
         vxZ1Pi79azzyc8dAIQDQN7dNGGbP9H/7BCMMuH59uBodwuxSLPjwJwWjXF0Z6c0cQ4E1
         v4nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769428225; x=1770033025;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Ra0VzQyXqvqMiUXnGG93m4Na2kxsj2UXiL65l4S1Qy0=;
        b=hUu4GnT5+AmCM0GFFqXLlOvu9lLjzOVdePy06i3rTd+M/Ew+WbhexQY6cikERitqTs
         4iES+lI4/qdsluSy9iJhjifRMFBPAxScCoX4AuJEn6kdUmeVEeEBYIBLnOc4MnHHNH24
         BFrw73mo1hE41P1bAyZlEgjQSv4fY80q2Rgbem/i6ZlAbioDRXFxD0xkUUd5l5oaU+BU
         7SlKX9FKqCAQUu9q3CMWVm6cZsuDxVq6AdhEooYiqEkJG0uDwD1kwq/NTiCA06ZppQiG
         0pBHc6ujietniSJCOkR1TWGUpyf5fTTTJ2hlduc5eZOu0ofVOZ+f10id3cEoVAxOr0oh
         6vrg==
X-Forwarded-Encrypted: i=1; AJvYcCXhhFTnfFHvzmgB5t9Mct83jK5ywBMdelJ78vRPIH6dV31KBCW4tVudqF3XI7Ec97hYxBKAms5mS7xC@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9mdwU9p43ZBAuBMyUh1rtgK2BdcBOddHcNhBdRnvxzInzsURD
	gvHxeoRT7of0UvM7zud4q6oBpJrvpoXcnN3lBUZSJ2Uw1MdXoI24IqWjRSdiMsgm4uEsJiyAoRV
	HIcJZIh/2Tv8ylbibEe7Ih/CsG5fSbs4=
X-Gm-Gg: AZuq6aIEWykMgEeOClDsE3I/hTGA+Bc/+DB3U66tdjJQEP413MQS9+Pi3Uzp2iZJE+i
	HZa4OB6XhWRwMF0qKXlEcVmynSI/LnDTfQbYbsYVNAzWxoqfutgGffrG606YB4Yo5PgOI9/4TI1
	urADFgU2es/o0RjEckxKGJ8VWn1bURrylnP+HlAk/P1vMKKrd1UgT4Q2e1J1iR1stjoTQtM8Ahz
	2kf4pM5hJM7bIqB3s25zTcsrc84NO0foAcEHxq6/1PDilzCANo1OguOl5UkYPH2oufV7naY
X-Received: by 2002:a5d:64e8:0:b0:431:752:672b with SMTP id
 ffacd0b85a97d-435ca0f9681mr6948265f8f.14.1769428224669; Mon, 26 Jan 2026
 03:50:24 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260126083430.8247-1-clamor95@gmail.com> <20260126083430.8247-3-clamor95@gmail.com>
 <aXc1XwD8Wo2yu4dv@kekkonen.localdomain> <CAPVz0n3=JPyjm3RypcSec=FZ66W2cq4Mwu2yodR03Ng2jDbxEw@mail.gmail.com>
 <20260126100554.GC593812@killaraus>
In-Reply-To: <20260126100554.GC593812@killaraus>
From: Svyatoslav Ryhel <clamor95@gmail.com>
Date: Mon, 26 Jan 2026 13:50:13 +0200
X-Gm-Features: AZwV_QikIH-K_ZHtoTJx5zKrCVrTz_96DtWBJqFXct-_mHRTnQZF6ysbPymscmo
Message-ID: <CAPVz0n3mG79Q0E=F5a3iSdd9TcVXFXuLj9vFkX3if2zVzpR=eg@mail.gmail.com>
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
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259470-lists,devicetree=lfdr.de];
	URIBL_MULTI_FAIL(0.00)[mail.gmail.com:server fail,intel.com:server fail,ideasonboard.com:server fail,tor.lore.kernel.org:server fail];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	FREEMAIL_FROM(0.00)[gmail.com];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,mail.gmail.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,ideasonboard.com:email]
X-Rspamd-Queue-Id: E052B87D61
X-Rspamd-Action: no action

=D0=BF=D0=BD, 26 =D1=81=D1=96=D1=87. 2026=E2=80=AF=D1=80. =D0=BE 12:05 Laur=
ent Pinchart
<laurent.pinchart@ideasonboard.com> =D0=BF=D0=B8=D1=88=D0=B5:
>
> On Mon, Jan 26, 2026 at 11:50:05AM +0200, Svyatoslav Ryhel wrote:
> > =D0=BF=D0=BD, 26 =D1=81=D1=96=D1=87. 2026=E2=80=AF=D1=80. =D0=BE 11:35 =
Sakari Ailus <sakari.ailus@linux.intel.com> =D0=BF=D0=B8=D1=88=D0=B5:
> > > On Mon, Jan 26, 2026 at 10:34:30AM +0200, Svyatoslav Ryhel wrote:
> > > > Slightly different version of MT9M114 camera module is used in a se=
veral
> > > > devices like ASUS Nexus 7 (2012) or ASUS Transformer Prime TF201 an=
d is
> > > > called Aptina MI1040. Only difference found so far is lacking abili=
ty to
> > >
> > > s/Only/The only/
> > >
> > > > poll STATUS and COMMAND registers during power on sequence, which c=
auses
> > > > driver to fail with time out error. Add polling flag to diverge mod=
els and
> > > > address quirk found in MI1040.
> > > >
> > > > Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> > > > ---
> > > >  drivers/media/i2c/mt9m114.c | 35 ++++++++++++++++++++++++++++-----=
--
> > > >  1 file changed, 28 insertions(+), 7 deletions(-)
> > > >
> > > > diff --git a/drivers/media/i2c/mt9m114.c b/drivers/media/i2c/mt9m11=
4.c
> > > > index 4ec033c0ee84..d96a57ebcad4 100644
> > > > --- a/drivers/media/i2c/mt9m114.c
> > > > +++ b/drivers/media/i2c/mt9m114.c
> > > > @@ -368,6 +368,10 @@ enum {
> > > >   * Data Structures
> > > >   */
> > > >
> > > > +struct mt9m114_model_info {
> > > > +     bool polling;
> > > > +};
> > > > +
> > > >  enum mt9m114_format_flag {
> > > >       MT9M114_FMT_FLAG_PARALLEL =3D BIT(0),
> > > >       MT9M114_FMT_FLAG_CSI2 =3D BIT(1),
> > > > @@ -421,6 +425,8 @@ struct mt9m114 {
> > > >
> > > >               struct v4l2_ctrl *tpg[4];
> > > >       } ifp;
> > > > +
> > > > +     const struct mt9m114_model_info *info;
> > > >  };
> > > >
> > > >  /* ---------------------------------------------------------------=
--------------
> > > > @@ -2186,9 +2192,11 @@ static int mt9m114_power_on(struct mt9m114 *=
sensor)
> > > >        */
> > > >       usleep_range(44500, 50000);
> > > >
> > > > -     ret =3D mt9m114_poll_command(sensor, MT9M114_COMMAND_REGISTER=
_SET_STATE);
> > > > -     if (ret < 0)
> > > > -             goto error_clock;
> > > > +     if (sensor->info->polling) {
> > > > +             ret =3D mt9m114_poll_command(sensor, MT9M114_COMMAND_=
REGISTER_SET_STATE);
> > > > +             if (ret < 0)
> > > > +                     goto error_clock;
> > > > +     }
> > >
> > > What does the datasheet say, is there a need to do something else ins=
tead?
> > > As the polling is there to ensure firmware has done its job, the need
> > > appears to still be there.
> >
> > MI1040 has no datasheet available and downstream code does not do this
> > polling. I have tested on Nexus 7 which has this camera and it seems
> > to be fully operational without this poling, but as soon it is enabled
> > camera fails will timeout. I suspect that this camera version has some
> > quirk regarding early access, but I cannot back it up by any
> > documentation or additional data.
> >
> > I have a device with proper version of mt9m114 too and it works with
> > his driver without any major issues.
>
> Does the device reply to reads of the MT9M114_COMMAND_REGISTER register
> but never shows the MT9M114_COMMAND_REGISTER_SET_STATE bit being set, or
> does it not reply to reads at all (timeouts on the I2C bus) ?
>

I have re-run check on Nexus 7 and TF201 which both have mi1040 cam.

From data I have got:

"mt9m114_poll_command(sensor, MT9M114_COMMAND_REGISTER_SET_STATE);"

passes fine, which is good. Previous time if failed with Timeout
waiting for state and -ETIMEDOUT. But

"mt9m114_poll_state(sensor, MT9M114_SYS_STATE_STANDBY);"

still gives:

[    2.921791] mt9m114 2-0048: Timeout waiting for state 0x52
[    2.922777] mt9m114 2-0048: error -ETIMEDOUT: Could not power on the dev=
ice

commenting mt9m114_poll_state made camera work, I was able to take pictures=
.

If you have any suggestions for testing, let me know.


Additionally, not related to this patch but to mt9m114 device tree
reflection. The MT9M114 driver exposes the IFP device's sink pad
first, which causes issues for external devices that rely on the OF
graph to get the correct pad information. Laurent, may you consider
swapping sink and source pads of IFP so that source pad is set first
and correspond to device tree port or at least if you and media
subsystem maintainers are fine with such change?

