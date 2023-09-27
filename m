Return-Path: <devicetree+bounces-3890-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 58A377B06BD
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 16:28:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 7B50D1C20341
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 14:28:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62F7C38FA6;
	Wed, 27 Sep 2023 14:28:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D987C8D2
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 14:28:26 +0000 (UTC)
Received: from mail.hugovil.com (mail.hugovil.com [162.243.120.170])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 00BB7F9;
	Wed, 27 Sep 2023 07:28:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=hugovil.com
	; s=x; h=Subject:Content-Transfer-Encoding:Mime-Version:Message-Id:Cc:To:From
	:Date:subject:date:message-id:reply-to;
	bh=fY3tgArrYfp7UiQOV9ma8Q9n1cP+zTVSpeExNbzVza4=; b=yWJWqqYe2XRy/t2Old5oNg2JYA
	o3Qs9hrf5uhctU2jXuNEp3ML6UWPC81tXcCdm8pNcXfVq5oaLVVM4OMUKNtJCPpSXII8vrF1ri7dS
	lo2P68h3PhtoRkwxAcEMUG53r+NRbiL0nTvpdUVjue1ASo0GoRyXlnUb3AnuhnT3Uaus=;
Received: from modemcable168.174-80-70.mc.videotron.ca ([70.80.174.168]:34286 helo=pettiford)
	by mail.hugovil.com with esmtpa (Exim 4.92)
	(envelope-from <hugo@hugovil.com>)
	id 1qlVWV-0007Eq-Bw; Wed, 27 Sep 2023 10:28:19 -0400
Date: Wed, 27 Sep 2023 10:28:18 -0400
From: Hugo Villeneuve <hugo@hugovil.com>
To: Rob Herring <robh@kernel.org>
Cc: gregkh@linuxfoundation.org, jirislaby@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 hvilleneuve@dimonoff.com, linux-kernel@vger.kernel.org,
 linux-serial@vger.kernel.org, devicetree@vger.kernel.org
Message-Id: <20230927102818.27b0beff6006392e91380ecd@hugovil.com>
In-Reply-To: <CAL_JsqLpJuxJ1ZbMkwXPrzUAK3Xhfr4zFgSYvmFufyDRF1QjpQ@mail.gmail.com>
References: <20230920152015.1376838-1-hugo@hugovil.com>
	<20230920152015.1376838-4-hugo@hugovil.com>
	<20230921162424.GA435508-robh@kernel.org>
	<20230921123237.b3c50eb12746724a4fd62237@hugovil.com>
	<CAL_JsqLpJuxJ1ZbMkwXPrzUAK3Xhfr4zFgSYvmFufyDRF1QjpQ@mail.gmail.com>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 70.80.174.168
X-SA-Exim-Mail-From: hugo@hugovil.com
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,SPF_HELO_PASS,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
Subject: Re: [PATCH 3/4] dt-bindings: sc16is7xx: add vendor prefix to
 irda-mode-ports property
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on mail.hugovil.com)

On Fri, 22 Sep 2023 14:52:06 -0500
Rob Herring <robh@kernel.org> wrote:

> On Thu, Sep 21, 2023 at 11:32 AM Hugo Villeneuve <hugo@hugovil.com> wrote:
> >
> > On Thu, 21 Sep 2023 11:24:24 -0500
> > Rob Herring <robh@kernel.org> wrote:
> >
> > > On Wed, Sep 20, 2023 at 11:20:14AM -0400, Hugo Villeneuve wrote:
> > > > From: Hugo Villeneuve <hvilleneuve@dimonoff.com>
> > > >
> > > > The NXP-specific "irda-mode-ports" property lacks a proper vendor
> > > > prefix. Add "nxp," prefix to comply with DT best practises.
> > >
> > > The opposite direction would be worth carrying in the driver, but I
> > > don't think adding a vendor prefix is. I would just leave this as-is.
> > >
> > > Rob
> >
> > Hi Rob,
> > I am not following you, can you clarify?
> 
> Just keep the property as-is and don't add a 'nxp,' prefixed version.
> It's not worth carrying the fallback in the driver.
> 
> If you were dropping a vendor prefix from a property, then that's
> worth it because there might be other users added.
> 
> Rob

Hi Rob,
ok, then I will drop this patch as well as the other titled
'serial: sc16is7xx: recognize "nxp,irda-mode-ports" DT property' for
V2.

Hugo.

