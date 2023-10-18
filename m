Return-Path: <devicetree+bounces-9798-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F0037CE87B
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 22:06:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9C8F11C209B8
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 20:06:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DFE8D1EB3B;
	Wed, 18 Oct 2023 20:06:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1B981EB3E
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 20:06:24 +0000 (UTC)
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 049F995;
	Wed, 18 Oct 2023 13:06:22 -0700 (PDT)
Received: from i53875b5b.versanet.de ([83.135.91.91] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qtCo1-0004e6-29; Wed, 18 Oct 2023 22:06:13 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, linux-rockchip@lists.infradead.org,
 Chanwoo Choi <chanwoo@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, Will Deacon <will@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, kernel@pengutronix.de,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Robin Murphy <robin.murphy@arm.com>,
 Vincent Legoll <vincent.legoll@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCH v8 00/26] Add perf support to the rockchip-dfi driver
Date: Wed, 18 Oct 2023 22:06:11 +0200
Message-ID: <11026068.BaYr0rKQ5T@diego>
In-Reply-To: <6e43eb6d-351b-4c32-aba9-65ee5b8fd0ed@kernel.org>
References:
 <20231018061714.3553817-1-s.hauer@pengutronix.de>
 <6e43eb6d-351b-4c32-aba9-65ee5b8fd0ed@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi,

Am Mittwoch, 18. Oktober 2023, 17:21:07 CEST schrieb Chanwoo Choi:
> Hi Sascha and Heiko,
> 
> I finished the review from  01 ~ 22 patches.
> - 01-05 patches are merged.
> - 06-22 patches with acked tags.
> 
> 
> Some patches modifies the 'include/soc/rockchip/*' files.
> After getting the ack from rockchip maintainer (Heiko Stuebner),
> I'll merge patches from 06 ~ 22 patches to devfreq.git.

I do hope I caught all patches that needed Acks from that range.
The changes to the soc includes all looked fine, so if I forgot to Ack
a patch from that 1-22 range, here is a blanked

Acked-by: Heiko Stuebner <heiko@sntech.de>

for those.

Thanks for reviewing that big series
Heiko



