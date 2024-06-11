Return-Path: <devicetree+bounces-74679-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AED8890406D
	for <lists+devicetree@lfdr.de>; Tue, 11 Jun 2024 17:47:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AC5871C22D78
	for <lists+devicetree@lfdr.de>; Tue, 11 Jun 2024 15:47:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 326BD39856;
	Tue, 11 Jun 2024 15:47:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZwiXetjh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 961D2364A9
	for <devicetree@vger.kernel.org>; Tue, 11 Jun 2024 15:47:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718120836; cv=none; b=fg4SFTQr+k6h+ZPXimhMe7t8fpOAodL00QPc2cywSaktKaVXglwdj0KXuw5ZCTbUw6otyUwLaXuc56KiPUW240Egdeu7nTWeDi/NtPX66khw27UCh4EonW1O7hmIdHsPwL1zpMzqX11Mwqwb/OMLQPPSj6AbPEJiCYMVpSdPikI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718120836; c=relaxed/simple;
	bh=F5BWENXEo3o1WWI4CxCWwY1vrialDPlJgFzabTHdxUM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MbKJE3vlLdavrcxVRfuDKhVVcq1v+B7o9F//Mf2P/SOmtroNtjKTbSG0PSddFAJLJkkHolO1e/e3ne3vhRXm2GspIaRN4Lb0KRVoaCi5Vei2pyYX8mlfmnnTAtdYW11lXc9db4JmVpK5KkOdc2v90Wma/jpgYPxTI1rKj4b8Mjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZwiXetjh; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-52c525257feso4243986e87.1
        for <devicetree@vger.kernel.org>; Tue, 11 Jun 2024 08:47:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718120833; x=1718725633; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=nw8/LuxiTJ04FrRfjacvt3XWvtMEY1Dsg0HiFZPTY74=;
        b=ZwiXetjhE+zy8f/csRnJsnVF6oXx2JL0FbnJqcLUqeTBFkXUYHxfY40mlKSEUwCbsd
         kaumfY5c4gSOWNCZbmgMXHmT46jar21cajZWBlGq9MRlYWz9tWp6sNo596/J4dnbY7Qc
         ggR+qWJrzR1VMFr0eRFW+ABiKb91SAxKjz5Z5cHtv/sKvAcQYXc7wKOxwl5JwxRcacCK
         TtaJjQKRZxiFRsixUjpXcOavB5Y/W0pLjKD2fIxIuJiXkU5Vp6EfNqMTIZQ+Y5uqAQJJ
         /AiS1XChQyaFNDomP51MtGMNJU2Q9giB7ccU29tOwrTgtWaZurCFi5Ywk5MUHtNFkGC6
         n0Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718120833; x=1718725633;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nw8/LuxiTJ04FrRfjacvt3XWvtMEY1Dsg0HiFZPTY74=;
        b=jEnqscbXgnhvBJWTBgzx+cfK+NvqkPCCRiMmpNenK79iBJk1K7QvrVwFR1diqmF2MF
         qUjGbPzHtE4QWGlaFy7wg2H9DzH1bF2vAqwC8AmL3URi/phBDwH8rSf0uHsNHNrg0ywA
         EKcMV71jCL4VG7tYR8mNxIfHT1xrFBrCmmEIyVVAl+HSg7gU4MWPQU++uqCrativd8vT
         Jzh2xAs3RT0u2D4IGRkDtWarnmqggavRqlCc7qYoov39aCzWB+xV5/6z12KEJWdPgmDI
         IlWoPp8zv0UqA3nYZDIhUu60DxzgnpYiwZEFkXcdwx/n/K6pkmVM8nLd6ACxlZvqqkSi
         nMZg==
X-Forwarded-Encrypted: i=1; AJvYcCWOiLC3DwnsNGO2v0VRGbFbvWJIMj9HPvLgmw1LBcZOYFZIeSQkp/idayzQsOPWZrvp66GiH7zgrSRHLV0AhtHlbrqLhfaD7mpowQ==
X-Gm-Message-State: AOJu0YzBtQnIMnLkN4t+acVA9axiAcp7W6wr0TmmyZ7xxkkJpdA1a989
	Lk6DcRDrf1fZICiyef4xOMqsOjSQpDHGH880+2onTqdX0TMpdyZicyrIe6qdUys=
X-Google-Smtp-Source: AGHT+IFHillVbdPIfFDh7/7ug2ke7MoTVtAgBViv6Ex/VT0dLFNs7Kce4qyvplMjkvLsBubqW+QkLw==
X-Received: by 2002:a19:3846:0:b0:52c:8051:5799 with SMTP id 2adb3069b0e04-52c8051599cmr4531904e87.11.1718120832839;
        Tue, 11 Jun 2024 08:47:12 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52c80d6b04dsm1471344e87.136.2024.06.11.08.47.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jun 2024 08:47:12 -0700 (PDT)
Date: Tue, 11 Jun 2024 18:47:10 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Ajit Pandey <quic_ajipan@quicinc.com>
Cc: Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Vinod Koul <vkoul@kernel.org>, Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
	linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Taniya Das <quic_tdas@quicinc.com>, 
	Jagadeesh Kona <quic_jkona@quicinc.com>, Imran Shaik <quic_imrashai@quicinc.com>, 
	Satya Priya Kakitapalli <quic_skakitap@quicinc.com>
Subject: Re: [PATCH V4 8/8] arm64: dts: qcom: sm4450: add camera, display and
 gpu clock controller
Message-ID: <5z52xmqrgngi7xckhner34f2wgnmikkhmvwnxbwvhh7ixhj52s@5yofsg7yr765>
References: <20240611133752.2192401-1-quic_ajipan@quicinc.com>
 <20240611133752.2192401-9-quic_ajipan@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240611133752.2192401-9-quic_ajipan@quicinc.com>

On Tue, Jun 11, 2024 at 07:07:52PM +0530, Ajit Pandey wrote:
> Add device node for camera, display and graphics clock controller on
> Qualcomm SM4450 platform.
> 
> Signed-off-by: Ajit Pandey <quic_ajipan@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sm4450.dtsi | 38 ++++++++++++++++++++++++++++
>  1 file changed, 38 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

