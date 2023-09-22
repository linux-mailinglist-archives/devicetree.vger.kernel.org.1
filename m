Return-Path: <devicetree+bounces-2531-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F30CB7AB28B
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 15:09:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 4D498B209F3
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 13:09:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 694402770A;
	Fri, 22 Sep 2023 13:09:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE3651E52E
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 13:09:07 +0000 (UTC)
Received: from mail.hugovil.com (mail.hugovil.com [162.243.120.170])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5CA35C6;
	Fri, 22 Sep 2023 06:09:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=hugovil.com
	; s=x; h=Subject:Content-Transfer-Encoding:Mime-Version:Message-Id:Cc:To:From
	:Date:subject:date:message-id:reply-to;
	bh=X/arGO0320WI56/NWzmZwBHeAxSFRsOgfojU/vo4uVM=; b=Z/PGexMNc+ltvpSub8seqze/eT
	jmYU6PrUBtBeF3KABjNYyHMZhjufHwO8FE3z3JZbJ50OZKhv3cpVTbwHCjU0ooh9hLeSkSjtvdcka
	gAyLkN19Vl6j62qos3uqeJj1YovdVPo0EhZbJp+Jbmk8Vl2i+vWxeRsuStoP0SDCPv3E=;
Received: from modemcable168.174-80-70.mc.videotron.ca ([70.80.174.168]:54448 helo=pettiford)
	by mail.hugovil.com with esmtpa (Exim 4.92)
	(envelope-from <hugo@hugovil.com>)
	id 1qjfu0-00086W-9S; Fri, 22 Sep 2023 09:09:00 -0400
Date: Fri, 22 Sep 2023 09:08:59 -0400
From: Hugo Villeneuve <hugo@hugovil.com>
To: Conor Dooley <conor@kernel.org>
Cc: gregkh@linuxfoundation.org, jirislaby@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 hvilleneuve@dimonoff.com, linux-kernel@vger.kernel.org,
 linux-serial@vger.kernel.org, devicetree@vger.kernel.org
Message-Id: <20230922090859.d451f6d8f8e3b4e7a2364695@hugovil.com>
In-Reply-To: <20230922-awning-repayment-e9f4ec55787d@spud>
References: <20230920152015.1376838-1-hugo@hugovil.com>
	<20230920152015.1376838-5-hugo@hugovil.com>
	<20230921-decorated-patronize-45285045adbf@spud>
	<20230921113040.2dafb3d50cfdd8727de42356@hugovil.com>
	<20230922-awning-repayment-e9f4ec55787d@spud>
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
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_PASS,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.6
Subject: Re: [PATCH 4/4] dt-bindings: sc16is7xx: convert to YAML
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on mail.hugovil.com)

On Fri, 22 Sep 2023 12:35:07 +0100
Conor Dooley <conor@kernel.org> wrote:

> On Thu, Sep 21, 2023 at 11:30:40AM -0400, Hugo Villeneuve wrote:
> > On Thu, 21 Sep 2023 14:45:06 +0100
> > Conor Dooley <conor@kernel.org> wrote:
> > > On Wed, Sep 20, 2023 at 11:20:15AM -0400, Hugo Villeneuve wrote:
> 
> > > > +  clocks:
> > > > +    maxItems: 1
> > > > +    description: Reference to the IC source clock.
> > > 
> > > You could probably drop this, if it only has one clock it's a bit
> > > redundant.
> > 
> > I don't understand, because there is already a 'clocks' property in
> > the examples (and also in my real board DTS file) and if I remove it
> > here it will cause a warning:
> > 
> > serial@51: Unevaluated properties are not allowed ('clocks' was
> > unexpected)
> 
> Sorry, I was talking about the description.

OK, makes sense. I will remove it.

Hugo.


