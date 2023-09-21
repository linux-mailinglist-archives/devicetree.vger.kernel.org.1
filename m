Return-Path: <devicetree+bounces-2199-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 18E827A9B9B
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 21:02:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9B550B21150
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 19:02:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9864A20310;
	Thu, 21 Sep 2023 18:57:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD129168BD
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 18:57:24 +0000 (UTC)
X-Greylist: delayed 1807 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Thu, 21 Sep 2023 11:57:11 PDT
Received: from connect.vanmierlo.com (fieber.vanmierlo.com [84.243.197.177])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 32AB08A20D
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 11:57:09 -0700 (PDT)
X-Footer: dmFubWllcmxvLmNvbQ==
Received: from roundcube.vanmierlo.com ([192.168.37.37])
	(authenticated user m.brock@vanmierlo.com)
	by connect.vanmierlo.com (Kerio Connect 9.4.2) with ESMTPA;
	Thu, 21 Sep 2023 12:29:13 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Date: Thu, 21 Sep 2023 12:29:13 +0200
From: m.brock@vanmierlo.com
To: Hugo Villeneuve <hugo@hugovil.com>
Cc: gregkh@linuxfoundation.org, jirislaby@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 hvilleneuve@dimonoff.com, linux-kernel@vger.kernel.org,
 linux-serial@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 3/4] dt-bindings: sc16is7xx: add vendor prefix to
 irda-mode-ports property
In-Reply-To: <20230920152015.1376838-4-hugo@hugovil.com>
References: <20230920152015.1376838-1-hugo@hugovil.com>
 <20230920152015.1376838-4-hugo@hugovil.com>
Message-ID: <35710516d0c7f41eebceb16ee51d9d4d@vanmierlo.com>
X-Sender: m.brock@vanmierlo.com
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=1.0 required=5.0 tests=BAYES_05,DATE_IN_PAST_06_12,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hugo Villeneuve wrote on 2023-09-20 17:20:
> --- a/Documentation/devicetree/bindings/serial/nxp,sc16is7xx.txt
> +++ b/Documentation/devicetree/bindings/serial/nxp,sc16is7xx.txt
> @@ -21,8 +21,8 @@ Optional properties:
>    the second cell is used to specify the GPIO polarity:
>      0 = active high,
>      1 = active low.
> -- irda-mode-ports: An array that lists the indices of the port that
> -		   should operate in IrDA mode.
> +- nxp,irda-mode-ports: An array that lists the indices of the port 
> that
> +		       should operate in IrDA mode.
>  - nxp,modem-control-line-ports: An array that lists the indices of
> the port that

Are you sure you want this line removed?

>  				should have shared GPIO lines configured as
>  				modem control lines.
> @@ -80,8 +80,8 @@ Optional properties:
>    the second cell is used to specify the GPIO polarity:
>      0 = active high,
>      1 = active low.
> -- irda-mode-ports: An array that lists the indices of the port that
> -		   should operate in IrDA mode.
> +- nxp,irda-mode-ports: An array that lists the indices of the port 
> that
> +		       should operate in IrDA mode.
>  - nxp,modem-control-line-ports: An array that lists the indices of
> the port that

Same here.

>  				should have shared GPIO lines configured as
>  				modem control lines.

Greets,
Maarten


