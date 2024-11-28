Return-Path: <devicetree+bounces-125311-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A2279DB878
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 14:22:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 237A3162C87
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 13:22:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 967C91A9B25;
	Thu, 28 Nov 2024 13:22:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Z8R+pAdW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE35A1A9B21
	for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 13:22:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732800167; cv=none; b=XS2B8xMoLcBf//pGWTAedrZDPJhSGvB7bQ3BDmZj5ww51vpCfBZGpIk83SQgGzDxe0/XAK2EpSauFR+JkUpJcorsKGfF8sMK/2wfrTES8GYmmxjQ5GwP6Ono/AJQ3EErkj4OozbQwnWvYgLxnfpjd+4wXtz6ELfw3ukuNRdL+KY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732800167; c=relaxed/simple;
	bh=ZRTyKOcF+BOsP+CxhKgOS1bm2CPzFXS7M1kc1Sukgn4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=e8UoK2ac5jKia6WMvNwjB69ePElIpQBvSnig6ykmcDP7ZSaux8CJYXnC8YwFWsPDgaMD2IQGsjGaEvGUzrZ3ou/S1QifsJpbuOzhVx3WBfdUyYD65IIH2OxRHOa6nZrphjkSy8qPRPwEcFhca+0EHGo6MLlkOcgfcn29TmczPBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Z8R+pAdW; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2ffb5b131d0so7325641fa.2
        for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 05:22:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732800164; x=1733404964; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0trBlkAARfcalt0wvM3utILQ/svffGiHUkuNkTIjo9g=;
        b=Z8R+pAdWxh8Ft2ueY1WbCJXpEc5aKDWRpXKwbRPVW8qkatDyoqEyOWO6/rxW7JbFcw
         O7a/PdF1BY+3gB2H6+3zaYQjwvp9xOZJR+aCcNllJJ4XWfNmLwQX+uDEASojOvpgbZDw
         FwSh4Bl6VwvsaGN3jZJL/WAw5JEOgAO/ATN6MhqAa54o7tKBsuQrk2259V9qQc/fOh7z
         fPVnjn3BVByHyVOxNIXYOnFnOEIO83oYa8iaAbb+RtMPfhSZ0RzxLNTZPgVapzpbKkoF
         K2qtXPJYF4hLDel99cLaGSg88dAl0FgyS/U00GIZW1kPIx8b2TnxJAzxxPJsglYq8Tpi
         WQzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732800164; x=1733404964;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0trBlkAARfcalt0wvM3utILQ/svffGiHUkuNkTIjo9g=;
        b=lFd4jUcC9H3zt4NTdha01pmWglgdorBe0Youwl29HVP/2jYkvzTrZAL6aBPJv3BVg/
         w1hyoE3bJ/Frd7DhQcA9sTROunY3SDmiRJMHYT4lWni9woOQOGD5XqB542/2zwd4JnWg
         RsBwcD8ouc8MG1lSq3jFeIo7MyGwedrxvJErd4kUMq1Y5EWhbFxARPn1PAIYZT4zucmA
         Ii2c3IMusD9rMOPtn+l0oPt5vZ/WFTfykIB49JYRVdNtbQsaxS4fBdRVdWepI0ppMm4U
         htfpsPYSQMdZ51LROlkwE8lBqVs9Vcl7PsgybEU2xqWzb+OcnnIKmNacV68zD555A/Sa
         TgdQ==
X-Forwarded-Encrypted: i=1; AJvYcCW7bxfdyiTDnP4PSr9hGy6BGlxsQRE6ozUb8C7GrKTossxYnEJHM1MNQ3vpzpuTf1VYhiOy3pDwMBjd@vger.kernel.org
X-Gm-Message-State: AOJu0YzSgBKcC/rmCk9D2dopZryt/2992Vej4ARMvSdTCBCM44rf/QRh
	dnAgWhaC0Xnh15Y8OS5E7HnbGqHG8l1+1rtitLrdkRcVpKX5YLxDwYcQoq87th0=
X-Gm-Gg: ASbGnctkmVEtZDW77rRu5lUNuxzIacYyZqa43DigePQWZYiX+3eG8s+J5V2NdTJHXLR
	wbF7bdx34BrulsYNx1BDuRwCON4Y6ttxIWEaHIpsuz83gECto79zrXyblH7FunnrgfkERZ6OqJO
	6dv8kri12WnvhmP74BKxgRLdByz506tAQ3yck6goX2Ayusv5h0RtKPrUz4pSy0DVszb/yr8GiLa
	d6ZEa8puH6Gt4XWEhOMGYr/9B1Et3JcwZoas3vdgQaUoXV2Tqn97/zvAaEIw520hqCYg0mbyIi4
	P04NGE2la0vMpIctDU6MkaHXUCj+4A==
X-Google-Smtp-Source: AGHT+IHEvVWrBgLarPrP+szMgf0Kt+2464HFdoUTduj2gmCoJGkPBz1dSTuSfhoY5FnSXf3ADQPMpA==
X-Received: by 2002:a05:651c:150e:b0:2ff:d41e:d1eb with SMTP id 38308e7fff4ca-2ffd60dc0b8mr25239271fa.37.1732800163793;
        Thu, 28 Nov 2024 05:22:43 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ffdfc7503dsm1894131fa.75.2024.11.28.05.22.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Nov 2024 05:22:42 -0800 (PST)
Date: Thu, 28 Nov 2024 15:22:40 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org, 
	manivannan.sadhasivam@linaro.org, bhelgaas@google.com, kw@linux.com, lpieralisi@kernel.org, 
	quic_qianyu@quicinc.com, conor+dt@kernel.org, neil.armstrong@linaro.org, 
	andersson@kernel.org, konradybcio@kernel.org, quic_tsoni@quicinc.com, 
	quic_shashim@quicinc.com, quic_kaushalk@quicinc.com, quic_tdas@quicinc.com, 
	quic_tingweiz@quicinc.com, quic_aiquny@quicinc.com, kernel@quicinc.com, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v2 2/8] phy: qcom-qmp-pcie: add dual lane PHY support for
 QCS8300
Message-ID: <3azkbn5grdficfn3ojuckfawug65piodgs4jvcaukxkvgrhtkf@2vfm3qwv23vl>
References: <20241128081056.1361739-1-quic_ziyuzhan@quicinc.com>
 <20241128081056.1361739-3-quic_ziyuzhan@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241128081056.1361739-3-quic_ziyuzhan@quicinc.com>

On Thu, Nov 28, 2024 at 04:10:50PM +0800, Ziyue Zhang wrote:
> The PCIe Gen4x2 PHY for qcs8300 has a lot of difference with sa8775p.
> So the qcs8300_qmp_gen4x2_pcie_rx_alt_tbl for qcs8300 is added.
> 
> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 89 ++++++++++++++++++++++++
>  1 file changed, 89 insertions(+)

v1 was already reviewed and got a tag which you've ignored. Please fix
your process to use b4 tool. While doing so, please collect all the tags
from v1.

-- 
With best wishes
Dmitry

