Return-Path: <devicetree+bounces-128775-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B55449E96D3
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 14:29:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0803C1889A0D
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 13:25:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 611B81ACED5;
	Mon,  9 Dec 2024 13:23:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="adE3Ub5B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B8331ACEC2
	for <devicetree@vger.kernel.org>; Mon,  9 Dec 2024 13:23:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733750593; cv=none; b=oHZlJEQP1kAaqZFrThv7R4GvWzmXyfB23HoheWOEJxWX4TKsiUaw04UrVV0lVqFOjrfN28HqdQikhwzspXoYkwScoPYFTiuGaAP3WA8b4k5HWjtptRWF9bcJOepOOhn7zSzvm5/0JN2j/kDd1P+mL5lxTz9QEwJEddEEvlj4kGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733750593; c=relaxed/simple;
	bh=04S6B0nJf9Hn+gzERCF/uMkmUx0R4j34PMLxCp3iOME=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lNMxh3TNtItLe1JLYNFX2pHT3AmmGAYiB1WpkoShsqz5WxD289X1TNdSIVjPJTCcVwQoQS4mIGqIF8HGMD8KQ3qvFXTjpG9o/WbdmqSUoYsk0XVjKbGe6Y6NWCFiP2GoziEj0/znEILo7rz2SXVifnVqZTRTmvy2HUk3tsmuMZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=adE3Ub5B; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2ffa8df8850so45654051fa.3
        for <devicetree@vger.kernel.org>; Mon, 09 Dec 2024 05:23:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733750589; x=1734355389; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=P1Q3KowuVs0mZ0rb0Ic9ZcrPzwsNDNKvHLsAlNmDHFg=;
        b=adE3Ub5BZfR6CrZ2XJUHI82jOpLKlD7RblzqWlFNs5L4C9VqHSuE0bVU8LmlzIj46Y
         wpwJZuPcKuvs/NBG5HwfgfDWgfgwBH4PXs3eHkSmXTkmyq/Wpl2cd5Pm9PZjb1jOfaqc
         3Gup/6gjbPgBAMha3i8Xo2tKgTk3HaGHocuPdWcNXOTIZ7smxJK9P130BXiytoJSP8GW
         /6G5JSFyO0UBmhgP69y8xI4GrKEn5kuPG/6q94ysm/ZgoXcpHKMgC8FftVzY6EygFODw
         50OZVTsGC3lpwybc2O0ZikoacQjZnSO91pVH9q8i5tsbXusnqSK8EK70t7D718AMD9Q3
         3CNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733750589; x=1734355389;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P1Q3KowuVs0mZ0rb0Ic9ZcrPzwsNDNKvHLsAlNmDHFg=;
        b=dK3cySvRgTapv9HsiZuIIH9GdOidOv4jhlmFuaLdSu+3pDgkkaht70XDwrWM83upAW
         Qqo8Xvxhss6Tay8UakYezOVy7F7rWbdBB2pLBSDt56ZDUOBuiiN451mXM5QftEHEZw4w
         wU1U1fHCxgzBCJXsw9DLYtpzcUMDBhAlAMZCs9eotFYUc5UR1F/F7LxIlvobkdWAUil6
         qlvTCB93Oq52Ix9zHckkhsWCDhFwoOlK3HrPtXD6VBWwKk0E7SKXSWLVbYN68TZ6RZZi
         4QoHYSSHf8rDELfsJci9XdVes8zInQc+znSp/NcqANbvoLN0ceCHx7Es9NgKcN7QGwqP
         t4+Q==
X-Forwarded-Encrypted: i=1; AJvYcCVIvKCJMx0fk5Xywd/ji7FoeSJaZlySC8uDdzdMVlzMl1steo6P0VX1SAezTlzL7Ux14bm4jvA9WhR7@vger.kernel.org
X-Gm-Message-State: AOJu0Yzs0j9eu+mSqlrnE1wJahJqOXQuy7e7Qr5rmcnI6GxDrH4EK+NV
	z6CA2T4VGZG4aDSxxE5zmKLfjq7FFtWAhQ8ZwswMsi+DXy58ztI/Clww5UonvjQ=
