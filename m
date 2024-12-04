Return-Path: <devicetree+bounces-126882-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5292A9E373F
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 11:11:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 79768B23B97
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 10:09:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1A941ABEDC;
	Wed,  4 Dec 2024 10:09:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SQ8oa7oY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35D3C1AA7A2
	for <devicetree@vger.kernel.org>; Wed,  4 Dec 2024 10:09:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733306988; cv=none; b=tRajv7dAlAmGID1SRxMoSCxtWtrnOfEXJIz2YXjPalqvLjVQpz890qQMLuEQUrQ9EbAwvOj4j4yHXGJiSQUv8NYl9n9JY3ATbn+IxxqcfO01Jc4ALnIt8UOJLmd5YqBJeMiXFoYLjbCQhkxPM9nbaUf9C5k+YN/zTxQKc3Lba5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733306988; c=relaxed/simple;
	bh=BMQwoaYseFJ8zeLch2xIJKZwOwqQ/RVh74KuCupqhhw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ETATsDNUhgBmWzdZkxZiCGsBh9fl6w2DyxYFUhWOgMXIknvj2eghUJZB4N4jIhhcGfQ02EGVkjHU56ycOGBnEJX1hTecSKCZxFLaPN98Uyf/xjKC14d2w/VuiDY7ZoL8hC4IwTsioLrWYU+mm+HzNztksBJlSHXe9NdM4+ajFXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SQ8oa7oY; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-53df119675dso8053604e87.0
        for <devicetree@vger.kernel.org>; Wed, 04 Dec 2024 02:09:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733306985; x=1733911785; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=6GG/C0igHoeNKj2mH68ClLF3Ygx5izj48/Bea3x0gsc=;
        b=SQ8oa7oYZi5/XnZWCzqe/pqdSvKEtDPM9ZVAeqbKbk0ydq0syhOsXVzd99XlEJBRCP
         qFhthVZ2OFSFplEPKTR171an6xEPhm3ws5Z+xxHQEaaitvao3zK6pST7VeX/tyhW175Q
         ERSo/manyr87A51YFzB0Z8QYaYNy3OqTHEhI+5P51nUNrW2+rQ74mEFYPZuAFZ59Tks/
         hg+ZilgJVjUM8Eu7rLSW0HMuWwonnYGbR4gT3Ux6W0Wqrf3qetFua2s1EilOaLxR0siP
         6wUq0ShlHLMtlrpvqjCCx8uV5e9UwQX3wz8BvuOlj9AZ2To2Ul71luXzJOcJ1F1//nyC
         ZpIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733306985; x=1733911785;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6GG/C0igHoeNKj2mH68ClLF3Ygx5izj48/Bea3x0gsc=;
        b=M+hQCD75LYXvPWzW+O4O3hus2x1HnqzlqHIaqczA8hXhBYB+yhp01ALKG1JNSL8akk
         ENIBtrgR2DLxlAbRZA/vacszvY94ixzhqn29PfTUN5VrzTNPS7aDeyp36hCH441C9kq+
         OVQwIUTM0oxpp3MmXbidfiN7yZXdiww5Fw6Z/432Nsc7ozEjek1OrDYKTqC7ZuY03ud8
         TV79r8vtP5uYMS/cB/2qyvEd9H2WzSR/xim5WwGtak84mxYCNugFGg61nbX+qr1+5nAR
         /pLCy+plaCqSbBWOIvcOQ52EsjUWXE8NYY+JDhyapWB59BDkQF4yCY9oU6o33rct0mZy
         dumg==
X-Forwarded-Encrypted: i=1; AJvYcCVmSi4T9fPh9mMlgroR+IpJPck4RQBOOBcnVBLURrecKxFMwJeAXM4zMVwRDZ4TuvdzcfulqWsphRTN@vger.kernel.org
X-Gm-Message-State: AOJu0YwxqyV1Y1nN0WELJ8O2nyQPHRPGip43I4YJBpSSh31BHhsOacm7
	rSYh+o4a7Hc6RT6rtg8whFYJtcF1A7aEfhV/QffPdblHQLyeV0ScTJ6duMuzr+o=
