Return-Path: <devicetree+bounces-29614-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F1E48823E2B
	for <lists+devicetree@lfdr.de>; Thu,  4 Jan 2024 10:07:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A5F6D1F2264E
	for <lists+devicetree@lfdr.de>; Thu,  4 Jan 2024 09:07:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55C391EA90;
	Thu,  4 Jan 2024 09:07:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7EBD1EA95
	for <devicetree@vger.kernel.org>; Thu,  4 Jan 2024 09:07:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
Received: from i53875a56.versanet.de ([83.135.90.86] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rLJh3-00027h-O1; Thu, 04 Jan 2024 10:07:13 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Dragan Simic <dsimic@manjaro.org>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 Kyle Copperfield <kmcopper@danwin1210.me>
Subject:
 Re: [PATCH] arm64: dts: rockchip: Add cache information to the SoC dtsi for
 RK3399
Date: Thu, 04 Jan 2024 10:07:12 +0100
Message-ID: <2157455.yIU609i1g2@diego>
In-Reply-To: <fc03e6046bba49b6a4b0794412e0bac6@manjaro.org>
References:
 <be3cbcae5c40fa72a52845d30dcc66c847a98cfa.1702616304.git.dsimic@manjaro.org>
 <0476656a-6d3d-4662-879a-1caf0efb4d9e@linaro.org>
 <fc03e6046bba49b6a4b0794412e0bac6@manjaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Am Donnerstag, 4. Januar 2024, 09:55:35 CET schrieb Dragan Simic:
> On 2024-01-04 09:51, Krzysztof Kozlowski wrote:
> > On 04/01/2024 09:50, Dragan Simic wrote:
> >> Hello,
> >> 
> >> Just checking, is there something preventing this patch from becoming
> >> accepted?  I'd appreciate if you'd provide some feedback and let me 
> >> know
> >> if there's something in the patch that needs adjusting.
> > 
> > Merge window? Is it a fix? If not, the cutoff is around rc5-rc7,
> > depending on your SoC maintainer preferences.
> 
> Ah, I see, thanks for the clarification.  It isn't a bugfix, so I'll 
> send the patch again during the next merge window.

no need to resend.

The main thing holding the patch back was xmas ;-) .

But as Krzysztof wrote, the merge-window is upon us, so I'll pick this up
for 6.9 .

Thanks
Heiko




