Return-Path: <devicetree+bounces-100087-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B36096C1B3
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 17:04:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1905A28EDC1
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 15:04:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68EE91DCB25;
	Wed,  4 Sep 2024 15:04:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z/QKdb3Q"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 446FB1DCB22
	for <devicetree@vger.kernel.org>; Wed,  4 Sep 2024 15:04:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725462244; cv=none; b=kBJEbzLI4KbABeMTf9hTty/Onf24sG6ESFo8Spd4tleGXNPw5ONOba4w0IXQc2ruPolQbzGZUG8O+AQk6EZGqb+LlRsch/ZTbPrKtPUn/qCyFj5p09Rex02x5UcFKsrZQ75lBzJuYVTnJtY9wIYmSqh025BXfslLiU6OIpQW2u4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725462244; c=relaxed/simple;
	bh=drI8o1k89lc/ejPdOCGFMP5h2MQ41Z7/UYX+gc8hlzE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aavwjR9C/nJ/YB3uZwArB3NSod1pP5ZsTYeE91DcHHm0Nfe9GqhzAPV2APsvmbX6FqdnvJEzSlYlcEZb1Op2pPlxY9VAm4AWBiOaMk77qhBxlWdT6vuR12bgFbwv1ZrlluAkwf9fxCt9F1mvVOiUP4y9vsxnmaiMS1wK0WdWyJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z/QKdb3Q; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AC14FC4CEC9;
	Wed,  4 Sep 2024 15:04:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725462243;
	bh=drI8o1k89lc/ejPdOCGFMP5h2MQ41Z7/UYX+gc8hlzE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Z/QKdb3QCs3uh/m6bgul3rnDolnqqrYrsG6VrIepgHGhrN7irIxxjmKexYxNwor8g
	 HmHeGXyop05ZXVj3qWkAOoSSgqtW0Rv43CMDPyS3P3mNaeaARodeatbUA1EGgpBNZw
	 mf6vsL+58BHpjgdKmtGDHGq4hTmFtsGeKGxoD+MlAHiBMqb9S7EGUEx2KPdbDVNcts
	 YuDzwIyNuDqmoDBFzySQJSjwe2vwcXSlPsYqzhkDy8oEp5EAkodfvukwemIcKfo50w
	 eo2Sgt+XHze7WmKWudzD2khv8ozh1A5AILRPP2hW4lq2DkeqiundhqcfSAWRTCzNGu
	 4GM8y73sPVKpg==
Date: Wed, 4 Sep 2024 10:04:02 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Ryan Walklin <ryan@testtoast.com>
Cc: Thomas Zimmermann <tzimmermann@suse.de>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Maxime Ripard <mripard@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	Hironori KIKUCHI <kikuchan98@gmail.com>,
	Chris Morgan <macroalpha82@gmail.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	dri-devel@lists.freedesktop.org, Sam Ravnborg <sam@ravnborg.org>,
	David Airlie <airlied@gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: display: panel: Rename WL-355608-A8
 panel to rg35xx-*-panel
Message-ID: <172546224223.2575293.1986958934172474131.robh@kernel.org>
References: <20240904012456.35429-1-ryan@testtoast.com>
 <20240904012456.35429-2-ryan@testtoast.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240904012456.35429-2-ryan@testtoast.com>


On Wed, 04 Sep 2024 13:23:21 +1200, Ryan Walklin wrote:
> The WL-355608-A8 is a 3.5" 640x480@60Hz RGB LCD display from an unknown
> OEM used in a number of handheld gaming devices made by Anbernic.
> Previously committed using the OEM serial without a vendor prefix,
> however following subsequent discussion the preference is to use the
> integrating device vendor and name where the OEM is unknown.
> 
> There are 4 RG35XX series devices from Anbernic based on an Allwinner
> H700 SoC using this panel, with the -Plus variant introduced first.
> Therefore the -Plus is used as the fallback for the subsequent -H,
> -2024, and -SP devices.
> 
> Alter the filename and compatible string to reflect the convention.
> 
> Fixes: f08aac40639c ("drm: panel: nv3052c: Add WL-355608-A8 panel")
> Signed-off-by: Ryan Walklin <ryan@testtoast.com>
> 
> --
> Changelog v1..v2:
> - Use known panel serial for compatible name rather than referencing
>   integrating devices as per feedback [1] from DT maintainers.
> 
>  Changelog v2..v3:
>  - Use integrating device names rather than panel serial number for
>    compatible string as per further maintainer feedback [2].
> 
>  [1] https://lore.kernel.org/linux-devicetree/8b4519fc-0fba-48fe-bfb4-318818b47a65@app.fastmail.com/#t
> 
>  [2] https://lore.kernel.org/dri-devel/6ab54fb5-8723-457d-b5e6-483f82faf30e@app.fastmail.com/
> ---
>  ...08-a8.yaml => anbernic,rg35xx-plus-panel.yaml} | 15 +++++++++++----
>  1 file changed, 11 insertions(+), 4 deletions(-)
>  rename Documentation/devicetree/bindings/display/panel/{wl-355608-a8.yaml => anbernic,rg35xx-plus-panel.yaml} (67%)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


