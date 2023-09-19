Return-Path: <devicetree+bounces-1417-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F342A7A62A3
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 14:19:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5A9FE281841
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 12:19:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59887374EA;
	Tue, 19 Sep 2023 12:17:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5339E374D7
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 12:17:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5C589C433C8;
	Tue, 19 Sep 2023 12:17:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695125851;
	bh=AnY+CRdTGMGEGBw97rD9S5slAnh6NrSxJZWh8YteEN4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qsvuI5WV35+sEZ0Hq0/0DAXkkx3zWAssNZMJE479GqaSA9NY0dRiq3TizNPv93mtT
	 R4CFLDr96PAE0d+aMlXDyJDkZHWUVKXy+fN4R9HdGkb7BLFCje8xKlxt/UjBaVcL20
	 uaJHBIVSLY+YZ4apULZGmNu/hC2DtIDYYIghUE9KVOHq/GXSX3YTiYK2L2l3LbAVkn
	 U7luWtoKbzhxRAifjoi/sZDFuVO1cNJb89ZQ27jZrcZi8+GUzyu8DyuTk3hAIq9C2g
	 3MiDLJ5CLmMGP7AXDUUxqqH6kghdTGMatgOCBrdUNW9wJknyH84wQDc0M9KVsC+7ez
	 CeZ29kTEM7EAw==
Date: Tue, 19 Sep 2023 14:17:24 +0200
From: Shawn Guo <shawnguo@kernel.org>
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Thierry Reding <thierry.reding@gmail.com>,
	Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>, linux-pwm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 2/2] arm64: dts: imx8qxp: add adma_pwm in adma
Message-ID: <20230919121723.GB11740@T480>
References: <20230424082108.26512-1-alexander.stein@ew.tq-group.com>
 <20230424082108.26512-2-alexander.stein@ew.tq-group.com>
 <20230604095038.GA4199@dragon>
 <8261600.T7Z3S40VBb@steina-w>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8261600.T7Z3S40VBb@steina-w>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Thu, Aug 17, 2023 at 10:03:20AM +0200, Alexander Stein wrote:
> Hi Shawn,
> 
> Am Sonntag, 4. Juni 2023, 11:50:38 CEST schrieb Shawn Guo:
> > On Mon, Apr 24, 2023 at 10:21:08AM +0200, Alexander Stein wrote:
> > > Add PWM device and the corresponding clock gating device in adma
> > > subsystem.
> > > 
> > > Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> > 
> > Looks good to me.  I will pick it up after dt-bindings one gets
> > accepted/picked first.
> 
> Did this get missed accidentally? Patch 1 was picked by Thierry already.

Sorry, indeed!

Applied, thanks!

Shawn

