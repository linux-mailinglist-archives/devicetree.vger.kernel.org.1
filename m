Return-Path: <devicetree+bounces-23203-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F6FF80A728
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 16:17:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D310D2815ED
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 15:17:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 379FE286A6;
	Fri,  8 Dec 2023 15:17:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EcYhb15z"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A91B225D4
	for <devicetree@vger.kernel.org>; Fri,  8 Dec 2023 15:17:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6C2D5C433C7;
	Fri,  8 Dec 2023 15:17:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702048649;
	bh=hX6GbMkn+q3aw8cUXh7DUuZsJkUeN7K0RoNohm9TiuA=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=EcYhb15zqwEBqikmKpTsvrdG37y++jvmYlI7BurSQR8ud2IF9Gh/z3lX9GLQMell8
	 jhPrY22ycsPYDovQ7F/AaQXBCI3tQa/wEhm1sSGxO5caZFcFAyUKv39ge6c8PrlFg7
	 JyLbbYc/oNcuUw6k/E++8h2o+75bQLEeGr1ahl7cSA4PQz4X1T8Hz8aypq1Q8I+ES7
	 vNEsBY8t50F1H0jFzieNDpFMoZW5KtjHutDKb5RhTscPu73t9a0BvYLdrafcw5y7T1
	 kX6gIIQhPXZjBTYi4THKI/kr0kySau7Djb29E5CNxECMFd+2NC6u8heBTo/GwqMths
	 qYlRVh9itH5gA==
Date: Fri, 8 Dec 2023 16:17:24 +0100
From: Marek =?UTF-8?B?QmVow7pu?= <kabel@kernel.org>
To: Gregory CLEMENT <gregory.clement@bootlin.com>
Cc: Sjoerd Simons <sjoerd@collabora.com>, kernel@collabora.com, Andrew Lunn
 <andrew@lunn.ch>, Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/3] Moxtet bus fixes
Message-ID: <20231208161724.5f4f626a@dellmb>
In-Reply-To: <87fs0ceoif.fsf@BL-laptop>
References: <20231128213536.3764212-1-sjoerd@collabora.com>
	<87fs0ceoif.fsf@BL-laptop>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Fri, 08 Dec 2023 15:51:20 +0100
Gregory CLEMENT <gregory.clement@bootlin.com> wrote:

> Hello Marek and Sjoerd,
> 
> > It seems the moxtet bus support was broken since 21aad8ba615e ("arm64:
> > dts: armada-3720-turris-mox: Add missing interrupt for RTC") for two
> > reasons:
> > * The moxtet irq isn't marked as shared so the driver fails to load if
> >   the rtc driver gets set up first.
> > * The dts change didn't set the IRQ type, so in case the rtc driver got
> >   probed first irq setup ended up wrong (rising instead of falling edge).
> >
> > On top of that the moxtet module isn't auto-loading due to a missing spi
> > table
> >
> > Changes in v2:
> > - Add cover letter
> > - Add patch to set the irq type
> >
> > Sjoerd Simons (3):
> >   bus: moxtet: Mark the irq as shared
> >   bus: moxtet: Add spi device table
> >   arm64: dts: armada-3720-turris-mox: set irq type for RTC  
> 
> I only received the previous patch in my inbox, I plan to apply it. But
> what about the 2 other patches ? Marek will you do a pull request with
> these 2 patches or do you expect that I take them also ?
> 
> Regards,
> 
> Gregory

Gregory, as of yet I've never done a pull request. If you are willing
to take all 3 patches now, please do. In the future I would like to
start doing it for Turris stuff, if you are OK with it.

Marek

