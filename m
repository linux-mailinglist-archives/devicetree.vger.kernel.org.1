Return-Path: <devicetree+bounces-8465-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 867887C8457
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 13:25:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B7A701C20A81
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 11:25:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B7A513AC9;
	Fri, 13 Oct 2023 11:25:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D8E913AC2
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 11:25:18 +0000 (UTC)
Received: from mail.andi.de1.cc (unknown [IPv6:2a02:c205:3004:2154::1])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E76691;
	Fri, 13 Oct 2023 04:25:16 -0700 (PDT)
Received: from p5dc58bc7.dip0.t-ipconnect.de ([93.197.139.199] helo=aktux)
	by mail.andi.de1.cc with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <andreas@kemnade.info>)
	id 1qrGHx-004ueB-FE; Fri, 13 Oct 2023 13:25:05 +0200
Date: Fri, 13 Oct 2023 13:25:03 +0200
From: Andreas Kemnade <andreas@kemnade.info>
To: =?UTF-8?B?UMOpdGVy?= Ujfalusi <peter.ujfalusi@gmail.com>
Cc: Tony Lindgren <tony@atomide.com>, bcousson@baylibre.com,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 lgirdwood@gmail.com, broonie@kernel.org, perex@perex.cz, tiwai@suse.com,
 jarkko.nikula@bitmer.com, dmitry.torokhov@gmail.com,
 linux-omap@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org
Subject: Re: [PATCH 1/3] ASoC: ti: omap-mcbsp: Ignore errors for getting
 fck_src
Message-ID: <20231013132503.25d63933@aktux>
In-Reply-To: <db511d14-f2fe-4b4e-bd13-223e7a33f933@gmail.com>
References: <20230705190324.355282-1-andreas@kemnade.info>
	<20230705190324.355282-2-andreas@kemnade.info>
	<7d58d52d-2087-45af-b29e-2515b63ead13@gmail.com>
	<20230920063353.GQ5285@atomide.com>
	<dac768d2-2c66-4d6b-b3d3-d1ef69103c76@gmail.com>
	<20230921121626.GT5285@atomide.com>
	<20231006102348.GK34982@atomide.com>
	<20231006213003.0fbac87a@aktux>
	<20231007062518.GM34982@atomide.com>
	<20231007091156.588d7ba1@aktux>
	<db511d14-f2fe-4b4e-bd13-223e7a33f933@gmail.com>
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
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Thu, 12 Oct 2023 17:41:34 +0300
P=C3=A9ter Ujfalusi <peter.ujfalusi@gmail.com> wrote:

> On 07/10/2023 10:11, Andreas Kemnade wrote:
> >> OK good to hear it works, I'll send out fixes for omap4 and 5, seems
> >> the runtime PM warning is something different.
> >> =20
> >>> omap-mcbsp 40124000.mcbsp: Runtime PM usage count underflow!
> >>> # cat /sys/bus/platform/devices/40124000.mcbsp/power/runtime_status=20
> >>> active
> >>>
> >>> even with no sound.   =20
> >> =20
> > Well, it is a regression caused by your fix. Without it (and not revert=
ing
> > the already applied ignore patch), runtime is properly suspended. Don't=
 know
> > why yet. =20
>=20
> I guess it is because of the pm_runtime_put_sync() in the
> omap2_mcbsp_set_clks_src() around the fclk re-parenting.
> That is a bit dubious thing for sure. We need to disable the device to
> be able to re-parent the fclk but if we disable the device it is going
> to be powered down, right? I think we have appropriate context handling,
> so it might work, but it is certainly not a rock solid code... If you
> have a stream running already, you don't really want to kill the McBSP.
>=20
Ok, so if the device is powered of at omap2_mcbsp_set_clks_src()=20
we get the usage count underflow, and the counter is incremented
immediately again in the runtime put function. So things get out of balance=
...
I'll check Tony's fix here.

> The problem is that this mux is outside of the McBSP IP, so we need a
> system level (iow, clk API) way to change it runtime.
>=20
> What is the machine driver where this happens? If you set the sysclk in
> hw_params of the machine driver, it will be OK, but if you do that in
> probe time then it is likely going to fail as you experienced
>=20
As you see in the other patches of this series,
it is a simple-audio-card with a tlv320aic3x codec
in combination with the mcbsp.

Regards,
Andreas

