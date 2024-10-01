Return-Path: <devicetree+bounces-106666-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C0FC998B459
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 08:30:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E3F911C23450
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 06:30:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C52A1BD028;
	Tue,  1 Oct 2024 06:29:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="n5d0fRzj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E08F41BC9F6
	for <devicetree@vger.kernel.org>; Tue,  1 Oct 2024 06:29:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727764165; cv=none; b=M41oBh31gAZ89c8/RvglglJvRrZU7bcNRWm4F9ixdoi9vnlnsqzP7EDco1LPVRMojP8YjOrjTepKvkWXGwkjFKNi0mlNLdOiFLm3bxPSA5TmFlnV3Gat15qfyKr2yOVacc/WQURd05+TnF+m7aYqXjLToj+yfWHjId6UIfhALXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727764165; c=relaxed/simple;
	bh=keWJVidIttSnqnT4xpvTji00h7Qff1uIofjU7I/h5oI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hqNufyB7FPJiRt52ltoHX0LhPlz/szTxWEv812pm8bCQoEJcm6Vl4LPfyDJyxjYrxPRHhUSTJDp3vb43jm477NEjqGyTybnlwpoFK5Sos38tXuxXGymD8wHL39GlxIblKWIgVlchyENvbs04cu3v33ISKpjSIb/63JDn/OUjHAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=n5d0fRzj; arc=none smtp.client-ip=209.85.210.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-7191fb54147so3763878b3a.2
        for <devicetree@vger.kernel.org>; Mon, 30 Sep 2024 23:29:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727764162; x=1728368962; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=3bN8Z32ZYFp79u4ESDr0JtiT5Y+0BkedNOJG76r5aVU=;
        b=n5d0fRzjOFmuY6/QRMeHQEG72DjDLbOxpr5WhMlbUtlnWzblkvVoEvHGs9xcJWDHv9
         3W2YqtQIFhoqwM5sZ/D4q3NklAiSbI32/FbruNnqUFnu16EBVJNpiTkqf8P6TFPgqnrE
         h29bgNHc7IPhGW+EEmo2kZpZeRohMY2t7gpNwEW43kO71xoOLNtRNdFSBcrqigKb/kTP
         s13/Q0c+73dmNiNzWLj2M24BW7ycTbUaBUYofljTXROTTzi6MpYWuoB16hrSv4wWu007
         ay1u8AL2HU4Eb1P2SeFkZdoQhZlsTFn0ODq1cAJ0G0oWupwT9RS9k/dsyz+zsweCgBIL
         qylg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727764162; x=1728368962;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3bN8Z32ZYFp79u4ESDr0JtiT5Y+0BkedNOJG76r5aVU=;
        b=F3FKaZqGGxKC41+wUdB7U1/nSCzpaVY/qcCFTxDr93q+MiYDY7fBeCrpy7Rc1jcgyn
         fYu1f7abCnxqbmj2TO4Tgdgr0fDxg+hvt12Gwsh1UA17w/dMlYI2EjhYFJNtdNly4vV9
         JVi/yeVvReIrGldJ9KFnOCZvQ4T130K0XzaNF69TeoBo/RMDmQX3sG/kPh9K8KwyIWPW
         rToSW7GdL4+yjux2IR90q3xNAUu5Uz9jQj+ylYzyo3SKZS88+zIq6y7lJv6RFsgEnSAy
         OF57Cnw6A8CsizPvNdgsNcqZ0K7LHP56yqRNrgUP3yIOFhQW6gdBPgUMeDP7Zdsh1Un0
         YMOw==
X-Forwarded-Encrypted: i=1; AJvYcCXckFPP15siVqcyPfAVznN8E9QT045exaknqVwIyJZYiky+c3Gn2QSqDLE4DY9D5u7txXNuZUwDlQFK@vger.kernel.org
X-Gm-Message-State: AOJu0YxUw6EiUSd6uKjdvpFudxITL8SNpf1RIBreemk+fylbUFpAGAjH
	a0iUD3NrxgutS7hhrXqIuF5ZslfozSCcws2tPHz20ZKglwib1H1lxSr724bPcj0=
