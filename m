Return-Path: <devicetree+bounces-25087-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 543D28125BF
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 04:07:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0F0D7282BBB
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 03:07:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD8C21375;
	Thu, 14 Dec 2023 03:07:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dy6HTCc0"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B331F111D
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 03:07:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3B590C433C8;
	Thu, 14 Dec 2023 03:07:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702523258;
	bh=QQk6nnDXW2agyfNqd3ynhfOjbLc5mRzE7yLywTmSVcA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dy6HTCc0rikET5ylYnvKy7CPcOVt353QEumi42DGYlkkUj/jekBlRI9LWRmfUhAZG
	 HmFpyXejF/HNkNoqNzrbogp6kLub2ArkT71xP/3o9XqrHXmgT21PpF76mm9/4/ITwG
	 cNZfiCbJPJonjRnXTLMlT4Hk6dZxfMg2eldtk99bPuRaF6d+7YEfnf5z1GDGL6hMDa
	 X11b55dykOskfSMDerGuWKO2P+x9oSQv/4niQ7Poon+FQvkQjE8+B0hQz8KsrByAar
	 a2dJMceiTddaqCD4cliOu+0fAqeN5pwCOg2BTL7qRQg4k6+BExx6ZP9AEJHp3pierg
	 0/Ns5/olP1obg==
Date: Thu, 14 Dec 2023 11:07:32 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: cw00.choi@samsung.com, myungjoo.ham@samsung.com, robh+dt@kernel.org,
	krzysztof.kozlowski@linaro.org, conor+dt@kernel.org,
	devicetree@vger.kernel.org, marex@denx.de, hvilleneuve@dimonoff.com,
	linux-arm-kernel@lists.infradead.org,
	Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH v2 3/3] arm64: dts: imx8mp-dhcom-pdk3: Describe the USB-C
 connector
Message-ID: <20231214030732.GH270430@dragon>
References: <20231212174847.759164-1-festevam@gmail.com>
 <20231212174847.759164-3-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231212174847.759164-3-festevam@gmail.com>

On Tue, Dec 12, 2023 at 02:48:47PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> Describe the PTN5150 USB-C connector to improve the devicetree description
> and fix the following dt-schema warning:
> 
> imx8mp-dhcom-pdk3.dtb: typec@3d: 'port' does not match any of the regexes: 'pinctrl-[0-9]+'
> 	from schema $id: http://devicetree.org/schemas/extcon/extcon-ptn5150.yaml#
> 	
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Applied, thanks!

