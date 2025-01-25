Return-Path: <devicetree+bounces-140916-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 413D3A1C49C
	for <lists+devicetree@lfdr.de>; Sat, 25 Jan 2025 18:30:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BD41B3A8D46
	for <lists+devicetree@lfdr.de>; Sat, 25 Jan 2025 17:30:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37EDB43172;
	Sat, 25 Jan 2025 17:30:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VuXKvog3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45D1B2AEF1
	for <devicetree@vger.kernel.org>; Sat, 25 Jan 2025 17:30:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737826230; cv=none; b=HslcJX1foh0Gx25WedHb5kSGCkpWu3NFHmNHSWlZw4JHnV/uXOPF0yQ42QLBMOhMm7pabnXqXcCruIBxZ+EZGwF2/au7TGxYOj1ftJfVXheSkedAGUhLH2fBbWyRyhEoP8YQEWtdoDM95gZUAi2T7VOBTqz9Enyei25vpph75Tw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737826230; c=relaxed/simple;
	bh=s7ieX5CKFHuwQrcOmb8RVPW9HCuCK4jl6dIVeQLv2Pc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eqMarzTgkC7spTJD4CSjY7E8KM3vDZJg0uJMqJQHclR49soaBQXxVjCjK+ZM2u7DzeRyJOZpKAodnAEvU19d3LCB8P4nKPaTgi1qdJwhAWEI4vsv7Z81YMwY0acxFw1N6fhQrLAd306g6yEgF431+k9AL4U4sE5PghxF7eIdmsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VuXKvog3; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-3043e84c687so26137811fa.1
        for <devicetree@vger.kernel.org>; Sat, 25 Jan 2025 09:30:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737826226; x=1738431026; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=US0EnBiHsIYKJlqPkzCqVbNBc2Ls+ZuNd0+qd6Uqb/Y=;
        b=VuXKvog3DgVwxznx9B8ObJAM1jFUii/suSe7R/rhkbqcsC0QshYpVe91tC+jNavJxY
         3ehpcIgs6GUk7QQg32uCYXITbq5RbnAeE7SqAh0JVctgFQQQz2ie4ESJvVRbQB6lIPca
         CJMXc5HDExzo3NzuWdK5oSVHlrID0gj2Db74tu4hFpLtZB8OG4tEMUqt9nnCFIV7j76n
         8es1IsAuNdeWwLq37feT1uT6widku+XlGX/m5UUGQrFsat+z4sIJj32zdk0UIUgqWNXe
         e04ofljHYn0XMjvUUUdvgApobytLeqozZwoyld5Ge9d7FJz05xmVbvsaSQPu03mGNqxW
         tQKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737826226; x=1738431026;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=US0EnBiHsIYKJlqPkzCqVbNBc2Ls+ZuNd0+qd6Uqb/Y=;
        b=wSoeB6nsLuZXCNNCC3lGngHpMZ27ZK9Y+HLmZK54xEfd6Wc6dEVXNzRkh1+CBT12IF
         MwS/7oasrkOiTG8CHg7wieSQnG0sP8WXnM25h961tGkIwQh+wzGvVm8we+/ASUlrBo5F
         ++eUoqUslVTL2bg4lrprKFw8/HaWc8ovgmmvD1/GNBsVdnG3FtYkjpo0A8RbL43Jnt/i
         +Koqgprg6E5FVMgvmeBLZ5yw2yLq9x0EH3/CdcZ78TASguyA5P/wR9hWj4JlIKf6Mwn8
         tgEtwO6Bi+Slqn01mHg1vuPREz/9rtwtxWgLrtJsQ89eWId7ypBAYK7X4Mahsg+yOEtq
         vlQg==
X-Forwarded-Encrypted: i=1; AJvYcCVql7xjAiANmngDZ13TZCdUtHPPt2Av4IO40K+tOnAK2ncMWyl2yEZGJGvPOkbd/pKQ80X4F307FpHi@vger.kernel.org
X-Gm-Message-State: AOJu0YxKfmMnuS5wb5jALB0eOTD5kA+t4l6T1BePmo+JblIDRrdMAM9m
	OTP3y+iGoO+H2TuC/NOBUdaxUXOrYC14BTuh4J7p73zH8jMg1O8ZPcWYBVVU6dg=
X-Gm-Gg: ASbGncsLLt22Y9K3i3eA6kf5ooo9/rK7GDqNnw8suJ58XXCYle+lcWBd9MSWvmG9sD+
	e1kJygFMWAgM1GjuQIPWUVEJwdZECK1Ihv+kY2IzSYXHlf4Hc0uAmmA3Xr5JR//xiUpFLt3wlN1
	uIG3L4KXivsGHpp7LK+wy1kbFtVQmNiuapxQ+zrFNo7N+ZnXXPOmezAAW6Y3wcz8vhigpLLMACU
	jW+taQUuRdF46+4aI/+ynTfViH4a1tmvYOoRpOsLnP+kKEVWAojjzWxCaYqeKklk3o+yRIT9D0K
	wnAMlJ4nxAFihYApxPgW6jNdH8cMPhHJkJG63NID08Gc7toaLPeZisnLlL48
X-Google-Smtp-Source: AGHT+IEJdOGBDBJSDCvFhU2PUzzZMFjItFiSFpgzHyoEnKNXwK9asBOtQ13f6ME37s/+fooYaxI9aA==
X-Received: by 2002:a2e:be04:0:b0:302:3ff6:c8c6 with SMTP id 38308e7fff4ca-3072cb3cd60mr129216181fa.33.1737826226314;
        Sat, 25 Jan 2025 09:30:26 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3076bacb2bfsm7581241fa.29.2025.01.25.09.30.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Jan 2025 09:30:25 -0800 (PST)
Date: Sat, 25 Jan 2025 19:30:23 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Marijn Suijten <marijn.suijten@somainline.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 3/6] phy: qcom: qmp-pcie: Add X1P42100 Gen4x4 PHY
Message-ID: <h6zfhxkc4dj2ueaxipha6prbvmv7pnqglghtjs7vkhlc2s7ndi@vhbj4uojlzwd>
References: <20250125-topic-x1p4_dts-v1-0-02659a08b044@oss.qualcomm.com>
 <20250125-topic-x1p4_dts-v1-3-02659a08b044@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250125-topic-x1p4_dts-v1-3-02659a08b044@oss.qualcomm.com>

On Sat, Jan 25, 2025 at 04:31:19AM +0100, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Add a new, common configuration for Gen4x4 V6 PHYs without an init
> sequence.
> 
> The bootloader configures the hardware once and the OS retains that
> configuration by using the NOCSR reset line (which doesn't drop
> register state on assert) in place of the "full reset" one.

I know your opinion, but my 2c would still be for not depending on the
bootloader. I think that was the rule for ages for many possible
reasons.

> 
> Use this new configuration for X1P42100's Gen4x4 PHY.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)

-- 
With best wishes
Dmitry

