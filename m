Return-Path: <devicetree+bounces-19255-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AB6367FA3F3
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 16:01:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DD80E1C20965
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 15:01:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7386730FBD;
	Mon, 27 Nov 2023 15:01:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 47426C6;
	Mon, 27 Nov 2023 07:01:36 -0800 (PST)
Received: from i53875bf8.versanet.de ([83.135.91.248] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r7d6y-0003Fi-1u; Mon, 27 Nov 2023 16:01:24 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>
Cc: hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 devicetree@vger.kernel.org, sebastian.reichel@collabora.com,
 kever.yang@rock-chips.com, chris.obbard@collabora.com,
 s.hauer@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>
Subject:
 Re: [PATCH v2 03/12] drm/rockchip: vop2: set half_block_en bit in all mode
Date: Mon, 27 Nov 2023 16:01:22 +0100
Message-ID: <23093643.0c2gjJ1VT2@diego>
In-Reply-To: <20231122125413.3454489-1-andyshrk@163.com>
References:
 <20231122125316.3454268-1-andyshrk@163.com>
 <20231122125413.3454489-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Am Mittwoch, 22. November 2023, 13:54:13 CET schrieb Andy Yan:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> At first we thought the half_block_en bit in AFBCD_CTRL register
> only work in afbc mode. But the fact is that it control the line
> buffer in all mode(afbc/tile/line), so we need configure it in
> all case.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

This looks common to the rk3568 variant, right, so I guess this should
have a

Fixes: 604be85547ce ("drm/rockchip: Add VOP2 driver")

perhaps?


Heiko



