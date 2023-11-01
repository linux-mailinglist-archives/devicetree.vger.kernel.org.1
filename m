Return-Path: <devicetree+bounces-13463-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C55C7DE2AE
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 16:09:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0BFDF28129C
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 15:09:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A0F013AF9;
	Wed,  1 Nov 2023 15:09:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="EnWesh9d"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D8C85667
	for <devicetree@vger.kernel.org>; Wed,  1 Nov 2023 15:09:02 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3978DFC;
	Wed,  1 Nov 2023 08:08:58 -0700 (PDT)
Received: from pendragon.ideasonboard.com (aztw-30-b2-v4wan-166917-cust845.vm26.cable.virginm.net [82.37.23.78])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id BE8347F8;
	Wed,  1 Nov 2023 16:08:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1698851319;
	bh=wIFbemmgPDF/9MIgM7vY1BMVQKNYseKOoSt+7lF/XQ8=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=EnWesh9dsin3ENfcwr7lV4shWQ0XgUAwV37K5V+GkW3XEJxGuH0SiV76VyCPmIXRP
	 4l22st9ODXsyjT1N4q+tVSgsfuu4SkpwdmMYowL9T8ZWxrostr/QOcbc6Axf3f6TUU
	 d7iOIvh17v+OiR0SYICWf3HaOLKWq53SbsBGQX8I=
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20231101-subscribe-massive-0a719216375d@spud>
References: <20231101131354.2333498-1-kieran.bingham@ideasonboard.com> <20231101131354.2333498-2-kieran.bingham@ideasonboard.com> <20231101-subscribe-massive-0a719216375d@spud>
Subject: Re: [PATCH v2 1/6] media: dt-bindings: media: imx335: Add supply bindings
From: Kieran Bingham <kieran.bingham@ideasonboard.com>
Cc: devicetree@vger.kernel.org, linux-media@vger.kernel.org, Umang Jain <umang.jain@ideasonboard.com>, Marco Felsch <m.felsch@pengutronix.de>, Paul J. Murphy <paul.j.murphy@intel.com>, Daniele Alessandrelli <daniele.alessandrelli@intel.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE <linux-arm-kernel@lists.infradead.org>, open list <linux-kernel@vger.kernel.org>;
To: Conor Dooley <conor@kernel.org>
Date: Wed, 01 Nov 2023 15:08:54 +0000
Message-ID: <169885133403.1233626.14541601594652787539@ping.linuxembedded.co.uk>
User-Agent: alot/0.10

Quoting Conor Dooley (2023-11-01 14:57:53)
> On Wed, Nov 01, 2023 at 01:13:49PM +0000, Kieran Bingham wrote:
> > Add the bindings for the supply references used on the IMX335.
> >=20
> > Reviewed-by: Umang Jain <umang.jain@ideasonboard.com>
> > Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
> > Signed-off-by: Kieran Bingham <kieran.bingham@ideasonboard.com>
> >=20
> > ---
> > v2:
> >  - Remove the supplies from required properties to prevent ABI breakage.
> >=20
> > Signed-off-by: Kieran Bingham <kieran.bingham@ideasonboard.com>
>=20
> FYI, double signoff, mb your tooling be acting up.

Yup, I have:

~/.gitconfig

[format]
	signOff =3D yes

So when I save out the patches with a changelog - it's erroneously
adding another SoB that I didn't notice until they were sent.

As it's 'after' the --- I hope the double sob will already get stripped
by git am...

>=20
> Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks

--
Kieran

>=20
> Cheers,
> Conor.

