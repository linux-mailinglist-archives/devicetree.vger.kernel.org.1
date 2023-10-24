Return-Path: <devicetree+bounces-11412-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 210887D5AFD
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 20:56:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 522761C20A97
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 18:56:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D994A3B2A8;
	Tue, 24 Oct 2023 18:56:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=salutedevices.com header.i=@salutedevices.com header.b="RqHVRAC3"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEEB1219ED
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 18:56:40 +0000 (UTC)
Received: from mx1.sberdevices.ru (mx2.sberdevices.ru [45.89.224.132])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 133D0A6;
	Tue, 24 Oct 2023 11:56:39 -0700 (PDT)
Received: from p-infra-ksmg-sc-msk02 (localhost [127.0.0.1])
	by mx1.sberdevices.ru (Postfix) with ESMTP id B59D0120046;
	Tue, 24 Oct 2023 21:56:37 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.sberdevices.ru B59D0120046
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=salutedevices.com;
	s=mail; t=1698173797;
	bh=naFGpJDVgQfr3ddLjEs1a+Y7mXYdp8rLT1hvnu+LyxE=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:From;
	b=RqHVRAC3JhqwsufFpiXSmn//sM7+Y6nbudl68bFHjokJzgOks/bCpLk3kgYQzKoqk
	 c4yIKd60G769WLQ7v7Lb3ROV+GiIaIFPRQfLBDeQZbp+jKr+zSlwuMM3elj/QeKuwm
	 SoscwNAg9Hgr7dnJsMhSW2engr0JwB3zvog62C0ecS2sE5M20zoujtbMIdNZLWYzJj
	 zMkFPItamNwzgydqNiTicH1k0RdJJaQAOFlJEmoaCHkPrY9WCRU3qMuE2Ovp3OBXy6
	 yCdcFqdAn0rb6Oxwxi7/CIDkGqzpXadrRVZg5WOfmINf0z8atKsHJmff6kSd8IFGRJ
	 KgWeZpGdcG+Dg==
Received: from p-i-exch-sc-m01.sberdevices.ru (p-i-exch-sc-m01.sberdevices.ru [172.16.192.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1.sberdevices.ru (Postfix) with ESMTPS;
	Tue, 24 Oct 2023 21:56:37 +0300 (MSK)
Received: from localhost (100.64.160.123) by p-i-exch-sc-m01.sberdevices.ru
 (172.16.192.107) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.37; Tue, 24 Oct
 2023 21:56:37 +0300
Date: Tue, 24 Oct 2023 21:56:37 +0300
From: Dmitry Rokosov <ddrokosov@salutedevices.com>
To: Conor Dooley <conor@kernel.org>
CC: <lee@kernel.org>, <pavel@ucw.cz>, <robh+dt@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
	<andy.shevchenko@gmail.com>, <kernel@sberdevices.ru>, <rockosov@gmail.com>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-leds@vger.kernel.org>
Subject: Re: [PATCH v2 11/11] dt-bindings: leds: aw200xx: fix led pattern and
 add reg constraints
Message-ID: <20231024185637.5v6yycfpjnu7xka6@CAB-WSD-L081021>
References: <20231018182943.18700-1-ddrokosov@salutedevices.com>
 <20231018182943.18700-12-ddrokosov@salutedevices.com>
 <20231019-clarify-unstopped-71fe018b6a8b@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20231019-clarify-unstopped-71fe018b6a8b@spud>
User-Agent: NeoMutt/20220415
X-Originating-IP: [100.64.160.123]
X-ClientProxiedBy: p-i-exch-sc-m01.sberdevices.ru (172.16.192.107) To
 p-i-exch-sc-m01.sberdevices.ru (172.16.192.107)
X-KSMG-Rule-ID: 10
X-KSMG-Message-Action: clean
X-KSMG-AntiSpam-Lua-Profiles: 180848 [Oct 24 2023]
X-KSMG-AntiSpam-Version: 6.0.0.2
X-KSMG-AntiSpam-Envelope-From: ddrokosov@salutedevices.com
X-KSMG-AntiSpam-Rate: 0
X-KSMG-AntiSpam-Status: not_detected
X-KSMG-AntiSpam-Method: none
X-KSMG-AntiSpam-Auth: dkim=none
X-KSMG-AntiSpam-Info: LuaCore: 543 543 1e3516af5cdd92079dfeb0e292c8747a62cb1ee4, {Track_E25351}, {Tracking_from_domain_doesnt_match_to}, 127.0.0.199:7.1.2;d41d8cd98f00b204e9800998ecf8427e.com:7.1.1;salutedevices.com:7.1.1;p-i-exch-sc-m01.sberdevices.ru:5.0.1,7.1.1;100.64.160.123:7.1.2, FromAlignment: s, ApMailHostAddress: 100.64.160.123
X-MS-Exchange-Organization-SCL: -1
X-KSMG-AntiSpam-Interceptor-Info: scan successful
X-KSMG-AntiPhishing: Clean
X-KSMG-LinksScanning: Clean
X-KSMG-AntiVirus: Kaspersky Secure Mail Gateway, version 2.0.1.6960, bases: 2023/10/24 17:39:00 #22277133
X-KSMG-AntiVirus-Status: Clean, skipped

On Thu, Oct 19, 2023 at 03:08:38PM +0100, Conor Dooley wrote:
> On Wed, Oct 18, 2023 at 09:29:43PM +0300, Dmitry Rokosov wrote:
> > AW200XX controllers have the capability to declare more than 0xf LEDs,
> > therefore, it is necessary to accept LED names using an appropriate
> > regex pattern.
> > 
> > The register offsets can be adjusted within the specified range, with
> > the maximum value corresponding to the highest number of LEDs that can
> > be connected to the controller.
> 
> Do all of these controllers have identical max numbers of LEDs?

Nope... I believe you are hinting at some conditional logic based on the
value of 'compatible'. I will figure it out and send the appropriate
implementation in the next version.

> > 
> > Fixes: e338a05e76ca ("dt-bindings: leds: Add binding for AW200xx")
> > Signed-off-by: Dmitry Rokosov <ddrokosov@salutedevices.com>
> > ---
> >  .../devicetree/bindings/leds/awinic,aw200xx.yaml       | 10 ++++++----
> >  1 file changed, 6 insertions(+), 4 deletions(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/leds/awinic,aw200xx.yaml b/Documentation/devicetree/bindings/leds/awinic,aw200xx.yaml
> > index efb18ddce383..677c73aa6232 100644
> > --- a/Documentation/devicetree/bindings/leds/awinic,aw200xx.yaml
> > +++ b/Documentation/devicetree/bindings/leds/awinic,aw200xx.yaml
> > @@ -42,16 +42,18 @@ properties:
> >      maxItems: 1
> >  
> >  patternProperties:
> > -  "^led@[0-9a-f]$":
> > +  "^led@[0-9a-f]+$":
> >      type: object
> >      $ref: common.yaml#
> >      unevaluatedProperties: false
> >  
> >      properties:
> >        reg:
> > -        description:
> > -          LED number
> > -        maxItems: 1
> > +        items:
> > +          description:
> > +            LED number
> > +          minimum: 0
> > +          maximum: 108
> >  
> >        led-max-microamp:
> >          default: 9780
> > -- 
> > 2.36.0
> > 



-- 
Thank you,
Dmitry

