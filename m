Return-Path: <devicetree+bounces-136027-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DB97EA03899
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 08:11:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D0A34162450
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 07:11:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B86F31AAA10;
	Tue,  7 Jan 2025 07:11:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kCMyI1Wb"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EE1B19644B;
	Tue,  7 Jan 2025 07:11:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736233876; cv=none; b=IAIeMK4X/7AP9dU4mx/uDeA5H1KXrEM/4XRxOQLVgM/8gIUipQxDGvKOqF9rc3xYDrZnCUc/KotmDXuju/+DLTGdD0kWmQG7bGYc0YLDYjY4H0dtGPlwLMw2MR6Xf6mA2OZIA0vgwyExUxXhpv291c5KNYq3jXl+MeB/x3eY8DY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736233876; c=relaxed/simple;
	bh=oVzbTsDLgefB50txfb216cLON17wOYvCaNrqmAHQkP4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TJ+Yjoda6dz3+YE35GiYUGoggn2qiTh2IpjAI6+MUUQ7ySeuhYv2MYcXDmGDkNUf8kQ/1RzIc1O9CB7YjRo1gicTWBK8S4Rux0C2TKh4V4KR7WkCAxoaeR/2OeG577FkOojdkXPkDwbaemogC6xkP6oi8mPdf8HK/uE857D/Suw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kCMyI1Wb; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6DC1CC4CED6;
	Tue,  7 Jan 2025 07:11:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736233876;
	bh=oVzbTsDLgefB50txfb216cLON17wOYvCaNrqmAHQkP4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kCMyI1Wb+iprQ+nkKWGTKrkpcuAHe0ZlZ1oVveWfi0D+5ctNTc7W/E+fDz3Q+eyCw
	 zjCen/nSb7ssXXANkY0pVndKU6LMW/HuNj1HSuQ8zsjp2bUQLJhCuSzUGtGMKqOZmp
	 4qetV3tZ7aN6l3ykpfIUugddWgkjehyyDkX6BDagapdCH2uGj+U5nKjfdraegFmm45
	 VfJDYzxImL5uB6c1OAARqGXlA8KTDc1mLnLA7+1RfrhGtRaHalCBT4GaVwvhJS1b2n
	 kwe6KiZiJwLcV0pHmgVY3wBgg3ftCjkEfDtU+SfwQFffdjRSlUDk7TaXM5+IGEcxKs
	 WNNXKnwsZoyZw==
Date: Tue, 7 Jan 2025 08:11:12 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Alexey Charkov <alchark@gmail.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: Add H96 Max V58 TV box
Message-ID: <n4p5ixqoqm6innjzqk5wlcugok737f6yv2zto2sdgpm4ew2bhq@3bhqk3mkott5>
References: <20250106-rk3588-h96-max-v58-v1-0-d25255f851fc@gmail.com>
 <20250106-rk3588-h96-max-v58-v1-1-d25255f851fc@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250106-rk3588-h96-max-v58-v1-1-d25255f851fc@gmail.com>

On Mon, Jan 06, 2025 at 01:07:17AM +0400, Alexey Charkov wrote:
> H96 Max V58 is a compact Rockchip RK3588 based device that ships
> with Android and is meant for use as a TV connected media box.
> 
> Add device tree binding for it.

BTW, this can be written shorter and clearer:
Add Devicetree binding for H96 Max V58: a compact Rockchip RK3588 based
device that ships with Android and is meant for use as a TV connected
media box.

Regardless:

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


