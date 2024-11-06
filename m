Return-Path: <devicetree+bounces-119297-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F9509BDED0
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 07:25:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 774671C2222F
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 06:25:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11C7619259D;
	Wed,  6 Nov 2024 06:25:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="coTNmeJm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D05D192580
	for <devicetree@vger.kernel.org>; Wed,  6 Nov 2024 06:25:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730874307; cv=none; b=qKT0GpaXhKYKlhTeijMh5fump0fbFOw6uAt6FDPSd2Hw9jugc6VGSY1pdPGxmmVfciVt8C4z7t0c89WmBJ78ymf6cSMrtVdmjW+06gpuua9mkpmRSnFYyWroM9FzOJdwLaL/DsdG09JHpOybcMdkasHbCGMAqj5So8TptS0fvSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730874307; c=relaxed/simple;
	bh=pd1RPbDvyKAdutsoHyIAPw2O4/BwDyOwjfZO5fZ1cPc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IPITKxga6M5SEcFxdUKYdbWfK/vvJBxCMzrvE1cOgGUc09KP410pCwhjE3AMS6iMtwgJvXU5G3Z1kaJeD+9nlzvKtuQmpIelfb58hjg7WZLQpJmkGbKTdn+RMyVBGULyXme9JuDNA5KQQy+7rMgdTj1jPIy8z8NCCaaZJq4syaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=coTNmeJm; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2fb599aac99so54476181fa.1
        for <devicetree@vger.kernel.org>; Tue, 05 Nov 2024 22:25:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730874303; x=1731479103; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=wxFZHhfOgUAesJdJAQ8LrwzR6K+3waeqdGRbUpVHTOk=;
        b=coTNmeJmKtY8QriIHJSdjWfIVDCuyDp2mgdAKjolcG19xRI8l19i0gGqcIgyOgnsff
         +azkeJR266IOtwsewXQcM8qB3sWgwF2vJjqRDUR6Gi/RN55A8PFGw7SusOLgqbNkMZr8
         pKDKnC3iBnc2vBfAy6zP9LUJz5NlUQ4J7xVqAyXJEtcipEb3w5y0C/ja0gvMH0k8QBDs
         SCQFnS9HCwQzo/xDB2cyjO/MstJtXYkB4Gg4TMlBhud626BFSM3oWRR1l3nm1ZMjTtbv
         /1lgh0sVHN5fA696sMAh86yrb8n2E9lKYTbMLJh8Fbl+zD0x21DtFOvZXOLMehQwi4eh
         K/8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730874303; x=1731479103;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wxFZHhfOgUAesJdJAQ8LrwzR6K+3waeqdGRbUpVHTOk=;
        b=lsZxrOW1zU68j6WOkjpDG4MY4bAaJO7jNI/HDD4zzuuDeB7rc99MmEbJyy7GcWeQVX
         5yZgNKu/OkP9inlY/5KDPcwKsuGCzY0z6wpnjH6reaE8XH8ayLm3i+NTIk/HuPcC6Gg3
         iPqCIPT25BzFmXCd91S9TXiqOyeVbAst58cj6JWKVi5oD+Y+yyVOLrE3slePPC+n1KiD
         10M8GXQ93MGnHROCiD/BI0WCAmUrKTROfBF5Y5bDwaXNXP+lL/9TdIVBREHvmU5cMZEn
         OULKIgZTLI2MunWC7Eacrv5smhyeX9H777knIq/X9p+yPaTHlv96khZOngfTj/F3Uamu
         34Fg==
X-Forwarded-Encrypted: i=1; AJvYcCWq/31NyxMl6nCSGt2Ad8sIRmxe4R0QwCGidTPS/8vhpwGpnMutIWXiFxM10zcqmOHmMFdCZLb8lAYg@vger.kernel.org
X-Gm-Message-State: AOJu0YwCJHzy7IVsk/A+PKq3PAiYW52EXGtNR6RC+uoBX6St7bEQYaXb
	6c/W2D48Apv8NDpsgCA9ZB6OSbcBMDY79mk+wQNW7rEhVmhr9ybnUETrAO15UkQ=
X-Google-Smtp-Source: AGHT+IFZXdHjp1TRKU7+ynZpQK+grMmwldqqRbucDzcuIXGOlLftDdZVpl2Qy+OT1fZCuEwFdee2DQ==
X-Received: by 2002:a2e:a904:0:b0:2fb:510c:7236 with SMTP id 38308e7fff4ca-2fedb831551mr96576041fa.40.1730874303379;
        Tue, 05 Nov 2024 22:25:03 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2fdef8a6611sm23414431fa.90.2024.11.05.22.25.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Nov 2024 22:25:02 -0800 (PST)
Date: Wed, 6 Nov 2024 08:24:59 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
Cc: srinivas.kandagatla@linaro.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, amitk@kernel.org, thara.gopinath@gmail.com, rafael@kernel.org, 
	daniel.lezcano@linaro.org, rui.zhang@intel.com, lukasz.luba@arm.com, andersson@kernel.org, 
	konradybcio@kernel.org, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, quic_srichara@quicinc.com, 
	quic_varada@quicinc.com
Subject: Re: [PATCH v6 3/7] thermal/drivers/tsens: Add TSENS enable and
 calibration support for V2
Message-ID: <tputkypwyu6hvekawcfyywunzxxkwig6ydycry5t224ubh7sym@ynftehi7yxki>
References: <20241104124413.2012794-1-quic_mmanikan@quicinc.com>
 <20241104124413.2012794-4-quic_mmanikan@quicinc.com>
 <ni4y5yf5uymum4rinlr35tnko6bgxscmchw236h2c7dxxojxci@upzwx4xvh2st>
 <441eb5ca-dfae-4f35-8026-61b70c23c4c0@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <441eb5ca-dfae-4f35-8026-61b70c23c4c0@quicinc.com>

On Wed, Nov 06, 2024 at 11:46:26AM +0530, Manikanta Mylavarapu wrote:
> 
> 
> On 11/5/2024 1:12 AM, Dmitry Baryshkov wrote:
> > On Mon, Nov 04, 2024 at 06:14:09PM +0530, Manikanta Mylavarapu wrote:

> >> +static int tsens_v2_calibration(struct tsens_priv *priv)
> >> +{
> >> +	struct device *dev = priv->dev;
> >> +	u32 mode, base0, base1;
> >> +	int i, ret;
> >> +
> >> +	if (priv->num_sensors > MAX_SENSORS)
> >> +		return -EINVAL;
> >> +
> >> +	ret = nvmem_cell_read_variable_le_u32(priv->dev, "mode", &mode);
> >> +	if (ret == -ENOENT)
> >> +		dev_warn(priv->dev, "Calibration data not present in DT\n");
> >> +	if (ret < 0)
> >> +		return ret;
> >> +
> >> +	dev_dbg(priv->dev, "calibration mode is %d\n", mode);
> >> +
> >> +	ret = nvmem_cell_read_variable_le_u32(priv->dev, "base0", &base0);
> >> +	if (ret < 0)
> >> +		return ret;
> >> +
> >> +	ret = nvmem_cell_read_variable_le_u32(priv->dev, "base1", &base1);
> > 
> > Is this actually base0 / base1 or rather base1 / base2 as used by the
> > tsens v0.1 / v1 ?
> > 
> 
> As per qualcomm internal register guide, these registers are named as base0 and base1.

Ack

> 
> Thanks & Regards,
> Manikanta.

-- 
With best wishes
Dmitry

