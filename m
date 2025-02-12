Return-Path: <devicetree+bounces-145885-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E809DA32B2D
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 17:09:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C82CA7A1C82
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 16:08:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D014922068B;
	Wed, 12 Feb 2025 16:09:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uiDQTNEl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF55D21504D
	for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 16:09:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739376546; cv=none; b=OEeYx6bMngUTL+4h/EpcSsBNr7eAmUdmL0fGXvuoO5MHFttiA+AG4mJZgZ2hecg9fbTJvw8VXRy8Eb4PklPWUz4/vJGtb8ZLMY+Vzlo7cTg0UH2xYwTbCryGw2ESX0w6qZz15dO4OjpL0ekYurNRmGhKp6fJZLllNzLPjsslAXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739376546; c=relaxed/simple;
	bh=ZKwXTXROh5P6mHKTAIdz8QlhSs8YJUr+oi3VUfVQJLU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eV095Xo6K4hXVfYWnIwziz60gnBaNhPS2sLbOHf/YF3oYf3sjNMLccuCbIvsML1gbGWdBLDRi6BjoX+cP92p/Lg5Zk97A5m/URfzY2DmGTSG2s2K9ezqw7l3fEI4iMBE+vbrEOC+RFHfPdF3Z+O8RqXPyU4NXzarFXFAadhmmJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uiDQTNEl; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-439585a0544so6681365e9.1
        for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 08:09:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739376543; x=1739981343; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pp5odaFIrW+nbf7Y7JXnx1TjySVWjHWY+ZwKogul8A0=;
        b=uiDQTNElQR2FMi/AeJIdiJq5RzPZLAbvhcW2IHHckGiuIvw+R6tYloFqcnW9jmKCUd
         PwIIv5lK0v6x90sm8QnkalU4y7wbQ//B5Z4rUT8hWxht4oHnjOjcS5scriGCIpZT+oEs
         EiYn8j3CWiBHRhF5dgs3VT+LsZPzyyIyRFP4jCLWvKGEipuUAvFAtaq700KqDiUVNL1P
         Tr8nHNS7ad2hxq4i/8sS5Jxw4lnyzW57PRzX4ImvV6DkSL8X4HXp3A6fkYsSce8tVQX2
         1WMcG/cevucrHOo7nkbQtudZyGP7KBl2mTJNJ6fHVpqbLsb7jFbhEaP9beuKvmFFFPtj
         o0Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739376543; x=1739981343;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pp5odaFIrW+nbf7Y7JXnx1TjySVWjHWY+ZwKogul8A0=;
        b=LsAJ6rQgy93/pJVOByKJP66TYD3oOcf2Bhz8lALvjakOyjwvO+1cWy3SwX5j8/eUt3
         R+tK+OwzF+nXhpQ+BF3AnE0SmwExxT0hwnANs2dMducJ+c6A2/l7DdvHYEaEYOzjxUWR
         qTXOKeyD7XBnhMtCIZ0Jucxd2Yk219yEfJZzGBeJX49lE5nIMTglrtt8EsQL+PbrXHmM
         Y7TcSGnXa8czgcWvpAtaFQVZV/Wz/FLoBeognemJB/JcW35lz8FzsrXN7khHjDg5tnLz
         FjYbFRQ7r0+z0R8eqgUYosl2FYy95DCPRH3dhUHdTAFmZ/R1yvb5QdiWLtEKV0APs9cm
         OfZA==
X-Forwarded-Encrypted: i=1; AJvYcCWycgKnyG+aLutbSaBdCFb3w6R9YPgR0hGjHL91npWxSxZS1yTX3yA/D65Z9lhXe6wK8ZS9gl5qBpga@vger.kernel.org
X-Gm-Message-State: AOJu0Yyt4eHivEDwd6JMmcP347NlREMRIeRGUDYQqWh04SqS0H4iPbgZ
	JuqtxwL9SOkx+sKPkx4tw41//2XEujnHtMWGgINO0l2T3sNxB5GWaK/k2ZE1OBY=
X-Gm-Gg: ASbGncsK+EUbPzT9j43mBGsVAkUKiqASuIRtgoRmcHSYiJZ9mD7FbGH5M7aTvzN6tUx
	fmYAzgTjz10j9FoY2QAJyWf10S0Jv75Rm1Hewz5tQ7oXTvabzKtBawZ3RtNMC4xuGVr6loADplj
	HT3VTfa2KJBWwFHRNL39qmCbpZXgVNq1IePaIF6SvT/veaAJlfXK0vekQwPNk0iaH+VyHYb/twF
	vvNMMNjiGQCCZHAv/oWa8twxkn5pqoJBb9LEnELljqT1+QQl6SbWJuQbGY2HkCNUq85XRyIzKVS
	Uyv8L1YKy1gjo36sZznD0xmrHlprRwWvMveTFQvGbA2n4Npxnjuk7tlmoSbKk8mSd4PznQ==
X-Google-Smtp-Source: AGHT+IHJzNcgMxYRPCB+0fE/E++AfEevWhqdpHHpCa2FP4tYjZxOsQp8n228+Yo/EzeDt2qB6MDYHw==
X-Received: by 2002:a05:600c:1548:b0:436:1b08:4c78 with SMTP id 5b1f17b1804b1-43959a997a5mr31660955e9.31.1739376543290;
        Wed, 12 Feb 2025 08:09:03 -0800 (PST)
Received: from ?IPV6:2a0a:ef40:1d11:ab01:416b:3913:893e:bb4? ([2a0a:ef40:1d11:ab01:416b:3913:893e:bb4])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4395a1aa7f3sm24236205e9.29.2025.02.12.08.09.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Feb 2025 08:09:02 -0800 (PST)
Message-ID: <3e8d6cb7-43e3-4375-94be-c6b28331da76@linaro.org>
Date: Wed, 12 Feb 2025 16:09:01 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] regulator: qcom_usb_vbus: Add support for PMI8998
 VBUS
To: Mark Brown <broonie@kernel.org>
Cc: "James A. MacInnes" <james.a.macinnes@gmail.com>,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, andersson@kernel.org, konradybcio@kernel.org,
 quic_wcheng@quicinc.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, lgirdwood@gmail.com
References: <20250212010744.2554574-1-james.a.macinnes@gmail.com>
 <20250212010744.2554574-3-james.a.macinnes@gmail.com>
 <fcf907a5-9fb7-4988-a30a-a555740ca817@linaro.org>
 <8ec05fd8-1623-457f-a3b5-1095acd62cf7@sirena.org.uk>
Content-Language: en-US
From: Caleb Connolly <caleb.connolly@linaro.org>
In-Reply-To: <8ec05fd8-1623-457f-a3b5-1095acd62cf7@sirena.org.uk>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 2/12/25 15:37, Mark Brown wrote:
> On Wed, Feb 12, 2025 at 03:29:54PM +0000, Caleb Connolly wrote:
> 
>> I would suggest implementing a proper .is_enabled op to poll the status
>> register for OTG_STATE_ENABLED and configuring
> 
> No, that would be buggy.  Implement a get_status() operation if the
> device can report status.  is_enabled() should report what the driver
> asked for.

Ahh yep, that's right. it should implement .get_status() (as per the 
polling code in _regulator_do_enable()).

-- 
Caleb (they/them)


