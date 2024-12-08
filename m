Return-Path: <devicetree+bounces-128263-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A48A9E83D8
	for <lists+devicetree@lfdr.de>; Sun,  8 Dec 2024 07:22:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E89AF188485E
	for <lists+devicetree@lfdr.de>; Sun,  8 Dec 2024 06:22:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D7FA2E630;
	Sun,  8 Dec 2024 06:22:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vNQsg0+X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3FC83D69
	for <devicetree@vger.kernel.org>; Sun,  8 Dec 2024 06:22:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733638969; cv=none; b=PZXe5HkhFHHjF9mhJF3dSX7Ka9n47+lwsNasjlf+986d4UewC47Ng4NU1OiVlk2zq7HygW8W0PEzQH+aHu/jqdOB92M8sM7hWjgOV8jLwrqrMAKvRhCYHcWvm72PCs2Z6aWCpwEog5GAuGI9cfAj1d2CmbzeoAYXr6RYcAiKh0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733638969; c=relaxed/simple;
	bh=AS3azZ+PfLiRvJ+8Za68SmM9j3QMKamcxS6Oj0hfhCg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RKaKwIrrGY18soXW9FnUGX0aIZeXFqqfQG6lnyAN0ahkc51KlT0xL8Iv3CJPugTQybrzia7LH5xY8JCBrfN0JGI2yEHLc1SbwDmWyRfZEwLcp/kqExJut6xum60pxVSjHYLd+7AeK7bM7eJKOVErr+7nGrLbyW5ArahrRKpgDuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vNQsg0+X; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-53dd668c5easo3540741e87.1
        for <devicetree@vger.kernel.org>; Sat, 07 Dec 2024 22:22:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733638966; x=1734243766; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=38gctL7UTrHCs9qA1LF95XHQwmYDkv868rO2ODhNpiw=;
        b=vNQsg0+XbJA/50xOX5QhhNHOkcpjGDe0dPR0n1Og2Y7qXki+XSWHcYhrYhS1cOXIKf
         uYnGlrIeWH8Ra4E6BovXVAhuO9DmU39OjELj+bdhMWVhgB6bSGpxNbKXW6t3dn/tcdAv
         RqXPwEKm/agWQY70/miDXS0z1NjHoRAzdUq61PwwYuQEsOlyXEcaW4r586LjHnuluYZQ
         Hq+dOXoVNs06I2MNBgvQx7IiGh/wY6hYtb/eVMABespHGLpFd3TTAFV6dLOUDUgMe3Bq
         VAq4aBcenP8BZ8zVDTW1DXgUOJ2x+lDw/ZVV338J2vw9YPryyXB7Gyj9l5PwECJ14sEW
         FBhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733638966; x=1734243766;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=38gctL7UTrHCs9qA1LF95XHQwmYDkv868rO2ODhNpiw=;
        b=UP5maAmrUp9MjNf+e6Gngpfil/YfWKbIJMRbDPFEc/LLNgsBWCh/wE5ATX+NUX2sa8
         uxb3aBLTH5bEUFWoqS9mvfKF5YRRBjwVzDVqMDyes1gH2dulixOKyP2jn7eeX7WGIkAy
         VuT1/n2SCTg9enFP6cjaNXhoUjhdps6a0YAZlRf9G0BemTvTsJMlqk5RtVWaxEqsUCys
         VZltV9/NU8TSjR5Y5u9jA/bJhKRC1VfBZKHJfo0QDZQfK0n+++uA6jIfAeLmfdNJASUv
         wNeEjhvpfIYAh7HsPaz70EW0H8ULNSU5MaWsVzNKldTc7JLaj5u/Pm14XuECOEMXwNNt
         kCFw==
X-Forwarded-Encrypted: i=1; AJvYcCVvECHlttECuTIH277VgPx5VHKtw/uE74KxhxvMrastZFU8V7xweIrQkm+4RVzxMbUC7fEfF4si/WjJ@vger.kernel.org
X-Gm-Message-State: AOJu0YzJcVGx5Rvt4izwBtrIJh9G8PiQzJoiliyk689fpWJMHN5NlqeH
	r1L2jrYydQiJzE7KXkg/Ivpf0NIzdbPA0JwR3iHrKYTcMHClRRnudCiSeu3WF7I=
