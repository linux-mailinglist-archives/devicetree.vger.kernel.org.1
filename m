Return-Path: <devicetree+bounces-8998-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 959F17CB22A
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 20:18:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5773F2816EB
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 18:18:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FC8C33988;
	Mon, 16 Oct 2023 18:18:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9540631A88
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 18:18:36 +0000 (UTC)
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A7A5F9
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 11:18:33 -0700 (PDT)
Received: from i53875b5b.versanet.de ([83.135.91.91] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qsSAc-0007vZ-Ly; Mon, 16 Oct 2023 20:18:26 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Chris Morgan <macroalpha82@gmail.com>, Dragan Simic <dsimic@manjaro.org>
Cc: Guido =?ISO-8859-1?Q?G=FCnther?= <guido.gunther@puri.sm>,
 linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, sebastian.reichel@collabora.com,
 andyshrk@163.com, jagan@edgeble.ai, daniel@ffwll.ch, airlied@gmail.com,
 sam@ravnborg.org, neil.armstrong@linaro.org, megous@megous.com,
 kernel@puri.sm, conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 robh+dt@kernel.org, Chris Morgan <macromorgan@hotmail.com>,
 Ondrej Jirman <megi@xff.cz>
Subject: Re: [PATCH 3/5] drm/panel: st7703: Add Powkiddy RGB30 Panel Support
Date: Mon, 16 Oct 2023 20:18:25 +0200
Message-ID: <2140189.3Lj2Plt8kZ@diego>
In-Reply-To: <e52152b6783e3fce9aebb64a553c6922@manjaro.org>
References:
 <20231013183918.225666-1-macroalpha82@gmail.com>
 <CADcbR4+i_B26g_gLrjTm8dxVzprb-WHRrx=r07wKhcJuei+96w@mail.gmail.com>
 <e52152b6783e3fce9aebb64a553c6922@manjaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_PASS,
	T_SPF_HELO_TEMPERROR autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi,

Am Montag, 16. Oktober 2023, 18:07:52 CEST schrieb Dragan Simic:
> On 2023-10-16 17:52, Chris Morgan wrote:
> > Confirmed that those pending patches DO fix the panel suspend issues.=20
> > Thank you.
>=20
> Awesome, that's great to hear!  Perhaps a "Tested-by" in the original=20
> LKML thread [1] could help with having the patch pulled sooner.
>=20
> Links:
> [1]=20
> https://lore.kernel.org/lkml/33b72957-1062-1b66-85eb-c37dc5ca259b@redhat.=
com/T/
>=20
>=20
> > On Mon, Oct 16, 2023 at 3:41=E2=80=AFAM Guido G=C3=BCnther <guido.gunth=
er@puri.sm>=20
> > wrote:
> >>=20
> >> Hi Chris,
> >> On Fri, Oct 13, 2023 at 01:39:16PM -0500, Chris Morgan wrote:
> >> > From: Chris Morgan <macromorgan@hotmail.com>
> >> >
> >> > The Powkiddy RGB30 4 inch panel is a 4 inch 720x720 DSI panel used in
> >> > the Powkiddy RGB30 handheld gaming device. Add support for it.
> >> >
> >> > TODO: The panel seems to not resume properly from suspend. I've
> >> > confirmed on the other ST7703 based devices it works correctly.

so this TODO item could go away, right?
I can remove it when applying the patch, just want to make sure
all review comments are addressed - only the suspend thing it seems.


Thanks
Heiko



