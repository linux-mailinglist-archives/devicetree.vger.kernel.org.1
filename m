Return-Path: <devicetree+bounces-12536-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 182A97D9E00
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 18:27:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 43ED31C20FDA
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 16:27:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6F6538F87;
	Fri, 27 Oct 2023 16:27:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=iki.fi header.i=@iki.fi header.b="uvupfuff"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3AFD38BCE
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 16:27:28 +0000 (UTC)
Received: from meesny.iki.fi (meesny.iki.fi [195.140.195.201])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 859451A1;
	Fri, 27 Oct 2023 09:27:26 -0700 (PDT)
Received: from hillosipuli.retiisi.eu (2a00-1190-d1dd-0-c641-1eff-feae-163c.v6.cust.suomicom.net [IPv6:2a00:1190:d1dd:0:c641:1eff:feae:163c])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sailus)
	by meesny.iki.fi (Postfix) with ESMTPSA id 4SH7Np12wpzyRk;
	Fri, 27 Oct 2023 19:27:22 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=meesny;
	t=1698424044;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=X8aenJ5wDk6y60nDvcw5gZib8D5fldE6KI8WRyuTgok=;
	b=uvupfuffJIq7JMSzzhSl1k+hJFOhHHiqOWAxnVJih7Ufyv8uIOjNAb02++478MSEkR0Zqw
	A4vAO9MLdhrGTmBA4e144mgf4uCdJ+kbT9NvJoM10idMfF6ntp2hKLb9fFqb0CDlRlooVm
	D3fVDcCtqVSRyCux5/BQ0ETPBE7AcjM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
	s=meesny; t=1698424044;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=X8aenJ5wDk6y60nDvcw5gZib8D5fldE6KI8WRyuTgok=;
	b=kVec6A7qOexqpD4n520GgiSc/8jLmNvYwAGPKvouBFcg1lKpB8tA4NlRVftkoK0/IbpraP
	gS+qvVnRehGz/uNfIBD+twuNKncbThQiJvYHVdxkixB88hKuTXo/QFhRnqvsUMcMEeAUj5
	NkgUAygK5yCBzmuVwd0Bs1Kbq6T7sUo=
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sailus smtp.mailfrom=sakari.ailus@iki.fi
ARC-Seal: i=1; s=meesny; d=iki.fi; t=1698424044; a=rsa-sha256; cv=none;
	b=p75l9T6uqgMCfCBv1TGLl6rQAjU0WacSpFnXGcJoSw+ZiDuyEUDb4I0ja5woGU9gofIbjJ
	+axp3EkOoQ7Xy52Ngo8kgGkAvGnMR+nOsFCXhBMz6vFDfAUGOhEj7zMe4J9n3ZihV2jJd8
	VwpCKcfEHkdDPLYewr/0/ZPnLcxuAj8=
Received: from valkosipuli.retiisi.eu (valkosipuli.localdomain [192.168.4.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by hillosipuli.retiisi.eu (Postfix) with ESMTPS id 76E3D634C93;
	Fri, 27 Oct 2023 19:27:21 +0300 (EEST)
Date: Fri, 27 Oct 2023 16:27:21 +0000
From: Sakari Ailus <sakari.ailus@iki.fi>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, Paul Elder <paul.elder@ideasonboard.com>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Julien Stephan <jstephan@baylibre.com>, devicetree@vger.kernel.org,
	linux-mediatek@lists.infradead.org
Subject: Re: [PATCH v4 1/3] dt-bindings: media: Add bindings for THine
 THP7312 ISP
Message-ID: <ZTvk6RRXBQib_Qow@valkosipuli.retiisi.eu>
References: <20231017132103.9914-1-laurent.pinchart@ideasonboard.com>
 <20231017132103.9914-2-laurent.pinchart@ideasonboard.com>
 <ZTulSCwfyEF9exu9@valkosipuli.retiisi.eu>
 <20231027121929.GC12144@pendragon.ideasonboard.com>
 <ZTuueXYFeEqqpD6Z@valkosipuli.retiisi.eu>
 <20231027124634.GB19539@pendragon.ideasonboard.com>
 <ZTvOtnbRrykdr7oW@valkosipuli.retiisi.eu>
 <20231027153649.GE12144@pendragon.ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231027153649.GE12144@pendragon.ideasonboard.com>

On Fri, Oct 27, 2023 at 06:36:49PM +0300, Laurent Pinchart wrote:
> On Fri, Oct 27, 2023 at 02:52:38PM +0000, Sakari Ailus wrote:
> > Hi Laurent,
> > 
> > On Fri, Oct 27, 2023 at 03:46:34PM +0300, Laurent Pinchart wrote:
> > > > > > > +  port:
> > > > > > > +    $ref: /schemas/graph.yaml#/$defs/port-base
> > > > > > > +    additionalProperties: false
> > > > > > > +
> > > > > > > +    properties:
> > > > > > > +      endpoint:
> > > > > > > +        $ref: /schemas/media/video-interfaces.yaml#
> > > > > > > +        unevaluatedProperties: false
> > > > > > > +
> > > > > > > +        properties:
> > > > > > > +          data-lanes:
> > > > > > > +            description:
> > > > > > > +              This property is for lane reordering between the THP7312 and the
> > > > > > > +              SoC. The sensor supports either two-lane, or four-lane operation.
> > > > > > > +              If this property is omitted four-lane operation is assumed. For
> > > > > > > +              two-lane operation the property must be set to <1 2>.
> > > > > > 
> > > > > > How are link frequencies determined by the device?
> > > > > 
> > > > > The link frequency is not under direct control of the host. There are
> > > > > registers to select between mode presets, each of them producing a
> > > > > particular link frequency.
> > > > 
> > > > If they are known, one could only allow setting the modes with known-good
> > > > link requencies. This could be added later on, too, affecting systems with
> > > > link-frequencies set. I guess you could also add it now, as optional.
> > > 
> > > I vote for later :-)
> > > 
> > > > Where's the link frequency information available? In documentation or in
> > > > on the firmware API?
> > > 
> > > In the documentation (which is not public I'm afraid).
> > 
> > Could you add this information in the driver?
> > 
> > Co-incidentally, the driver is lacking the LINK_FREQ control. It should be
> > added.
> 
> Oops. Seems I got caught red-handed. I'll fix that (and add the
> PIXEL_RATE control too).

:-)

The PIXEL_RATE is intended to be the pixel rate on the pixel array. The
driver doesn't have HBLANK or VBLANK so is it even useful to have
PIXEL_RATE?

-- 
Sakari Ailus

