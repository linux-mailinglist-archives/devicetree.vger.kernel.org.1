Return-Path: <devicetree+bounces-80417-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A72F918DFD
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 20:11:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8A1831C211AB
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 18:11:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10FA719047D;
	Wed, 26 Jun 2024 18:11:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sCqKLKIw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5B33190465
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 18:11:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719425486; cv=none; b=nl7Zp4zOMx3ABNddCbGz97FlGqhdyPZUNwvRuRZsB8XdMamzMuwrZ+m/GOwA2EamY3tXbTvOOpzjKPBediFeWVOjXcrKB96Zc74Irsd2ffXtLHRfVm4mMGJQn9FZwDBloazu/uU96JjcAZ4EtNGrx2MYo3Bj2k4VFsLdLKZ2vG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719425486; c=relaxed/simple;
	bh=H7/ec739+hu73Yci+SuVYmQL5gYpe3oSoD4ttritvGY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BmSYNQ6+oEzAIISMW0t8gk/BF7Nc7+AVKPYSfSHFmqtPOj5YmP42oO/gI0kSHPA4Pm/bzXARLnlbHbjcBeogoq/B/Dn6GBmgWQiIkEGsQ9b1iuJKHJmtq2IU1iEO8jB3lbQG1jZv9lCsT9EITFZ3p4ISh2ZPMl8itXm+dzV0ZfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sCqKLKIw; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-52ce6c93103so4740648e87.3
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 11:11:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719425481; x=1720030281; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=nDQ6BSgk4EuJqJOFP+ZJw6IbdRTjUCi/RgKB+9BTmiQ=;
        b=sCqKLKIwoTmnpSolGB22A7BxqqZV/P6qvELBHwVLXnoVRTvwAt9Cnn/h1Rr44hpoHy
         RjSOq7nyTnZwrgRtndEdM2A152W6I4R2wokJB6FA6Nbx7c+AP9Y9KXIc1p1nW15H1y8u
         C4P8M9wQsWwhnkgHGdkmzRZrvc8py1M54tJ5ycvgfCmBuB/+hKofwEPHP6PqOAyYk8IQ
         hMjj/4xLA6f0y9iBMqKMQBLQmTiA6I+iItY/FCnuYZPfydezl6zaeMooSVBXo1YFD8aC
         aa+SeWz8qAn/je6XiC4foTCWlKwOR6+JhMMUUdGM6yWsZk3/Pujpv70B1+7JLHvc6DNk
         4zhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719425481; x=1720030281;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nDQ6BSgk4EuJqJOFP+ZJw6IbdRTjUCi/RgKB+9BTmiQ=;
        b=V1iYdRF/Nxn9IwBbg90HlNQkW9yvu2+LEqHFJcowNGzFWH3n1Gm2CcqjM6MWYvDkDJ
         2ghcBDpl57CKuWXrM+fPeXPWGZeIbgt2QOiGgF5l8C8J/Q66mzlW+x7fVAE1n669Hb9+
         H6aqujPHISj3fuJv3B10dE9QyoJTD5gj8d3vs12jlxpAN0fBYelqqwSXY+RYJ0CdNWDe
         uHL5UTE3miAu5vOr/5Y2Q6jj2oLJr7bdqvxN9p0TiSu7HUuUZ5Mzc2gMbY1Sw4QMbZZz
         KNvCCF0YOgU0pUT4U+tclF8Ey7aY1hg1mFyapUl5jzO6GLKLUhbOpNEQD7LANXpVqtBT
         RO1A==
X-Forwarded-Encrypted: i=1; AJvYcCX5jBOli7QIhWJzNba/h86i/6lG3mMmZ/syQgB0weLgrm3mqXtgVymU5HM7mHRapgK1B5ZVSF9LzZ5rCHGJ9Ig149qXnsveWnQkQg==
X-Gm-Message-State: AOJu0YxxKxmDsIgYUn+XDmEF/cDjpf2Xfr6nZEJL9Ec4S+WALG1gWwB0
	xvxg/KVpUfnwfu6qDaNXy4ZM8KAPmZljudQ2ghkV4dz68cz4x9CUhML62prg898=
X-Google-Smtp-Source: AGHT+IH0WYXPdgWAwfB8r6Eu6OYUIW4epdYd2iRt+kvq5t9zs1qoKhBabD5jbHIsxoBf7I72tPmXQw==
X-Received: by 2002:a05:6512:3caa:b0:52c:df74:1577 with SMTP id 2adb3069b0e04-52ce185250dmr12057912e87.45.1719425481087;
        Wed, 26 Jun 2024 11:11:21 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52d9b245fa2sm388158e87.155.2024.06.26.11.11.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jun 2024 11:11:19 -0700 (PDT)
Date: Wed, 26 Jun 2024 21:11:18 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Devi Priya <quic_devipriy@quicinc.com>
Cc: andersson@kernel.org, mturquette@baylibre.com, sboyd@kernel.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	konrad.dybcio@linaro.org, catalin.marinas@arm.com, will@kernel.org, p.zabel@pengutronix.de, 
	richardcochran@gmail.com, geert+renesas@glider.be, neil.armstrong@linaro.org, 
	arnd@arndb.de, m.szyprowski@samsung.com, nfraprado@collabora.com, 
	u-kumar1@ti.com, linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org
Subject: Re: [PATCH V5 3/7] clk: qcom: gcc-ipq9574: Add support for
 gpll0_out_aux clock
Message-ID: <n5flflug5fkxuxvlqe22o32xo2qp6jnv4xrwpv4wfbef5xzc2b@gjsw6mb6b6ux>
References: <20240626143302.810632-1-quic_devipriy@quicinc.com>
 <20240626143302.810632-4-quic_devipriy@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240626143302.810632-4-quic_devipriy@quicinc.com>

On Wed, Jun 26, 2024 at 08:02:58PM GMT, Devi Priya wrote:
> Add support for gpll0_out_aux clock which acts as the parent for
> certain networking subsystem (nss) clocks.
> 
> Signed-off-by: Devi Priya <quic_devipriy@quicinc.com>
> ---
>  Changes in V5:
> 	- No change
> 
>  drivers/clk/qcom/gcc-ipq9574.c | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

