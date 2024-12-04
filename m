Return-Path: <devicetree+bounces-127122-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 696D49E47BD
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 23:21:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2AF1A285453
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 22:21:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D37A1AB6FF;
	Wed,  4 Dec 2024 22:21:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="unDacFOl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE5B61922F5
	for <devicetree@vger.kernel.org>; Wed,  4 Dec 2024 22:21:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733350903; cv=none; b=eON+O4DfcHLfiwOvMnzlftppJAe++qHNzF7/u2cEev5r8gu1OnJH5TB6RZ1ItZtHtEk6hD8nMm9G+AxZvxgGvYevtBii1+EVbICUaaXqYvT0Dc/nWArwkTPC2lUgptSVVLxGLYltR+0OUYePiZoU9R+Fj+DX5vMow3F1HKVpRHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733350903; c=relaxed/simple;
	bh=ynCQIKaY+RY+h1mU8pvSX2SiTqmZYGjRMsw+r6UeonM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Vt4BExNNETX+Bj4nhvooTYJmjDR2QhO9FfmA/ZIFj5yH/dkzoCvaIY60a5JEsaUStfWA+Prcz4J4pRJLm/6o+e49ZXwZjG1DpZMtoxIw7Azbf5Eu0Ly5oIz2emawH8AxNIbf7cvjaq9czhoY9Y+AywXvtPAx4MVOPsAt6l0McjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=unDacFOl; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2ffa8df8850so2152761fa.3
        for <devicetree@vger.kernel.org>; Wed, 04 Dec 2024 14:21:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733350900; x=1733955700; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ssroB42yRh1u1AaAuxmK7898utt863yn1OoYX0qH900=;
        b=unDacFOl5i0puQgH5ZqAGLQP6Bu2/0cjEmy2UhkiEVJxbtUYdXtq7jdVk0b+ti7qrM
         PzoqkZy5mLfancB2doKpbNZUeABrmyE+VS4cEP44A2O9EUZuCR4nwl5FYkaN2Rtk1+rg
         2UlzHAdMlMDHdHpDitVta4RJDQn2+RREkfmCG1V9NKUeyZHJ5hR81DnRlBXdfCmii9eW
         9tvJGvyYu4sqvvYTgB6nikP7KhN7Pr7eZcG8mHrSGRpKndAeZD5fbzeMqcHquHKm/vd6
         KmddrhPIdl0YBvl56qflg+2FgF1mgAu3t5rZ7gJXcS2S+7HeQ7Zdl2X/NIAUhfD26ZAl
         6uXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733350900; x=1733955700;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ssroB42yRh1u1AaAuxmK7898utt863yn1OoYX0qH900=;
        b=nLvkON906ELqcqbHG6DL02d6ixiH13/zq+E/sPc5c9mREYbmkDezzQAP/gm9qJRC7e
         keHtQcMf4dZp3zpnGeFEgQ3gR+XznzFHL1ZJY8ShjsIpiHc1en2Lb7aF1XqiuQb0bJLE
         tx27+/axF5d2it5mFyoh/t76Z4zh20f8lBCXb7FCnfcSOPxLTlZ2rd91qnTqsQcyvlxL
         E3mtraKPSyWl25uCAoOjm2opA4M4e7uFlC4AXwo1zCh3ihPM9lK7Jvot0lsF6dN2Ylqw
         OxFoomq32qQjzLa3RCdniyTjFus7hb/lS80k9DskJq2cbGmZdfT/I1VspmupTZOZ3eUY
         nu/g==
X-Forwarded-Encrypted: i=1; AJvYcCWitc0fw1mO1+gEWifYFb89ydOR08tJlV/6/Owwfm2rsQxldUF5yK0XdL5YInYrxhcMk5goiqAKRKEf@vger.kernel.org
X-Gm-Message-State: AOJu0YxWAdlVBpIDwGugUlZ8szksMWapKldxvswL46BoN1mozwlUbc9i
	um6rWAW7o98kAZbwf+1ICyzY8Pwc8uJ0d5+dbNKL0bhmQvkk/Nxh0SCgqA6doNs=
X-Gm-Gg: ASbGncv4CvCJl3VQRvWzepRMa46HEpcUp1GXQ2CthTAAhb78zG/d/UGcq06zS8QCSyH
	8ILiWBKCWniXX4HHUwf5mzQAMAUj7mJb0JOXkihYWbzDngwy+uMgft6jABCzN8OWuLJN8VUiW4M
	/ETIBMXam4hCtaf9cHN3VbURkOJdYVRwH4eov4vwxMoW2ytMmeC9KfrNxGcow2lPKkowoPbGwdV
	RlOupIdtiydsOIea9Oa/cdzbVkjL4M4izRrHyrzrLd4plSEwhncUPY5col7auH3m0ZtaLmMgc4A
	TkWuNzndhPdKWNzSxRisOzpomL/m6g==
X-Google-Smtp-Source: AGHT+IFCUURoGURSazReJ3S1XWV/nC/IWBCyY9mrKUqoDWb/fFmY6dc28c8onAtnqSuGDAmJzp67tA==
X-Received: by 2002:a2e:968c:0:b0:300:16d7:456e with SMTP id 38308e7fff4ca-30016d7485dmr23309651fa.22.1733350900029;
        Wed, 04 Dec 2024 14:21:40 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30020d8527dsm28411fa.6.2024.12.04.14.21.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Dec 2024 14:21:38 -0800 (PST)
Date: Thu, 5 Dec 2024 00:21:36 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Melody Olvera <quic_molvera@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Taniya Das <quic_tdas@quicinc.com>, linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/8] clk: qcom: rpmh: Sort the match table
 alphabetically
Message-ID: <7jfntcbeejobjwg5oaggma5ygzxfj6aiw2mgv7elreijegoywr@skol6frm2j6j>
References: <20241204-sm8750_master_clks-v3-0-1a8f31a53a86@quicinc.com>
 <20241204-sm8750_master_clks-v3-2-1a8f31a53a86@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241204-sm8750_master_clks-v3-2-1a8f31a53a86@quicinc.com>

On Wed, Dec 04, 2024 at 11:37:14AM -0800, Melody Olvera wrote:
> From: Taniya Das <quic_tdas@quicinc.com>
> 
> Update the match table for SC7280 to sort it in alphabetical order.
> 
> Signed-off-by: Taniya Das <quic_tdas@quicinc.com>
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> ---
>  drivers/clk/qcom/clk-rpmh.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

