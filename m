Return-Path: <devicetree+bounces-177300-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E5340AB6F02
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 17:10:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DF00D1BA12F4
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 15:09:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CBC61DAC92;
	Wed, 14 May 2025 15:08:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TzaJryF4"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3F4813AA53;
	Wed, 14 May 2025 15:08:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747235318; cv=none; b=HwmPIF0OAF26PoqjdjQ6iP533fTBG84WgMZoKye7dpm9F2Rdpda8Ln+rmjVUMJzE3xKq0/wiL2Ydmt6ZC8xuzMqyIb+eq9T1eehZ6T7JBndT6pHT9k3sYZezMQBVlhz2s0UJ3eGG4l8D+o8mdd0YsOOcBrEpS9kW4TofMlbrrzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747235318; c=relaxed/simple;
	bh=dkUlkhBMN1t5KmsuDVUB+kb6HjGenkUO4srDC9L1fQ0=;
	h=Message-ID:Date:From:To:Subject:In-Reply-To:References:Cc; b=L4uWHLknK5G/7+HvRXbmgCmG112omXjHo3z8fM/LABP2oaQT9gvLltEXeRreRTwItE86CSBybt/8pp9Ag0UI/5LUTVyfRg1ogq8JTOFDy2GxOUm3tbiT5tXnHgC3DlgS+CflFyNppcZ2loxdArOPa2yZogIrUqo+ogoYoRgKFkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TzaJryF4; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0BEBEC4CEE3;
	Wed, 14 May 2025 15:08:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747235318;
	bh=dkUlkhBMN1t5KmsuDVUB+kb6HjGenkUO4srDC9L1fQ0=;
	h=Date:From:To:Subject:In-Reply-To:References:Cc:From;
	b=TzaJryF4QEbqCY9JT5vXe7oyF7HcBzwcsyH8Dy8zfU1XzVYj0rUfz7AAI4slg/IKW
	 k19zDKyuLgxgcmcG9Hc2NoKOliC1Xhhok1Dfd3/x9niP13rJYiiRf8qCNdLsYjmRx5
	 rx1NmjYLze6uOKuSr5K/ptr5f0epDCoNDpvjiUB43rdUaUecMqy6YKdHj/XSGHSSnr
	 x02MaB7brWzbHBl5ye48rg98iPOxwlJdgtrx3qKqArufS7ATM9VCcwxd+AEjvuXKSx
	 S/6L+hpht9awAX4As2CKVy2Yv5lXW8AwgGx8PJs0UuBebJFab5v82GFpoP6cFGtzwl
	 74tFcd5pmyqPA==
Message-ID: <a509a73e96ff6875c9c5d09b6f12d35e@kernel.org>
Date: Wed, 14 May 2025 15:08:35 +0000
From: "Maxime Ripard" <mripard@kernel.org>
To: "Ryan Walklin" <ryan@testtoast.com>
Subject: Re: [PATCH v10 01/11] drm: sun4i: de2/de3: add mixer version enum
In-Reply-To: <20250511104042.24249-2-ryan@testtoast.com>
References: <20250511104042.24249-2-ryan@testtoast.com>
Cc: devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org, linux-sunxi@lists.linux.dev, "Andre
 Przywara" <andre.przywara@arm.com>, "Chen-Yu Tsai" <wens@csie.org>, "Chris
 Morgan" <macroalpha82@gmail.com>, "Conor Dooley" <conor+dt@kernel.org>, "Daniel
 Vetter" <daniel@ffwll.ch>, "David Airlie" <airlied@gmail.com>, "Dmitry
 Baryshkov" <dmitry.baryshkov@linaro.org>, "Hironori KIKUCHI" <kikuchan98@gmail.com>, "Jernej
 Skrabec" <jernej.skrabec@gmail.com>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Maarten
 Lankhorst" <maarten.lankhorst@linux.intel.com>, "Maxime Ripard" <mripard@kernel.org>, "Michael
 Turquette" <mturquette@baylibre.com>, "Philippe Simons" <simons.philippe@gmail.com>, "Rob
 Herring" <robh@kernel.org>, "Samuel Holland" <samuel@sholland.org>, "Stephen
 Boyd" <sboyd@kernel.org>, "Thomas Zimmermann" <tzimmermann@suse.de>
Content-Transfer-Encoding: 7bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

On Sun, 11 May 2025 22:31:10 +1200, Ryan Walklin wrote:
> From: Jernej Skrabec <jernej.skrabec@gmail.com>
> 
> The Allwinner DE2 and DE3 display engine mixers are currently identified
> by a simple boolean flag. This will not scale to support additional DE
> variants.
> 
> [ ... ]

Acked-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

