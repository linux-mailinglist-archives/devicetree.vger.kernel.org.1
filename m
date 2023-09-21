Return-Path: <devicetree+bounces-2061-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 84D407A9975
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 20:15:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5300D1C213F4
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 18:15:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2BE644473;
	Thu, 21 Sep 2023 17:23:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1240C4449A
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 17:23:00 +0000 (UTC)
Received: from mail.hugovil.com (mail.hugovil.com [162.243.120.170])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A8B358C17;
	Thu, 21 Sep 2023 10:19:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=hugovil.com
	; s=x; h=Subject:Content-Transfer-Encoding:Mime-Version:Message-Id:Cc:To:From
	:Date:subject:date:message-id:reply-to;
	bh=hZzmjiPkjoKwhwTOfPzJiXq9Wl0FH1yszqaV+rmX80I=; b=gX8hIuAbTho75SiIiwYcncRz4a
	cf3Y54Xck0I4KLMTUmgwld9ikK+Hp0v/f89qjXDNwFSHXiERB9NDFRApJjYECpTtPztClR2E2klT1
	ADSvz1VvELePeyHhQNvbGVXEATXAwy4AeBV/fUaVlStIo6kz0YZ6jy3J6mO3rg0MeUD4=;
Received: from modemcable168.174-80-70.mc.videotron.ca ([70.80.174.168]:49420 helo=pettiford)
	by mail.hugovil.com with esmtpa (Exim 4.92)
	(envelope-from <hugo@hugovil.com>)
	id 1qjMbW-000117-8c; Thu, 21 Sep 2023 12:32:38 -0400
Date: Thu, 21 Sep 2023 12:32:37 -0400
From: Hugo Villeneuve <hugo@hugovil.com>
To: Rob Herring <robh@kernel.org>
Cc: gregkh@linuxfoundation.org, jirislaby@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 hvilleneuve@dimonoff.com, linux-kernel@vger.kernel.org,
 linux-serial@vger.kernel.org, devicetree@vger.kernel.org
Message-Id: <20230921123237.b3c50eb12746724a4fd62237@hugovil.com>
In-Reply-To: <20230921162424.GA435508-robh@kernel.org>
References: <20230920152015.1376838-1-hugo@hugovil.com>
	<20230920152015.1376838-4-hugo@hugovil.com>
	<20230921162424.GA435508-robh@kernel.org>
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

On Thu, 21 Sep 2023 11:24:24 -0500
Rob Herring <robh@kernel.org> wrote:

> On Wed, Sep 20, 2023 at 11:20:14AM -0400, Hugo Villeneuve wrote:
> > From: Hugo Villeneuve <hvilleneuve@dimonoff.com>
> > 
> > The NXP-specific "irda-mode-ports" property lacks a proper vendor
> > prefix. Add "nxp," prefix to comply with DT best practises.
> 
> The opposite direction would be worth carrying in the driver, but I 
> don't think adding a vendor prefix is. I would just leave this as-is.
> 
> Rob

Hi Rob,
I am not following you, can you clarify?

Hugo.

