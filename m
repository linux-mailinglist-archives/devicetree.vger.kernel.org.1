Return-Path: <devicetree+bounces-14423-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 57BAB7E4664
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 17:52:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0E1BA281215
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 16:52:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EC4A321B7;
	Tue,  7 Nov 2023 16:52:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=hugovil.com header.i=@hugovil.com header.b="E4JSnKUh"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA91031584
	for <devicetree@vger.kernel.org>; Tue,  7 Nov 2023 16:52:45 +0000 (UTC)
Received: from mail.hugovil.com (mail.hugovil.com [162.243.120.170])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A80593;
	Tue,  7 Nov 2023 08:52:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=hugovil.com
	; s=x; h=Subject:Content-Transfer-Encoding:Mime-Version:Message-Id:Cc:To:From
	:Date:subject:date:message-id:reply-to;
	bh=708Ob4ixPn9dXh/UXke39W1GVSQeJllnYess3uXh1ZA=; b=E4JSnKUhDjGltF8QKmpncpoxy2
	PKZCMOm5I3PelKbhSCrXOFaOdFEx6Y11eb2Q8AlSNPuKRmusmRFS5nZ7eFMi5WEXiaeU+neieCaqL
	wmRXd7ocgWP3vUQ+7ALMy5Rl5hTcXmWB1bXFrOAdJqiVkuGP9vdyUig9ZGmCrzDGwu9g=;
Received: from modemcable168.174-80-70.mc.videotron.ca ([70.80.174.168]:44226 helo=pettiford)
	by mail.hugovil.com with esmtpa (Exim 4.92)
	(envelope-from <hugo@hugovil.com>)
	id 1r0PJc-0008Dj-FA; Tue, 07 Nov 2023 11:52:37 -0500
Date: Tue, 7 Nov 2023 11:52:35 -0500
From: Hugo Villeneuve <hugo@hugovil.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam
 <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, Hugo Villeneuve
 <hvilleneuve@dimonoff.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Message-Id: <20231107115235.bc420de600ab7ac5f49102df@hugovil.com>
In-Reply-To: <c81b364e-a36e-4f56-b2c4-d4ca889281ed@linaro.org>
References: <20231107160122.1648093-1-hugo@hugovil.com>
	<8534fc67-83b3-4f41-a1e3-635866e1dd9c@linaro.org>
	<20231107112804.e854521b47caeafdc642a2f3@hugovil.com>
	<c81b364e-a36e-4f56-b2c4-d4ca889281ed@linaro.org>
X-Mailer: Sylpheed 3.8.0beta1 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
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
X-Spam-Level: 
X-Spam-Report: 
	* -1.0 ALL_TRUSTED Passed through trusted hosts only via SMTP
	* -0.0 T_SCC_BODY_TEXT_LINE No description available.
	* -2.3 NICE_REPLY_A Looks like a legit reply (A)
Subject: Re: [PATCH] arm64: dts: imx8mn-var-som: reorder reg properties
 after compatible strings
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on mail.hugovil.com)

On Tue, 7 Nov 2023 17:37:44 +0100
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:

> On 07/11/2023 17:28, Hugo Villeneuve wrote:
> > On Tue, 7 Nov 2023 17:19:20 +0100
> > Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:
> > 
> >> On 07/11/2023 17:01, Hugo Villeneuve wrote:
> >>> From: Hugo Villeneuve <hvilleneuve@dimonoff.com>
> >>>
> >>> Move reg nodes after the compatible string, to follow DT conventions.
> >>
> >> This is a bit of churn... like patches for checkpatch. But unlike
> >> checkpatch, it's not even documented.
> > 
> > Hi,
> > I do not really understand your point or if I must change
> > something...
> > 
> > But looking at a lot of dts, the reg property is always following the
> > compatible string, so I assumed it was an undocumented convention or
> > best practice...
> > 
> 
> Patches fixing only checkpatch --strict are usually welcomed only in
> staging. But even there no one wants to deal with one patch changing one
> style issue in one file.
> 
> You are doing the same, outside of staging, but relying on undocumented
> practice. Such patches are unnecessary churn. Documenting the practice
> and fixing entire subsystems or groups of devices would be welcomed.
> Fixing line by line some style issue is just effort for maintainers.

Hi,
ok, now it is more clear.

I tried to search in Documentation/ or the web for DT conventions/best
practices, but couldn't find anything relevant, apart from "use YAML
coding style"... Maybe it would be a good thing to add a document for
DT best practices eventually...

Thank you, Hugo.

