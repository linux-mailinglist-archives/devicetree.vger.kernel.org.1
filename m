Return-Path: <devicetree+bounces-81374-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1332891C173
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 16:46:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 827E81F25E69
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 14:46:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 604751BF31A;
	Fri, 28 Jun 2024 14:46:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="lRVGvHK5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40E933FD4
	for <devicetree@vger.kernel.org>; Fri, 28 Jun 2024 14:46:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719586010; cv=none; b=NQVyNZI4zZ5oTSC3W73chvOrj4IDyEvU8lfEhb0xIEqV8Ni2JOoUdIIhHg9ETix6PXw/ZEws3qVyWfTMOoRXzapcf7vaHZLjpHg+ilo22V4foWl7D+B+xEfuuTsXI/T6KR8wlxnKDNwiVkbvkY1JCV4rCKBSnW1KiwgRZgpS1JU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719586010; c=relaxed/simple;
	bh=edaHmvHbc8a5eSoGysusOi/UdYbwcqedB7i5VwDuYho=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=FDSDoWfVpAOylXYYrR0CdtqJsaI99RcYfSDW0kAZcstesE6cn4j9oMc9YmSG/+S5aGDesPHGUtnfG2b/HloytEr1/0kFqCsNG3K/lpVrMVnsC0Ui7VYq/Xmfi+ypSAHDNDeto0j6CjV8g8z+30EQLpSTLJT9qBQGTOSTtC+QR50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=lRVGvHK5; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2eaa89464a3so7013391fa.3
        for <devicetree@vger.kernel.org>; Fri, 28 Jun 2024 07:46:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1719586005; x=1720190805; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NJEUwCbOzu7QTCraes4nwXff/wo8VWMthQe2KP3OzRY=;
        b=lRVGvHK5KqBPGlE3u18fMAx25djbMN3pfyXLbvdNXlfDwcsV8ygCI3Tox7Lj5NiVVB
         fZug/66kPW9I6wk2n06huduluGhoERe3NYD5tRczjSo/kd1Oh/IKPXdqNZEycoEM380+
         xMYhl3tD2MOISBgR5LM4N+gu7e8km+MifFhFsOVTFSfvq3Zonbje03p78y+ua8DTY623
         0agRiKfjoCxd+eGGzcAYNc0aBjvUdQa27SN1tZ+ShO/Bp0tydeldbZjLFYH6Pt75M01l
         zryt/AwOT4tR/tE/ob7DkQKfiA6tS0lAzClpQX/+q4fw4SgAFb6Y1zxS2Uk03S8758uk
         RuhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719586005; x=1720190805;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NJEUwCbOzu7QTCraes4nwXff/wo8VWMthQe2KP3OzRY=;
        b=mlAkBi5na5Jbhm9EdlYGvXUz9zsccltDL7lKVGRSFdIKqk9ulpfizOz0kz5/xiQa+1
         iZpSGc5qib8uFmyfjatA+b67VnfNEL+s6or0NQCMNsLOLCPiD5VIUoe+tx/6MeG2UIEt
         lqLQ79XpLEsz6Srey0KJi4zK8p6bmdJixsVVdWr9pw6OsdUworqmJqzhYNaDg3A7yyZv
         IyJdNEmCzKoMvHtJ9AgQqiggTb9qp3LnB8ahfTy1o9qM7cWxHfOJmDPj58JIrcS9Zd4R
         MPiT9qauPQHMRQTqfMNfq+MyH0OqPimeJpHVZ0xl7TqqYxALLzqrrUTI3MyfTA1ASzvR
         cWtA==
X-Forwarded-Encrypted: i=1; AJvYcCXF7t+7SmCi5jBfNv+fVijb1Qh+EbSG1d6R2mt2Ms48+vcPPmx6ibwyXLOsb/Lwgg5UiQvqNCLTT/SDbROgEboVcpdpLWs3SZky+A==
X-Gm-Message-State: AOJu0YwKLwj0l68DrQo2g0aWVhfREPKj5YLMcP7m6+Cfud/acdjgDaDB
	FMHC4PYZkFFRE0H4X8Lwod1KZ7op5nv9dHASa5MIGXjNGMmwzh7Ybi8LBH3eSOa774BiwRnShs4
	1kJD8ZucjN4m4nGNKAwaGbffM36jnkQbY6cDsqw==
X-Google-Smtp-Source: AGHT+IEAssqeG4VkYeYz5wXFHCqHzEcG+3pK46RbnFe7VFKCuQh/uxD4sVggsDU85mjCD+hFTgZO6iEuWF8/K3V8VGM=
X-Received: by 2002:a2e:8909:0:b0:2ec:4fec:812c with SMTP id
 38308e7fff4ca-2ec579fefcbmr106765681fa.44.1719586005212; Fri, 28 Jun 2024
 07:46:45 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240628080146.49545-1-andrei.simion@microchip.com>
 <20240628080146.49545-2-andrei.simion@microchip.com> <CAMRc=MeJyByMvcFT2aJDK87bz4=+UXEuMtQ4G4MZUAUt39SS1Q@mail.gmail.com>
 <67d3646f-1b84-4d2d-9e36-be898f13be90@microchip.com>
