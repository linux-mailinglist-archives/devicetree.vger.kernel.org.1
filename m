Return-Path: <devicetree+bounces-11411-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A4A537D5AF4
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 20:54:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 48B911F228CD
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 18:54:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B51843B29F;
	Tue, 24 Oct 2023 18:54:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=salutedevices.com header.i=@salutedevices.com header.b="IZcSgWTv"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A5A6219ED
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 18:54:18 +0000 (UTC)
Received: from mx1.sberdevices.ru (mx2.sberdevices.ru [45.89.224.132])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6189710CB;
	Tue, 24 Oct 2023 11:54:17 -0700 (PDT)
Received: from p-infra-ksmg-sc-msk02 (localhost [127.0.0.1])
	by mx1.sberdevices.ru (Postfix) with ESMTP id 09062120046;
	Tue, 24 Oct 2023 21:54:16 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.sberdevices.ru 09062120046
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=salutedevices.com;
	s=mail; t=1698173656;
	bh=x9rVDlCLNcpHsVxXEdOtmwGrUgGNwNm6JD4aoUAw7qg=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:From;
	b=IZcSgWTvkwmTtwImuccMHElpIUpYzskkonlAsKexfnjHXO7N7A3w3nUXBPYSqcyHA
	 NcMHvdHUGtneozVnAiWOzkjhvjZAxwvHEezXM2jmUCTvDg7aykQ0qJLZSRhaRZjRzE
	 c/blBkxXeZoUOI2cC+CQ/3dpHnJ6+QBIz4637BONJojIZm3oCcUKFjllfOsE4zhagZ
	 ioit55vTqdt1NFE3tEfblrrsWBuMzfhCPysqB3hNAK4Rvo5LgsMajif11ZgqKAWOWk
	 S3SocHDRP2tlcObvtloquLnBECo8Ws2td5rziBdI58peA41q4lvo2yU2dZnXBQVrgY
	 zuo/xlvdmaPHQ==
Received: from p-i-exch-sc-m01.sberdevices.ru (p-i-exch-sc-m01.sberdevices.ru [172.16.192.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1.sberdevices.ru (Postfix) with ESMTPS;
	Tue, 24 Oct 2023 21:54:15 +0300 (MSK)
Received: from localhost (100.64.160.123) by p-i-exch-sc-m01.sberdevices.ru
 (172.16.192.107) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.37; Tue, 24 Oct
 2023 21:54:15 +0300
Date: Tue, 24 Oct 2023 21:54:15 +0300
From: Dmitry Rokosov <ddrokosov@salutedevices.com>
To: Conor Dooley <conor@kernel.org>
CC: <lee@kernel.org>, <pavel@ucw.cz>, <robh+dt@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
	<andy.shevchenko@gmail.com>, <kernel@sberdevices.ru>, <rockosov@gmail.com>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-leds@vger.kernel.org>
Subject: Re: [PATCH v2 03/11] dt-bindings: leds: aw200xx: introduce optional
 hwen-gpios property
Message-ID: <20231024185415.oxj7f4ynomi7ldlq@CAB-WSD-L081021>
References: <20231018182943.18700-1-ddrokosov@salutedevices.com>
 <20231018182943.18700-4-ddrokosov@salutedevices.com>
 <20231019-affection-mountain-7bd5b7eb0ca2@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20231019-affection-mountain-7bd5b7eb0ca2@spud>
User-Agent: NeoMutt/20220415
X-Originating-IP: [100.64.160.123]
X-ClientProxiedBy: p-i-exch-sc-m02.sberdevices.ru (172.16.192.103) To
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

On Thu, Oct 19, 2023 at 03:11:06PM +0100, Conor Dooley wrote:
> On Wed, Oct 18, 2023 at 09:29:35PM +0300, Dmitry Rokosov wrote:
> > Property 'hwen-gpios' is optional, it can be used by the board
> > developer to connect AW200XX LED controller with appropriate poweron
> > GPIO pad.
> 
> If the pad is called "poweron", why is the property called "hwen"?
> 

I have just referred to GPIO as 'poweron gpio', which is my own figure
of speech. In actuality, this pin is officially referred to as 'hwen' in
the datasheet.

> > 
> > Signed-off-by: Dmitry Rokosov <ddrokosov@salutedevices.com>
> > ---
> >  Documentation/devicetree/bindings/leds/awinic,aw200xx.yaml | 5 +++++
> >  1 file changed, 5 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/leds/awinic,aw200xx.yaml b/Documentation/devicetree/bindings/leds/awinic,aw200xx.yaml
> > index feb5febaf361..255eb0563737 100644
> > --- a/Documentation/devicetree/bindings/leds/awinic,aw200xx.yaml
> > +++ b/Documentation/devicetree/bindings/leds/awinic,aw200xx.yaml
> > @@ -41,6 +41,9 @@ properties:
> >      description:
> >        Leds matrix size
> >  
> > +  hwen-gpios:
> > +    maxItems: 1
> > +
> >  patternProperties:
> >    "^led@[0-9a-f]$":
> >      type: object
> > @@ -90,6 +93,7 @@ additionalProperties: false
> >  
> >  examples:
> >    - |
> > +    #include <dt-bindings/gpio/gpio.h>
> >      #include <dt-bindings/leds/common.h>
> >  
> >      i2c {
> > @@ -102,6 +106,7 @@ examples:
> >              #address-cells = <1>;
> >              #size-cells = <0>;
> >              awinic,display-rows = <3>;
> > +            hwen-gpios = <&gpio 3 GPIO_ACTIVE_HIGH>;
> >  
> >              led@0 {
> >                  reg = <0x0>;
> > -- 
> > 2.36.0
> > 



-- 
Thank you,
Dmitry

