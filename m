Return-Path: <devicetree+bounces-108858-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C3D7994212
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 10:37:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2ACDB1C25D19
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 08:37:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22E441EABBD;
	Tue,  8 Oct 2024 08:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GfliIxrn"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2C241EABAD
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 08:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728374543; cv=none; b=Hn3/aqo/rpRPB92zAlY0Cbswq5mpxejBHezfwbd9rgfyhPe3w04rBE7kpqqMki2heVqtjAExcrbreHFRgoWeVoF1bTR0QPm2TaCEBx/Q1ICCmTl4fvqt460V+UXHPST1HL6gZ4+wJOpQTEO+/jVsuhWzAgH5GtTYjhgxWf3KHtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728374543; c=relaxed/simple;
	bh=BVQplOIBvWzSs9HUgCqDbBKt9yjHYiBo9NNKiyHjL54=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=vFtKSOAsse08TElGYc1gOxyZwRTQ1aIYTbhP4ecDjToGXyTjr9su2RWuAPM5cD28vOFSXPEWo8picsmKDShJud/Efit/A6fo6AXMcOTCRLX6E/mPKOHOypmFXvGHpQYFqoX/TqBROhT/zOsiPS1/dPGLYf/TWBbkiArKajKHenM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GfliIxrn; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1E46EC4CEC7;
	Tue,  8 Oct 2024 08:02:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728374542;
	bh=BVQplOIBvWzSs9HUgCqDbBKt9yjHYiBo9NNKiyHjL54=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GfliIxrn62uEbQJx49J9a4ET5Rl4c/fniP5x27pLvWZF/SxzlnRX7bVoLj1wDzfD+
	 Ayfj4UoGZ9NFbDWjFb7hqjt+kPTUp9Wgdz6zMAEPLVr/B3oBu0IkVfDN+p+bMOUncJ
	 EYyrwVk6dGEkEEE93NaVL6tj8ptgbO6+yxef5nOPucy/mAcisqwUplyB3lYp/+GWEH
	 KrRsVav2yPQ0EGxpWVMaeD/B8ljNAHbKmLyxLfefpJa208N2pHELg4MLtD1+sHjNXm
	 O5qKnkAhx7F8xax8T4JhAUwC6enrx0zlyQEa771W+Tgi25m0ywEj/oKC0pia3H1ijB
	 kMNavGRlQrIXA==
Date: Tue, 8 Oct 2024 10:02:19 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Hui Wang <hui.wang@canonical.com>
Cc: devicetree@vger.kernel.org, nm@ti.com, ssantosh@kernel.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, s-anna@ti.com, 
	grzegorz.jaszczyk@linaro.org
Subject: Re: [PATCH] dt-bindings: soc: ti: pruss: Fix a typo on
 assigned-clock-parents
Message-ID: <5qysjqz7sj6nucy3bvxiwdoa4osqd77luz7jihe6smkz4qecr6@6kksr2nzhtn3>
References: <20241008045047.24069-1-hui.wang@canonical.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20241008045047.24069-1-hui.wang@canonical.com>

On Tue, Oct 08, 2024 at 12:50:47PM +0800, Hui Wang wrote:
> It appears the assigned-clocks-parents is a typo of
> assigned-clock-parents even if it is in the description.
> 
> Fixes: 25bafac9408f ("dt-bindings: soc: ti: Update TI PRUSS bindings regarding clock-muxes")
> Signed-off-by: Hui Wang <hui.wang@canonical.com>
> ---
>  Documentation/devicetree/bindings/soc/ti/ti,pruss.yaml | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/soc/ti/ti,pruss.yaml b/Documentation/devicetree/bindings/soc/ti/ti,pruss.yaml
> index 3cb1471cc6b6..6d658b020be8 100644
> --- a/Documentation/devicetree/bindings/soc/ti/ti,pruss.yaml
> +++ b/Documentation/devicetree/bindings/soc/ti/ti,pruss.yaml
> @@ -185,7 +185,7 @@ patternProperties:
>                assigned-clock-parents:
>                  maxItems: 1
>                  description: |
> -                  Standard assigned-clocks-parents definition used for selecting
> +                  Standard assigned-clock-parents definition used for selecting

No, just drop the description. It looks redundant - I do not see
anything new said there. There is little point in correcting stuff which
should not be there in the first place.

Best regards,
Krzysztof


