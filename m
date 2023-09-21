Return-Path: <devicetree+bounces-2059-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ADA57A996D
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 20:14:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C6FCA282B09
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 18:14:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21AA93F4A5;
	Thu, 21 Sep 2023 17:23:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8590B4447B
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 17:22:58 +0000 (UTC)
Received: from mail.hugovil.com (mail.hugovil.com [162.243.120.170])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED44158C0A;
	Thu, 21 Sep 2023 10:19:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=hugovil.com
	; s=x; h=Subject:Content-Transfer-Encoding:Mime-Version:Message-Id:Cc:To:From
	:Date:subject:date:message-id:reply-to;
	bh=NFF+PoVjyhgtWD7FmDOjIgO2GmI0ihAD+1rw5BwVsZ8=; b=BEz53JSgCDIVR76qrqB2EzybNq
	H+/OEeFax8X9OejHzzo4DUIxxDOBwyZ/zk7iFMJW/QsIQmQSRBapHUbfjj6gcsC85pNyiWXAGI3VQ
	VR2Ln9b/DpSe3bswJ2FjHkW2dTnV++eWUp8JBb2bWJiYNGfzJ72zbKlxOOglYqJEhjbg=;
Received: from modemcable168.174-80-70.mc.videotron.ca ([70.80.174.168]:54768 helo=pettiford)
	by mail.hugovil.com with esmtpa (Exim 4.92)
	(envelope-from <hugo@hugovil.com>)
	id 1qjJrb-00071a-CE; Thu, 21 Sep 2023 09:37:05 -0400
Date: Thu, 21 Sep 2023 09:37:02 -0400
From: Hugo Villeneuve <hugo@hugovil.com>
To: m.brock@vanmierlo.com
Cc: gregkh@linuxfoundation.org, jirislaby@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 hvilleneuve@dimonoff.com, linux-kernel@vger.kernel.org,
 linux-serial@vger.kernel.org, devicetree@vger.kernel.org
Message-Id: <20230921093702.fd28e0dfe06cb5ee61f43494@hugovil.com>
In-Reply-To: <35710516d0c7f41eebceb16ee51d9d4d@vanmierlo.com>
References: <20230920152015.1376838-1-hugo@hugovil.com>
	<20230920152015.1376838-4-hugo@hugovil.com>
	<35710516d0c7f41eebceb16ee51d9d4d@vanmierlo.com>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 70.80.174.168
X-SA-Exim-Mail-From: hugo@hugovil.com
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,SPF_HELO_PASS,
	SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
Subject: Re: [PATCH 3/4] dt-bindings: sc16is7xx: add vendor prefix to
 irda-mode-ports property
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on mail.hugovil.com)

On Thu, 21 Sep 2023 12:29:13 +0200
m.brock@vanmierlo.com wrote:

> Hugo Villeneuve wrote on 2023-09-20 17:20:
> > --- a/Documentation/devicetree/bindings/serial/nxp,sc16is7xx.txt
> > +++ b/Documentation/devicetree/bindings/serial/nxp,sc16is7xx.txt
> > @@ -21,8 +21,8 @@ Optional properties:
> >    the second cell is used to specify the GPIO polarity:
> >      0 = active high,
> >      1 = active low.
> > -- irda-mode-ports: An array that lists the indices of the port that
> > -		   should operate in IrDA mode.
> > +- nxp,irda-mode-ports: An array that lists the indices of the port 
> > that
> > +		       should operate in IrDA mode.
> >  - nxp,modem-control-line-ports: An array that lists the indices of
> > the port that
> 
> Are you sure you want this line removed?

Hi Maarten,
the line "- nxp,modem-control-line-ports..." is not removed, but
because it starts with a dash in the source file, maybe it is confusing
when looking at the patch only?

Hugo.

> 
> >  				should have shared GPIO lines configured as
> >  				modem control lines.
> > @@ -80,8 +80,8 @@ Optional properties:
> >    the second cell is used to specify the GPIO polarity:
> >      0 = active high,
> >      1 = active low.
> > -- irda-mode-ports: An array that lists the indices of the port that
> > -		   should operate in IrDA mode.
> > +- nxp,irda-mode-ports: An array that lists the indices of the port 
> > that
> > +		       should operate in IrDA mode.
> >  - nxp,modem-control-line-ports: An array that lists the indices of
> > the port that
> 
> Same here.
> 
> >  				should have shared GPIO lines configured as
> >  				modem control lines.
> 
> Greets,
> Maarten
> 
> 