In-Reply-To: <67d3646f-1b84-4d2d-9e36-be898f13be90@microchip.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Fri, 28 Jun 2024 16:46:33 +0200
Message-ID: <CAMRc=MeJM4LmczCbZ8bKytLZKY_mP=Q8eaUprLMmO8BYHecStw@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] eeprom: at24: avoid adjusting offset for
 24AA025E{48, 64}
To: Andrei.Simion@microchip.com
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	Nicolas.Ferre@microchip.com, alexandre.belloni@bootlin.com, 
	claudiu.beznea@tuxon.dev, arnd@arndb.de, gregkh@linuxfoundation.org, 
	linux-i2c@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	claudiu.beznea@microchip.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 28, 2024 at 4:17=E2=80=AFPM <Andrei.Simion@microchip.com> wrote=
:
>
> On 28.06.2024 11:30, Bartosz Golaszewski wrote:
> > EXTERNAL EMAIL: Do not click links or open attachments unless you know =
the content is safe
> >
> > On Fri, Jun 28, 2024 at 10:02=E2=80=AFAM Andrei Simion
> > <andrei.simion@microchip.com> wrote:
> >>
> >> From: Claudiu Beznea <claudiu.beznea@microchip.com>
> >>
> >> The EEPROMs could be used only for MAC storage. In this case the
> >> EEPROM areas where MACs resides could be modeled as NVMEM cells
> >> (directly via DT bindings) such that the already available networking
> >> infrastructure to read properly the MAC addresses (via
> >> of_get_mac_address()). The previously available compatibles needs the
> >> offset adjustment probably for compatibility w/ old DT bindings.
> >> Add "microchip,24aa025e48", "microchip,24aa025e64" compatible for the
> >> usage w/ 24AA025E{48, 64} type of EEPROMs where "24aa025e48" stands
> >> for EUI-48 address and "24aa025e64" stands for EUI-64 address.
> >>
> >> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
> >> [andrei.simion@microchip.com: Add extended macros to initialize the st=
ructure
> >> with explicit value to adjusting offset. Add extra description for the=
 commit
> >> message.]
> >> Signed-off-by: Andrei Simion <andrei.simion@microchip.com>
> >> ---
> >> v2 -> v3:
> >> - add specific compatible names according with
> >> https://ww1.microchip.com/downloads/en/DeviceDoc/24AA02E48-24AA025E48-=
24AA02E64-24AA025E64-Data-Sheet-20002124H.pdf
> >> - add extended macros to initialize the structure with explicit value =
for adjoff
> >> - drop co-developed-by to maintain the commit history
> >>  (chronological order of modifications)
> >>
> >> v1 -> v2:
> >> - no change
> >> ---
> >>  drivers/misc/eeprom/at24.c | 28 +++++++++++++++++++++++-----
> >>  1 file changed, 23 insertions(+), 5 deletions(-)
> >>
> >> diff --git a/drivers/misc/eeprom/at24.c b/drivers/misc/eeprom/at24.c
> >> index 4bd4f32bcdab..e2ac08f656cf 100644
> >> --- a/drivers/misc/eeprom/at24.c
> >> +++ b/drivers/misc/eeprom/at24.c
> >> @@ -121,20 +121,29 @@ struct at24_chip_data {
> >>         u32 byte_len;
> >>         u8 flags;
> >>         u8 bank_addr_shift;
> >> +       u8 adjoff;
> >>         void (*read_post)(unsigned int off, char *buf, size_t count);
> >>  };
> >>
> >> -#define AT24_CHIP_DATA(_name, _len, _flags)                          =
  \
> >> +#define AT24_CHIP_DATA_AO(_name, _len, _flags, _ao)                  =
  \
> >
> > Please, don't try to save space on a few letters, call it
> > AT24_CHIP_DATA_ADJOFF() for better readability.
> >
>
> I will change in next the version.
>
> >>         static const struct at24_chip_data _name =3D {                =
    \
> >>                 .byte_len =3D _len, .flags =3D _flags,                =
      \
> >> +               .adjoff =3D _ao                                       =
    \
> >>         }
> >>
> >> -#define AT24_CHIP_DATA_CB(_name, _len, _flags, _read_post)           =
  \
> >> +#define AT24_CHIP_DATA(_name, _len, _flags)                          =
  \
> >> +       AT24_CHIP_DATA_AO(_name, _len, _flags, 0)
> >> +
> >> +#define AT24_CHIP_DATA_CB_AO(_name, _len, _flags, _ao, _read_post)   =
  \
> >>         static const struct at24_chip_data _name =3D {                =
    \
> >>                 .byte_len =3D _len, .flags =3D _flags,                =
      \
> >> +               .adjoff =3D _ao,                                      =
    \
> >>                 .read_post =3D _read_post,                            =
    \
> >>         }
> >>
> >> +#define AT24_CHIP_DATA_CB(_name, _len, _flags, _read_post)           =
  \
