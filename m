Return-Path: <devicetree+bounces-232688-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D2BBBC1A2A3
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 13:20:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EF9F53B0CD7
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 12:20:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 066BD33B95A;
	Wed, 29 Oct 2025 12:20:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="W+zSlKYM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D0D83596D
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 12:20:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761740409; cv=none; b=Fz/FwMmeZrELJtJ2jsYs2NenwHn3jEd1dlj8ZlXpNCHkgCOD3GaJ/68JaCaL/GaPzHPvKsWG3muJ8cLpjkmTvw2mUewh//qI2tzNAgvOKwsuBAVqI8BP1zzT4ps0dyOf0DgV5lJKQNtr185UQkCC51LrTRqtbR/ksa9JZ6A/dqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761740409; c=relaxed/simple;
	bh=1Ya7qkOQEDdNbi09gHmO3z9rZVCZYmN2SBoOEI6PACc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XTy5w2dffTlw25dZD6Jl0qopCi+tvKkDntnA5KE4N2bjdoplGqcaxJ5T/JhNhHUJ0iIF83vnAnNdrmK+DCK8uJBYsO1/6Q0eZQRNKHu9ss9t9s10kiukck8r2kw4WLSL4HNQk39Ka0WcTAm9kyiqW+nxlmJtdB+UM0Zy0pPC5Ck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=W+zSlKYM; arc=none smtp.client-ip=209.85.215.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f173.google.com with SMTP id 41be03b00d2f7-b6ce696c18bso6576013a12.1
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 05:20:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761740407; x=1762345207; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vyHDL+kvmpNavTHblJ9DGWC2vfEbREpLIB5luOfUbqM=;
        b=W+zSlKYMT0bua6TOOQUy6HJUfeQLiWUudO1oSVysP+DvpjMQtmFsjl6LUaytNyguve
         peaHH033ZT5zATHf9PNjAXWfEafOV9npzRf1vQ43e79G2EZWC1dA8+gUot06QnV1Te1t
         giMlYCS3C8YIm/Y9mOBkUgklqyk0c/G5vEp0ycxym0UM1l7iPSMmZKqF1ZRRWqLtUadV
         PiEeHIMPGFRN6A6/6M9+qMKAbO98Ih4HExykrC14vKYXaMyDfua8fJimeZ0yCb9UpBpf
         JAEl3EAQckmt1LMV5lSlpXrF6h7mUjbU/+4OMyXWWtT8GubVcK0ssYAaMT4/DwP7zRio
         +AKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761740407; x=1762345207;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vyHDL+kvmpNavTHblJ9DGWC2vfEbREpLIB5luOfUbqM=;
        b=YBu1+OfjrJc7W+cqDyjl9lUgr22aecRW4UqMhZR25j+iwjxR3FH86wsed6r00yGtbj
         PC3nQQWMSDQ6QqtH7PogR57K/n4Qp7Xk4dAXVtn4Sj+Q569g8XyVpQXpTWx0xKoLDZsr
         bijC9p1sywSbEdY2hCn6AuCBGlKaGmU5ZbKKUhGzE5bmyPdwV5uqiOz/Wd+kX91mnFjq
         T604yZdT84y+4e2/qAJ9naIdt8ht7REo/fJFA8qhNi+5RRDz7sS50utXiJOncfa1Ltqh
         0D903XdjH4z95T2lWCt8JWQdbKh44t70XTO0RxK+LrzjNHtYUdlW+BkVEmlWEM0pW1oz
         j/8w==
X-Forwarded-Encrypted: i=1; AJvYcCXSbciBc+66ZCeJaXCiMwnyrHuPY2BbNgyqwwA1xJkiJ7HvybzLGm9ZyAhk4y5G8208Vaj4it5ZRy8F@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/XrwbclH5teuA23VLkvDIobwR/AzemtxvE8YM2gIGIeFNfOS/
	17vHOWIyMiPSZ7j7qZavIJQbziEU++jzSSAn6bvNSzEw+VVaQGdMl1gi
