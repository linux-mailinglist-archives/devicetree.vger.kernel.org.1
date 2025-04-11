Return-Path: <devicetree+bounces-166048-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 840F7A862E9
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 18:10:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 877CF8C2471
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 16:09:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9E09214A93;
	Fri, 11 Apr 2025 16:09:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U+ZQ5xWd"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA33A201025;
	Fri, 11 Apr 2025 16:09:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744387768; cv=none; b=d/Upchq12qIinvovDxaG3gncC9TYuughGa0/DROaCI8+U31WMjWReLJjrVSJcdKjrilBdOlHHwrcoNyafk94kKmJHTMHrzE/zww/XXwduoWH7jkEmphA28xsHya3pwXYk1CeNe80SLf6kILluHoW/kQD0QDrbK2MQuWMSiX+oN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744387768; c=relaxed/simple;
	bh=rqTp3Npzmsp1AXSoXMvhuGudroJ7kStuj3YdbQKPSb4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nD9VzfbiYHR+Jk3peYJC0er9BveOy+tCBvw3mcRuUnsc0i5GxqMPxf2q5OS+QXIHa7DsKRiBun/eMK4/ijLzvTozzi9fqIntPHE880yXAlDt5J7I2qM5j1uJJ3/SrYfnv2ZKB+vYj6SvRV4CtmZrRVbiVoMV01SxhjST3USKKy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U+ZQ5xWd; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DEB96C4CEE2;
	Fri, 11 Apr 2025 16:09:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744387768;
	bh=rqTp3Npzmsp1AXSoXMvhuGudroJ7kStuj3YdbQKPSb4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=U+ZQ5xWdObS+ngYkPqFANWLOUq193ORnyQNRoNchKCZn9plep2rhZ8lSpdrc38gub
	 pzKZ4XEMIvvuAecioU7kIsUejRYopxvN0dB5YhoJLg/lb28pHQtq8SbQO47Ea35AS5
	 AbsOvb81DGBlijKDORVJvNTBDxToHPLW0niLQCO33W0jVMw3N3SNs11oSgpGyImWqI
	 /ZuDgPaZ0Pxf+Y2PjYbFrUBPxSDavnThKljSLUowP3sW0EnKtRhDdS52BlbEUlKrOg
	 G4zT8Hxtzho0/dhZfAzeILCTgeVWEJGeBsTDw8fcTty7vgbfVA2CzcB0GYpo+sPxTk
	 ECfKr43EvCwtQ==
Date: Fri, 11 Apr 2025 11:09:26 -0500
From: Rob Herring <robh@kernel.org>
To: cy_huang@richtek.com
Cc: Mark Brown <broonie@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
	Otto lin <otto_lin@richtek.com>, Allen Lin <allen_lin@richtek.com>,
	devicetree@vger.kernel.org, linux-sound@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/4] ASoC: dt-bindings: Add bindings for Richtek rt9123
Message-ID: <20250411160926.GA3320801-robh@kernel.org>
References: <cover.1744245663.git.cy_huang@richtek.com>
 <4a0b67438f82e7d8ed9968cc90acf419fc9c22cf.1744245663.git.cy_huang@richtek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4a0b67438f82e7d8ed9968cc90acf419fc9c22cf.1744245663.git.cy_huang@richtek.com>

On Thu, Apr 10, 2025 at 08:58:10AM +0800, cy_huang@richtek.com wrote:
> From: ChiYuan Huang <cy_huang@richtek.com>
> 
> Document the ASoC Richtek rt9123.
> 
> Signed-off-by: ChiYuan Huang <cy_huang@richtek.com>
> ---
>  .../bindings/sound/richtek,rt9123.yaml        | 56 +++++++++++++++++++
>  1 file changed, 56 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/sound/richtek,rt9123.yaml

If you re-spin, drop 'bindings for ' in the subject of both patches. No 
need to say 'bindings' twice.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>

