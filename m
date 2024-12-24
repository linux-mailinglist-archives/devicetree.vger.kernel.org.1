Return-Path: <devicetree+bounces-133757-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 155649FBB4F
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 10:37:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 61BCC163DD6
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 09:36:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F9D9191F7E;
	Tue, 24 Dec 2024 09:36:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aZU1Y1CX"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D868C1F;
	Tue, 24 Dec 2024 09:36:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735033008; cv=none; b=I5JynCmeuGYqy0lWydGfUCXz14ll9VQ0LeKZ4E0dcRuKL4lpyrEkeu74TH97JUYHNF6oETon8M9CrYjCj9hiUC+DKSpT5sPV+gH/LuGqwSHNMJ/F29IR73/GZDrRGfk6PGXKc5lTdHosiOHaNsbyYgA+356bLtHdJwBRisT9VuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735033008; c=relaxed/simple;
	bh=7CoSrZ3e9UDAyDEUzqMEvSsGqADAYZH5CAhzI1dteeQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rNV56yflo5JyDoIpib7aPRvlDuOthdGZopKMZDvWV4NQrXKI0UYHbj+QuALwXOfyc12lzAejAOAgMfASHDiaqnxw08V54qGwuE8QWO/KvVxeNRGlKFnwMAoPI6N8wAd8X6/69Ph+O3H85NEWUDmCGy6ZONj8Y6EKpLlRYIxKsPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aZU1Y1CX; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1CAC8C4CED0;
	Tue, 24 Dec 2024 09:36:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735033007;
	bh=7CoSrZ3e9UDAyDEUzqMEvSsGqADAYZH5CAhzI1dteeQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aZU1Y1CXY4pRoKTbD8WCPCczFvueol8DojEYbuztpMtqslP4iQ4bFsyJq6vsN1P8B
	 pjwNlA2I0vecEEpZ7vW78FAWmFNK4w6yJHupq1Xq5xZEiHpz8UNKdyJ73M02HSNYFH
	 L3iqHQvwggCASZamlcKJUEghoUWzteeh6HoENmlAy0WK0Bf5HBXbCxvkzV9CAH0Eoh
	 9lR77s24JNPOMBrTtB4yJsiZg0LEkIJGROe4t1VExpKr92qSfbCOEZJklZqXzP83UW
	 QpHNo1tqBrfcCzI2hEEYnrdU6uAN9viKIyKw5ncZQJNSo3Xa2+7fKf7cS+t1Q7pPRJ
	 OFiDFgnZTxaMQ==
Date: Tue, 24 Dec 2024 10:36:44 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, l.stach@pengutronix.de, 
	andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com, 
	kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v3 10/15] dt-bindings: display: rockchip: analogix-dp:
 Add support to get panel from the DP AUX bus
Message-ID: <6ycjcteeornplagnwnl2l3xlsaanvyobg5clr6ie5gewti32ll@fnvu6ankyum3>
References: <20241219080604.1423600-1-damon.ding@rock-chips.com>
 <20241219080604.1423600-11-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20241219080604.1423600-11-damon.ding@rock-chips.com>

On Thu, Dec 19, 2024 at 04:05:59PM +0800, Damon Ding wrote:
> According to Documentation/devicetree/bindings/display/dp-aux-bus.yaml,
> it is a good way to get panel through the DP AUX bus.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> ---
>  .../bindings/display/rockchip/rockchip,analogix-dp.yaml        | 3 +++
>  1 file changed, 3 insertions(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