X-Gm-Gg: ASbGnctJxIf1r3q1aSqvFeySGGWIhQqTkflwZEDFInryV+QqBOQdZKd+XtRsvBTFKk9
	g7KbSH2yqAvyp9MoULgHE5CJPi9c/pTt5n5qHeQPYLJwEtV7Oj8c9AEkD5j5znZtHrW3ZWToIuu
	VQnKeJ9X1JUN8hUuz+Qo1YT+3vVUdu/ZI8qtgo4mk/oTnL0pn6LbYGR8RKFbpf7qmyljFMA2A8O
	7LUGWSnf8v/h20UBfs8711RgjwKOGFSFwvpFmNsRLjdLBS9rESOkFO/jkd3dXDC560zuZU5YMN5
	Losi9qSRpvJwpEVz7Cn1IaELJP+ZtQ==
X-Google-Smtp-Source: AGHT+IHzRS3kKeuBIaVbiSldvKszXqHDXCVoEU74JuhkpXf+Z7S09whtCDZ/ssVTFfacSGsQVfKscw==
X-Received: by 2002:a2e:a817:0:b0:302:17e7:e18a with SMTP id 38308e7fff4ca-30217e7e59cmr24900501fa.26.1733750589475;
        Mon, 09 Dec 2024 05:23:09 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3003b760a56sm8652811fa.18.2024.12.09.05.23.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Dec 2024 05:23:08 -0800 (PST)
Date: Mon, 9 Dec 2024 15:23:05 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jonathan Marek <jonathan@marek.ca>, Stephan Gerhold <stephan.gerhold@linaro.org>, 
	Abel Vesa <abel.vesa@linaro.org>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, regressions@lists.linux.dev
Subject: Re: [PATCH v2 0/2] arm64: dts: qcom: x1e80100: fix USB OTG
 regressions
Message-ID: <iw2c4fceyppf2w2gueevsqsz2z7hatbqo33vufx3veatprczu5@u4k3j2igy6ee>
References: <20241209111905.31017-1-johan+linaro@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241209111905.31017-1-johan+linaro@kernel.org>

On Mon, Dec 09, 2024 at 12:19:03PM +0100, Johan Hovold wrote:
> A recent change enabling OTG mode on the Lenovo ThinkPad T14s USB-C
> ports can break SuperSpeed device hotplugging.
> 
> Abel noticed that the corresponding commit for the CRD also triggers a
> hard reset during resume from suspend.
> 
> With retimer (and orientation detection) support not even merged yet,
> let's revert at least until we have stable host mode in mainline.
> 
> Note that Stephan and Dmitry have already identified other problems with
> the offending commits here:
> 
> 	https://lore.kernel.org/all/ZxZO6Prrm2ITUZMQ@linaro.org/
> 	https://lore.kernel.org/all/hw2pdof4ajadjsjrb44f2q4cz4yh5qcqz5d3l7gjt2koycqs3k@xx5xvd26uyef
> 
> Johan
> 
> 
> Changes in v2
>  - revert also the corresponding patch for the CRD which breaks suspend

As you are reverting two commits, please revert the third one too, it
breaks pmic-glink.

> 
> 
> Johan Hovold (2):
>   Revert "arm64: dts: qcom: x1e78100-t14s: enable otg on usb-c ports"
>   Revert "arm64: dts: qcom: x1e80100-crd: enable otg on usb ports"
> 
>  .../boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dts  |  8 ++++++++
>  arch/arm64/boot/dts/qcom/x1e80100-crd.dts            | 12 ++++++++++++
>  2 files changed, 20 insertions(+)
> 
> -- 
> 2.45.2
> 

-- 
With best wishes
Dmitry

