Return-Path: <devicetree+bounces-126596-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BAF909E1F56
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 15:34:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1F6CAB2ADFB
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 13:41:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D12221F12EF;
	Tue,  3 Dec 2024 13:41:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eBra507H"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E723F1E009F
	for <devicetree@vger.kernel.org>; Tue,  3 Dec 2024 13:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733233315; cv=none; b=lIStthQtflfgMY1ehonHFEOlvtDb2AfmsMB5g39pLODEorVXi2sohH891aOeB2Jr804wE9WOt8VJ/LG+ykbaa80kdvoq4sKNdcYzpS0ZUH81OvamyFUxpy3dIDSd3Rky3ruOgTw4q+8M/qlDzt7nNqCPaY01rISBaajGZnoyKM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733233315; c=relaxed/simple;
	bh=DqfltT7T9BezPLgtZyLHK/lyVoHlR7r77Ivrvg4Dg2s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SkobYzx6jK6C4JNv62F36FPO/R676QZC8DFuvkWMXfUsV2taaEn19cjWOh6VViAIcCInuUBD0knETsAbDd2wi8Y2AMuLnqCPzU4KaKdCTog5o0/tOcQpLUkcrUzdHgilpbMJwoMLTMMEwI9nPwmWnN9zopXN24qkYiVAyxgu2F0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eBra507H; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2ffc7a2c5d5so58049621fa.1
        for <devicetree@vger.kernel.org>; Tue, 03 Dec 2024 05:41:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733233312; x=1733838112; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=b9EQvBAb2SX0qrGU/ZgIliBiKbnHvi2rA/qAWxRRbY0=;
        b=eBra507H+jqog4Lr0wPhtilGP+q3t97Y+wM5N+XMDPucSk2F4wIUx94Zd/n4NykM3N
         umAKdQyaZelp2YwsWvXFwnShFTUZxTkyik//einNrO/uoXE+Vbo25SWW52I3Z8H05R2J
         j1bztD9CrrSfX+iKEE77vZNlj0AfDMesEBqbAqxenH5Jz3HEa/smpNl+tAQEIPnziKNR
         k5qwtWt909L3UGyBBCREqjjFC4ERtfnYv7zR3zO4fY+83p5CIIE/J1qY/DMuvcmbtGJ4
         cuHURRjzx9YkvKMyiGE8q7XdWur9YnZcYYYf78ih107JTpYFu3c0trQrRPLFThRlUBPZ
         7png==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733233312; x=1733838112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b9EQvBAb2SX0qrGU/ZgIliBiKbnHvi2rA/qAWxRRbY0=;
        b=BWRteZJK/k9vT/P35FtrBUMVnUmOgNg49FsDdHcZTG8G6M1/IhJE2asn8rD7DBg0vN
         HG0Vi+Q2NMTZnJW3UHeH0dzXr6AJYK3NnKUamxHZdIW2xg7hAA5smDtvaEu14htlwNB+
         UjTHUu3UVZ/bycDSdc8IRrgMW3GZ1Gfyb9UgaqbKj+3EUWiF/TX/2ZEQ5iYuROJROSAD
         lr9Kn/hUsMPIuLTHmAN7bUUInQixVczyQWjJj5kl8Xu2dlTqsiLkAc8VY0BJwR8iwS/y
         sXireWDa9al2Qbo8+jnDY/ZMr8JTdrnBEWZIxm84W8OkN7nUkKQKdQQwkkuHoRU5wc1D
         Skxg==
X-Forwarded-Encrypted: i=1; AJvYcCWqXQkK/AodweyGGPoxvDpe9ebmqUaToyvwdzIznK5bxiuen4elx+XSA30D39qt2ixzIICY81Ofkk4m@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0RZS78jvV2LQNV6OC7YbUTTNHnaLEdo+g5JHe/l604I0TVkNp
	v9UaIDop0wlnZ+nZp2uLYezrKKEKy6oR15sJI8UlNJlaPshw/dTAEvoB1PEE+y4=
X-Gm-Gg: ASbGnctFeSf2kAZdXdnMMwysORpUByApL+5Edi52iIMA1hMoXa7Q+wvbs+pxyyYSYfI
	KkAseNfQmIg7rMEVKBaoOZhIVlbdjOL7NiD5C9dNnPUx4dYtjOviX8I6fTez5iUPfcWLUpIHl1F
	XJk04XtmAjFLojUgB+0ceCxFwzxuxz4wXtqwBQ6rPnHfPD2UsVLMff1/5Qcm5C1V6Wri40OrvEj
	PXdqpNq4bmqMATvpZeKSIIbBDnnASfE7oT0z9EAxal1PclMLc6v0e4uV6f0rzROQytqXVQce1Mn
	HEne2VGzu+h+zRcXgT7UlqkNqwCXGg==
X-Google-Smtp-Source: AGHT+IHpMzPr6Lls4GRyBuCcJBMUBsc/X9uSkqqmTyZzvhlEVvAz5e+LXYqBKqUPPK3QZnPGFneqVQ==
X-Received: by 2002:a2e:a99f:0:b0:2ff:d49f:dd4a with SMTP id 38308e7fff4ca-30014e2437fmr870081fa.21.1733233311908;
        Tue, 03 Dec 2024 05:41:51 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ffdfc75236sm16038451fa.86.2024.12.03.05.41.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2024 05:41:50 -0800 (PST)
Date: Tue, 3 Dec 2024 15:41:48 +0200
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
Message-ID: <gpqrugcsyhz32bvip5mgjtcservhral2o5b6c5nz4ocwbjw5uo@eypv4x6jyrdr>
References: <20241202-dp_mst_bindings-v1-0-9a9a43b0624a@quicinc.com>
 <20241202-dp_mst_bindings-v1-2-9a9a43b0624a@quicinc.com>
 <bfa857c2-cd74-4fe2-a88c-3b35a58710b0@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <bfa857c2-cd74-4fe2-a88c-3b35a58710b0@kernel.org>

On Tue, Dec 03, 2024 at 09:01:31AM +0100, Krzysztof Kozlowski wrote:
> On 03/12/2024 04:31, Abhinav Kumar wrote:
> > Document the assigned-clock-parents better for the DP controller node
> > to indicate its functionality better.
> 
> 
> You change the clocks entirely, not "document". I would say that's an
> ABI break if it really is a Linux requirement. You could avoid any
> problems by just dropping the property from binding.

But if you take a look at the existing usage, the proposed change
matches the behaviour. So, I'd say, it's really a change that makes
documentation follow the actual hardware.

> 
> > 
> > Signed-off-by: Abhinav Kumar <quic_abhinavk@quicinc.com>
> > ---
> >  Documentation/devicetree/bindings/display/msm/dp-controller.yaml | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> > index 35ae2630c2b3..9fe2bf0484d8 100644
> > --- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> > +++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> > @@ -72,8 +72,8 @@ properties:
> >  
> >    assigned-clock-parents:
> >      items:
> > -      - description: phy 0 parent
> > -      - description: phy 1 parent
> > +      - description: Link clock PLL output provided by PHY block
> > +      - description: Stream 0 pixel clock PLL output provided by PHY block
> 
> 
> Best regards,
> Krzysztof

-- 
With best wishes
Dmitry

