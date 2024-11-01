Return-Path: <devicetree+bounces-118214-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FE7C9B9611
	for <lists+devicetree@lfdr.de>; Fri,  1 Nov 2024 17:59:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C030B1C21BDF
	for <lists+devicetree@lfdr.de>; Fri,  1 Nov 2024 16:59:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E8CB1CCEF7;
	Fri,  1 Nov 2024 16:58:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nexus-software-ie.20230601.gappssmtp.com header.i=@nexus-software-ie.20230601.gappssmtp.com header.b="XxGOKzte"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 080731CCEC7
	for <devicetree@vger.kernel.org>; Fri,  1 Nov 2024 16:58:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730480297; cv=none; b=D+qKlmLENK7oSxCGFWYiMa8iBc2yyy5CTd0pNjFypgVr6pyvLhiSWZFh+uEZnPA1N1jOdizHECOH2JBvJaERRcnqYqFB2Pa9qcMHYdRiQhP1+dOUBlAb3bWRUObHSIx8i+gkuveFF3zhn7AHL2kP5JMuMxj5jCJwUbDTDGN//t0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730480297; c=relaxed/simple;
	bh=5ua0i6SRNpuWEK/yWQUjFdR/CAmilD3VbEcQ5chLct0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TMkxKGHg1ZunkYqKIzJmVTlxeVzY05ILwVIXOPonXST8g59vXt97uDhS/xb8v0mxM2uXpDzNj2k5z+xvQj0fspEU30lgVBpavILVHeAV1y+GJMDzL5lE+h5GnG4Ro5cCNe1VKxmMDHOCfschvd60ZS0CQ2ZI0qmPDjpIyAy03JI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nexus-software.ie; spf=none smtp.mailfrom=nexus-software.ie; dkim=pass (2048-bit key) header.d=nexus-software-ie.20230601.gappssmtp.com header.i=@nexus-software-ie.20230601.gappssmtp.com header.b=XxGOKzte; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nexus-software.ie
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=nexus-software.ie
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-37d518f9abcso1494164f8f.2
        for <devicetree@vger.kernel.org>; Fri, 01 Nov 2024 09:58:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nexus-software-ie.20230601.gappssmtp.com; s=20230601; t=1730480292; x=1731085092; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rZ42MofQarYX/wWDjy0bAGDnZUGwKJjh02fFI2gvDOk=;
        b=XxGOKzte2GreuSasFfcz+SMQk67oNGk2j86i18F7r/haUAr6/C+oHLCoI6EjcFnR/B
         7rfGVijVIxJN8SPIJ4hvdxKdt4jL/neBDznKJ+KsRyJux+SlLAgcHU+olmY9WZOxnXv9
         ZvspF0ddh1BT3qGn1cqFdHzUGomxpzW0HGWgQevjoNOg+7jHRM/SAUHBmhfoN9NBOA+L
         7qsOZyHCwuN5TS9fMnFFW8KiKI4IpFh3yqXcAbeyKjASOFr2lBFFLb6D+eMPrjkenGo6
         Fn1krqGvRZ0SelJZuETD/p8A81ePRkpwb6/u5Nbgx5o4C7Kw9EQrRUsaAP0hymihokYg
         jNfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730480292; x=1731085092;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rZ42MofQarYX/wWDjy0bAGDnZUGwKJjh02fFI2gvDOk=;
        b=tNZTYcT+YCSUwUPnDrwIPv86FkGXMlEEPFegXeCd2uaUNjPSzQL+Emh+XSxmoKNKLG
         Jp0FjOEL49xSmqD/0Zp/khDEVNv6Ki8nhnbuYJ2b2JuM3xbLaVCnuBSBwxwxx6Lj4bah
         XIXlJoEgv/YVTyPbxRmYDy8rQxSCp3JhF6PcPiTXzUWziacfshaVvh1/N4HL5TioJrGj
         3OpftzNHp3jIQiCPUHxOuhn8sPseVLGz7J3YURVPwk253gBtoCrFCH+NALaDXPrVCVTo
         J4bKJvdiG9gKFbo/JNfUgZsibblUghdl1VVqfbaCcXf7gjKf9/Pf3rXkXwQVd0Rqa6oZ
         mZvw==
