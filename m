Return-Path: <devicetree+bounces-3266-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D92587AE036
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 22:10:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 74E5E281381
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 20:10:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 335D522F1B;
	Mon, 25 Sep 2023 20:10:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16F2F22F12
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 20:10:15 +0000 (UTC)
Received: from out-198.mta1.migadu.com (out-198.mta1.migadu.com [IPv6:2001:41d0:203:375::c6])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6AC710C
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 13:10:14 -0700 (PDT)
Date: Tue, 26 Sep 2023 06:09:27 +1000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1695672611;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=m+xFfBxFFUncwVJKXrgeBDxdx+ofsQpcDpMasXC+yD0=;
	b=UJG+alhxO3YGHw6m+goPdPo2R1H8lh7Y0AXmVpeSBD+n1/ucF8Hq2KRML6rPRE0xDRNzYa
	GlRMzfyR2C6vEJjLnWHvPZ9yMIvEaGJUc0jEk6cTfkPP/6P/oyi54rGs0PTIsK6arhP6Z8
	jfJEjNQ0ejAbZ0gLqI/jYmcaipAXAu7q03EfZ1eZLtgQHOwZd9U278hsbzkUD41woRE87b
	Fhlkpn2T8BjsuYUM/bR8mE/l35LhmFih9LnzOGVDaAc+gCjBfrO5TA/hJ/oIXinA6h+2GV
	VIvmkt5sh99Jf34T3K0aQlduBn0Gt9gDCoA3RnQeqOk0lVKS0g2QoHw5pWveAw==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: John Watts <contact@jookia.org>
To: Paul Cercueil <paul@crapouillou.net>
Cc: dri-devel@lists.freedesktop.org,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Chris Morgan <macromorgan@hotmail.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Christophe Branchereau <cbranchereau@gmail.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [RFC PATCH v3 4/7] drm/panel: nv3052c: Add Fascontek FS035VG158
 LCD display
Message-ID: <ZRHo9-lYq8bOtJN3@titan>
References: <20230925021059.451019-1-contact@jookia.org>
 <20230925021059.451019-5-contact@jookia.org>
 <ebd5808fe3029e46376aea3c25d3770a6b406fdc.camel@crapouillou.net>
 <ZRFRFXCKTIb9x7GW@titan>
 <d63b2a7bf2bbabe41b8e45a6c0a4dc0b1e117bdd.camel@crapouillou.net>
 <ZRFXd3F7eit7x4aJ@titan>
 <a8a68baa0b1abfaeb9aa51d0095f4a4a62ec65fd.camel@crapouillou.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a8a68baa0b1abfaeb9aa51d0095f4a4a62ec65fd.camel@crapouillou.net>
X-Migadu-Flow: FLOW_OUT
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, Sep 25, 2023 at 12:34:55PM +0200, Paul Cercueil wrote:
> Unless you can explain what they do and why they are needed, I'd say
> they are not important :)
> 
> ...
>
> Again, doesn't mean that you have to use these.
> 
> From what I can see, all you need to support your Fascontek panel with
> the nv3052c driver, is to add the SPI ID and compatible strings.

This is not a patch I would be willing to submit. Sorry.

> 
> Cheers,
> -Paul

John.

