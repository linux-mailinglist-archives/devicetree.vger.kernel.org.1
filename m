Return-Path: <devicetree+bounces-1961-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 502C77A94E2
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 15:43:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6B1F21C209C0
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 13:43:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 070F8B669;
	Thu, 21 Sep 2023 13:43:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E751FB641
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 13:43:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AF20FC4E685;
	Thu, 21 Sep 2023 13:43:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695303788;
	bh=EWdJvIwF6uv0RWl2Gt/yW75HzMTZ/s3XRzzcEYnfV7c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QH0o15QG+AubVg6W1pk+o3mUkrKs+CPmKCMeHbIP1NMLSk+MCAMvzuby9ymnvm0l+
	 kcRFHkUzLgmT18elmBM8npwxFYWov8LWYK4xwcb36u78XXIktx9JgCpO/gFilF26P+
	 sJYdwerntMLkuNJoHidrfuR/Dtf9VoaY6DySkwWlTgCLFS62/iUVO/77lyxW0awSjh
	 e+Na9Fgm4E0lIFMtDuxLp4NuelMx7q3NKWawVBceg+HYdNsMGU0DhVLNJWq9raAmg2
	 uTfklCCHQXvDvD8Gv9HSfn8SKqdxhGrbExHxWVea06k7LponKAdd0t6s+MVBcxKP9q
	 k7+r35VqwpAZw==
Date: Thu, 21 Sep 2023 15:43:05 +0200
From: Vinod Koul <vkoul@kernel.org>
To: Alex Bee <knaerzche@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Lee Jones <lee@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	Johan Jonker <jbx6244@gmail.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org, alsa-devel@alsa-project.org,
	linux-clk@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH 08/31] phy: rockchip-inno-usb2: Split ID interrupt phy
 registers
Message-ID: <ZQxIaU6ITbTGBkVC@matsya>
References: <20230829171647.187787-1-knaerzche@gmail.com>
 <20230829171647.187787-9-knaerzche@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230829171647.187787-9-knaerzche@gmail.com>

On 29-08-23, 19:16, Alex Bee wrote:
> Commit 51a9b2c03dd3 ("phy: rockchip-inno-usb2: Handle ID IRQ") added ID
> detection interrupt registers. However the current implementation assumes
> that falling and rising edge interrupt are always enabled in registers
> spaning over subsequent bits.
> That is not the case for RK312x's version of the phy and this
> implementation can't be used as-is, since there are bits with different
> purpose in between.
> 
> This splits up the register definitions for id_det_en, id_det_en and
> id_det_clr registers in rising and falling edge variants.
> It's required as preparation to support RK312x's Innosilicon usb2 phy as
> well in this driver and matches pretty much to what the vendor does, so I'm
> not expecting issues for other SoCs with that change.

This fails to apply for phy/next

-- 
~Vinod

