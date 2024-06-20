Return-Path: <devicetree+bounces-77984-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F08B910959
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 17:10:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 05CD1281D90
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 15:09:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EDA3E1AF687;
	Thu, 20 Jun 2024 15:09:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="V0P6wIfa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D2EC1AE086
	for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 15:09:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718896196; cv=none; b=iSCEDRWUMnyY10i3dfL3eOqlMpz6fJVrNRYHWE7VCXLsb8NrY2kWC3KoE8/DcxSSWTXkAJpXQ04UR7/sakGm8t2KDfqnlRXqIsI7iSOd1OAQoTs10k608RdAng+jUxg0yeFOalAXaYraGbHT84Jp+q8OpNWdm9vuPSEyE+aIplw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718896196; c=relaxed/simple;
	bh=mfiwSIjC731sExU1owoEvvO8FCSEVIoCYkKggzTldDE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KrNLGu7WDT5BHCyq7vwz74t78viXl/WZ1pgvWL61IxymV6VdMXq/VycIeWIO7lPIot6Ck6j7Vh5q9QzQ54Fov7AgtFlQrWpdy06sHwYunS5/oEqLRTe7g1gDCuKuXMFaWeswcdAgT5fedIKaILEbtdO4kGj1ce8pzRrbOO045Qc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=V0P6wIfa; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-52c84a21b8cso894099e87.1
        for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 08:09:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718896193; x=1719500993; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0gK+thIDawbMI8D6X0tNOPUzlxQcTHptuQx1Z2ceRXM=;
        b=V0P6wIfamtHqFfdSKj+7giMe3rhe9Saloyfx06RP4zZ0dxam+nYkdJLhiYR7zFY5Ie
         qkHDnkBjV3Qu+1IxADNrakETXBVYpu+Ynzjiu7SwMfGjctAmni9ecnygedl+kMEgFywP
         p8q42rahO6+xzGYFuQISPWf2Xu4eEEvG2P4HDc7wldGhBPcq13FOI6N/Bg4Xo/zLSu/c
         6o8bBdsxJDeMwGQFzVEnDN9DjIl2ohosU7qsGOnJgIab1pHMWpCL9JKuVcb/TYMSPBvz
         LL6B72fExJ34Jn2uT+YyrqVrdUAXJcS7uLZWnF8jmyOe6+cp2mUO5jWmphIaWC6NX8f+
         VOpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718896193; x=1719500993;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0gK+thIDawbMI8D6X0tNOPUzlxQcTHptuQx1Z2ceRXM=;
        b=YWg+8N6Ym7xFLcUSNSvhsfbYpegCddJVo7SzVPIWOhi52XJ0zFGyAhQ7slkJUHctQh
         0XQ+5NvHpgETCxxP+Y0fdIHPwPclrqYCOhl+XmAh+6C37O2zTNqB8BvMzZ6grVmJP66e
         iNfkPEWTGchLIk6DN/ET7nb0gm/Y33h/C1KmM0CFjPK1oFFCp36wUenAi2ELXDhKxwr5
         tFdlDzyifjBV9yyqblOTaMgpsRZCKI12g5tvCfNHwBGLCXyrJqbViaATT0+RPGpjfN3F
         g9RNwZAzAcNmmyvPnC7rs5xutKfPuH90hUDHOgH71iH9PkzbhLExoLnSe1HlR6WX0THI
         9MDw==
X-Forwarded-Encrypted: i=1; AJvYcCV0SwXbqSbfNWUbYPsQP9xoatmzQgGEoQOLmvfWUiC3IrsudWW/qiviN8m2K6VIlnmBv+lD6pI1GuunLRi04dBGkOsXqsgvgRfJhA==
X-Gm-Message-State: AOJu0YxbqFJy8jRi+1PnSXAq37yCv/rRVOMsIL5CYNVv1YUVFln7QNeO
	Ks1E/fjkHJ6+ekwSbrzgpLR7NHofJp7SNDSwwjAGZP29q1CNGKyNe4BnOO78DRk=
X-Google-Smtp-Source: AGHT+IHZ7VSN2wu7ZM55UCXbxtOpvLmg+Rz6tqxnMXIu8tRVtuNvG3de09teEXUPAPTQMcqu6Cz87A==
X-Received: by 2002:a05:6512:31d4:b0:52c:c64e:b902 with SMTP id 2adb3069b0e04-52cca1ea264mr1869080e87.27.1718896193490;
        Thu, 20 Jun 2024 08:09:53 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52ca2826269sm2091191e87.61.2024.06.20.08.09.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jun 2024 08:09:53 -0700 (PDT)
Date: Thu, 20 Jun 2024 18:09:51 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	angelogioacchino.delregno@collabora.com, andersson@kernel.org, konrad.dybcio@linaro.org, 
	mturquette@baylibre.com, sboyd@kernel.org, ulf.hansson@linaro.org, quic_sibis@quicinc.com, 
	quic_rjendra@quicinc.com, luca@z3ntu.xyz, abel.vesa@linaro.org, quic_rohiagar@quicinc.com, 
	danila@jiaxyga.com, otto.pflueger@abscue.de, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-pm@vger.kernel.org, Praveenkumar I <quic_ipkumar@quicinc.com>
Subject: Re: [PATCH v1 3/7] pmdomain: qcom: rpmpd: Add IPQ9574 power domains
Message-ID: <jfh2xygjdoapkno2jrt6w7thlylgyp2tk7oaczundhxvi26qel@ahtskgn4v6sp>
References: <20240620081427.2860066-1-quic_varada@quicinc.com>
 <20240620081427.2860066-4-quic_varada@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240620081427.2860066-4-quic_varada@quicinc.com>

On Thu, Jun 20, 2024 at 01:44:23PM GMT, Varadarajan Narayanan wrote:
> Add the APC power domain definitions used in IPQ9574.
> 
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>

The order of the S-o-B's is wrong. Who is the actual author of the
patch?

> ---
>  drivers/pmdomain/qcom/rpmpd.c | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 


-- 
With best wishes
Dmitry