X-Gm-Gg: ASbGncv76ZD7mcE6GXLqLsDM9hkQH5vQK3AYe0P/IkF7ybU8sIVLrCV68JXijaba6lq
	CGQEmaOoYi0WERYmcBijYcEXgcuVG/wFIeHd8KL6TOwZtH9HykLnmAoag8O5DcX9GGgi0Mz0ij9
	oFcnwiZy7JS7zLM5i9zP0lcYSw/ZIuJAhUISkavFsljS0/d7TSkJSWHWEqpHGYrIN0Ltwijig8r
	2rGKD6dZ5IN+sGgehZW5WcQUXuzcPCGhXN3dxMl5qeZaIMaPmAwiG9b3EjLveg5zYpURNMDyRJR
	dbSttzYVV9JrYDA/7cy556w8fK+bSw==
X-Google-Smtp-Source: AGHT+IH0qp1aPQA+2OpPaXQ/vPvKw2/kQ5aoewjrbzmt3QID8qu4PyXFLKKH22VCjIXIHCP65iqmvA==
X-Received: by 2002:a05:6512:3dac:b0:540:1bc3:1061 with SMTP id 2adb3069b0e04-5401bc31213mr349243e87.11.1733638965870;
        Sat, 07 Dec 2024 22:22:45 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5401c2c700fsm99554e87.86.2024.12.07.22.22.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Dec 2024 22:22:45 -0800 (PST)
Date: Sun, 8 Dec 2024 08:22:42 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Abhinav Kumar <quic_abhinavk@quicinc.com>
Cc: Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Stephen Boyd <swboyd@chromium.org>, 
	Chandan Uddaraju <chandanu@codeaurora.org>, Guenter Roeck <groeck@chromium.org>, 
	Kuogee Hsieh <quic_khsieh@quicinc.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Vara Reddy <quic_varar@quicinc.com>, Rob Clark <robdclark@chromium.org>, 
	Tanmay Shah <tanmay@codeaurora.org>, linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	Jessica Zhang <quic_jesszhan@quicinc.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH 16/45] drm/msm/dp: add support for programming p1
 register block
Message-ID: <ku6ytypptjtydcgscdvwsi62cgxokxn6svwwzs2ce3otnnlrrl@uvr6st3365kv>
References: <20241205-dp_mst-v1-0-f8618d42a99a@quicinc.com>
 <20241205-dp_mst-v1-16-f8618d42a99a@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241205-dp_mst-v1-16-f8618d42a99a@quicinc.com>

On Thu, Dec 05, 2024 at 08:31:47PM -0800, Abhinav Kumar wrote:
> p1 register block is needed for the second mst stream.
> Add support in the catalog to be able to program this block.
> 
> Signed-off-by: Abhinav Kumar <quic_abhinavk@quicinc.com>
> ---
>  drivers/gpu/drm/msm/dp/dp_catalog.c | 29 +++++++++++++++++++++++++++++
>  1 file changed, 29 insertions(+)

> @@ -145,6 +148,26 @@ static inline u32 msm_dp_read_p0(struct msm_dp_catalog_private *catalog,
>  	return readl_relaxed(catalog->io.p0.base + offset);
>  }
>  
> +static inline void msm_dp_write_p1(struct msm_dp_catalog_private *catalog,
> +				   u32 offset, u32 data)
> +{
> +	/*
> +	 * To make sure interface reg writes happens before any other operation,
> +	 * this function uses writel() instread of writel_relaxed()
> +	 */
> +	writel(data, catalog->io.p1.base + offset);
> +}
> +
> +static inline u32 msm_dp_read_p1(struct msm_dp_catalog_private *catalog,
> +				 u32 offset)
> +{
> +	/*
> +	 * To make sure interface reg writes happens before any other operation,
> +	 * this function uses writel() instread of writel_relaxed()
> +	 */
> +	return readl_relaxed(catalog->io.p1.base + offset);
> +}

After looking at the actual code, please implement
msm_dp_read_pn(stream_id)  / msm_dp_write_pn(stream_id)

> +
>  static inline u32 msm_dp_read_link(struct msm_dp_catalog_private *catalog, u32 offset)
>  {
>  	return readl_relaxed(catalog->io.link.base + offset);

-- 
With best wishes
Dmitry

