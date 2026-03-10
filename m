Return-Path: <devicetree+bounces-273566-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ODiKKKcwsGkShAIAu9opvQ
	(envelope-from <devicetree+bounces-273566-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:54:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E5092529DA
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:54:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BC93630B990A
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 13:50:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4692C389462;
	Tue, 10 Mar 2026 13:50:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b="Q7eq6Brm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7E5740DFC7
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:50:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.218.48
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773150603; cv=pass; b=tQqafylcm2cNU4oCJack4VB6F0zZQktI1hOl033rmQp4Q9FToDiX1woQOkCS7nFaC0wV20Ch96cxoKHyjLnDKxdJTQ0R7lq3l0SfESfsHxUDa/emsQ2za3mL45KE2DvuV3GGevUxB8zS6FMjlNg3nGFvwFGKUBbepG/32gayvbw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773150603; c=relaxed/simple;
	bh=3EfJEhbNyYHp29tHC+BP/iev1/iEwlGeaA3ZtDrhSX8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MjTA0FPrTbJWkiiPZUJ4dGgO17qSjh9mzPo7RePLyHxAAp/ui0rHi26xdmCNC0TWcliyMNOT7IxFDjTXuAW/RCDfI84IKgMVLPsePMlZgOP7JZPeRHKZ0fAUFS6fePNAto56TZKIFAp7iKnUANk0mB7BmO1EJrT3rsGQd+B2PJQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net; spf=pass smtp.mailfrom=flipper.net; dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b=Q7eq6Brm; arc=pass smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flipper.net
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-b96e579c0fcso419536966b.3
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 06:50:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773150600; cv=none;
        d=google.com; s=arc-20240605;
        b=GxoZcqvYxccc178UzyGrr46Fo6e9p3YGp9gHNNqgfIni8eY351IlemzWz90BUD2HY+
         2GxqQuDmDHDLGA5ZHfrtEsJjqZ8uGDIxMZFFWNUKN+aWU2rT2+Xb7AHuNdmCGo8Ww7rG
         zmgSOCxnC2dI6jOk69tNUOWFCZEfSZudGipncRxmdqw/TQUF7V82VNY3TrR2c7FjAL2k
         eV0v8yx96v8Gj5WEyVBOB4B0nMOeHvpyebKlamo190ValFmBkJvptBP3CWRk7Gwglqnd
         9lzawXk21wSMRGrPAGq7tOF6C8y8WGJ1hmufZ6gb5CfNMaU9T9eByLsYRDtMDBVEoST+
         124w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=1mERfYSuSAiIwvbv/dJ/kgJKbE5+s2qwKMdl0EczUJI=;
        fh=z/VMsUtKQNssLbNWTOAzz+bJ59fax2MnIDCd9V06dgs=;
        b=CZWrcsAyAOKC9E0k3rppWmorEiP4Onf+7IWlxqQqCdTCPdfbNA2xVb+V1GggvHmrOo
         Fofx77wbi6gDfEhucrkQMbg7bKiEM6YjmIyHlvTRiNlkimQfQERIt1XhhdS+DU2EQV3F
         Dq4Wie0BFSMgqLJLVdcf7KNF3bYDrg5k+V7YAk88hqygTlz9E6/xWZ6VmfEoWxjGwCnE
         XoTlwKPCNMEZ7sfAcotSkRhXP65Y8U7tOwtwxWmbIUqNPOxB4R4u+0iS6uPA1Nq7OwKE
         FNywPmPe5xygU0SFcNRPeaQuyQHPSSYSzeSShigkFdrNS5TLMICkluB7a3U6rwQkKOYi
         b+Zg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1773150600; x=1773755400; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1mERfYSuSAiIwvbv/dJ/kgJKbE5+s2qwKMdl0EczUJI=;
        b=Q7eq6Brmwt6+CgXAV9a0FtZZz1DF0vx0Di77iehHfUX7KfZucviTEJejBlO3g3DSa0
         L1vUGJxQf5QLPsparGFHSH807aGPqe/RufQi6uKO8PoDXdXIA0KyR99c3ItMx64ZzWUD
         FcY+b1A99xqicvmepuNTfV2lf1sLBFHDxVOYcCKt60SniX/BwNW25oZO9OWQsgOvJxZq
         YiZKnKGD3J90PIo4GVjqKgELO0kIwiWNkXSMOIbHs7OPvbPDrdS+AlNAll3JCezIwHyX
         HBceP3X6u12q/45VJy7R7m+78jZJjrdtFhLQE02aT/M6gaRnUNTR8ic5KCht7eKems7l
         bYlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773150600; x=1773755400;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=1mERfYSuSAiIwvbv/dJ/kgJKbE5+s2qwKMdl0EczUJI=;
        b=j0+dUDLLm8GWKGhxtd0ajcGTU2tUICSaiE3DAUDU8UW0rUXXi/Al5GQKCPkAIjIRvH
         kGqRg/j/8mMSDg+guXdb8mhS36mioZTczVID2r7Y41gP45B0MSBYVQSLtAAgshTosOaO
         HUfm0wUP/mnxLWHgUthv8UIFPY+lkpRAvmFc8QvWTsz/f/cNatX4zlnGrTlfJyk82/rz
         rVEvDum7VDMPJhgl6KOPyMCJ+hWk3ThaE4MUuBWJI1wp/SxacpSk1kYjZWgkMw4d2y5T
         8qy0/m8ptVkbHTv+G1GcVme4noak5c+5bbDAUyjK6wFQ70dzlB/4pkSdr6Scu1ChwLc1
         tbMg==
X-Forwarded-Encrypted: i=1; AJvYcCWxDjlfbS3fB7QzHfA0TlaMidEEyasBKgV4DyjPWCILHfMaS6ysdnNYtMM6FT8zDoPH4ml/XNMA2SQS@vger.kernel.org
X-Gm-Message-State: AOJu0YwMP3rdGfb0woF+sYvRTJB7nU1kpaK6UA0/mTB8+UxjeAa48rjS
	KOZhUceLxxotbllkBJbqYKLY5UT/mNvi+munyxvT3Uf48urpfzUZG36giv4vB9dNS/D0vj5tpGP
	RrCVothADGRSad8hKkv6fETPe+44+nBeUaRX/Ga2VZw==
X-Gm-Gg: ATEYQzyPRDnAw75Cf2Ihfq+UwUvnW8QndjczKkocH7IUp6ik+oHxqRddJDx8eHAyEPt
	B0VwOaiKz3HZMk/y5q6OIyaefjUVykRIqyOhVApTHQf39E7D/DlmeaCh0T5oJtZ/VWjHWKNxfJa
	uNBL2NBNXL4ZpZlxUOWcoXXBkwfU+bCrcgY2L2EQawjD0nPxH4uRNvEOPs4bEBiJPjRPKPyNEhF
	L65d+4mb/eri0bd4F1/rohNFrQYB5G69weXLQDaKRDgWUXq+Q73M8KPKh+MohTJmjX7S7A51Gk2
	VWywm5E=
X-Received: by 2002:a17:906:9fce:b0:b88:587f:f594 with SMTP id
 a640c23a62f3a-b942dbb91dcmr825006866b.18.1773150599757; Tue, 10 Mar 2026
 06:49:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260310-bq25792-v3-0-02f8e232d63b@flipper.net>
 <20260310-bq25792-v3-9-02f8e232d63b@flipper.net> <20260310130315.GK183676@google.com>
In-Reply-To: <20260310130315.GK183676@google.com>
From: Alexey Charkov <alchark@flipper.net>
Date: Tue, 10 Mar 2026 17:49:48 +0400
X-Gm-Features: AaiRm53S8OEK5SaUZeck_O6hUJopad5cKLvL1AQpN-ACdcgvJYmqmjopGMDXWQI
Message-ID: <CAKTNdwHs=QJ=UFVcN1DyOm+r0rOVd6Uxhb1N=0CYahtEGaXqYw@mail.gmail.com>
Subject: Re: [PATCH v3 09/11] mfd: bq257xx: Add BQ25792 support
To: Lee Jones <lee@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Chris Morgan <macromorgan@hotmail.com>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Sebastian Reichel <sre@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 3E5092529DA
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[flipper.net,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[flipper.net:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273566-lists,devicetree=lfdr.de];
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
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,mail.gmail.com:mid]
X-Rspamd-Action: no action

On Tue, Mar 10, 2026 at 5:03=E2=80=AFPM Lee Jones <lee@kernel.org> wrote:
>
> On Tue, 10 Mar 2026, Alexey Charkov wrote:
>
> > Add register definitions and a new 'type' enum to be passed in MFD
> > platform data to support the BQ25792, which is a newer variant of the
> > BQ257xx family.
> >
> > BQ25792 shares similar logic of operation with the already supported
> > BQ25703A but has a completely different register map and different
> > electrical constraints.
> >
> > Tested-by: Chris Morgan <macromorgan@hotmail.com>
> > Signed-off-by: Alexey Charkov <alchark@flipper.net>
> > ---
> >  drivers/mfd/bq257xx.c       |  64 ++++++-
> >  include/linux/mfd/bq257xx.h | 417 ++++++++++++++++++++++++++++++++++++=
++++++++
> >  2 files changed, 477 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/mfd/bq257xx.c b/drivers/mfd/bq257xx.c
> > index e9d49dac0a16..7516e2ec00e6 100644
> > --- a/drivers/mfd/bq257xx.c
> > +++ b/drivers/mfd/bq257xx.c
> > @@ -10,6 +10,11 @@
> >  #include <linux/mfd/core.h>
> >  #include <linux/regmap.h>
> >
> > +struct bq257xx_match_data {
> > +     const struct bq257xx_plat plat;
> > +     const struct regmap_config *regmap_config;
> > +};
> > +
> >  static const struct regmap_range bq25703_readonly_reg_ranges[] =3D {
> >       regmap_reg_range(BQ25703_CHARGER_STATUS, BQ25703_MANUFACT_DEV_ID)=
,
> >  };
> > @@ -39,15 +44,64 @@ static const struct regmap_config bq25703_regmap_co=
nfig =3D {
> >       .val_format_endian =3D REGMAP_ENDIAN_LITTLE,
> >  };
> >
> > -static const struct mfd_cell cells[] =3D {
> > +static const struct bq257xx_match_data bq25703a_match_data =3D {
> > +     .plat =3D { .type =3D BQ25703A },
> > +     .regmap_config =3D &bq25703_regmap_config,
> > +};
> > +
> > +static const struct regmap_range bq25792_writeable_reg_ranges[] =3D {
> > +     regmap_reg_range(BQ25792_REG00_MIN_SYS_VOLTAGE,
> > +                      BQ25792_REG18_NTC_CONTROL_1),
> > +     regmap_reg_range(BQ25792_REG28_CHARGER_MASK_0,
> > +                      BQ25792_REG30_ADC_FUNCTION_DISABLE_1),
> > +};
> > +
> > +static const struct regmap_access_table bq25792_writeable_regs =3D {
> > +     .yes_ranges =3D bq25792_writeable_reg_ranges,
> > +     .n_yes_ranges =3D ARRAY_SIZE(bq25792_writeable_reg_ranges),
> > +};
> > +
> > +static const struct regmap_range bq25792_volatile_reg_ranges[] =3D {
> > +     regmap_reg_range(BQ25792_REG19_ICO_CURRENT_LIMIT,
> > +                      BQ25792_REG27_FAULT_FLAG_1),
> > +     regmap_reg_range(BQ25792_REG31_IBUS_ADC,
> > +                      BQ25792_REG47_DPDM_DRIVER),
> > +};
> > +
> > +static const struct regmap_access_table bq25792_volatile_regs =3D {
> > +     .yes_ranges =3D bq25792_volatile_reg_ranges,
> > +     .n_yes_ranges =3D ARRAY_SIZE(bq25792_volatile_reg_ranges),
> > +};
> > +
> > +static const struct regmap_config bq25792_regmap_config =3D {
> > +     .reg_bits =3D 8,
> > +     .val_bits =3D 8,
> > +     .max_register =3D BQ25792_REG48_PART_INFORMATION,
> > +     .cache_type =3D REGCACHE_MAPLE,
> > +     .wr_table =3D &bq25792_writeable_regs,
> > +     .volatile_table =3D &bq25792_volatile_regs,
> > +};
> > +
> > +static const struct bq257xx_match_data bq25792_match_data =3D {
> > +     .plat =3D { .type =3D BQ25792 },
> > +     .regmap_config =3D &bq25792_regmap_config,
> > +};
> > +
> > +static struct mfd_cell cells[] =3D {
> >       MFD_CELL_NAME("bq257xx-regulator"),
> >       MFD_CELL_NAME("bq257xx-charger"),
> >  };
> >
> >  static int bq257xx_probe(struct i2c_client *client)
> >  {
> > +     const struct bq257xx_match_data *md =3D device_get_match_data(&cl=
ient->dev);
> >       struct bq257xx_device *ddata;
> > -     int ret;
> > +     int i, ret;
> > +
> > +     for (i =3D 0; i < ARRAY_SIZE(cells); i++) {
> > +             cells[i].platform_data =3D &md->plat;
> > +             cells[i].pdata_size =3D sizeof(md->plat);
> > +     }
> >
> >       ddata =3D devm_kzalloc(&client->dev, sizeof(*ddata), GFP_KERNEL);
> >       if (!ddata)
> > @@ -55,7 +109,7 @@ static int bq257xx_probe(struct i2c_client *client)
> >
> >       ddata->client =3D client;
> >
> > -     ddata->regmap =3D devm_regmap_init_i2c(client, &bq25703_regmap_co=
nfig);
> > +     ddata->regmap =3D devm_regmap_init_i2c(client, md->regmap_config)=
;
> >       if (IS_ERR(ddata->regmap)) {
> >               return dev_err_probe(&client->dev, PTR_ERR(ddata->regmap)=
,
> >                                    "Failed to allocate register map\n")=
;
> > @@ -74,12 +128,14 @@ static int bq257xx_probe(struct i2c_client *client=
)
> >
> >  static const struct i2c_device_id bq257xx_i2c_ids[] =3D {
> >       { "bq25703a" },
> > +     { "bq25792" },
> >       {}
> >  };
> >  MODULE_DEVICE_TABLE(i2c, bq257xx_i2c_ids);
> >
> >  static const struct of_device_id bq257xx_of_match[] =3D {
> > -     { .compatible =3D "ti,bq25703a" },
> > +     { .compatible =3D "ti,bq25703a", .data =3D &bq25703a_match_data }=
,
> > +     { .compatible =3D "ti,bq25792", .data =3D &bq25792_match_data },
>
> Instead of passing through the data structure, pass an identifier to
> match on, like:
>
>          { .compatible =3D "ti,bq25703a", .data =3D (void *)BQ25703A },
>
> Then add the ID to ddata which is already obtainable from the child
> devices via i2c_set_clientdata().  This saves passing it as separate
> platform data.
>
>         ddata->type =3D device_get_match_data(&client->dev);
>
> Then use that to initialise a local 'struct regmap_config'.
>
>         switch(ddata->type) {
>         case BQ25703A:
>                 regmap_config =3D &bq25703_regmap_config
>                 break;
>         [...]
>
> By doing so, you save on a lot of additional complexity and mitigate the
> introduction of some unnecessary data structures.

Thanks for the suggestion Lee, it does indeed make the code leaner.
Will wait for any additional feedback and send v4.

Best regards,
Alexey

