Return-Path: <devicetree+bounces-129179-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3388F9EAD84
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 11:03:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5877B282B71
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 10:03:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 330CD23DEAC;
	Tue, 10 Dec 2024 10:03:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lrh5JUcX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D6BD23DEA3
	for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 10:03:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733825030; cv=none; b=OJqLJ9I3KKQn+ZrTKk8HtaurbiBnwElslPVj4p9Yc6mob1l6h3LKK1sHwPbLkG3hsoIkyGbPGF+y32uyrJKAEfAqU4hI9wNItiv7v2iDbAYOek9uqo2lH11OH5u9z1c/VSio9mhaikKvChBDwwMLzw11NlU8IeHOUduBTVprSt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733825030; c=relaxed/simple;
	bh=2NGaNIcyHT/EketuOy+zLUfHygTrUDmbTfcEm9KU0jM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=C1FTzpBLp0lGZe71Peh3lnr1ouu8vTTkit5TYXhxja0EBZorOqrxBBE/l67lOy1Ji4/qKo2tgVL7fdS5tNpOAXtpKz+S2vz4msYuYRLUNdZOfhxfax0NysDXkoH+StM9xjogUTSdxKgk5kzWef4ZLk8SPJaZ3T23B64B8XkU3Ew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lrh5JUcX; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-53e3a5fa6aaso2866005e87.0
        for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 02:03:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733825026; x=1734429826; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=lW3VZV3IbhiRxa0/ywOK4fnntFU6GL/zecF0WLK1Tbc=;
        b=lrh5JUcXVISdmm70pOvCWF9/F03b72hl+EQ6Y2Yzi0FEYWrVwXgGlrLsei5mUMy7xx
         KdcjYWDK1MnHDXmHcyFsKyHhqWyMQ+p/9BITsEd3xDFf3FvTHIcudSxEU8Ez3ADkKeLw
         nGiaEP11mKsSajoCcTE4Yrj4qtdctEkhAt+SM/CgLbgV4e9J9oaGKzYer89aRE9W+BuP
         dm8t7OWwiO6JTrPHW23LmuI0HT4YabQbr3FZHOI5ZDIjECiAddex4lbg9PkQ9YP/hvl0
         XeinXdslyNW4Gg/bFm7FT08tQSKJauKP+1kqmxTZRXvZHK3ALodybJhj3DB1O6P23ZHu
         brKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733825026; x=1734429826;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lW3VZV3IbhiRxa0/ywOK4fnntFU6GL/zecF0WLK1Tbc=;
        b=gfOvsD+rzwpiutarnCQlfmlWAykDgaqDvl2L3LesP+y66H2sBPMo2v2p1oPKmYy/od
         4AWDqqfwpC7NDMPKa4ot5Mapbuc1OGAJ70XeXJ8W1UiDrnyf6u1PU4rsyuH5JgNgmYU6
         iXhENpPmKGuO1esSfZlFhtUm/TARbTkAAUQoQSgIEoCa3yoNENiY8AZRW+ivkVkcx/AC
         sMWeVYFkmXGcCNcl5YH4Us1PUq3Y35pAWk8n+Kq6OZWpzDrmK8WcY4HvMRQHKygGjquX
         lHBa1UXQRixqxABVu/Daf4Tcmccj+Jw6fHETqnKxZeP1xWA3fN08PWh36GaOecHFsdXY
         T0OQ==
X-Forwarded-Encrypted: i=1; AJvYcCVyDH+I2bgsiuyZCPN3KI3NEeQ3+vOo2FiHVCJ5qpHx1rMUwoFypJV1zit5X0N/x2lymWVm4BdAF0r8@vger.kernel.org
X-Gm-Message-State: AOJu0YwwZQMM94DpTJP8pYjyvY6J1PlisminWNg53vyDIgrBlSvpYGNo
	G//Jm3M4zdlJDRHRRBcEXIEuMnZX2xodjVSjRntae6Uy1qQ2dWVahQlMFcnmOig=