X-Gm-Gg: ASbGncto1KLyNhQhHDbyC2WMphRQZSETw+qi9N7iKL3UXUSj+FO9q/QzEJjGdY1GzhQ
	RZyVFzAzfSBJxSjHKZVv8QjUPaEoyaYKJoH4kxbApJpfnqTkPHDbFK3VWidrtMyqVn88v8L6kox
	D8VepZWjcPIAO+snNMTFhwUZbKpakn8FbOby0UhFiAYPy+6oI4KbOWEiGuYhJp178wP5n+4zUto
	Itf+RDW1ZaXShX28yQOGXUxsrzVQAeoqMzLyJcySF44XA2fEAbIOkJjWBKEhJAM50zxkqrmLazN
	Od8azRUNkyOAcI9axUlAIrdB936VCic52FGu8jlEYuaZjsROpZJN8tLNzLo0yl+WBRBcp0/h0PN
	WGe8qTv9aT0rPwfqXBmSkoQ1WQE77fHP/3Ks1dJ3WEJ1kaRJ/rgnd1KG5DAVtL1quKW/JWqsJ08
	PmYyF293dpsDD6
X-Google-Smtp-Source: AGHT+IG4iUvvmVrCgSP0YCk+HtT00u5Cv73qchYGx6AbmE0/ypVfmBzPMDibB16MqRFuCBEdGpYg6g==
X-Received: by 2002:a17:903:2348:b0:25d:37fc:32df with SMTP id d9443c01a7336-294deedb5c6mr33673225ad.47.1761740406560;
        Wed, 29 Oct 2025 05:20:06 -0700 (PDT)
Received: from [172.17.49.162] ([103.218.174.2])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498d2317csm150801635ad.48.2025.10.29.05.20.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Oct 2025 05:20:06 -0700 (PDT)
Message-ID: <9208d2ef-79da-4e80-ac1f-e01fa5feae0a@gmail.com>
Date: Wed, 29 Oct 2025 17:50:01 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/1] arm64: dts: qcom: talos-evk: Add support for
 dual-channel LVDS panel
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, andersson@kernel.org,
 konradybcio@kernel.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20251028061636.724667-1-tessolveupstream@gmail.com>
 <20251028061636.724667-2-tessolveupstream@gmail.com>
 <d05fe82a-640f-4a09-9d83-39bb5aff179d@oss.qualcomm.com>
Content-Language: en-US
From: Tessolve Upstream <tessolveupstream@gmail.com>
In-Reply-To: <d05fe82a-640f-4a09-9d83-39bb5aff179d@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 28/10/25 14:55, Konrad Dybcio wrote:
> On 10/28/25 7:16 AM, Sudarshan Shetty wrote:
>> This patch introduces a new device tree for the QCS615 Talos
>> EVK platform with dual-channel LVDS display support.
>>
>> The new DTS file (`talos-evk-lvds.dts`) is based on the existing
>> `talos-evk.dts` and extends it to enable a dual-channel LVDS display
>> configuration using the TI SN65DSI84 DSI-to-LVDS bridge.
>>
>> where channel-A carries odd pixel and channel-B carries even pixel
>> on the QCS615 talos evk platform.
>>
>> Signed-off-by: Sudarshan Shetty <tessolveupstream@gmail.com>
>> ---
> 
> [...]
> 
>> +	backlight: backlight {
>> +		compatible = "gpio-backlight";
>> +		gpios = <&tlmm 115 GPIO_ACTIVE_HIGH>;
>> +		default-on;
>> +	};
>> +
>> +	lcd0_pwm_en {
> 
> Use hyphens instead of underscores in node names

Okay, will update in next patch.
> 
>> +		compatible = "pwm-gpio";
>> +		gpios = <&tlmm 59 GPIO_ACTIVE_HIGH>;
>> +		pinctrl-0 = <&lcd0_bklt_pwm>;
> 
> I think your intention was to use pwm-backlight and wire this node
> up to that

Soc does not support the PWM interface hence we are using gpio 
as "pwm-gpio" by setting the duty cycle to 100%(i.e. "no pwm")
> 
> Konrad


