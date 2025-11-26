Return-Path: <devicetree+bounces-242273-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 22C1DC88C40
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 09:53:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 2A7D34EBE99
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 08:53:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8A9C31A56C;
	Wed, 26 Nov 2025 08:51:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q7hAhgNE"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C34431BCAF;
	Wed, 26 Nov 2025 08:51:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764147117; cv=none; b=heYpCEA4xPCBIedepx+myIVeQmtz8kY4lZN7giMtajAaBR5aercWmfrnxUvhfThah8Nyxx5ky4uad6+ome5OhK3EKr4saytieTvTfzih9JhPfeyLbzyTUO88mpcjNFn36f7D0T3HqHIFFfTw1wLMESMayGmffv7f8qTgZgb73QM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764147117; c=relaxed/simple;
	bh=sWWyiBZaar1uNe7opXiUwYwGj0+GUqGTWFXLEk+AtH8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oghNZQ91Pwok4w/oPHQz6hoej229xlMH9bs6aQIIkGtQ9hFJswkpGvEDxnu+4sG+XxYCxoKIEntnlQiU48RdrpASGeKJKi8ApeK/5rdVd5lfhiv0EODE+AIr7sc9fJwLTCcpMQoLE3seB1ZZDGzKnhhHaKl07SVOYOm3bdiz2Tg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q7hAhgNE; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 71409C113D0;
	Wed, 26 Nov 2025 08:51:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764147117;
	bh=sWWyiBZaar1uNe7opXiUwYwGj0+GUqGTWFXLEk+AtH8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=q7hAhgNEyilJ/cUmTs1janOEr65FLvpurCBnQ5CWdgvAmi/uJACNfCyjRmHqUod3z
	 mh8IokwGgvx0GtaqHr2XVnpmGQUHmIJYGmtv5ufU6qpuDfQouSbGhoK0Ez9vsr6yqV
	 Uqt+tQY/YpQgh11GDiDEzRP3ZDPz0lAUvvFfv4rWcr1BlLADF2pwXOpB+3sDRbOlrL
	 I/7vfwFJRJ972jVyNKY2U6JXcfVsHzv6ITSjDh7GYAkyqAE2OImVpniMvdTvCW2IbQ
	 XNeZQYtF0o4CnrXFDInLvvbYRXPnRwmC2lqcOPIZ/O9sVZZdQjrhdg96YGC8MjCEy2
	 8aK6jAWisyAiA==
Date: Wed, 26 Nov 2025 09:51:54 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Icenowy Zheng <zhengxingda@iscas.ac.cn>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Drew Fustini <fustini@kernel.org>, Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Heiko Stuebner <heiko@sntech.de>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Michal Wilczynski <m.wilczynski@samsung.com>, Han Gao <rabenda.cn@gmail.com>, Yao Zi <ziyao@disroot.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org, Icenowy Zheng <uwu@icenowy.me>
Subject: Re: [PATCH RESEND v3 2/9] dt-bindings: display: add verisilicon,dc
Message-ID: <20251126-gifted-zircon-ibex-a9f1d8@kuoka>
References: <20251126045233.218286-1-zhengxingda@iscas.ac.cn>
 <20251126045233.218286-3-zhengxingda@iscas.ac.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20251126045233.218286-3-zhengxingda@iscas.ac.cn>

On Wed, Nov 26, 2025 at 12:52:26PM +0800, Icenowy Zheng wrote:
> From: Icenowy Zheng <uwu@icenowy.me>
> 
> Verisilicon has a series of display controllers prefixed with DC and
> with self-identification facility like their GC series GPUs.
> 
> Add a device tree binding for it.
> 
> Depends on the specific DC model, it can have either one or two display
> outputs, and each display output could be set to DPI signal or "DP"
> signal (which seems to be some plain parallel bus to HDMI controllers).
> 
> Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
> Signed-off-by: Icenowy Zheng <zhengxingda@iscas.ac.cn>
> ---

You already received review on this. Don't send the same. Read the
review.

NAK

Best regards,
Krzysztof


