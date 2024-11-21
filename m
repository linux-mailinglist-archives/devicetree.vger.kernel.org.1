Return-Path: <devicetree+bounces-123549-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B62709D513E
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 18:05:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 836BEB2A0A2
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 17:01:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8AB21C8FBD;
	Thu, 21 Nov 2024 17:00:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KVE8F+V/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04D4B1AF0A1
	for <devicetree@vger.kernel.org>; Thu, 21 Nov 2024 16:59:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732208400; cv=none; b=K0Xcsu8T26JvbN2I29HkbXQcdJShoqc0gVLmen4YnSyy5hGDBj/aP4MZcacfOmabcUolcJo81VlJBlyxjw7b8kNLrVtaoSfIcjuqbRLGUfImGMk1dve4EFUBPGBi6X4Z5PYgZg5tmMUGB2V/Ctm/BM1z1vjaj4Sy1W24wGS+/Sw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732208400; c=relaxed/simple;
	bh=qJI7JAC0Ed2camEWXFgqiWsh+z80E3RdsXM70TPSvcs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nktuTrAPTc0mgpTPrVshMO5U2tOYjGw7FYE/lAJlouaS6hgsACq2XXPDb96AgT9fFcPxcyJM9Lz6AtrGtKF8xZlEBzAeS5WHCP9KhKyrKROlvqMt7hPCmhbt0fjAHhotWTqI5ZhliU4gPoRd2F1iKX5H+LYpvzMF0ZCZJCtVoSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KVE8F+V/; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-53da4ff4d7fso2336598e87.1
        for <devicetree@vger.kernel.org>; Thu, 21 Nov 2024 08:59:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732208397; x=1732813197; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4kWmOlhAyvLltjxgfGITPOMja876WfWZzWl3k645acc=;
        b=KVE8F+V/cdPKTlWryJdccPU8fok3PgAhRHpyvS/S6nxWDqXL5I4d4eKXFWuas79cDa
         VWgTVDWZxy2vo83zWJcueTyC+ZRHlEyM1uLJI68FCDR7PbX87z4ZH9amUkREb8wSeFEJ
         ut6D/h8npNnC4Ai1J5jBxSoQQ7XY8uQqAOjWGFUamv3eLY7RIn9iVrG76TrAquvVSEKF
         OaHSO1eJ7eo3iUqdZ4h+KJRjlrpmZPhbVqDGktDGM3WmCQSDrKAoUiTxfzFr6SdjPIZV
         atdR6EuFDJwQjLN3ufyy/P3t+s/MyCk3BgsO9nygxoIwM44wISfdm2pbHXkpiYkS0XTk
         5ilQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732208397; x=1732813197;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4kWmOlhAyvLltjxgfGITPOMja876WfWZzWl3k645acc=;
        b=siWByYv6aW2ojd5Q6PCbXijdU5Y86JZlWMQNUBXmCZyVmOG1DB7uTUhxulLBNv/APy
         cQ9xGObqowjQOh90oCpCehFWcpZ+qgF0xEziOIGIuIy4wL5q8AsFOwyFQxCoTa27GRBx
         y6Jw2VGSnIVGUi4wJsx9G+tV4meK1zbsfmYHlyU6Nwj5PVg2ac7B6hO3OL4FC1MbvDwj
         amcbYOJbo/4UjAikUQrBHgAeN/Tp9e5N7fx+miw3kZAMCo5KG7OBHd+SWvDGO/UmXDq8
         1gukCB50XzYBV1UbYO4JUh/peob1bHXuhc09MhBbpbi2QS6QXiWdaD1zymDrrB01QVzH
         5OVw==
X-Forwarded-Encrypted: i=1; AJvYcCU7KQTo0VnOnB9rRmpjYYRPtMMe4iN2nYak/WGzYKZlwm+qmcCvNTyJ/y9bq9O8Ylj1taE8lUh88PJW@vger.kernel.org
X-Gm-Message-State: AOJu0YzZF056Q1z/FOhnWVvl1Nun+PLQufqk0OCfNtyY+BBAtXccK32c
	cVcnxnkQ7FsJzqiVbmyC+c3soOXRlyclBByhOE3ciAr1GKy1CVN44dvsVt/9oOQ=
X-Gm-Gg: ASbGncu6fB05Pqa7TwZPm9axXrWUukNQnIwcJh4nAg6cdgidNkyjsG0GYc2Jt+IGTu1
	3sTGJ390owwptiK4NNopyuGfzJO0KqFx7pEkUluPZnBgADx1u6pCmSesXMHJBNUUjewUeg/JVUN
	oBIKtgcNyfXb9JYxymQO/7OI5gXFjZ3AQkRRUX1gkAng87pMiN+k+qhfzXWJv9uzHZ7STj/wbF3
	VgxGPO2h5NFV64fgwykDU6+QQZLydgKcIROIsmnf9EMZ5rtSIRC9bHP5KfK9G2LTIrm8JToG+mg
	oRe6ZugNFasYR3feJ7hEzBxidomMzg==
X-Google-Smtp-Source: AGHT+IGL3c3ho7r8sF8Xcr9a+4/C/Ler4BcrWhP6ykFH/IDRrpCDlTkssOTbniD/Y/so77ORXxYebA==
X-Received: by 2002:a05:6512:3d18:b0:53d:c861:38a3 with SMTP id 2adb3069b0e04-53dc86138f5mr1426353e87.27.1732208396862;
        Thu, 21 Nov 2024 08:59:56 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53dd245186dsm16381e87.100.2024.11.21.08.59.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Nov 2024 08:59:56 -0800 (PST)
Date: Thu, 21 Nov 2024 18:59:54 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Xin Liu <quic_liuxin@quicinc.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Avri Altman <avri.altman@wdc.com>, Bart Van Assche <bvanassche@acm.org>, 
	Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org, 
	quic_jiegan@quicinc.com, quic_aiquny@quicinc.com, quic_tingweiz@quicinc.com, 
	quic_sayalil@quicinc.com
Subject: Re: [PATCH v2 2/3] arm64: dts: qcom: qcs615: add UFS node
Message-ID: <oikbuo3anhiifydvzdsjazbdwqqwt5ssi64sxopjrdiryr5r3y@igj3gzan4ks5>
References: <20241119022050.2995511-1-quic_liuxin@quicinc.com>
 <20241119022050.2995511-3-quic_liuxin@quicinc.com>
 <4bf9ea1f-4a45-4536-82c0-032f72b28807@kernel.org>
 <f5b40d0c-defc-4b91-9313-9e454af22fb8@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f5b40d0c-defc-4b91-9313-9e454af22fb8@kernel.org>

On Thu, Nov 21, 2024 at 08:41:53AM +0100, Krzysztof Kozlowski wrote:
> On 20/11/2024 17:58, Krzysztof Kozlowski wrote:
> > On 19/11/2024 03:20, Xin Liu wrote:
> >> From: Sayali Lokhande <quic_sayalil@quicinc.com>
> >>
> >> Add the UFS Host Controller node and its PHY for QCS615 SoC.
> >>
> >> Signed-off-by: Sayali Lokhande <quic_sayalil@quicinc.com>
> >> Co-developed-by: Xin Liu <quic_liuxin@quicinc.com>
> >> Signed-off-by: Xin Liu <quic_liuxin@quicinc.com>
> > 
> > Confusing. Who is the FIRST author? Please carefully read submitting
> > patches.
> I retract my comment: It is actually correct here.

Yes, I was also confused first.


-- 
With best wishes
Dmitry

