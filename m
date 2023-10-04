Return-Path: <devicetree+bounces-5850-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 642C47B821B
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 16:18:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 9A68F2816F4
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 14:18:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D58F818E0A;
	Wed,  4 Oct 2023 14:18:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C473318E06
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 14:18:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3A485C433C9;
	Wed,  4 Oct 2023 14:18:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696429110;
	bh=1K/ESMwnOEMlbEG9ktb1fmA9mzOtZ+tcyEgq1mER8VQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EKeXBf043zVs66pXD4O0UHu/p2vS+VtUJoZpZnPe3MFu7kuCfxXHTK/pn5LcZEU+K
	 unMw32EXe+VpIjDIvFS3HL9RWjcI1xZGri6/Ze2X3BVT7+nrXnjoTvCJ4Xe3vKcrPt
	 Vh6w95bg3VaB7uYsheFHoFDifHDZj3JDsYd8GBKwJPventY43RU5eZgCaLnm24ReOJ
	 G3UYBbpdyenoDpKRSiuhBO6FZdh3mswiL7ss4VgqUSWYH5su1IAU0Pxd0uT/mIy8+v
	 BoK3t4VzubAhNqdF1P43Vu9RTHmJxX3bk7tmi8BCozslpy8M/+uKGtqr/3w6JK3bTf
	 O6ggqxvpyj2uA==
Received: (nullmailer pid 2974241 invoked by uid 1000);
	Wed, 04 Oct 2023 14:18:28 -0000
Date: Wed, 4 Oct 2023 09:18:28 -0500
From: Rob Herring <robh@kernel.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: linux-media@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org, Niklas =?iso-8859-1?Q?S=F6derlund?= <niklas.soderlund@ragnatech.se>, Sakari Ailus <sakari.ailus@linux.intel.com>, Jacopo Mondi <jacopo+renesas@jmondi.org>
Subject: Re: [PATCH] dt-bindings: media: renesas,vin: Fix field-even-active
 spelling
Message-ID: <169642910594.2973718.8843179693428717704.robh@kernel.org>
References: <c999eef0a14c8678f56eb698d27b2243e09afed4.1696328563.git.geert+renesas@glider.be>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c999eef0a14c8678f56eb698d27b2243e09afed4.1696328563.git.geert+renesas@glider.be>


On Tue, 03 Oct 2023 12:22:57 +0200, Geert Uytterhoeven wrote:
> make dt_binding_check:
> 
>     field-active-even: missing type definition
> 
> The property is named "field-even-active", not "field-active-even".
> 
> Fixes: 3ab7801dfab998a2 ("media: dt-bindings: media: rcar-vin: Describe optional ep properties")
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
>  Documentation/devicetree/bindings/media/renesas,vin.yaml | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 

Applied, thanks!


