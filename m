Return-Path: <devicetree+bounces-8825-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9950F7CA3F6
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 11:22:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C95E71C209B4
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 09:22:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60DC21C6A2;
	Mon, 16 Oct 2023 09:22:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="J0t4X0l+"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99F521C689
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 09:22:02 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1FADAB;
	Mon, 16 Oct 2023 02:22:00 -0700 (PDT)
Received: from [172.20.10.2] (unknown [185.53.196.201])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: ehristev)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 53EC066072AF;
	Mon, 16 Oct 2023 10:21:58 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1697448119;
	bh=/HyiQc3Pfw/ocS0/hyAvyF5PeWrpiR7koV+Tb8YIRYE=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=J0t4X0l+BraT0SLc66RgbRJ31VYEk95rSLsdr49kIY4Srk6sHiA7W7oQSlgSHhYkB
	 +RS/HMUeE+toZ1RSR0oLKP01a/m1sY/49A+eP2/asudK6lK+eTGCRWN5w/Y9olFZvu
	 SuZquLurSfwT9RM2Btxgj068QfKe6PD1BrJKLWeHKmO1/OZTZHDLNOe6A+z7RW2pLu
	 tQjSLyfBwSqoTs35/nkp8F9sw25FYiIlihmOt21ADG8kYH9l3ZYJvTy6A8yyqsGM2i
	 hfxx1EovXEiDA1kRZ5Ij5q1RhWlWN92eR2ftONV79CvtCtyHVxvb4z0s8WMuzyhAYH
	 3MjDfHbjUIrhg==
Message-ID: <318016c7-8ceb-4c96-8784-597fac8d194b@collabora.com>
Date: Mon, 16 Oct 2023 12:21:55 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/9] arm64: dts: mediatek: Add MT8186 Krabby platform
 based Tentacruel / Tentacool
Content-Language: en-US
To: Chen-Yu Tsai <wenst@chromium.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20231012230237.2676469-1-wenst@chromium.org>
 <20231012230237.2676469-7-wenst@chromium.org>
From: Eugen Hristev <eugen.hristev@collabora.com>
In-Reply-To: <20231012230237.2676469-7-wenst@chromium.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 10/13/23 02:02, Chen-Yu Tsai wrote:
> Tentacruel and Tentacool are MT8186 based Chromebooks based on the
> Krabby design.
> 
> Tentacruel, also known as the ASUS Chromebook CM14 Flip CM1402F, is a
> convertible device with touchscreen and stylus.
> 
> Tentacool, also known as the ASUS Chromebook CM14 CM1402C, is a laptop
> device. It does not have a touchscreen or stylus.
> 

Hi Chen-Yu,

The Krabby design has the touchscreen ? if the touchscreen is for 
Tentacruel ,then the touchscreen should be described in the tentacruel 
dtsi, not in the Krabby and then deleted for tentacool.

Or is there any reason for describing the touchscreen for Krabby ?
One additional way to solve this is to have the touchsreen as separate 
dtsi and only include it for the boards that have it, e.g. tentacruel .

Eugen
> The two devices both have two variants. The difference is a second
> source touchpad controller that shares the same address as the original,
> but is incompatible.
> 
> The extra SKU IDs for the Tentacruel devices map to different sensor
> components attached to the Embedded Controller. These are not visible
> to the main processor.
> 
[...]


