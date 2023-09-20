Return-Path: <devicetree+bounces-1804-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D46A7A8792
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 16:52:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 237A8282103
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 14:52:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F4DB3B29F;
	Wed, 20 Sep 2023 14:52:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D48D1428E
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 14:52:36 +0000 (UTC)
Received: from mail.andi.de1.cc (mail.andi.de1.cc [IPv6:2a02:c205:3004:2154::1])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 56C70A9;
	Wed, 20 Sep 2023 07:52:34 -0700 (PDT)
Received: from pd9e2f2b6.dip0.t-ipconnect.de ([217.226.242.182] helo=aktux)
	by mail.andi.de1.cc with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <andreas@kemnade.info>)
	id 1qiyYh-0040UG-5J; Wed, 20 Sep 2023 16:52:06 +0200
Date: Wed, 20 Sep 2023 16:52:04 +0200
From: Andreas Kemnade <andreas@kemnade.info>
To: Tony Lindgren <tony@atomide.com>
Cc: =?UTF-8?B?UMOpdGVy?= Ujfalusi <peter.ujfalusi@gmail.com>,
 bcousson@baylibre.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 lgirdwood@gmail.com, broonie@kernel.org, perex@perex.cz, tiwai@suse.com,
 jarkko.nikula@bitmer.com, dmitry.torokhov@gmail.com,
 linux-omap@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org
Subject: Re: [PATCH 1/3] ASoC: ti: omap-mcbsp: Ignore errors for getting
 fck_src
Message-ID: <20230920165204.0fbc0ff3@aktux>
In-Reply-To: <20230920063353.GQ5285@atomide.com>
References: <20230705190324.355282-1-andreas@kemnade.info>
	<20230705190324.355282-2-andreas@kemnade.info>
	<7d58d52d-2087-45af-b29e-2515b63ead13@gmail.com>
	<20230920063353.GQ5285@atomide.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.37; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,T_SPF_HELO_TEMPERROR,T_SPF_TEMPERROR
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi,

On Wed, 20 Sep 2023 09:33:53 +0300
Tony Lindgren <tony@atomide.com> wrote:

> Hi,
>=20
> * P=C3=A9ter Ujfalusi <peter.ujfalusi@gmail.com> [230919 18:25]:
> >=20
> >=20
> > On 7/5/23 22:03, Andreas Kemnade wrote: =20
> > > Commit 349355ce3a05 ("ARM: OMAP2+: Drop legacy platform data for omap=
4 mcbsp")
> > > dropped prcm_fck for omap4, =20
>=20
> The prcm_fck should be there in the dts for each mcbsp interconnect targe
> module as "fck" alias and get's enabled/disabled when the mcbsp driver
> calls runtime PM.
>=20
> So maybe the description should explain that things broke as the aliases
> for prcm_fck and pad_ck no longer get added.
>=20
> > it also dropped the pad_fck for that matter. =20
>=20
> OK so an alias is needed for that too.
>=20
> That's the MCPDM_CLKCTRL pad_clks_ck alias, right? Seems like the
> pad_clks_ck should be claimed by the mcpdm and mcbsp drivers if they are
> used? I guess it would be for some external device use case?
>=20
> > > so the clk_src might not be >available making the
> > > clk_get(src) fail. =20
> >=20
> > Wow, so OMAP4 audio is pretty broken if would ever need to select FCLK?
> > By default we don't on OMAP4, but this is astonishing. =20
>=20
> So sounds like we just got lucky because of -ENOSUCHUSERS? The mcbsp works
> for me, not sure how come I'm not seeing this issue, does it now only work
> for the default clock source?
>=20
Well, I did not run into any problems (besides of no sound output)
as long as I tried to use the codec side as bitclock/frameclock-master and
that is what droid4 does...

Regards,
Andreas