X-Forwarded-Encrypted: i=1; AJvYcCUBxRXL8XUKH9VI8bZcqiOdQZ9/ev2OS3x9aieAsvw2V4cL0Yf4n5cT5kNSEtmMvr9Vlt9rWR07iBg4@vger.kernel.org
X-Gm-Message-State: AOJu0YykfCQgiZ0YdgZNfAVc3qKwafdlB6oIIvveKjyh58nkdSo08tDV
	0VpzGnivAA4r2lBr+iQPZBAlFFuTIeYr6T13q86zjdS/zYjWycm5iu7Ny6OBRR0=
X-Google-Smtp-Source: AGHT+IHAa9n0wqCDn1QohNNd+/WglbGtAr9r8mfa5nPglSkmQfcoBT7474Lu9a4Ebh5JwKugHCwsiA==
X-Received: by 2002:adf:f18c:0:b0:374:c621:3d67 with SMTP id ffacd0b85a97d-38061137930mr17850679f8f.24.1730480292095;
        Fri, 01 Nov 2024 09:58:12 -0700 (PDT)
Received: from [192.168.0.35] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-381c113e771sm5706776f8f.81.2024.11.01.09.58.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2024 09:58:11 -0700 (PDT)
Message-ID: <0a6ee450-6582-4d00-aa8d-9a5c0f2547a5@nexus-software.ie>
Date: Fri, 1 Nov 2024 16:58:09 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] media: camss: vfe: implement pm domain ops for v4.1
To: =?UTF-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>,
 Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20241101-camss-msm8953-v1-0-4012559fcbc2@mainlining.org>
 <20241101-camss-msm8953-v1-1-4012559fcbc2@mainlining.org>
Content-Language: en-US
From: Bryan O'Donoghue <pure.logic@nexus-software.ie>
In-Reply-To: <20241101-camss-msm8953-v1-1-4012559fcbc2@mainlining.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 01/11/2024 13:47, Barnabás Czémán wrote:
> MSM8917 and MSM8953 has multiple VFE power domains they
> have to be power on/off explicitly.

"have multiple VFE power-domains"

> 
> Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
> ---
>   drivers/media/platform/qcom/camss/camss-vfe-4-1.c | 10 ++++++++--
>   1 file changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/media/platform/qcom/camss/camss-vfe-4-1.c b/drivers/media/platform/qcom/camss/camss-vfe-4-1.c
> index 1bd3a6ef1d04d8610fd1bee0c22cdbc147c98de5..9a9007c3ff33b40f4c88cd30283f0ad42f8e8d00 100644
> --- a/drivers/media/platform/qcom/camss/camss-vfe-4-1.c
> +++ b/drivers/media/platform/qcom/camss/camss-vfe-4-1.c
> @@ -938,7 +938,10 @@ static irqreturn_t vfe_isr(int irq, void *dev)
>    */
>   static void vfe_4_1_pm_domain_off(struct vfe_device *vfe)
>   {
> -	/* nop */
> +	if (!vfe->res->has_pd)
> +		return;
> +
> +	vfe_pm_domain_off(vfe);
>   }
>   
>   /*
> @@ -947,7 +950,10 @@ static void vfe_4_1_pm_domain_off(struct vfe_device *vfe)
>    */
>   static int vfe_4_1_pm_domain_on(struct vfe_device *vfe)
>   {
> -	return 0;
> +	if (!vfe->res->has_pd)
> +		return 0;
> +
> +	return vfe_pm_domain_on(vfe);
>   }
>   
>   static const struct vfe_hw_ops_gen1 vfe_ops_gen1_4_1 = {
> 

Otherwise LGTM, once you fix your commit log add.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

