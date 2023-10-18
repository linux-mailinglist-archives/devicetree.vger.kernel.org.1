Return-Path: <devicetree+bounces-9796-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8383C7CE86E
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 22:03:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E0FB3B20EF5
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 20:03:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 666151EB40;
	Wed, 18 Oct 2023 20:03:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8ACF51EB24
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 20:03:12 +0000 (UTC)
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3BB2695;
	Wed, 18 Oct 2023 13:03:11 -0700 (PDT)
Received: from i53875b5b.versanet.de ([83.135.91.91] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qtCl0-0004c8-12; Wed, 18 Oct 2023 22:03:06 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, Chanwoo Choi <chanwoo@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, Will Deacon <will@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, kernel@pengutronix.de,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Robin Murphy <robin.murphy@arm.com>,
 Vincent Legoll <vincent.legoll@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Chanwoo Choi <cw00.choi@samsung.com>
Subject: Re: [PATCH v8 16/26] PM / devfreq: rockchip-dfi: Add perf support
Date: Wed, 18 Oct 2023 22:03:04 +0200
Message-ID: <27832786.gRfpFWEtPU@diego>
In-Reply-To: <20231018061714.3553817-17-s.hauer@pengutronix.de>
References:
 <20231018061714.3553817-1-s.hauer@pengutronix.de>
 <20231018061714.3553817-17-s.hauer@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Am Mittwoch, 18. Oktober 2023, 08:17:04 CEST schrieb Sascha Hauer:
> The DFI is a unit which is suitable for measuring DDR utilization, but
> so far it could only be used as an event driver for the DDR frequency
> scaling driver. This adds perf support to the DFI driver.
> 
> Usage with the 'perf' tool can look like:
> 
> perf stat -a -e rockchip_ddr/cycles/,\
> 		rockchip_ddr/read-bytes/,\
> 		rockchip_ddr/write-bytes/,\
> 		rockchip_ddr/bytes/ sleep 1
> 
>  Performance counter stats for 'system wide':
> 
>         1582524826      rockchip_ddr/cycles/
>            1802.25 MB   rockchip_ddr/read-bytes/
>            1793.72 MB   rockchip_ddr/write-bytes/
>            3595.90 MB   rockchip_ddr/bytes/
> 
>        1.014369709 seconds time elapsed
> 
> perf support has been tested on a RK3568 and a RK3399, the latter with
> dual channel DDR.
> 
> Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> Acked-by: Chanwoo Choi <cw00.choi@samsung.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Acked-by: Heiko Stuebner <heiko@sntech.de>




