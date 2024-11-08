Return-Path: <devicetree+bounces-120253-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 259289C1DA0
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2024 14:09:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 29D7A2830A7
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2024 13:09:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79F321E909A;
	Fri,  8 Nov 2024 13:09:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oyZLTfKo"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 546AB1E6DE1
	for <devicetree@vger.kernel.org>; Fri,  8 Nov 2024 13:09:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731071341; cv=none; b=QGLZAdwZLzfvlrDJW3865X3mlhfy/lPW4S9XYc7+QNGzURNh4ArcjjmWHe9yR9wktNJ0NbtkT8X4fL74aLh1gZqMjE09O9HEejiSUKBi6x6SeGc5f3V0ANFUG+FG6SJiqdlDL1zL79RiROmnHlPT6H3eKuZCP7lAw+/YlMDZMgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731071341; c=relaxed/simple;
	bh=vUnELNNzsGxypEBdWVHCWXekegm+rXydSjilfXwdDac=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rhoEpG8qUTVCKGN6gAdBJv9I3fGDTFfMQy9OmE1W7kBAaLOym9KfFxc/H65wwQv0wY7jQ1SFXxjPNG6PTYijmLP9CnErZ/F8yt0P/5GHE63UaNgMAVPfFPzdNVgus46wJgPCSPlDiMq0ydRI883kNcwuxDyWjjhkQrY6zd5mLvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oyZLTfKo; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A0AF9C4CECE;
	Fri,  8 Nov 2024 13:09:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731071341;
	bh=vUnELNNzsGxypEBdWVHCWXekegm+rXydSjilfXwdDac=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=oyZLTfKoexq9S7+XtvvWJh7a2fnBRXOtUk3lzIYjem6flORB7hPJ3o133H1it4Y1q
	 FCS/aXMiFZEVrhmXeSa7w+D6E2JcEXis/MdXk0VltrIDEbKwsH6QlnDddfQ0wsgrGL
	 MX/OtIzeUkx3X3Tf6XcnCPLvWdlUIapTaPJuZ/INm8gVJTnYb8RRSo35hmdQ8AY/Iv
	 whMurYsEOE7WkLcI3xPtW0AxCDK11B9Yb5LtxK3/AuBG2MTAKmm0dxgAgMK3XJJ117
	 1HAVs43WNyvhL4ctU+uKe4yoO22IJm03pKtdhmAFxuP3D+8t+Xny+2YCKktFPbuTou
	 LdOP+/12VnnrA==
Message-ID: <00f239ba-6cb3-4861-8352-7cffdded4050@kernel.org>
Date: Fri, 8 Nov 2024 07:08:59 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: socfpga_cyclone5_mcvevk: Drop unused
 #address-cells/#size-cells
To: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20241107095952.73926-2-u.kleine-koenig@baylibre.com>
Content-Language: en-US
From: Dinh Nguyen <dinguyen@kernel.org>
In-Reply-To: <20241107095952.73926-2-u.kleine-koenig@baylibre.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



On 11/7/24 03:59, Uwe Kleine-König wrote:
> The properties #address-cells and #size-cells are only useful if there
> is a ranges property or child nodes with "reg" properties.
> 
> This fixes a W=1 warning:
> 
> 	arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mcvevk.dts:51.22-72.4: Warning (avoid_unnecessary_addr_size): /soc/i2c@ffc04000/stmpe811@41: unnecessary #address-cells/#size-cells without "ranges", "dma-ranges" or child "reg" property
> 
> Signed-off-by: Uwe Kleine-König <u.kleine-koenig@baylibre.com>
> ---
>   arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mcvevk.dts | 2 --
>   1 file changed, 2 deletions(-)
> 

Applied, thanks!

Dinh

