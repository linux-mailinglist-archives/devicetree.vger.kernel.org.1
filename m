Return-Path: <devicetree+bounces-235543-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B21F0C39BC1
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 10:05:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4CC503BF2DB
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 09:03:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC406309EFD;
	Thu,  6 Nov 2025 09:03:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="L7FOAXT6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BB66299A87
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 09:03:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762419797; cv=none; b=ZifYvnXH1GYNibYoypGFyyI34InKr7MxvLCpvSr1BOS9dqdp+xUVQ6GaFBGeyyVzwr1dNaMvnOn5E/KKE4zGvYeQi4R/1ldjYIAagJaR8rIFK9o9Qg5+sk0Rfi8iTfCyQvmSJ6SQJYvsjtS9AhVs9PuSKljku8Gz5uV/nKmpM9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762419797; c=relaxed/simple;
	bh=ja81m7q8vyfKq6+3MFF18Vx1X1P27i/NWaLR67piGHc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qO6643pPrXbjLG8WyAxVhZbo7OksDjBgN65obTh/76nF2Ogcti2Q9OO5VWYLbd7y/RGrBhkYPN8w4GJHhX9C19JEz4HefWKYBMBiVQw0sRfKVmvm9xTAPFPVFd/KWVjXU9unToTStU0yQBjSuZxE1XsC4ulnS/kV+YrrxrEUU/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=L7FOAXT6; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-7aae5f2633dso783771b3a.3
        for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 01:03:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762419796; x=1763024596; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iOsJQqZezQEXs0dR6uOOcyuQQaWOjfXrGp1DqpuI0JY=;
        b=L7FOAXT6WxpfP/gMqxuTq9zzZr9u+hrwkT05tdm/uRt6cH0gdGiJSmYKh/vwrBmPX+
         nBcGxKXAmEJG48c0lpZaYAZ6oZRt5mdgpt7Z/zJXvQawgp/3pqzvE+mhu05Z94DM2cL0
         4q5lk+WRK5yaSeBcdH0B8LZbnbsnQyZM2cBz4H2Q6LciLsK2XblI2PFIEhfxQIeSsx/P
         ecwngxBXPHawcqGLBs37ezlTUmWklDZtuHNqqFKMDbNs9mmb0s70UpNB/g0nXzwa4Wfy
         AmsGP6hwh15MwS+yZi+GO9KsVSo/fv2qR8dhACn6Fe4m2VfIeyBt6Owc7FH4NrTwuSXE
         DoOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762419796; x=1763024596;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iOsJQqZezQEXs0dR6uOOcyuQQaWOjfXrGp1DqpuI0JY=;
        b=cVNDk84apAb42GGNBlp+ijq0uw4ofdUgwrDzaVo8s0DOHVNtcQJILswZJE020k6xad
         hLDme9cdT6KmfyatCEQcK+C/HAhnMurdu4s3dY6v1jfPjDjwX6zrWb1xOnTR96BQRErV
         E8njWUq0OxPC1IovN89CdPqSo1dKa9oJKLBwDzjEvdvlPIPFSoysGphHY4lZk1XmGdEB
         +izI4FpqgpEnXi9H7dG9rP7yiuMgtP1X05VlT1EYpMKzktq7XHKq0NjYpdFn90104aA9
         2SSwrIhG0KN9GezfdQmwTbGf8KLaspCTWomnCnISSLpIaT3Aq5rvADqhAxQgQbC43Bmr
         t4Mg==
X-Forwarded-Encrypted: i=1; AJvYcCXioQSR3Z5lrMsnndN0QQYS2Jx1SuHZXG8PA5qbC0S+LNfzC4ntquxhnc6DuRDkoCqrhuB/T8Q831rn@vger.kernel.org
X-Gm-Message-State: AOJu0YzGAbax0jhyZNvohxPHENvhFpGf0kKZ3G49jvZKES8/XV8Z5Bar
	8KACtjD6YRmat5ANfit18N1I24Aep2i+N6Pue/5OV6CwWhERSHbyq2qQ
