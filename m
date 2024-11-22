Return-Path: <devicetree+bounces-123746-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 601AD9D5D41
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 11:27:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B78422829AC
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 10:27:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5D1F18B49B;
	Fri, 22 Nov 2024 10:27:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eZGhi/jk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D4341BE243
	for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 10:27:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732271234; cv=none; b=G+gU3j5vOI1jH8wezrE6B+gZr9z+LAP2+bnqTLfa9vS7xIb14pKJ3AwGr3MCwGu71vjZ0snZkpL+CWukqQYxWIsVVdOYPyVDMNAsw0gMWP3BX+zS0vxe64ek9Yya05SztrCilnerqdnmoi3wYTU+7Cl0VcWUM7kZwtByUNRGWi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732271234; c=relaxed/simple;
	bh=9rnoHHf3OGi/eM3PFl0xOISrBSYIaWx3KevI8ScfJOM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WKfZ7YKNF6gTEFIbt+luNg3wws3P+kmhJXR8o24YI3YM3L6ofVIpcVSJz/cMZnIJ3DEurrsHrU+vBaK61HrkNcN5ydMTHlSqWquH/tVAD29RDh0MJ4O7676xwnhzCRj/Kg/R8rMozGrYz0ho8sNfEPNTXB7DkrII2PYEq43UW5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eZGhi/jk; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2ffa97d99d6so3655971fa.1
        for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 02:27:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732271231; x=1732876031; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=CaM32T9+cjWvYMHqhuUqWhjRL+hOdvCIE9xX19bPtjY=;
        b=eZGhi/jkeNormbm7r05AXsRa66h6vhrXVJ77ImSpaBc3Qn6a6AF5SGxRhiT5oya8H0
         jy9lGh3rJfAAUkFYy5DT6BUYl2l/f/d1/VuXsKU89bhSpDIM0Z2oJCA5s2pG4SiQGDJG
         QVtBDh4CfcCv3A4e+wlu/LyWSGGv6kCtSPhW9rW4ypaJ3cD3sjxE5f1ZUIovn8uAcEbp
         gIFUaTKlIwm/iyBgeEG/TETHoGQBmJNYyYqkZNlpr/4xRojOgD4GVhgDvZMOJQlLMDZq
         Y1LUpHtPFSg9tFOcFOzufHChHsnKG7PFa3G2hO597pl4m5TDMzllfVpCusjjC9CGN36I
         V4VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732271231; x=1732876031;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CaM32T9+cjWvYMHqhuUqWhjRL+hOdvCIE9xX19bPtjY=;
        b=ez+q5ZimZHBoiatOmVBIsvOxdZxF2Ql6uOm4EJho8WXbUV4KNbQIdRikQmDEX4hwO9
         iPAixIKCVjYv5I67TbS7C3BZ/IM2xL5uACfDjxLi0DlzZyPM8AJkDBaluwsV3KyPeRIe
         tvTzgqel+9yEzC8G8ijQ39yH33BGc07r47Afb4ujIbX4gRXvo8vRtFVN1iDBhIKYwp4a
         vZYcTM9LShVT1urhfewN7IDELntJuZx3s4Oj/0TT5vIscKV9r6EnXpMRRvHkMAMdNHHp
         AOIVqKwk3odJqOcei9n2SWxyjLScrjtryWMa8QD2DLi0PHbI//T6Ot3yn+NxHEO2VW+R
         OvbQ==
X-Forwarded-Encrypted: i=1; AJvYcCWMhDlh76UZNHgAhodUAob/pOHaUmlrTczvkBLwp1UgHiEOqa95a1j3TKoyxBEq+1m2YqY7sXIybcEJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yxt0VU9+25AtRvVaiFihF95cjfnymPerWZMMIvXtIZn/VIS+xhZ
	X+qJo4az5GIJBwU4ZudOjTqRcpqVCQk6dwIUkYOcsyOhIJ2p+1C612o6Fu8J/ds=
X-Gm-Gg: ASbGnctmbJFUadIYH1114P10EvO5CP1u/QgAu3nEzChO1OwkGGs6kHFrqST2FR6GTVp
	lE2kgW79M6RBAcaLVe+JAg9QmNkdZX4WtComimpfv6m3grSm8A01cUNULQFmb0JuvKGN+QyF9uj
	LlcbQzEQ1mMYN+pKQncSIUy5nXEHKcxfYaTQLUt+VAj9voPuQD7txFVaCB/hxQLulXtmVqVRO7X
	uiAOFW4oFToQHcOr/hrsPhTr9ETUb71Y+7jyWDaFnLbU8QvxMRY+8D0uEoQMXTNEVp9x688TLBk
	icnnz8PXBO9AE/qfdH4koXSYaCxFIg==
X-Google-Smtp-Source: AGHT+IG3oQHashA6tpFb+9+NmJi4GpOI+M8h9JPqYyxeNcEzdxQdY5O2kg12XYaqyKtAV7A8h+5UvA==
X-Received: by 2002:a05:651c:198d:b0:2fb:5b23:edba with SMTP id 38308e7fff4ca-2ffa712dcb8mr11465241fa.23.1732271231158;
        Fri, 22 Nov 2024 02:27:11 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ffa7a65786sm2280291fa.63.2024.11.22.02.27.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Nov 2024 02:27:09 -0800 (PST)
Date: Fri, 22 Nov 2024 12:27:07 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Fange Zhang <quic_fangez@quicinc.com>
Cc: Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Krishna Manikandan <quic_mkrishn@quicinc.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, Li Liu <quic_lliu6@quicinc.com>, 
	Xiangxu Yin <quic_xiangxuy@quicinc.com>, linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 8/9] arm64: dts: qcom: Add display support for QCS615
Message-ID: <n7mnldqd2td2cm4uup6mlnmbzyg7unbzvert6kyweopplbfssz@vm3egater24k>
References: <20241122-add-display-support-for-qcs615-platform-v3-0-35252e3a51fe@quicinc.com>
 <20241122-add-display-support-for-qcs615-platform-v3-8-35252e3a51fe@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241122-add-display-support-for-qcs615-platform-v3-8-35252e3a51fe@quicinc.com>

On Fri, Nov 22, 2024 at 05:56:51PM +0800, Fange Zhang wrote:
> From: Li Liu <quic_lliu6@quicinc.com>
> 
> Add display MDSS and DSI configuration for QCS615 platform.
> QCS615 has a DP port, and DP support will be added in a later patch.
> 
> Signed-off-by: Li Liu <quic_lliu6@quicinc.com>
> Signed-off-by: Fange Zhang <quic_fangez@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs615.dtsi | 186 ++++++++++++++++++++++++++++++++++-
>  1 file changed, 185 insertions(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

