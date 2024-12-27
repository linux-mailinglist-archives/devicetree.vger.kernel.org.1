Return-Path: <devicetree+bounces-134260-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 66E339FD17A
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 08:41:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0946518819F6
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 07:41:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 848DF149C6A;
	Fri, 27 Dec 2024 07:41:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JsuYEpYW"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B3441474A7;
	Fri, 27 Dec 2024 07:41:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735285261; cv=none; b=JVPM38UpTILyKm8FKksP/lXZqAuuRUYzyiuRD1NUwGZmtL+aEsIqTdvbPDya0IRmw+4iiQ9PKN8FXWugGYcWGn8IIkwDpnGm6F+jPv1/b9Ikn30F2byLa7VijtWc1enVqFSY3SGEx1eUvNN1rcJPTRA4MOFRkOoNhJWQ/F8m3uo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735285261; c=relaxed/simple;
	bh=vZh45f7DcV/ihH8wAEQ9uEdqDbk/ADLKTkNo1deSqJM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DWBa5AQoLBt/eG5BMrAwMT4PlIVV29tKFfz/Z7GT0sboh/0eSi0LGncJpJfxykoXiQ4o5vfHOKGj8U3wRI5+oLsi1e+VEywTfg+77VeFnDNgtcRUgqGcEbnpN4m24z4EB6wwYRfIQUh52roEuw9fRnn49NFMdOhNl6Y0OQMQ/Qk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JsuYEpYW; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 35F8BC4CED0;
	Fri, 27 Dec 2024 07:41:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735285260;
	bh=vZh45f7DcV/ihH8wAEQ9uEdqDbk/ADLKTkNo1deSqJM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JsuYEpYWKcziW/Nu1Vnug3S2gKroilmKL/BFlsVF38p/8VySn7MqxwFBj4DsDI5KI
	 wRuU0pF0wBVGEvjYxwBoLuPExkkmy2nFrZ8Z9fu/VF0Jke7+ig1t0hYvBFtpKOoVb+
	 Eh+zP/eHQPdk7TYczGd2yuLz8bR4ovAkzhuYUgxWirwIsy6wzzGcn8NUwIbaTg9stY
	 9vi4y10qk8eBNGL5ihAyvODGM/1Zft/Qamxag6/x2YvoWmv2Sre4aKNvf3DpHa+BaJ
	 srtCnDoYGW/vNc4EfV1cnAkXaCCrwpy1TNzcpwcZ+bgMjvZLNsY3B543hRWrirXC+Z
	 NfTLTufwUVFkg==
Date: Fri, 27 Dec 2024 08:40:57 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Kever Yang <kever.yang@rock-chips.com>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
	Maxime Ripard <mripard@kernel.org>, Rob Herring <robh@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	David Airlie <airlied@gmail.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Simona Vetter <simona@ffwll.ch>
Subject: Re: [PATCH v2 06/17] dt-bindings: gpu: Add rockchip,rk3562-mali
 compatible
Message-ID: <ebznnq7lhkgk6c4ft5e7q2u7vn4z6yi4ntyd5wiecvcme6eri3@zhgyttih2zxc>
References: <20241224094920.3821861-1-kever.yang@rock-chips.com>
 <20241224094920.3821861-7-kever.yang@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20241224094920.3821861-7-kever.yang@rock-chips.com>

On Tue, Dec 24, 2024 at 05:49:09PM +0800, Kever Yang wrote:
> rk3562 has 1 ARM Mali-G52 GPU,.
> 

This we see from the diff. Say something not obvious. Where is the
driver change? Why devices are or are not compatible?

> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> ---
> 
> Changes in v2: None
> 
>  Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> index 735c7f06c24e..b0d4806614aa 100644
> --- a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> +++ b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> @@ -25,6 +25,7 @@ properties:
>                - renesas,r9a07g044-mali
>                - renesas,r9a07g054-mali
>                - rockchip,px30-mali
> +              - rockchip,rk3562-mali
>                - rockchip,rk3568-mali
>                - rockchip,rk3576-mali
>            - const: arm,mali-bifrost # Mali Bifrost GPU model/revision is fully discoverable
> @@ -60,7 +61,7 @@ properties:
>  
>    clocks:
>      minItems: 1
> -    maxItems: 3
> +    maxItems: 4

No, existing devices did not grow. Plus this is now desynced with the
names.

Best regards,
Krzysztof