X-Gm-Gg: ASbGnctCNv7wPmI9bDrwIUmG+I+r7YqFTW9PDnvN3RLdqpjmoeZORof8WbsXToB2hmc
	qgKZoXBnUwlcKnT7XvxItKGfKOZMh7pC0FMa1UCRzj7MFI7yuPoSl7EQzMvzndwN5ozp2tBCWal
	SEEFNxw6Y6Hm2Kap8pzTibJ5fHS2IDRDOY8oiePpZLoMsInB/4uP1esvu9ND5C7YTFJakZr+3rX
	xBOsAACQq4sSc2oSSjrW0NlV+vYs+JVtbDkNeYbf2hFsAD0kwIi7pzWSUEKHuJ5U5vrwA23zu+E
	R3ZTtJR6MMWsvA8zxGOMps+g0vyK2Ngnli2qQY8Cmwbvz4rET7r7vgVgeqn/etrdbd9tYSKpcx/
	KxOVwcafibPrDMd8vZ6wcAweQyKn/ThClOUeYl/9hmBM9xUFb+j3IjzyTBJ07XoBdRktcym3KAS
	7sfi6MhcbRJYukW7YRS5qbaxCouXXRayx4JA==
X-Google-Smtp-Source: AGHT+IHIjWJT/zyHFnhWjCTLxPCrQKsHXCp6mnS25oro4Efn4jPDJwfI7GhdcHoHP/t0/INuNPFQJQ==
X-Received: by 2002:a05:6a20:12c3:b0:2e5:655c:7f86 with SMTP id adf61e73a8af0-34f8580ae0amr7986896637.39.1762419795545;
        Thu, 06 Nov 2025 01:03:15 -0800 (PST)
Received: from [172.17.49.162] ([103.218.174.2])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7af7fd59f2asm2056124b3a.27.2025.11.06.01.03.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Nov 2025 01:03:15 -0800 (PST)
Message-ID: <9d5de3b8-29d0-4202-a361-4bcbfa166755@gmail.com>
Date: Thu, 6 Nov 2025 14:33:10 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 0/2] Add Qualcomm Technologies, Inc. Talos EVK SMARC
 support
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251104125126.1006400-1-tessolveupstream@gmail.com>
 <xq4jidiffovpg3armhlzrzxloug4irumlycyyvmfaugajbtq4t@cutuj5736ayo>
 <58afe57b-68e8-4de3-841a-df3dbf04ee64@gmail.com>
 <7tk2hd5qursarvomuwe7yt574vmjixh23zz3iw6nzpzm6x7jlj@7q2vlik3t2h6>
Content-Language: en-US
From: Tessolve Upstream <tessolveupstream@gmail.com>
In-Reply-To: <7tk2hd5qursarvomuwe7yt574vmjixh23zz3iw6nzpzm6x7jlj@7q2vlik3t2h6>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 05/11/25 20:23, Dmitry Baryshkov wrote:
> On Wed, Nov 05, 2025 at 06:27:42PM +0530, Tessolve Upstream wrote:
>>
>>
>> On 05/11/25 06:35, Dmitry Baryshkov wrote:
>>> On Tue, Nov 04, 2025 at 06:21:24PM +0530, Sudarshan Shetty wrote:
>>>> Hi all,
>>>>
>>>> This patch series adds device tree binding and board support for the
>>>> Qualcomm Technologies, Inc. Talos EVK SMARC platform based on the
>>>> QCS615 SoC.
>>>>
>>>> The first patch introduces the DT binding entry for the Talos EVK
>>>> SMARC board, and the second patch adds the corresponding DTS
>>>> files for the platform.
>>>>
>>>> Note:
>>>> USB(usb_1_dwc3) supports host-only mode based on the switch SW1 on
>>>> the SoM, which is purely a hardware controlled as USB-ID and USB-VBUS
>>>> is not connected the switching cannot be handled from SW.
>>>> Hence from SW Host-only mode is supported on Linux boot up.
>>>>
>>>> Changes in v5:
>>>>  - Updated commit message. (suggested by Krzysztof)
>>>>  - Introduced generic node name for can, dp, hdmi-bridge. (suggested by
>>>>    Krzysztof)
>>>>  - Introduced talos-evk-cb.dtsi, which has common carrier board
>>>>    interfaces.
>>>
>>> Common between what?
>>
>> Introduced talos-evk-cb.dtsi to define carrier board–specific interfaces
>> common to both HDMI and LVDS top-level DTS variants.
> 
> Are those two different carrier boards? Is it a single carrier board
> with mezzanines? With extension boards? With a DIP switch?

It’s a single carrier board.
HDMI and LVDS share the same DSI interface, and only one can be active at
a time depending on a DIP switch.
> 