X-Gm-Gg: ASbGnctuhoz9aIllzes9IaJwy2Ra9GiZdBEo9FM6wmMTbrvbPQwmuEuMdPeA3x3LZxw
	6kIwhA4oaKJEmlhsOyNGMSLOvH8RbnpSFwR8ug1NUvxVk1S19ZRBZCIhw0Er2uW+v8XRdHEFGsP
	t3u1gXoaKZt4su3bl9RgBKWooNDQWvldqOXEbcabnWSbgj1z7QJSka4XaS86jvp8jlP0wbZ2M6f
	O10KCv58vsSd9gIAEi5aQMlEgUQWUp+cEKwmMptJz3TZoEKrI7VUHhYsJeYh2bgCrFnQ3kQWcFY
	9HmLjG+3fSjgppu2RrBHaGOYKL8ILdyGKg==
X-Google-Smtp-Source: AGHT+IFLOuvQG3RQchQX/UAJ3ESoE2sy2dYx5qOOAsytWGp1Si3/uCS5tZiWqNTkcM2CJmX/hxkweA==
X-Received: by 2002:a05:6512:31d2:b0:540:1c67:fc2f with SMTP id 2adb3069b0e04-540251eb26fmr859248e87.14.1733825025971;
        Tue, 10 Dec 2024 02:03:45 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53ffa80edcdsm919958e87.169.2024.12.10.02.03.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Dec 2024 02:03:44 -0800 (PST)
Date: Tue, 10 Dec 2024 12:03:42 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Xiangxu Yin <quic_xiangxuy@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Fange Zhang <quic_fangez@quicinc.com>, Li Liu <quic_lliu6@quicinc.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/2] Add support for DisplayPort on the QCS615 RIDE
 platform
Message-ID: <ua7sstdak6b236pm2ovg4jqfvxkyn6b5sbopewmczzrdtezrln@mavmb45hsyrt>
References: <20241210-add-displayport-support-to-qcs615-devicetree-v1-0-02f84a92c44b@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241210-add-displayport-support-to-qcs615-devicetree-v1-0-02f84a92c44b@quicinc.com>

On Tue, Dec 10, 2024 at 05:11:04PM +0800, Xiangxu Yin wrote:
> The patches include:
> 1.ADD DisplayPort controller and phy nodes to Qualcomm QCS615 dtsi file.
> 2.Add dp-connector, config hpd-gpios which used for Displayport hotplug detect.
> 3.Config lane mapping through data-lanes prop.
> 
> This patch series depends on below patch series:
> - dispcc
> https://lore.kernel.org/all/20241108-qcs615-mm-clockcontroller-v3-0-7d3b2d235fdf@quicinc.com/
> - dispcc dts
> https://lore.kernel.org/lkml/20241108-qcs615-mm-dt-nodes-v1-0-b2669cac0624@quicinc.com/
> - display
> https://lore.kernel.org/all/20241122-add-display-support-for-qcs615-platform-v3-0-35252e3a51fe@quicinc.com/


> - displayport driver
> https://lore.kernel.org/all/20241129-add-displayport-support-for-qcs615-platform-v1-0-09a4338d93ef@quicinc.com/

No, it doesn't. The DT and the driver can come up separately.

> 
> Signed-off-by: Xiangxu Yin <quic_xiangxuy@quicinc.com>
> 
> ---
> Xiangxu Yin (2):
>       arm64: dts: qcom: Add DisplayPort support for QCS615
>       arm64: dts: qcom: Enable DisplayPort on QCS615 RIDE platform
> 
>  arch/arm64/boot/dts/qcom/qcs615-ride.dts |  30 +++++++++
>  arch/arm64/boot/dts/qcom/qcs615.dtsi     | 107 ++++++++++++++++++++++++++++++-
>  2 files changed, 135 insertions(+), 2 deletions(-)
> ---
> base-commit: 68586ffc0ad47448d0c00a72ba61db66b127c23a
> change-id: 20241210-add-displayport-support-to-qcs615-devicetree-1575aa4e299d
> 
> Best regards,
> -- 
> xiangxuy <quic_xiangxuy@quicinc.com>
> 

-- 
With best wishes
Dmitry

