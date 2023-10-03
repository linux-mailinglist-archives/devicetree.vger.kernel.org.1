Return-Path: <devicetree+bounces-5418-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E32577B6485
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 10:40:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 41057B208EB
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 08:40:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32F3EDDA7;
	Tue,  3 Oct 2023 08:40:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83D4DDDA6
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 08:40:32 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net [217.70.183.195])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D46D9A3;
	Tue,  3 Oct 2023 01:40:29 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 2FBB660005;
	Tue,  3 Oct 2023 08:40:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1696322428;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=YD9yrtCBZymzxDesfTQGfoyNHVBYtaajgX0MUzZwAM4=;
	b=it9nvDErLS3Dkumv3tt0+U8MyhdevvVnbQwCziN4asSKSbyARA7h9PvLo2sfSHeQ6e5jnb
	JyeqldpAwATrCmH2XtT9x8Uw3Kn+BtEvm96fyJkzGiTW/dj/1eeamkmoliQ0dLQcNsp9Cr
	tC5Jj9xnsOUIYT1LC0IlFPyGpWbUXbncdlz2ve6LVYaAWeKEFaSJ1J1fpJHRSmMie8N2C5
	peoKR0TaXLkVUFr6dYTvhoEAReeN2XF9TrNgVavMYJcRI9yj8lskfA4XGUssgqclYZoHzi
	WOkyfGmE4MfbaGOXlwkNmtNL2iCsou3zL9/P1oQ4sDqQMQb/tvQiK4/TcmOv2w==
Date: Tue, 3 Oct 2023 10:40:22 +0200
From: Mehdi Djait <mehdi.djait@bootlin.com>
To: Rob Herring <robh@kernel.org>
Cc: mchehab@kernel.org, heiko@sntech.de, ezequiel@vanguardiasur.com.ar,
	hverkuil-cisco@xs4all.nl, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, paul.kocialkowski@bootlin.com,
	miquel.raynal@bootlin.com, maxime.chevallier@bootlin.com,
	luca.ceresoli@bootlin.com, thomas.petazzoni@bootlin.com,
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v6 1/3] media: dt-bindings: media: add rockchip-vip
Message-ID: <ZRvTdm5cTMT1tHlM@pc-86.home>
References: <cover.1695981374.git.mehdi.djait@bootlin.com>
 <6fa90df50c201dec70165c5138bc837f5a8829b5.1695981374.git.mehdi.djait@bootlin.com>
 <20231002171801.GA1942512-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231002171801.GA1942512-robh@kernel.org>
X-GND-Sasl: mehdi.djait@bootlin.com
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hello Rob,

Thank you for the review!

On Mon, Oct 02, 2023 at 12:18:01PM -0500, Rob Herring wrote:
> On Fri, Sep 29, 2023 at 12:08:00PM +0200, Mehdi Djait wrote:
> > Add a documentation for the Rockchip Camera Interface controller
> > binding.
> > 
> > This controller can be found on platforms such as the PX30 or
> > RK1808, RK3128 and RK3288. The PX30 is the only platform
> > supported so far.
> > 
> > Signed-off-by: Mehdi Djait <mehdi.djait@bootlin.com>
> > ---
> >  .../bindings/media/rockchip-vip.yaml          | 91 +++++++++++++++++++
> 
> filename should match compatible.
> 
> >  1 file changed, 91 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/media/rockchip-vip.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/media/rockchip-vip.yaml b/Documentation/devicetree/bindings/media/rockchip-vip.yaml
> > new file mode 100644
> > index 000000000000..33c603209c39
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/media/rockchip-vip.yaml
> > @@ -0,0 +1,91 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/media/rockchip-vip.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Rockchip VIP Camera Interface
> > +
> > +maintainers:
> > +  - Mehdi Djait <mehdi.djait@bootlin.com>
> > +
> > +description: |-
> 
> Don't need '|-'.
> 
> > +  Rockchip Video Input Processor present on PX30, RK1808, RK3128 and RK3288
> 
> Write complete sentences.
> 
> 
> 
> > +
> > +properties:
> > +  compatible:
> > +    const: rockchip,px30-vip
> 
> I see 4 SoCs listed, but only 1 compatible.
> 

PX30 is the only SoC I have used to test the driver. What is the best
way to proceed here ? Change the description ?

ack for all the other comments. 

--
Kind Regards
Mehdi Djait

