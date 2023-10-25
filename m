Return-Path: <devicetree+bounces-11916-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D6177D7042
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 17:01:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AF30BB20F06
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 15:01:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 629A528E33;
	Wed, 25 Oct 2023 15:01:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="Q3kFInjh"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE0AD2D631;
	Wed, 25 Oct 2023 15:01:05 +0000 (UTC)
Received: from relay6-d.mail.gandi.net (relay6-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::226])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D57711A2;
	Wed, 25 Oct 2023 08:00:56 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPSA id E8F43C000F;
	Wed, 25 Oct 2023 15:00:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1698246054;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=yH7ih/sENBHheaY4sC23vjZWR5QPhO2FB5uDgGmBUEE=;
	b=Q3kFInjh7UIlv2i9yjPV+QU4V85L5o5uVFoPjbdjL//6+E7uHPH6qKo6VtFDApky9mvBZR
	DLu9NkXUD5OxfTo6itNQvOGypacNFCTLN9WVTaPz0FqcOhRwPMyGfxtOcSfDuL7/skp8vX
	Xi0TkyJYpNrsUrKOLGJVtQuYOi+gWoYdjSS/UVjEa2e22L9HGWc4DrymLHD7I/JWSwkFqm
	89zhexE6c2ltXbqig51XVG6K1DOiQZZDzAVHFzwstX5/KXfaw66BE90pcuR8wCZ76roTNp
	RW+shC4dBtvTe/L6r6lvIDt4EzZod8+c2krxeBAs7QIBUwZpDZyN+x2UlhjNHw==
Date: Wed, 25 Oct 2023 17:00:51 +0200
From: Herve Codina <herve.codina@bootlin.com>
To: Jakub Kicinski <kuba@kernel.org>
Cc: "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Andrew Lunn
 <andrew@lunn.ch>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Lee Jones <lee@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, Qiang
 Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>, Liam Girdwood
 <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Jaroslav Kysela
 <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Shengjiu Wang
 <shengjiu.wang@gmail.com>, Xiubo Li <Xiubo.Lee@gmail.com>, Fabio Estevam
 <festevam@gmail.com>, Nicolin Chen <nicoleotsuka@gmail.com>, Christophe
 Leroy <christophe.leroy@csgroup.eu>, Randy Dunlap <rdunlap@infradead.org>,
 netdev@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 alsa-devel@alsa-project.org, Simon Horman <horms@kernel.org>, Christophe
 JAILLET <christophe.jaillet@wanadoo.fr>, Thomas Petazzoni
 <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH v8 00/30] Add support for QMC HDLC, framer
 infrastructure and PEF2256 framer
Message-ID: <20231025170051.27dc83ea@bootlin.com>
In-Reply-To: <20231013164647.7855f09a@kernel.org>
References: <20231011061437.64213-1-herve.codina@bootlin.com>
	<20231013164647.7855f09a@kernel.org>
Organization: Bootlin
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-redhat-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-GND-Sasl: herve.codina@bootlin.com

Hi All, Maintainers

On Fri, 13 Oct 2023 16:46:47 -0700
Jakub Kicinski <kuba@kernel.org> wrote:

> On Wed, 11 Oct 2023 08:14:04 +0200 Herve Codina wrote:
> > Compare to the previous iteration
> >   https://lore.kernel.org/linux-kernel/20230928070652.330429-1-herve.codina@bootlin.com/
> > This v8 series:
> >  - Fixes a race condition
> >  - Uses menuconfig instead of menu and hides CONFIG_GENERIC_FRAMER
> >  - Performs minor changes  
> 
> Which way will those patches go? Via some FSL SoC tree?

This series seems mature now.
What is the plan next in order to have it applied ?

Don't hesitate to tell me if you prefer split series.

Best regards,
Hervé

