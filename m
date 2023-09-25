Return-Path: <devicetree+bounces-2904-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BCFE67ACDC1
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 03:59:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 22C622812E2
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 01:59:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D05A1EBF;
	Mon, 25 Sep 2023 01:58:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA1D2EA9
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 01:58:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2F90EC433C7;
	Mon, 25 Sep 2023 01:58:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695607139;
	bh=8UrU2evoxiL9dBoSYIOkRg0f0Jx1kUi+DKb9E8j25js=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SDue1/eaWJ/3KMcnjyfv6ssdiK5I5fXUkAwfDl2YjbMaAdyZPR2yvdH2Rxaeh12+l
	 wOEdHFcXiYIAb4p00xoWE9vsklDNsqBvuCTmtjIcI2KaAG+K1CTgQJbZEHkQ2JfDhO
	 8AdqQ4l+dkcAZaEqdKyFJxfT+UuU3Tt7aKMq9M491i0qBetON9DLXOKYGat9XBCOfY
	 VFo8dkXF2n1gkI0uQQHZjfbnlYkpcIZkozbcRXXDnRIkl1Hs1uR524/1Ru++2BgBFB
	 lxpQ6Nnvy2fzP6M8T8nxfCn/Tn8FR+WRnUoRWjCTRy5VHmM93gB2UkRO2kCVbwBP/d
	 vTdycUNoQHi+w==
Date: Mon, 25 Sep 2023 09:58:50 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, m.felsch@pengutronix.de,
	Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH] arm64: dts: imx8mp-debix-som-a-bmb: Fix EEPROM
 #size-cells
Message-ID: <20230925015850.GS7231@dragon>
References: <20230909013547.958134-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230909013547.958134-1-festevam@gmail.com>

On Fri, Sep 08, 2023 at 10:35:47PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> The mac-address is passed as a subnode of the eeprom and its 'reg'
> property describe a range of addresses in the eeprom.
> 
> Therefore, #size-cells should be set to 1 instead of 0.
> 
> This fixes the following schema warnings:
> 
> imx8mp-debix-som-a-bmb-08.dtb: eeprom@52: #size-cells:0:0: 1 was expected
> 	from schema $id: http://devicetree.org/schemas/eeprom/at24.yaml#
> imx8mp-debix-som-a-bmb-08.dtb: eeprom@52: mac-address@0:reg: [[0], [12]] is too long
> 	from schema $id: http://devicetree.org/schemas/eeprom/at24.yaml#
> imx8mp-debix-som-a-bmb-08.dtb: eeprom@52: mac-address@c:reg: [[12], [12]] is too long
> 	from schema $id: http://devicetree.org/schemas/eeprom/at24.yaml#
> imx8mp-debix-som-a-bmb-08.dtb: eeprom@52: Unevaluated properties are not allowed ('#address-cells', '#size-cells', 'mac-address@0', 'mac-address@c' were unexpected)
> 	from schema $id: http://devicetree.org/schemas/eeprom/at24.yaml#
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Applied, thanks!

