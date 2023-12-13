Return-Path: <devicetree+bounces-24660-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C052E810CE1
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 10:03:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 640E21F2107C
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 09:03:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 749741EB42;
	Wed, 13 Dec 2023 09:02:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 46ED6B7
	for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 01:02:55 -0800 (PST)
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1rDL8n-00039X-80; Wed, 13 Dec 2023 10:02:53 +0100
Message-ID: <a8188accccc12b524de0e479a1780f8447fb45dd.camel@pengutronix.de>
Subject: Re: [PATCH 1/3] drm/mxsfb: Add an entry for "fsl,imx8mq-lcdif"
From: Lucas Stach <l.stach@pengutronix.de>
To: Fabio Estevam <festevam@gmail.com>
Cc: marex@denx.de, devicetree@vger.kernel.org, conor+dt@kernel.org, Fabio
 Estevam <festevam@denx.de>, kernel@puri.sm,
 dri-devel@lists.freedesktop.org,  robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, martink@posteo.de
Date: Wed, 13 Dec 2023 10:02:51 +0100
In-Reply-To: <CAOMZO5D0rxTmxGZX1Obfm9+t46gW6XpGWDcHDzocQd6p5OokBg@mail.gmail.com>
References: <20231211204138.553141-1-festevam@gmail.com>
	 <9089fb993eb0b2b630784e5b91cb88c1ff2f45fb.camel@pengutronix.de>
	 <CAOMZO5D0rxTmxGZX1Obfm9+t46gW6XpGWDcHDzocQd6p5OokBg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.4 (3.48.4-1.fc38) 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Hi Fabio,

Am Dienstag, dem 12.12.2023 um 15:28 -0300 schrieb Fabio Estevam:
> Hi Lucas,
>=20
> On Tue, Dec 12, 2023 at 3:19=E2=80=AFPM Lucas Stach <l.stach@pengutronix.=
de> wrote:
>=20
> > I don't really like this series. While we don't make any strong
> > guarantees in this way, it breaks booting older kernels with a new DT.
>=20
> I thought we needed only to guarantee that old DTs still run with
> newer kernels, not the other way around.
>=20
That's right. At least in the i.MX world we never made a strong
guarantee in that way.

Still we should not break it deliberately if there isn't a good reason
to do so. And I _feel_ that "DT schema isn't able to express the SoC
integration" isn't a good enough reason to break things.

But maybe there is a way to describe this in the DT schema, that we
aren't aware of yet. I'm not quite up-to-date with all the DT schema
stuff...

Regards,
Lucas

