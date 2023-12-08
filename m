Return-Path: <devicetree+bounces-23261-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BECDE80A8EC
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 17:29:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4CE7AB20AF6
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 16:29:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B125374F0;
	Fri,  8 Dec 2023 16:29:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BEE2E10D8;
	Fri,  8 Dec 2023 08:29:19 -0800 (PST)
Received: from i53875b61.versanet.de ([83.135.91.97] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rBdiz-0000NT-9S; Fri, 08 Dec 2023 17:29:13 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>
Cc: hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 devicetree@vger.kernel.org, sebastian.reichel@collabora.com,
 kever.yang@rock-chips.com, chris.obbard@collabora.com,
 Andy Yan <andy.yan@rock-chips.com>
Subject:
 Re: [PATCH v4 15/17] dt-bindings: iommu: rockchip: Add Rockchip RK3588
Date: Fri, 08 Dec 2023 17:29:12 +0100
Message-ID: <4012684.R56niFO833@diego>
In-Reply-To: <20231207080235.652719-1-andyshrk@163.com>
References:
 <20231207075906.651771-1-andyshrk@163.com>
 <20231207080235.652719-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Am Donnerstag, 7. Dezember 2023, 09:02:35 CET schrieb Andy Yan:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> Add a Rockchip RK3588 compatible
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

In the next iteration, please split this out into a separate patch and send
it to the iommu+dt maintainers.

Supporting the iommus on rk3588 can be realized separately and the
patch needs to go through a separate tree anyway.


Thanks
Heiko




