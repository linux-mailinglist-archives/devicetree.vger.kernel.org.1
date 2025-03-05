Return-Path: <devicetree+bounces-154202-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 884EFA4F4C7
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 03:39:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A02D216FDFA
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 02:39:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D849015FA7B;
	Wed,  5 Mar 2025 02:39:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SlHfb1P2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D8F8156C7B
	for <devicetree@vger.kernel.org>; Wed,  5 Mar 2025 02:39:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741142342; cv=none; b=DDsqOsnNHbGE5UoFJzRl+mi3bSR82aPV8liQO4Zu5LRPh78vrFsgBBAAtn0w6OtqiEaU1xzLfNWINdV6K7SbiT1knIS8mlIsUfBQR8Tk4jIeNANK3mUPB6O5ciQjtQH6/Uq8QAuiDUbsXj5xOLxkvAFP7YHU+A0IePWVq7URBSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741142342; c=relaxed/simple;
	bh=SQ76C5rbHLEvyAuhYgb5Co9/owZstZm6x8yOx43jG5M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Cv4bSAfU6J8VDzZj8EHclh8QNZBQP36YlAx75GftmrOFi6xWUJktYH+1WJFCpiCJk032VQ2w8XKZnefSAI1JvbdSuiR3xasaETpec6BkJXvge9c2f2hZbGjdWwA0641CbGSzSDrHmJ3GAaY7gcP4rj4U33dDUkSXIMWE4oNUvPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SlHfb1P2; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-30bb64a4060so25262061fa.2
        for <devicetree@vger.kernel.org>; Tue, 04 Mar 2025 18:39:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741142339; x=1741747139; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rLGnKKW2QVH83jr7sLdLSDsyrmFRn2bnko/hsD8r/Pg=;
        b=SlHfb1P2pCA7U6vK37ufNaTFRopWHxWdF1P00AQ6/MbSz+Szm4jtA5qrnWmqw5PmM7
         0V+BNr2GDF7UM3JUeyDn180pppEeohFPpu3co9NQZx8IHKZNY334KFjwSbB6fPdUrQ8P
         t3Kcid+zofCRqp7E44UTQM5hZdJsmEzjoVamE8rrZdVU6/3bJNm1/Wur9LoscYJuDF6D
         gG4b6ZEaly0lv1QlpXO8KHlpHu6YbD/ccxdGRFIhx+kcD7LDgiAQWcJuHiwQKjIL+rDT
         QUFTILOoy0/3ziCasly9sx1TUOYp2yQbQKkeeXzI/Wm00p63939oRaw45zGyeEpsge0r
         V8/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741142339; x=1741747139;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rLGnKKW2QVH83jr7sLdLSDsyrmFRn2bnko/hsD8r/Pg=;
        b=PuHhKCKYur2+DDpeHUQKFgsEgxLpBIAEz+uhEBDC0V5kQ698swyUXcszawHm8nvRyY
         ma/16OlXDvIm/fJysS8ns7nB5YULd6xGUYRF+vcjItVkR+YgWrC0ILpa8/zHukZo5pgq
         r/aeaadKKaDgmKGfLJ0qBsB0cDpsWJWqPlc8JP7mW5mfTMNDSoXuJtY9N8Oo5pN/aKaL
         PKMHLorW9nw7xfWO9Uk82TOta0OaKBl9ay9sRyXLE/H3nAPTA0tex2z2QXjFuprqYTmE
         vmxMjW5KMrmrMK9WM7ENXuiFpOScI9ciygWJdMxtIO++JIOmy/DqcT28hRlM+brfAImv
         M/5A==
X-Forwarded-Encrypted: i=1; AJvYcCXTYNMgvCoqLxkVUPxNQckSPsmRmEOhuOkPwxeei64Ei6PdRtluMVVTD/dj1nTjR10QPGh5/nfJxuos@vger.kernel.org
X-Gm-Message-State: AOJu0YwVMQ0cHhtVGl7mqgGrAE1y6Z1oUdYPLCBTgyPd8FVnEOaW/1Ec
	X7Z0kDxPvGYlZWKzpOW3bopDpsq9AAJhyVNjo4rHeUApeG47JAfrr+iM1obNgh4=
X-Gm-Gg: ASbGncuP74OfhArNabansRuq23On9OS74o1ufTybTFo7oIDhB4W8vrbRr5T/5DBHmYm
	zX6ot0ZOTa4gM333q05yhQBEEPrYneY6KGt2bVV1owmib8OrrbbdIvODDWA78jnotjv3ylsHQ+r
	jl4a+cXNFgWE0r7w2ytbKalLbwuf8/ET2PLqd+nKsfC8nd5nNzHsC302+vxRKU7RrouF0nHqkPP
	HIVAY/AtG+4vp9/Pf3T3hs3lLaT2SjUAUnsapLI3hgfIOPz0GtK5N7i3qpR53PZq1NmUjLyBEfa
	zt9X834q2hnQGo5QxFB40ayAy2oUiK1N+DKhHRYNb38k+VvyZKdk+dWOnVnldccqY9XH7oGR+7N
	IzAtov9iNM7/i0Wm9qhP7b2+f
X-Google-Smtp-Source: AGHT+IFcXeQaKKWQj1dnu4UH8WH8BgBFKYFWB8PfbtIdp7r23eOpCjIksDm9zsbkHWStqwV0YfIVwg==
X-Received: by 2002:a2e:be10:0:b0:308:e5e8:9d4c with SMTP id 38308e7fff4ca-30bd7af5da7mr4043671fa.28.1741142339042;
        Tue, 04 Mar 2025 18:38:59 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30bc7264141sm5553261fa.13.2025.03.04.18.38.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Mar 2025 18:38:57 -0800 (PST)
Date: Wed, 5 Mar 2025 04:38:55 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Melody Olvera <quic_molvera@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 5/9] phy: qcom: Update description for QCOM based
 eUSB2 repeater
Message-ID: <6e742b2dke3pcqq3v6nzs3gfvwau4sk4gtadzgca2zk5merzvi@ubc6l3hsafok>
References: <20250304-sm8750_usb_master-v2-0-a698a2e68e06@quicinc.com>
 <20250304-sm8750_usb_master-v2-5-a698a2e68e06@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250304-sm8750_usb_master-v2-5-a698a2e68e06@quicinc.com>

On Tue, Mar 04, 2025 at 01:56:38PM -0800, Melody Olvera wrote:
> From: Wesley Cheng <quic_wcheng@quicinc.com>
> 
> The eUSB2 repeater that exists in the QCOM PMICs are utilized for several
> different eUSB2 PHY vendors, such as M31 or Synopsys.  Hence, the wording
> needs to be updated to remove associations to a specific vendor.
> 
> Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> ---
>  drivers/phy/qualcomm/Kconfig | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

