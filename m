Return-Path: <devicetree+bounces-127125-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 409099E47E2
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 23:32:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 00BC22810BD
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 22:32:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B8B01A8F7E;
	Wed,  4 Dec 2024 22:32:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DeFL3Kh7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C33E18E056
	for <devicetree@vger.kernel.org>; Wed,  4 Dec 2024 22:32:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733351558; cv=none; b=mEQD+juh8sSJnIVDabdqXNx1spxsqq1hMscc9UxCABXI34EO+8p9G4YDvRQfFW+jEIUc274OWaVq2HXLXY+k4/6KJmmWiH4/2UzE6EF6os4EQcMxmO84619wxs0raHNzXwcGE/Y1rQJ5OkOP7vDLT3y/ioolOo3YA+bg+Xzy48w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733351558; c=relaxed/simple;
	bh=vOa7LETYg7icjKW7lrEIWCbaGqar/4hAk8skymKe1nc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iT7kDCEV0jAgYoaUjPzhQs08U7EL6yA0RYB0hHKXhlzb9UV0he3H0cnsk6tOP+In3yAypQhI85n61jAZPfIM/mDV0oIZMn6fdU9bRtXrmLzqPAKStAdsO9kCpAV9Z/jd6ND6KkixUSXfXpua8X/Mcx0+8DvEg4jKO3Er1M1GstE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DeFL3Kh7; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2ffa974b2b0so1689201fa.3
        for <devicetree@vger.kernel.org>; Wed, 04 Dec 2024 14:32:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733351555; x=1733956355; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=7lUKjEXOkSq/BvCViX3wWNqzFdxMzt0G+l0vc3wMpMM=;
        b=DeFL3Kh7enETMSi2GUQVozhxyMgbsZUaZRESVhxCsQKILPA03cwV5cjjC9eFqYmobW
         gUlyhpluCQkJU/r7ElO+G0vPabvuF54wPdo3JUClUIJeZlxthToUPvSRtxfO+qLJtnfm
         JiJ28JeyCbEbaW18s63aXck6PFQsQBQPrTNqMd9AUSJukOCO3hWmh3QFPmYhgpTKB6fI
         hcg3/hofC+1yjz26Pb99w/jderIZxb67GRMEf5EIK/YKakOXXIHuEEe/+uRl4xzi+LqT
         MW9PJuoAa1m3uvry3m2D47tnzvZsPRYFzg0cUySPNpH9VnhtifRCjsZWZHw5wIMcxvce
         kf5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733351555; x=1733956355;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7lUKjEXOkSq/BvCViX3wWNqzFdxMzt0G+l0vc3wMpMM=;
        b=aKzNPS4Y9Bd23s8zFqJW7A3+dvUMKCiePCmdF02/P0FdcEMXz5IqPslgQCLr14iHO1
         lPifm+mCkWXf8Z8o0NmTdB4RKYtuc8BpOzj9sKzLRI6uK3E6olKXP86ME6dmNBo8ibxv
         72lMEJE92xIj6+NLSKSkRiI9ZRXZzT1hsH6pnA41YCJ7QlbDTA3KTSAVTQypDDD/2wZG
         Xgx/GAAaNjgBxBNPi+YxUuCTvRLax0dnm289qlQj5bocWUbad9dC4cucomtvZJa9Sdf2
         0iCdInso1fzL3PC+CNyl6iTUZ650IDuqjp+nFmoA19a/K8DfCNizbsAl2IOk17Rg9/EM
         r9uQ==
X-Forwarded-Encrypted: i=1; AJvYcCUXL4wqJj5xiLtyjwOzhjm27LIoZoK1Inxws9iFz4h6kHQnb1nYkucgUKqBRoKPs5QCss4G67UZgmfm@vger.kernel.org
X-Gm-Message-State: AOJu0YxGtnUqRxfNj1K8p/U5IZz0/Eg8os+9oagPD6Tbz9yl2XQGVlgQ
	sNzk7JacKbSUQF8fi2cKD2rucxuTprBTPzg/uywRNv0BGgi/O2Xva8Rhvp7pBGU=
X-Gm-Gg: ASbGncvS5PU1EUnfAVrkNbp86Ttt3Hh9whKatJp8h7RzOGhykDh01ypdiRDttaMpA0w
	RmKcO4j7q5HA5ajIP8KZvBzoqbtF6eIiS5JEmBypwkrVjEhpqpG/bpPC5dOZhqYU9Dqd8cR9c1j
	BT3uHTt4HK7zOQcGOd9axbkyoFnbBH1laDH92EV/MwJhe79OTS269IMijN8LEXg0EG9PdS0vlvH
	73xfwG6SamaPoP38mJ0FIjtBl6pFqVQY1BZNIXS5/j/BxCpu+AUVfyfA3S3YJQGTEC9/TEXW5px
	eEK6eB2kaGUECXNoHGQOvSeXXe57gQ==
X-Google-Smtp-Source: AGHT+IFNWhkJVAJckm6/eNAWU6WXd/hjHauSXtKnuiWCrx2cr6kF+AVPGV20Vj2333ehZHP0bITu8Q==
X-Received: by 2002:a2e:bd82:0:b0:300:1f05:5bcb with SMTP id 38308e7fff4ca-3001f055dc6mr2766501fa.16.1733351554688;
        Wed, 04 Dec 2024 14:32:34 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30020d85256sm51301fa.11.2024.12.04.14.32.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Dec 2024 14:32:34 -0800 (PST)
Date: Thu, 5 Dec 2024 00:32:31 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Melody Olvera <quic_molvera@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Taniya Das <quic_tdas@quicinc.com>, linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: Re: [PATCH v3 3/8] clk: qcom: rpmh: Add support for SM8750 rpmh
 clocks
Message-ID: <a2ztbxi2sth6pws6vtw2t7tnrqfh3d3j4dhbphey4vckkkdjep@jrgtpu7uw57z>
References: <20241204-sm8750_master_clks-v3-0-1a8f31a53a86@quicinc.com>
 <20241204-sm8750_master_clks-v3-3-1a8f31a53a86@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241204-sm8750_master_clks-v3-3-1a8f31a53a86@quicinc.com>

On Wed, Dec 04, 2024 at 11:37:15AM -0800, Melody Olvera wrote:
> From: Taniya Das <quic_tdas@quicinc.com>
> 
> Add the RPMH clocks present in SM8750 SoC.
> 
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> Signed-off-by: Taniya Das <quic_tdas@quicinc.com>
> ---
>  drivers/clk/qcom/clk-rpmh.c | 24 ++++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

