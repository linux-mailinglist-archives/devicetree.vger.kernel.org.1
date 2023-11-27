Return-Path: <devicetree+bounces-19052-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 501857F97EB
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 04:23:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CB4DCB20A13
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 03:23:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CA2820F7;
	Mon, 27 Nov 2023 03:23:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jn12v7RV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D4AB23C8
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 03:23:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5F2CBC433C8;
	Mon, 27 Nov 2023 03:23:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701055430;
	bh=UqWQSWnQlFHOXDahR564UiFu2gmiWejxDC1l3SAOMXM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Jn12v7RVQ4Ba0wCENEspHXptscLisqAvzw+o+5umafgEq9jS4qGcqMPikPwsQz7sR
	 qtNGQV4TjmOKCq6Y0wlWrSWWj/NlBGZGNHAgavlYvZ7RAN+biYUvZlpafsPKXZywLu
	 zO4axk2yWs02724c2KqE7iW0+1crTyirVztjMPJ5wA5i+TKiuxzulY//5dOfjofytm
	 5oUpwUGvB+8XtzDP7CXeLRgDCC1yZKV9jioWaHx/OZQoNr/jCaaLz1T3EQA6xw+00Z
	 iaGzI1T1/9/uC9avyBCRKS5gn/F+l3ZulKiydS6wV67/iQQToM0AUujHVjBQFQWxQg
	 onK/n7Rp2WnzA==
Date: Mon, 27 Nov 2023 11:23:45 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Hugo Villeneuve <hugo@hugovil.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	Hugo Villeneuve <hvilleneuve@dimonoff.com>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: imx8mn-var-som: add fixed 3.3V regulator for
 EEPROM
Message-ID: <20231127032345.GA87953@dragon>
References: <20231030151920.191018-1-hugo@hugovil.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231030151920.191018-1-hugo@hugovil.com>

On Mon, Oct 30, 2023 at 11:19:20AM -0400, Hugo Villeneuve wrote:
> From: Hugo Villeneuve <hvilleneuve@dimonoff.com>
> 
> When the EEPROM is probed, we have this warning:
> 
>     at24 0-0052: supply vcc not found, using dummy regulator
> 
> Add fixed 3.3v regulator to silence the warning.
> 
> Signed-off-by: Hugo Villeneuve <hvilleneuve@dimonoff.com>

Applied, thanks!