> >> +       AT24_CHIP_DATA_CB_AO(_name, _len, _flags, 0, _read_post)
> >> +
> >>  #define AT24_CHIP_DATA_BS(_name, _len, _flags, _bank_addr_shift)     =
  \
> >>         static const struct at24_chip_data _name =3D {                =
    \
> >>                 .byte_len =3D _len, .flags =3D _flags,                =
      \
> >> @@ -170,9 +179,13 @@ AT24_CHIP_DATA(at24_data_24cs01, 16,
> >>  AT24_CHIP_DATA(at24_data_24c02, 2048 / 8, 0);
> >>  AT24_CHIP_DATA(at24_data_24cs02, 16,
> >>         AT24_FLAG_SERIAL | AT24_FLAG_READONLY);
> >> -AT24_CHIP_DATA(at24_data_24mac402, 48 / 8,
> >> +AT24_CHIP_DATA_AO(at24_data_24mac402, 48 / 8,
> >> +       AT24_FLAG_MAC | AT24_FLAG_READONLY, 1);
> >
> > And this will not break existing users? I guess you refer to these
> > changes in your commit message but it's not very clear what you're
> > doing and why.
> >
>
> For those types of eeprom 24AA025E{48, 64} adjusting offset is not requir=
ed (at24_get_offset_adj()).
> So, indeed, it is an entanglement in logic.
> To keep the implementation as it is:
> adjoff (which is a flag that indicates when to use the adjusting offset) =
needs to be 1 for old compatibles but for these new ones needs to be 0.
>
> I think that is enough not to break the existing users. What are your tho=
ughts?
>

Wait... is the adjoff field effectively a boolean? Why u8?

Bart

> Best Regards,
> Andrei Simion
>
> >> +AT24_CHIP_DATA_AO(at24_data_24mac602, 64 / 8,
> >> +       AT24_FLAG_MAC | AT24_FLAG_READONLY, 1);
> >> +AT24_CHIP_DATA(at24_data_24aa025e48, 48 / 8,
> >>         AT24_FLAG_MAC | AT24_FLAG_READONLY);
> >> -AT24_CHIP_DATA(at24_data_24mac602, 64 / 8,
> >> +AT24_CHIP_DATA(at24_data_24aa025e64, 64 / 8,
> >>         AT24_FLAG_MAC | AT24_FLAG_READONLY);
> >>  /* spd is a 24c02 in memory DIMMs */
> >>  AT24_CHIP_DATA(at24_data_spd, 2048 / 8,
> >> @@ -218,6 +231,8 @@ static const struct i2c_device_id at24_ids[] =3D {
> >>         { "24cs02",     (kernel_ulong_t)&at24_data_24cs02 },
> >>         { "24mac402",   (kernel_ulong_t)&at24_data_24mac402 },
> >>         { "24mac602",   (kernel_ulong_t)&at24_data_24mac602 },
> >> +       { "24aa025e48", (kernel_ulong_t)&at24_data_24aa025e48 },
> >> +       { "24aa025e64", (kernel_ulong_t)&at24_data_24aa025e64 },
> >>         { "spd",        (kernel_ulong_t)&at24_data_spd },
> >>         { "24c02-vaio", (kernel_ulong_t)&at24_data_24c02_vaio },
> >>         { "24c04",      (kernel_ulong_t)&at24_data_24c04 },
> >> @@ -270,6 +285,8 @@ static const struct of_device_id __maybe_unused at=
24_of_match[] =3D {
> >>         { .compatible =3D "atmel,24c1024",        .data =3D &at24_data=
_24c1024 },
> >>         { .compatible =3D "atmel,24c1025",        .data =3D &at24_data=
_24c1025 },
> >>         { .compatible =3D "atmel,24c2048",        .data =3D &at24_data=
_24c2048 },
> >> +       { .compatible =3D "microchip,24aa025e48", .data =3D &at24_data=
_24aa025e48 },
> >> +       { .compatible =3D "microchip,24aa025e64", .data =3D &at24_data=
_24aa025e64 },
> >>         { /* END OF LIST */ },
> >>  };
> >>  MODULE_DEVICE_TABLE(of, at24_of_match);
> >> @@ -690,7 +707,8 @@ static int at24_probe(struct i2c_client *client)
> >>         at24->read_post =3D cdata->read_post;
> >>         at24->bank_addr_shift =3D cdata->bank_addr_shift;
> >>         at24->num_addresses =3D num_addresses;
> >> -       at24->offset_adj =3D at24_get_offset_adj(flags, byte_len);
> >> +       at24->offset_adj =3D cdata->adjoff ?
> >> +                               at24_get_offset_adj(flags, byte_len) :=
 0;
> >>         at24->client_regmaps[0] =3D regmap;
> >>
> >>         at24->vcc_reg =3D devm_regulator_get(dev, "vcc");
> >> --
> >> 2.34.1
> >>
> >
> > Bart

