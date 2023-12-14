Return-Path: <devicetree+bounces-25086-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 811F08125BE
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 04:07:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 29E661F21A6E
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 03:07:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EA2D393;
	Thu, 14 Dec 2023 03:07:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UM4Zkqgf"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 734331375
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 03:07:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C7A2EC433C7;
	Thu, 14 Dec 2023 03:07:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702523237;
	bh=ZTqSCTOBdYMrj/wi6IZZOtXfwIBgRgByhkRH24maZzw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UM4ZkqgfWojpJdSXklr4B05xodk1u/44B/5VKTtSf/nWhV3AK19u26U3rZCdeFHed
	 AZyoZYyoXwn2C25BhAj0IJWj3UqXviNpoCYtuAC7uUz04/Mnb/QgKf2Rp1jempuEej
	 biPUROqLUL97wCm704DTvG0lFZEUj4nN5MEmE4jN/2c0XREEN8xMGE8YYlZ3gQgePC
	 o3iZAqZBBHOnb24k5LnYKvZuFovvp5+gMDtwpt+vmn+F99fPj43045QmTSP1FCsLeu
	 Nkt9hqIbPFEqSQUNEfjxnljok8LEnu4a+GO1Qk60Yy1hS/8L3zo9tSECvQJMukMirL
	 PDyzGA2Lw840A==
Date: Thu, 14 Dec 2023 11:07:12 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: cw00.choi@samsung.com, myungjoo.ham@samsung.com, robh+dt@kernel.org,
	krzysztof.kozlowski@linaro.org, conor+dt@kernel.org,
	devicetree@vger.kernel.org, marex@denx.de, hvilleneuve@dimonoff.com,
	linux-arm-kernel@lists.infradead.org,
	Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH v2 2/3] arm64: dts: imx8mn-var-som-symphony: Describe the
 USB-C connector
Message-ID: <20231214030712.GG270430@dragon>
References: <20231212174847.759164-1-festevam@gmail.com>
 <20231212174847.759164-2-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231212174847.759164-2-festevam@gmail.com>

On Tue, Dec 12, 2023 at 02:48:46PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> Describe the PTN5150 USB-C connector to improve the devicetree description
> and fix the following dt-schema warning:
> 
> imx8mn-var-som-symphony.dtb: typec@3d: 'port' does not match any of the regexes: 'pinctrl-[0-9]+'
> 	from schema $id: http://devicetree.org/schemas/extcon/extcon-ptn5150.yaml#
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Applied, thanks!

