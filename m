Return-Path: <devicetree+bounces-2889-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 375E97ACD4D
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 02:51:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 821C32810C8
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 00:51:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68285805;
	Mon, 25 Sep 2023 00:51:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55BFC7F6
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 00:51:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EF22FC433C8;
	Mon, 25 Sep 2023 00:50:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695603063;
	bh=8cRkjTMTmv4RdoWAOU4dPn2va1FbWd9ZOBD/CgXDuuQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=G8AT8ab7T0QoXxp1aE70TgDk8Ozh0Ex4JVN0f+UsPyolDWDBkbGxyFpDIi95cr+Z/
	 xDmz2JapBlNBseMTQY76eaisLIi9Pp99r7n17LShuXD2+FqXzBN6jqBH2sDF13gs3n
	 bO91EFTmdGVK+0Lzqv1FpP2ul/w+VDBqAToVfXDU5yRcuQgoz3y0P+c5P3q3G/lFwO
	 fxx8EP0lo4LF8LWxeZRth02MooM9MYi8RUQQcPxzLYePiYXGoneBtBwqJuTGguJMSd
	 AXBjbhXR8PiKQbc8uwv0Fu7aLlATcCkKAMeReCJN+gQg9iQrlXQgY5TtaLUVs7w6Gx
	 cv0Uy/9WYetIQ==
Date: Mon, 25 Sep 2023 08:50:52 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Tim Harvey <tharvey@gateworks.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	Vladimir Oltean <vladimir.oltean@nxp.com>
Subject: Re: [PATCH v2] ARM: dts: imx6qdl-gw5904: add internal mdio nodes
Message-ID: <20230925005052.GY7231@dragon>
References: <20230828192615.1202078-1-tharvey@gateworks.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230828192615.1202078-1-tharvey@gateworks.com>

On Mon, Aug 28, 2023 at 12:26:15PM -0700, Tim Harvey wrote:
> Complete the switch definition by adding the internal mdio nodes.
> 
> This does not change behavior on Linux but is required if the dt is used
> for U-Boot which requires the internal PHY ports to be defined for
> DSA.
> 
> Signed-off-by: Tim Harvey <tharvey@gateworks.com>
> Reviewed-by: Vladimir Oltean <vladimir.oltean@nxp.com>

Applied, thanks!

