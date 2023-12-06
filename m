Return-Path: <devicetree+bounces-22057-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EA61806478
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 03:01:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 11AB8282079
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 02:01:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 699C046BC;
	Wed,  6 Dec 2023 02:01:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d9B9kSBi"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DCD246B7
	for <devicetree@vger.kernel.org>; Wed,  6 Dec 2023 02:01:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C0BCAC433C7;
	Wed,  6 Dec 2023 02:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701828067;
	bh=9OHaRiDicxhXQh9Mc1ZyeyO0pleLHfeIHHRN5jyLtNM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=d9B9kSBiOHAkVFDkotclHHIboTHIhCebaNcJJ8O+NJBA31OKscDy3xaQv1bL7b42D
	 O5T5rd4avutdi9j/v3etMvtKm2MFqQKu36O+EHFiwmmjQKN18Yc6xYkFjoQ1zebBLz
	 vnsO3+jX/Iq0GvU1S4w7GPkvuxgozTbPtx4zOd3fwaGvriK4AyXZM9QfhepD5h1jXX
	 ixiaTM7F3NiHGwbep5AXjtnQ3JhU0d4kIWRuDF+gUcwDDMO5J2XljQPV7rXBKto+sl
	 FFHutRrQ9EaCDO278z/GBS/EsCMoT3DCYxVW+JZidKZ7r8pTZZT1vFvf90LrvYy+lG
	 9ZRqJA/rRwZ0w==
Date: Wed, 6 Dec 2023 10:01:02 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Stefan Agner <stefan@agner.ch>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, Andrew Lunn <andrew@lunn.ch>,
	Florian Fainelli <florian.fainelli@broadcom.com>
Subject: Re: [PATCH v9] ARM: dts: nxp: Fix some common switch mistakes
Message-ID: <20231206020102.GF236001@dragon>
References: <20231127-mv88e6xxx-nxp-v9-1-69f3f783f4af@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231127-mv88e6xxx-nxp-v9-1-69f3f783f4af@linaro.org>

On Mon, Nov 27, 2023 at 04:55:20PM +0100, Linus Walleij wrote:
> Fix some errors in the Marvell MV88E6xxx switch descriptions:
> - switch0@0 is not OK, should be ethernet-switch@0
> - ports should be ethernet-ports
> - port should be ethernet-port
> - phy should be ethernet-phy
> 
> Reviewed-by: Andrew Lunn <andrew@lunn.ch>
> Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>

Applied, thanks!

