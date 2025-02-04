Return-Path: <devicetree+bounces-143076-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FB98A27FBF
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 00:41:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6E0797A193B
	for <lists+devicetree@lfdr.de>; Tue,  4 Feb 2025 23:40:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5177F21C9EE;
	Tue,  4 Feb 2025 23:41:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OjG4DoLK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B0312144AD
	for <devicetree@vger.kernel.org>; Tue,  4 Feb 2025 23:40:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738712461; cv=none; b=XdgfPhHpnuCWyZOoLrmwJNe1UobucIzCeiUzMOSyi8pj01vUYRozBC8zCHB/lLOOQikJY+UFGIHHPMibrFg3T7WCt4EsND5p/a7koktwXwVAQr9h3pJs+FVzd2tSowXI/I4DHQSIMT5lOmWxh4tCR4vrePup7kucfvv9luiYPa4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738712461; c=relaxed/simple;
	bh=xNWF85pDr4+xBoLRlJq3hULFJcv9TwBGp0re49+DjQg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GMNPE5DFDVYfp4nIG7kgsfv5ESPqEVQ/PwZGnUOpxUOt6t1dZumDVbtY2M5BGHt7PTJ1XLPMrbHghtX4hrvWGx7R2yoROKtw6OBdcVJ8RS7NOnfOm8qJt0Z+yunDg3wfhIUmYAXe8GrddVK2FhlJYDsah/RPqxwCROazRZMxgjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OjG4DoLK; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-5401bd6cdb4so6557809e87.2
        for <devicetree@vger.kernel.org>; Tue, 04 Feb 2025 15:40:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738712457; x=1739317257; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=IXlvd/4s277O8sJg1sChY2UAj1tE+2LPMkXAQD6QJOg=;
        b=OjG4DoLKeqHmwtpSXkYzsoDBCEojK6938gWN8BXUoiFVxDE0gO6hQS2R7NoTEHKNCb
         Qd/cogzesxvq9xGPjXCe1qsfJu6wCbFHT32QMzpTH/CiCl+6mL2Pqcfke/1ygqrTh9kh
         MvZfkbuDv2CAE74zFIPzKTfeWPtIdZvU/8m7d1dOdJGnwVCXsulqS1HwP43Df0Zxs/gk
         ecJpkeyZVwxpZIeVTss6yo+b8KHKxQeA9gVW9JN9ARFT+VjiqyHJnzCnPAT8BBHAW1xK
         fMPAJqK2X8gS8anxY+AoDf9c3xA2JG85pOdOQ9cyqSmU8AbGlDqF4Nxniv+jEnaVQKVp
         tWJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738712457; x=1739317257;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IXlvd/4s277O8sJg1sChY2UAj1tE+2LPMkXAQD6QJOg=;
        b=CEe8O+RiBBvqOsaQCyPBjAXv1c1sfyM4dwqT8fiFf4gtC+gsNTQHsdF3O+/M5cHwTm
         UnXAyGJUWnxQKZCoIv6H6VHRnPivRx+38pL3tqcHhY5+SctQHdya3FFOocLpyRwBxBgW
         Gpe8rgPAtxch6OCS1FkPjr+65nOTBR1Nvd/jtPQAc5y+Y5EyZ9zmBXkL7Y5hPOMKcL7e
         /oV68tRSOCWuzrnIRRyMTjbLScgmpN754clAmn1a14aiy/YFxJZ7+NP82liXOMFCPK/f
         gMMYnBQohsYKfVQy7rY2pxE056EkPSbvcYPp9hhoBdaSo19x3xUAVTVPAJ3Ranpv8Wrj
         TJ3g==
X-Forwarded-Encrypted: i=1; AJvYcCVFJqnC0SEtSdtJpB1Ak0AhYh8AvpCjXbZA2pyQ7nx2rZGJes2yYJWjRnJFeqib1cHeLwA4grQr3Hgv@vger.kernel.org
X-Gm-Message-State: AOJu0YzHc8cYUDsOWcOGOjeillmIS8TnhOVleHThBu5EyGKDtBcpnVR8
	50KxDDw1QWZJfDzQwl2WLPAy92CdYbTpTq2A2uRSH8gyBedmcTAN/zJ08wNpzjM=
X-Gm-Gg: ASbGncsDkIHJryCfTS2WTRNnje7ko6k3pLK2uTVjJtdVP5EOL1ZVtOUpNUbk2pMe2hy
	hr1NYErj2Yl5K2jgpDA4YxHU2L9Kn/Cs180PobsKhKdn6iHToq+FP20yWEEyUO5dF1Hoyf/JKxB
	9NRrrzuyftuNdF2RVUdkT8ctuEnFkdPiDM3N5sZE9/j04hz6xhssrLB+MZMvNOZbs7s03Sy+fFM
	1rwEZtgIyMLQ6sjwvdKr21H1WNTseRPcAGsIQeTWUjppahK+/CFtFkFST1NKn6DQarURQQEJqJr
	q8aADvdje+fGNZ3Qs8HW0pTHl/NoCqEHTklpvy+8HJS3yiTWPaV9ezHeV8v38ODNLglTpuA=
X-Google-Smtp-Source: AGHT+IHEzXTAlRuX8+IIVfXALHdW/BAW9a8mxr7wK4XkIPEw/mvPumPoh0/pqNfSCsa9c8jsyssN5g==
X-Received: by 2002:a05:6512:1189:b0:540:22e0:1f63 with SMTP id 2adb3069b0e04-54405a1075bmr142615e87.19.1738712457347;
        Tue, 04 Feb 2025 15:40:57 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-543ebeb0993sm1694460e87.132.2025.02.04.15.40.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Feb 2025 15:40:55 -0800 (PST)
Date: Wed, 5 Feb 2025 01:40:53 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>
Cc: Akhil P Oommen <quic_akhilpo@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 1/5] nvmem: core: fix bit offsets of more than one byte
Message-ID: <tgttk4pxzgsv4g2r5k44k2mtbh27cbpwth4xuj2okulucodei3@7g4gotk6z3cl>
References: <20250109-sar2130p-nvmem-v4-0-633739fe5f11@linaro.org>
 <20250109-sar2130p-nvmem-v4-1-633739fe5f11@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250109-sar2130p-nvmem-v4-1-633739fe5f11@linaro.org>

On Thu, Jan 09, 2025 at 06:35:45AM +0200, Dmitry Baryshkov wrote:
> If the NVMEM specifies a stride to access data, reading particular cell
> might require bit offset that is bigger than one byte. Rework NVMEM core
> code to support bit offsets of more than 8 bits.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  drivers/nvmem/core.c | 24 +++++++++++++++++-------
>  1 file changed, 17 insertions(+), 7 deletions(-)

Srinivas, it has been almost a month ago, we are past the merge window.
Could you please review the patchset? I'd like to understand if we need
to spend more time on it or if it is fine.

-- 
With best wishes
Dmitry

