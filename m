Return-Path: <devicetree+bounces-206725-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CB6EB2D5B8
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 10:11:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F2F187283D8
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 08:11:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D78912D6E56;
	Wed, 20 Aug 2025 08:11:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="udoFllzG"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF36D2C235B;
	Wed, 20 Aug 2025 08:11:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755677471; cv=none; b=D+m4v86EgcdAfvB26U2p92OV2+M5bnEp5bfqQzagZ8NRV58gCqyCgQUgVxL484Iivz1ts8gjxz6R+pCwEVjf84AAjQysMkVbi68x7Myx5XMwWY4rUkoPbvBFTLLvn/Wy8un8nJKSTIAfnEaift59KSC5eUiGwrOqd0+vKtzU2W8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755677471; c=relaxed/simple;
	bh=VT+iqwjK5SOfP9/xG8DuerN5YycqDQtO+PK7VX3YosI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=czCdxBJfnDiTS5SZdHhTJoZDUJhY23MPcRAULTcCwUi/i21CyjGDrC/PWqsFUqFxOrCHKeZMCvTveIlhPQa6W2XZJoswwIJaNSyWlnUAjCcDi08hmfZ5aMgQNiAxtAYGXfRbSCTWrwdcZcJx82lr+hRj0JW1VDLMY13i3IRKpzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=udoFllzG; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E32FAC4CEEB;
	Wed, 20 Aug 2025 08:11:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755677471;
	bh=VT+iqwjK5SOfP9/xG8DuerN5YycqDQtO+PK7VX3YosI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=udoFllzGuMux5GX71E9zFu7RtI1omoWXM1h7YrzDfH7MmfStaxXOFfIjGVnht6MRG
	 jF4mpi+AhwvS+EF6Cxr6gqZ/jVZOd3k9zOtPVMwcHJbqWpPZplNTLXgIQFFBXeMNLV
	 q0YsY0Re9cr72ut0K+YToEUJT8jK4CBbX2HG6RpCQe3vB5IKT3B7QJzIE1BgRAPogO
	 6Juh/V6jXixOzyuvWeoGMvZ5Rz4W4yeGq4sQyGsCBWu8iZ+WirqgaUtnqS6wlSLsYB
	 kjpa48VQa4rsntV3g3vaPbuKW0HpnGCqA8eIMkZYEUpjqFZduqSh1Y1Phy3NiCoRBy
	 kvvL4QirQ2KFA==
Date: Wed, 20 Aug 2025 10:11:09 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Chuan Liu <chuan.liu@amlogic.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Kevin Hilman <khilman@baylibre.com>, 
	Jerome Brunet <jbrunet@baylibre.com>, Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 06/13] soc: amlogic: clk-measure: Unify the compatible
 property
Message-ID: <20250820-righteous-slick-ibex-cde2f8@kuoka>
References: <20250815-add-more-socs-to-support-clk_measure-v1-0-59f04ba67457@amlogic.com>
 <20250815-add-more-socs-to-support-clk_measure-v1-6-59f04ba67457@amlogic.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250815-add-more-socs-to-support-clk_measure-v1-6-59f04ba67457@amlogic.com>

On Fri, Aug 15, 2025 at 04:37:32PM +0800, Chuan Liu wrote:
> The clk-measure IPs across Amlogic SoCs have minimal differences, so
> they can be managed with a unified compatible property.
> 
> Signed-off-by: Chuan Liu <chuan.liu@amlogic.com>
> ---
>  drivers/soc/amlogic/meson-clk-measure.c | 23 +----------------------
>  1 file changed, 1 insertion(+), 22 deletions(-)
> 
> diff --git a/drivers/soc/amlogic/meson-clk-measure.c b/drivers/soc/amlogic/meson-clk-measure.c
> index 4d91d463d2a5..6927f87b99cc 100644
> --- a/drivers/soc/amlogic/meson-clk-measure.c
> +++ b/drivers/soc/amlogic/meson-clk-measure.c
> @@ -292,28 +292,7 @@ static int meson_msr_probe(struct platform_device *pdev)
>  
>  static const struct of_device_id meson_msr_match_table[] = {
>  	{
> -		.compatible = "amlogic,meson-gx-clk-measure",

NAK, ABI break, obviously.

Don't ever send patches from your downstream tree but read the rules
ALREADY DOCUMENTED in upstream Linux kerenl and adjust to this process.

Did you read writing bindings?

Best regards,
Krzysztof