X-Google-Smtp-Source: AGHT+IFS0TwjIfYbU4AYwdFFwJyZDZr/OxwEkGF9SOjZRel7hMDu0IAJ9SCdvkP5YjsrT8BAIPSUVQ==
X-Received: by 2002:a05:6a00:3d44:b0:717:8a87:7d02 with SMTP id d2e1a72fcca58-71b26070191mr24640287b3a.23.1727764162142;
        Mon, 30 Sep 2024 23:29:22 -0700 (PDT)
Received: from localhost ([122.172.83.237])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71b264b7db0sm7272924b3a.49.2024.09.30.23.29.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Sep 2024 23:29:21 -0700 (PDT)
Date: Tue, 1 Oct 2024 11:59:19 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Dhruva Gole <d-gole@ti.com>
Cc: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	"Rafael J . Wysocki" <rafael@kernel.org>, linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Subject: Re: [PATCH V4 6/6] cpufreq: ti-cpufreq: Update efuse/rev offsets in
 AM62 family
Message-ID: <20241001062919.ftlf3oobxreiulnb@vireshk-i7>
References: <20240919082809.174589-1-d-gole@ti.com>
 <20240919082809.174589-7-d-gole@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240919082809.174589-7-d-gole@ti.com>

On 19-09-24, 13:58, Dhruva Gole wrote:
> With the Silicon revision being taken directly from socinfo, there's no
> longer any need for reading any SOC register for revision from this driver.
> Hence, we do not require any rev_offset for AM62 family of devices.
> The efuse offset should be 0x0 for AM625 as well, as the syscon
> register being used from DT refers to the efuse_offset directly.
> 
> Signed-off-by: Dhruva Gole <d-gole@ti.com>
> ---
> 
> Viresh, Nishanth, Vignesh,
> 
> This driver fix is better to go with PATCH 5/6.
> 
> Subject: [PATCH V4 5/6] arm64: dts: ti: k3-am62: use opp_efuse_table for
>  opp-table syscon
> 
> That patch fixes the efuse offset in the AM625 DT.
> Without it, the driver will read from an incorrect efuse offset, and end
> up breaking things in -next till all the DT changes make it in.
> Hence, it would be preferrable if this entire series goes via a single
> maintainer's tree.
> Viresh, perhaps if you can ack this single patch, then Vignesh/Nishanth
> could take it up if there are no objections?
> 
> I am sorry that this break compatibility with older AM625 devicetree.
> However, the old devicetree was marking the entire wkup_conf as "syscon",
> "simple-mfd" which was wrong and needed to be fixed.
> 
> This series finally tries to bring order to DT and the driver.
> 
> However, if there is still any way to maintain the backward
> compatibility, then I am open to suggestions. Please try
> and understand here that the ask for backward compatibility here
> is to ask the driver to support a case where the register offset itself
> was to be picked from a different node. I am not sure there's any
> clean way to do this.
> 
> ---
>  drivers/cpufreq/ti-cpufreq.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
> 
> diff --git a/drivers/cpufreq/ti-cpufreq.c b/drivers/cpufreq/ti-cpufreq.c
> index ba621ce1cdda..870ab0b376c1 100644
> --- a/drivers/cpufreq/ti-cpufreq.c
> +++ b/drivers/cpufreq/ti-cpufreq.c
> @@ -313,10 +313,9 @@ static const struct soc_device_attribute k3_cpufreq_soc[] = {
>  
>  static struct ti_cpufreq_soc_data am625_soc_data = {
>  	.efuse_xlate = am625_efuse_xlate,
> -	.efuse_offset = 0x0018,
> +	.efuse_offset = 0x0,
>  	.efuse_mask = 0x07c0,
>  	.efuse_shift = 0x6,
> -	.rev_offset = 0x0014,
>  	.multi_regulator = false,
>  };
>  
> @@ -325,7 +324,6 @@ static struct ti_cpufreq_soc_data am62a7_soc_data = {
>  	.efuse_offset = 0x0,
>  	.efuse_mask = 0x07c0,
>  	.efuse_shift = 0x6,
> -	.rev_offset = 0x0014,
>  	.multi_regulator = false,
>  };
>  
> @@ -334,7 +332,6 @@ static struct ti_cpufreq_soc_data am62p5_soc_data = {
>  	.efuse_offset = 0x0,
>  	.efuse_mask = 0x07c0,
>  	.efuse_shift = 0x6,
> -	.rev_offset = 0x0014,
>  	.multi_regulator = false,
>  };

Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh

