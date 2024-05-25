Return-Path: <devicetree+bounces-69191-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E6DD08CF138
	for <lists+devicetree@lfdr.de>; Sat, 25 May 2024 22:12:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 61E5E1F21660
	for <lists+devicetree@lfdr.de>; Sat, 25 May 2024 20:12:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C1B812838A;
	Sat, 25 May 2024 20:11:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EEbl0RgC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0228127B6A
	for <devicetree@vger.kernel.org>; Sat, 25 May 2024 20:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716667916; cv=none; b=qRAl8O4ZBDZ8bzvUgEPH75+YeU3m5iOyR7b2xvuOiBb4IIUuoVqtgt3Vy+1AeeI1ILNVJ3gi8s2xKv1vtImCuF497NL/jGJyM9zs3obkBcpPRUGbvMsR0GLMu5ykCI6tqQUZYelYxEIQ0dmGn+6KfiPU/l6iEZ7bWOIRJI9J5N0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716667916; c=relaxed/simple;
	bh=us9ik86KhVJieBUfWzAd0oY32qXp0XESF6mTPnXJHr8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QsaJuVwNkvwmMTAVdPcyakT4Dewx0QO/MbRY4R0vjVCM0TBr5ijaOZ/oz7C6NRSJk1oJt8+hlxJXwJVd/QXChm9YphWOEanLFSWNn42UMvf5pizsWe7aMrQHWXPITQDoL6QGBbG4neZWlX9vTbNxffjmRIfNcL8Aa1sPiZ0GZIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EEbl0RgC; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2e716e3030aso80467091fa.2
        for <devicetree@vger.kernel.org>; Sat, 25 May 2024 13:11:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716667913; x=1717272713; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=yr0oGTIJ6hTJXhdkpnUryZauDgeE2tsEAIL5rTX1fRE=;
        b=EEbl0RgCe/KoVM83A/D6hSUMQ97Ly8LrduYJQmcLmI+DPPzimhkpJ6dJb9Kaa/R4V2
         LHz25F37tI2Z4N5TI6k5jdqwLWKEoQUqwsLkGc5P7/RPOn/ddDA9qCPJLiZHvPGbqnnV
         vrDS/tVoPmK7dCVBNBerHHnVjfv0Uc83AJu2QAxJW8zEvbapQ7ARpWsRSOgZ7AcAW1f6
         OxCGZi5qvqxp5kViPOvNV2Tzx/ho/WOxZn+NStbVASW4vrk0chofRJcKVx73UBcpTjYP
         cqyLyHxqXqLdaAeIhRsbvrURuzJoyyXS2p34MNC67DJ+2y1fK4vGZwl3PwMBGw3WLhyz
         Baaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716667913; x=1717272713;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yr0oGTIJ6hTJXhdkpnUryZauDgeE2tsEAIL5rTX1fRE=;
        b=BrWUtykluoiZzQKpw5DstvLHOok46Q6N0oF2d8QWgK4kzOk024A2hF39ZJ4H/EMD7X
         xc3WJGDDz30H7Ch9gBn76PAg1FJdpIZFWB4ntiuoi5+q/blK8x27/xFn8W5MILfUDbC8
         1G8vgr3RK9EtovjzM8+1rGggbqX3lpi9CLURO+gEYUiEuP41MSt0use9WmqMnqcLrrRw
         J7A20NEE3dDoPkqOzvBh+23ZwjuNzdm8dPduFmbQ7VIIv9kREaWVyONCcNcSAYx3MeL7
         hhWZ2qOM2QfrnoHal36b4n5XZmyDI+BUuCp5+Lz0xp+tH87mdAh++zpimCOyui0qjBOD
         iGGA==
X-Forwarded-Encrypted: i=1; AJvYcCX2uJEYqscsdfbSvUCUYlNMbBrGATIojmQkqbYmdvbIiwvWHpu1cwZKVo0fxDNVAgJsxOzruN3j98L56yVLB2tQuIo1t6LPJqhSJw==
X-Gm-Message-State: AOJu0YwaTilRI8C8o8CIdyqEvclkAji2Thhd1WIx8YYVgMZ/eVxJPuln
	NZ0iQQSFN0Ax3l2V6myPROWWq5h6XGK1YGIIdj4LMEzhycJbpEjOojmtJB5y545SQoYrTagFupZ
	U
X-Google-Smtp-Source: AGHT+IEMp9+eMiHdss+tfC19xR2VRaqqnzTBjHPqAfFT4ZS1DOkUxYnHpVVDnTZPpt/FjHWUTEv4Sg==
X-Received: by 2002:a2e:918d:0:b0:2df:c1e7:ab65 with SMTP id 38308e7fff4ca-2e95b0c0334mr33713441fa.26.1716667913057;
        Sat, 25 May 2024 13:11:53 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2e95bcd7900sm8861601fa.36.2024.05.25.13.11.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 May 2024 13:11:52 -0700 (PDT)
Date: Sat, 25 May 2024 23:11:51 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Bjorn Andersson <quic_bjorande@quicinc.com>
Subject: Re: [PATCH] arm64: dts: qcom: sc8180x: Add UFS PHY power-domain
Message-ID: <cl6meuv3l673hqz74rpqd4ibef4w2aiuwt7fsbnlqmejhsr3nu@a54bz67d7vtb>
References: <20240525-sc8180x-ufs-phy-add-power-domain-v1-1-019d515b1c26@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240525-sc8180x-ufs-phy-add-power-domain-v1-1-019d515b1c26@quicinc.com>

On Sat, May 25, 2024 at 10:50:21AM -0700, Bjorn Andersson wrote:
> From: Bjorn Andersson <quic_bjorande@quicinc.com>
> 
> As defined by the binding, the UFS PHY node should have a power-domain,
> add this.
> 
> Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sc8180x.dtsi | 1 +
>  1 file changed, 1 insertion(+)
> 

https://patchwork.kernel.org/project/linux-arm-msm/patch/20240501-qcom-phy-fixes-v1-5-f1fd15c33fb3@linaro.org/

-- 
With best wishes
Dmitry