X-Gm-Gg: ASbGncv/c9VrpnvASUXJ/32TX9NmEMsJ0bbc0nRqMH+L27Le/tmzLtoUjP8kFRnLYVl
	R5CbIiub5vgG5W2xDOGKeS2UJT3KSFWgDpXH+gtrL5dYVeJVi/QPIe6jtsPop662E3plquGCJr/
	2uCP7CYeqoyb6gNXlzJJtHIR0wO9Lkeqqj/ME/vFI9yUuq9bVJ/MgUbRvAZZwe1zeLP/5Ra7Z2S
	UGm9bDnOkKfBq/Xn7XiyxlH4ogKzEsdoA0GHbW9nHhY/LFNVAgK4wFCjxznspMnmqIvdx+xNBAP
	oVrPHOZDE5rzOS0AKvY3pRipRzvktw==
X-Google-Smtp-Source: AGHT+IFeChx3JdkEVrSx44qmoT8HCpAzvLzptFBGVf0Lu16LK9AmpqVP6+Unh/3j2hROlEszt0kJ2A==
X-Received: by 2002:a05:6512:224d:b0:53d:f82a:deb8 with SMTP id 2adb3069b0e04-53e129fdd73mr3741737e87.14.1733306985190;
        Wed, 04 Dec 2024 02:09:45 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53e14f97649sm495602e87.146.2024.12.04.02.09.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Dec 2024 02:09:44 -0800 (PST)
Date: Wed, 4 Dec 2024 12:09:42 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Kuogee Hsieh <quic_khsieh@quicinc.com>, 
	Mahadevan <quic_mahap@quicinc.com>, linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/4] dt-bindings: display: msm: dp-controller: document
 clock parents better
Message-ID: <pxi2nf4h34xtkickkkuwh4svvhbtsutuz5u3ukzgfgd5rzzcps@g4gct5zuc6kj>
References: <20241202-dp_mst_bindings-v1-0-9a9a43b0624a@quicinc.com>
 <20241202-dp_mst_bindings-v1-2-9a9a43b0624a@quicinc.com>
 <bfa857c2-cd74-4fe2-a88c-3b35a58710b0@kernel.org>
 <gpqrugcsyhz32bvip5mgjtcservhral2o5b6c5nz4ocwbjw5uo@eypv4x6jyrdr>
 <hqe2pipkcnxftoq5mvdk36xmkj3ybr3oto6eghimq75rqlncsm@v45smglhedy7>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <hqe2pipkcnxftoq5mvdk36xmkj3ybr3oto6eghimq75rqlncsm@v45smglhedy7>

On Wed, Dec 04, 2024 at 09:02:18AM +0100, Krzysztof Kozlowski wrote:
> On Tue, Dec 03, 2024 at 03:41:48PM +0200, Dmitry Baryshkov wrote:
> > On Tue, Dec 03, 2024 at 09:01:31AM +0100, Krzysztof Kozlowski wrote:
> > > On 03/12/2024 04:31, Abhinav Kumar wrote:
> > > > Document the assigned-clock-parents better for the DP controller node
> > > > to indicate its functionality better.
> > > 
> > > 
> > > You change the clocks entirely, not "document". I would say that's an
> > > ABI break if it really is a Linux requirement. You could avoid any
> > > problems by just dropping the property from binding.
> > 
> > But if you take a look at the existing usage, the proposed change
> > matches the behaviour. So, I'd say, it's really a change that makes
> > documentation follow the actual hardware.
> 
> First, this should be in the commit msg, instead of "document better to
> indicate functionality better".
> 
> Second, what is the point of documenting it in the first place if you
> can change it and changing has no impact? So maybe just drop?

So, do you suggest setting both of the property descriptions to true? Or
dropping them completely and using unevaluatedProperties instead of
additionalProperties?

-- 
With best wishes
Dmitry

