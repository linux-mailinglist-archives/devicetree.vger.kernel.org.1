Return-Path: <devicetree+bounces-1599-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F18C07A7196
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 06:48:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EAD0D1C204FA
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 04:48:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F81C15A5;
	Wed, 20 Sep 2023 04:48:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2F9A15A0
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 04:48:20 +0000 (UTC)
Received: from mail-il1-x132.google.com (mail-il1-x132.google.com [IPv6:2607:f8b0:4864:20::132])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A4809C
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 21:48:19 -0700 (PDT)
Received: by mail-il1-x132.google.com with SMTP id e9e14a558f8ab-34fe6722847so1419815ab.1
        for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 21:48:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1695185298; x=1695790098; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/Oz7azZo6W32sAYSfgYrh6I15vH6WNt1KpOD5gToflE=;
        b=oHh/UpnOuZmlCay6r1htGpIT772XL0W2VJO7QuepCFSU/rPTSUjWPXWKb0rebszkF5
         Hca1gh7d1MeT/iTGKIewmGJLyU8wkeMBT/k559VRm9Ml+xk8G/JFcko6SmwhAViNGuim
         m9whbV5QuC87k7IbbQsrj5bfA/Vv7pKsoyS4k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695185298; x=1695790098;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/Oz7azZo6W32sAYSfgYrh6I15vH6WNt1KpOD5gToflE=;
        b=L4qiUzEYzMpK+3uVwA5IDmTIuY7Akls5Fo3naUxQivZ/LdIy+qwqxZJTyUX1+pnD7L
         saf+BITjaQhYJx+isTq+3mteVLap3AqmSurtDCNAyj5tcmnWBoTmO7POsEsbkhBcQsKm
         Lp87CJG+kq1/1JooikBxHUtB3B/ukZm5bgxP8v+9OVPN7x16TSa6bks2JOC0BX32pJFY
         oCnSlTFJ5F4QAWqo+ZXzfOhjQeKWJxzk25CWK9vXGJE0SeWiEx/iGI4fbu3Xg1bcnYyV
         vgRJcdJLr6cbmZPhED4QMj7iJDntaBLbIyw6eiFvN7FSKftuWI7ZVL+ZXZ+Kn9o3Ql5V
         Dkkg==
X-Gm-Message-State: AOJu0YyUGcKiwhzF7OyzL2AFvA+zuQayPwKEpe8da48Et5eZjfDoTCsF
	rXqRy8V04kF3xvvb0+0gZqUozv5huVFUao3oIiE=
X-Google-Smtp-Source: AGHT+IHicEUReXPOKt59JQ4w/1YZkijtmzVfRZmGkcgVFOWopn+r4iL8EmXr74a6AxnPApr4KdvOjA==
X-Received: by 2002:a05:6e02:198d:b0:34f:e0a7:4c64 with SMTP id g13-20020a056e02198d00b0034fe0a74c64mr4364930ilf.6.1695185298246;
        Tue, 19 Sep 2023 21:48:18 -0700 (PDT)
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com. [209.85.166.48])
        by smtp.gmail.com with ESMTPSA id dl19-20020a056638279300b0042b1297468esm3670826jab.51.2023.09.19.21.48.16
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Sep 2023 21:48:16 -0700 (PDT)
Received: by mail-io1-f48.google.com with SMTP id ca18e2360f4ac-7926b7f8636so14505639f.1
        for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 21:48:16 -0700 (PDT)
X-Received: by 2002:a5d:9da4:0:b0:79d:2d66:9b3f with SMTP id
 ay36-20020a5d9da4000000b0079d2d669b3fmr5407772iob.7.1695185296364; Tue, 19
 Sep 2023 21:48:16 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230919014439.5795-1-chun-jen.tseng@mediatek.com>
 <20230919014439.5795-3-chun-jen.tseng@mediatek.com> <0009f224-aac4-6681-fde5-cf1ead94c604@collabora.com>
 <acd2cba7db6d4e523f84fa4725e9bd6b596023ba.camel@mediatek.com>
In-Reply-To: <acd2cba7db6d4e523f84fa4725e9bd6b596023ba.camel@mediatek.com>
From: Fei Shao <fshao@chromium.org>
Date: Wed, 20 Sep 2023 12:47:39 +0800
X-Gmail-Original-Message-ID: <CAC=S1ng5wkZa6LzASUNDW9miG_ev7FGhw_8Xumom4y0oy3QN0w@mail.gmail.com>
Message-ID: <CAC=S1ng5wkZa6LzASUNDW9miG_ev7FGhw_8Xumom4y0oy3QN0w@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] soc: mediatek: svs: add support for mt8188
To: =?UTF-8?B?Q2h1bi1KZW4gVHNlbmcgKOabvuS/iuS7gSk=?= <Chun-Jen.Tseng@mediatek.com>
Cc: "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>, "khilman@kernel.org" <khilman@kernel.org>, 
	=?UTF-8?B?Um9nZXIgTHUgKOmZuOeRnuWCkSk=?= <Roger.Lu@mediatek.com>, 
	"angelogioacchino.delregno@collabora.com" <angelogioacchino.delregno@collabora.com>, 
	"robh+dt@kernel.org" <robh+dt@kernel.org>, 
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>, 
	"conor+dt@kernel.org" <conor+dt@kernel.org>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	Project_Global_Chrome_Upstream_Group <Project_Global_Chrome_Upstream_Group@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Mark,

On Tue, Sep 19, 2023 at 8:38=E2=80=AFPM Chun-Jen Tseng (=E6=9B=BE=E4=BF=8A=
=E4=BB=81)
<Chun-Jen.Tseng@mediatek.com> wrote:
>
> On Tue, 2023-09-19 at 12:52 +0200, AngeloGioacchino Del Regno wrote:
> > Il 19/09/23 03:44, Mark Tseng ha scritto:
> > > MT8188 svs gpu uses 2-line high bank and low bank to optimize the
> > > voltage of opp table for higher and lower frequency respectively.
> > >
> > > Signed-off-by: Mark Tseng <chun-jen.tseng@mediatek.com>
> > > ---
<snip>
> > > +
> > > +   /* For voltage bin support */
> >
> > I already asked you to please send the voltage bin support as a
> > separated commit
> > because this is for *all SoCs* and not only for 8188.
> >
> > Again, please separate the voltage bin support from the MT8188
> > support.
> >
> Hi Angelo,
>
> I have already checked "voltage bins turn point" with DE, it is support
> for *all SoCs* , not only for MT8188.

I think Angelo's point is that you should separate this patch into two, whe=
re:
- "soc: mediatek: svs: Add support for voltage bins" contains changes
only related to the "For voltage bin support" part.
- "soc: mediatek: svs: Add support for MT8188 SoC" contains code that
is specifically for MT8188, i.e. svs_mt8188_efuse_parsing,
svs_mt8188_banks etc.

It'd be easier for people to review, manage and cherry-pick patches if
you add the generic changes apart from the platform-specific code.
For example, someone will be able to simply pick up the patch for
voltage bin support solely if they are not interested in MT8188.

Regards,
Fei
>
>
> > soc: mediatek: svs: Add support for voltage bins
> > soc: mediatek: svs: Add support for MT8188 SoC
> >
> > Regards,
> > Angelo
> >

