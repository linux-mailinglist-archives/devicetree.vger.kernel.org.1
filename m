Return-Path: <devicetree+bounces-249808-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F4B5CDF870
	for <lists+devicetree@lfdr.de>; Sat, 27 Dec 2025 12:09:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1E12530084C3
	for <lists+devicetree@lfdr.de>; Sat, 27 Dec 2025 11:09:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC12F2D8767;
	Sat, 27 Dec 2025 11:09:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lsie1DXZ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E152D8762;
	Sat, 27 Dec 2025 11:09:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766833741; cv=none; b=GKP14+SgkrMG5ToQekvmTNo4VLMiGXHLIJTPaF2p3FMn4wYIV5jJqRRNCk2LiXMv6uv6z7p9lwoyTFaJNIQIz8qLebtyY2v0531lRgbVRMRAlIBQtMAtPm4+L6CgSS8BOdABAFTPH/elbYBlD96jLIH8EgM6DDkA5jwnl0z1k74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766833741; c=relaxed/simple;
	bh=8hBszxXVdm/Dk0txNhipsHcV7UwFW+dyq7Nqm04kZkM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=osAINWLGZwOVEfO0Nnk7ar5vUsKYYFxAu4Xt7iBjQMSKakd4hL67cAhs5eD1ug/2P4CGCpfDJDDHOJCGW0+/ZquhQz4JWEX9QBksR2iuN6rfeo8/9FB/1cSYj45wF21Gd11ijCDRV+Ul1Sp/E8EpsIrLgodJ4XDRfOSIYkYukv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lsie1DXZ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED3CFC4CEF1;
	Sat, 27 Dec 2025 11:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766833740;
	bh=8hBszxXVdm/Dk0txNhipsHcV7UwFW+dyq7Nqm04kZkM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lsie1DXZczYyLYr2ib7sbI+8evcaDfKod6DUdAfTYEo53baGzb5dwqyeYhKQ/e6SP
	 Viv7v/REvqSD5610UuQTMr1HnFm+hqQD7IFQLPElDr74vyG4kez5zvcwEfL2GFXjQZ
	 Mil2UhTYN4cYNut5lTP+FagNRuFrDA3CM+04fZjNZS0bILAW+hXizBejj01C8Anhkp
	 ORQTIGD7gaq4V1Uujhv6rC4wqIeP22SinwMmbEXA8RxLumETLxrgAAEoRJWwz3KffX
	 CJFuZHQLo5fAtD41V67N0tAUmF6JR0psWh7R2FXcrrV1WVGjOA50tZbDLCpVXg9W88
	 7GeBU+7qdJagQ==
Date: Sat, 27 Dec 2025 12:08:58 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: "Han Gao (Revy)" <rabenda.cn@gmail.com>
Cc: Icenowy Zheng <zhengxingda@iscas.ac.cn>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Drew Fustini <fustini@kernel.org>, Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Heiko Stuebner <heiko@sntech.de>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Michal Wilczynski <m.wilczynski@samsung.com>, Yao Zi <ziyao@disroot.org>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	Icenowy Zheng <uwu@icenowy.me>
Subject: Re: [PATCH v4 2/9] dt-bindings: display: add verisilicon,dc
Message-ID: <20251227-tacky-corgi-of-inspiration-afffe6@quoll>
References: <20251224161205.1132149-1-zhengxingda@iscas.ac.cn>
 <20251224161205.1132149-3-zhengxingda@iscas.ac.cn>
 <FBE5FD78-D7E8-4961-BF13-9BDA0F840548@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <FBE5FD78-D7E8-4961-BF13-9BDA0F840548@gmail.com>

On Thu, Dec 25, 2025 at 05:35:34PM +0800, Han Gao (Revy) wrote:
 > +
> > +            dpu_out_dp1: endpoint@1 {
> > +              reg = <1>;
> > +              remote-endpoint = <&hdmi_in>;
> > +            };
> > +          };
> > +        };
> > +      };
> > +    };
> > -- 
> > 2.52.0
> > 
> Tested-by: Han Gao <gaohan@iscas.ac.cn <mailto:gaohan@iscas.ac.cn>>

No, really, how?

Please explain me how can you test a binding (and build process is not
testing, otherwise we all should keep getting tested-by, especially
Rob!)

I don't agree on fake tags.


