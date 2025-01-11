Return-Path: <devicetree+bounces-137638-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FF45A0A2AE
	for <lists+devicetree@lfdr.de>; Sat, 11 Jan 2025 11:18:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9C0123A9F69
	for <lists+devicetree@lfdr.de>; Sat, 11 Jan 2025 10:18:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4557418787F;
	Sat, 11 Jan 2025 10:18:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BXYVsA2H"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19E0116B3B7;
	Sat, 11 Jan 2025 10:18:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736590683; cv=none; b=NAy9cj7WV0potdNRgwPrAXTOxbkr2AwDth+u0qVx5ZkJa0T0nDwNJaHQG8HCP3HTmSHpQWHlPB2RI2Zh2w/ach+8s9pGkJVOWwdte85nq9ktDEsICoUsdczIFVN0yt5TiPHJ6Ph77pitzRWCznxre8a/i9QkZWEkgRFZtkPFaMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736590683; c=relaxed/simple;
	bh=hZ30PF9MK7V/3XvgwOYQIRHwGq6CMsygfh0lC3ErEBg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=g/aHBUAolbsv2MelliVXcRFgcb4i7a0IUH1+m3YtRa6dDOaIMVUNzqIwNs+nzrQuBtTCoyK6JcwqAy/WKV9/WHbVOImV8KwOuCyqDFJJB1kmBrOnoh3KF2qRIMEWeiw44iN+aCn8D4UzPgNlxC0LFV6z9FoaqC4GtcoUNDN9hlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BXYVsA2H; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0C5D7C4CED2;
	Sat, 11 Jan 2025 10:18:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736590683;
	bh=hZ30PF9MK7V/3XvgwOYQIRHwGq6CMsygfh0lC3ErEBg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BXYVsA2Hn5PDzesEHTT6xq7nz1CFfawJHWqMM6NhR9qRsjPoI5WHGZYN0zu8YBAAg
	 VXbHGJZSK1LowXcGMJoQe9r/I3tCd8/e2tbnwM0VExDT9MF3Yaip6G5C8bW2dMFhiM
	 UMZLNDtWArfCAGuQe/l8VxFu4M9oxZdQPPtLtIlbnrayFNCEkdYUihY9KVGlKvJ0GE
	 yXwIknj8mmiwpkg37i9Bbe2Z9MKJDMdcMi8lTZvcpXyu2WrBO9KBP7AkbDeYLBEm0E
	 tce0qa0IDCWdSfF1GB+fgWOqI8yEUuKoOWEoAXGSEkpH955HMU2KzvIHynTK2wOnt0
	 /dYvyHkJpXugw==
Date: Sat, 11 Jan 2025 11:17:59 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Ao Xu <ao.xu@amlogic.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>, dri-devel@lists.freedesktop.org, 
	linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 01/11] dt-bindings: display: meson-dw-hdmi: Add
 compatible for S4 HDMI controller
Message-ID: <iqy3ff7sltfy7hq4scvtt2sumcghexhj3bj4r2wi7rtbpcqrou@7qwjwh7kgfb7>
References: <20250110-drm-s4-v1-0-cbc2d5edaae8@amlogic.com>
 <20250110-drm-s4-v1-1-cbc2d5edaae8@amlogic.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250110-drm-s4-v1-1-cbc2d5edaae8@amlogic.com>

On Fri, Jan 10, 2025 at 01:39:51PM +0800, Ao Xu wrote:
> Add devicetree document for S4 HDMI controller
> 
> Signed-off-by: Ao Xu <ao.xu@amlogic.com>
> ---
>  Documentation/devicetree/bindings/display/amlogic,meson-dw-hdmi.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/amlogic,meson-dw-hdmi.yaml b/Documentation/devicetree/bindings/display/amlogic,meson-dw-hdmi.yaml
> index 84d68b8cfccc86fd87a6a0fd2b70af12e51eb8a4..6e0a8369eee915fab55af24d450a6c40e08def38 100644
> --- a/Documentation/devicetree/bindings/display/amlogic,meson-dw-hdmi.yaml
> +++ b/Documentation/devicetree/bindings/display/amlogic,meson-dw-hdmi.yaml
> @@ -55,6 +55,7 @@ properties:
>            - const: amlogic,meson-gx-dw-hdmi
>        - enum:
>            - amlogic,meson-g12a-dw-hdmi # G12A (S905X2, S905Y2, S905D2)
> +          - amlogic,meson-s4-dw-hdmi # S4 (S905Y4)

Judging by of_device_id table this is compatible, so use proper
fallbacks or explain in commit msg why not.

Best regards,
Krzysztof


