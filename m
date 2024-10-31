Return-Path: <devicetree+bounces-117875-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DE1FE9B82FC
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 20:02:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A0CDF2836A8
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 19:02:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F99E1CB302;
	Thu, 31 Oct 2024 19:02:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xsU8tOaO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E7FF156CF
	for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 19:02:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730401325; cv=none; b=ZyqDEWCu0iFu6Cy09d57yUx7Ms9fL/knEM33VF44jhF3nPlnbBSpokAGT5jsLWa6WnSIZW1OEG7dMMc7ONFC4O9+JPZTubScfFvtaBtI5Tiex0HRjZ63+EogD9uBXIMIqTXy//LUNaHBmN4BKEb7asUQhDDuOtHFY6B6Kb2UBLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730401325; c=relaxed/simple;
	bh=gbJYUdfgCKw/rRKOhbMx2szkGQp2Ixn9Fkw/N9wbhGo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Y/aj1iZKcLxVFhDgcCBCVk80/erCmYQJWiylF71x+gdeJp5bDVagBpRbPf9ppgVFMhDy0Jvgtd0hgiUIBIvJK4Vr84RX/jJravsb+zmKD4xORRJtVzTiu/7hs4fRkjjA0ZY5xdNlEjECqndc8PePMLZpg7pE3KdDgL5ypNenXbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xsU8tOaO; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2fb59652cb9so12774521fa.3
        for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 12:02:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730401321; x=1731006121; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=8wAnENA8ogJfTOc3zoMO7WnZA1QX8UI1GpRKP5HXdqQ=;
        b=xsU8tOaOw5LczELN0EGTbxWFjBI+wXmYQrzTvEJZ5bOki5BdoreNP3xNSj0/fZ/oJ+
         NRoJvDg/5nuFSaBHqDkfY2VbBakg9ZKs9seWYqxIp9rXJGlcSI8dtH68h21ODGyCDU9n
         bEsx6dfFj1tkgRSXVj6mnzyHD6kE/QyDX0cFSNh492PLxWXZiOXI1wPDn8AwiV/dfB+P
         Ww/vHWVxjnnisaUuGnlhev4kKKC8EqtxVbCQlByB1/pnY0UPknh2zSxpAzBLze6bmb1H
         VhWZ1eEESnEQU82h2txp5MiO7u6aPJwm+rfrBCbcLGcfTnzTgphuhl7zf2pZD14KbMW/
         zttA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730401321; x=1731006121;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8wAnENA8ogJfTOc3zoMO7WnZA1QX8UI1GpRKP5HXdqQ=;
        b=ittVtTlMNVGG4VOy2Oyz3Ok+sT1/6NYcUxQLHc7nK+THacVSkbzFAeYpNNF0qzgo3t
         uoB1AOkG1NjIj1Huyy4WZj3oi6c9U+XdIfIBZZjufYd/1spYUJG9VscgIbTxg1/zELPZ
         dbFvELhlr8BcA92KSBJgRpFo0WY7pZ7PTeB6Vv5IqoFVR7PggbtRPFwdpGOlzaO4pYdD
         mjUXxZeOE5A0QS/hEwRDEyd3GzGcYAMc2Eex8DMtsqNrDrxB+EgJ3ke9dmztPMxquoLX
         ZGUJ25kMY/nsMe4g0cHFbdycZq86y1ONuf0YAvLIEUFyvM4+JJjRtp1Wto2WjwpXMde8
         jV0A==
X-Forwarded-Encrypted: i=1; AJvYcCWUmZZYys1M4QxxsfjbxAjOuAia47+YnX/HuGwJVU6KHJBKPbjpYwTwggR06xiT8EKpHqW4frQI3ttX@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1mpWeAH/vFP8t2rvXopDKWWlSwGQMiWWe/mqDy/vE48VHK1Y0
	HGfMu8GoBGXcL66z1QEORqzucJdaNLBCors/sR+yqQbio1mgvIcO3kTjreUWYKo=
X-Google-Smtp-Source: AGHT+IFi5F4lkwKY82nrXE+8A/PgvuukB0g3gFwNfuoaN/1U/pVNyOoFpOy9Uuyr9977lLV6rh20zQ==
X-Received: by 2002:a2e:bc13:0:b0:2fb:6277:71d0 with SMTP id 38308e7fff4ca-2fdec8586b9mr24132641fa.22.1730401320540;
        Thu, 31 Oct 2024 12:02:00 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2fdef8a6410sm3035011fa.97.2024.10.31.12.01.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2024 12:01:59 -0700 (PDT)
Date: Thu, 31 Oct 2024 21:01:56 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Taniya Das <quic_tdas@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Richard Cochran <richardcochran@gmail.com>, Ajit Pandey <quic_ajipan@quicinc.com>, 
	Imran Shaik <quic_imrashai@quicinc.com>, Jagadeesh Kona <quic_jkona@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 4/4] clk: qcom: gcc: Add support for QCS615 GCC clocks
Message-ID: <gg2khw4ekb76uikyp2jlvl2bitfovr4grjfqw3wj33jnv5qkwr@p5ulhtixc6b6>
References: <20241022-qcs615-clock-driver-v4-0-3d716ad0d987@quicinc.com>
 <20241022-qcs615-clock-driver-v4-4-3d716ad0d987@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241022-qcs615-clock-driver-v4-4-3d716ad0d987@quicinc.com>

On Tue, Oct 22, 2024 at 05:22:53PM +0530, Taniya Das wrote:
> Add the global clock controller support for QCS615 SoC.
> 
> Signed-off-by: Taniya Das <quic_tdas@quicinc.com>
> ---
>  drivers/clk/qcom/Kconfig      |    9 +
>  drivers/clk/qcom/Makefile     |    1 +
>  drivers/clk/qcom/gcc-qcs615.c | 3034 +++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 3044 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

