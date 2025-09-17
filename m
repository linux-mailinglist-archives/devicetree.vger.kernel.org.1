Return-Path: <devicetree+bounces-218177-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C7D3B7DE2F
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 14:36:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 336A7326B72
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 05:30:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03D0F277C8C;
	Wed, 17 Sep 2025 05:30:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bk7WdYeB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85EAB1D7E4A
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 05:30:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758087044; cv=none; b=pRRRw9syx13qQnutpUR+R0FAuUf8AZk7X8j4km6qWMVxWkOTZoIu+KyRS7hj4fxAPfWKj80+xOnP+mxfz1dVVhncEXMVeMwT3wyjYrbxpLCdl6nZaBPwyLcvMTkMiLRyvkNHF4uNYk5HWalbbL1c2Jhq1O8LFadNo/dhQ2z5fIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758087044; c=relaxed/simple;
	bh=ojcEEPJefpnCUVr9pVG02gpYlf8ErQMG41Qqu959wmc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZiCQJLGcWIUb6iW46tALdB04y6+WqXtr6USq5XBky/fZ5lmQNAb/zo49060HfkzseOGdvT84ay/0VLWiTLhmIZjX4paeWZjg5uCRye00gcQX0LWbZGm2z/1zlAX3PTyzrzzkvfT9TSNrT4hXB5DkGKWJCowD8KGa845/Vi0m+Jk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bk7WdYeB; arc=none smtp.client-ip=209.85.215.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f172.google.com with SMTP id 41be03b00d2f7-b4755f37c3eso5241531a12.3
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 22:30:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758087043; x=1758691843; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+RLDgsVG/9yzmSOd51trY/YU6lrZVjPVVmLXoww2Ukw=;
        b=bk7WdYeBMYO1wwPHYIB9Zo1lF2X916w7ZcDopOCIwQiOG0JdBYt2B15F5w7Lw+re4f
         ygm2zJHU+Eg/aalsGjGn11EZJgt7qMn/qNEpFiU+cuYuuBq0vPIPUwih/qRgpjRGLaR5
         W+Jl4jtQRd7fi+Tt0M4xqDTO6oVrmHg9Rz6td93TYKB/7v1QoqK8BVelg78MU3sq6Fbs
         TeTWsTImQifrb/EbolBNZVi3ZlL2pqzdnH7zxPlK3j1uEId8ARkQLznW6sioN/lmINy9
         6vFg8VfEKvTW5VKu7Ak/wdsrS10jKN9+aBIDRvSy0y+9puativoVvvlHtcWdlGcN6D95
         P6DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758087043; x=1758691843;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+RLDgsVG/9yzmSOd51trY/YU6lrZVjPVVmLXoww2Ukw=;
        b=RJSocDJGTmOZ7XuixLrn2f4JaFxV1pxAW0kVgoB2ngxF30YwYMwt/HSgiGHujIHfxE
         b+z+n2RTne5SNzA9LYyz7qit/8DscJkmXlUNGd75Zbw4FbQXQzpNJd1Z/LY3AJHGcGDI
         0Yf2w4bL4aRI6hYjbBrM8ob2Uhu6TwDd2gbz82Xw43hgFN8YvMjAe670tRDPi8blOOk2
         cjqi3DGGuhD0eEOWDGuhD8Q5vgjLH7ImiHGNanCtW91yJYUqV5Heyr8fBk/Ktz/ucRjC
         YCqPrO7V3ys36mgM/vVDi7X1KgaX5JAL+Gg9AuPB2eqb/rbFohAub3BXa5/XpGK0sj7e
         OPVQ==
X-Forwarded-Encrypted: i=1; AJvYcCVHjBSnUycQ0F75FVjAcB3d7WZEyuT6eBWlsorz5hMh2OAc8POiqxWSn5tl0xfD+GGhvTl6JPpaIeLV@vger.kernel.org
X-Gm-Message-State: AOJu0YxUkHh1iJFjtcwhuUGdBDHUKgpgO/+ILJ5w16yQWVtgGal+f9VY
	tUteMtP9scWg8ygRVWmAz+YKIlo5wn2aqsimIB8b2dUQJdfoJ+kwnmKf
X-Gm-Gg: ASbGncsT7Agy5mernh00ybpTZ+3O6vCA/6cxRNTxpVaLqvWRDUFdoCwmenKCbSSLxWO
	AxDmWIN+VZvsdihvucWGYI8FJCIIK+9e6pgw4L7EeQpBKrWjgNHS+oAzqYqfgmIV/L6u2SIA8u6
	LxTd2VLmDoo3bfDDk0GfDBjWI5bJcI88Q+F3JH1gmTkVkl6zR4lyV7iwNB49LRig1Ttorzw4M57
	aS+XJtguTDi+CUtlmqZ1hKl8TswDcjISHNMYDZEJ4hmIELoYSZaLk8YzBAYxDZUEte/lv0B2+dw
	hJhADjD8rIYYvEgNUFLE09r5dCeXhX2nO66FdE/pc0fd4r6u2MQwVekeG2pQuN3OQxNBrhet4NA
	NnjlJqYy1ClB0elCYczbD0DVd5sOAuxsx
X-Google-Smtp-Source: AGHT+IEAVa+T6fRcCJa37o376SoMU7onInRHzwpwOfD+pCgZlxIWR6i2Ecy3rSFDP4O2WFq9GPHBKQ==
X-Received: by 2002:a17:903:4109:b0:25b:fad8:d7c2 with SMTP id d9443c01a7336-268137f2945mr7319385ad.39.1758087042781;
        Tue, 16 Sep 2025 22:30:42 -0700 (PDT)
Received: from [172.17.44.75] ([49.249.92.90])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-25db018df8bsm142006335ad.151.2025.09.16.22.30.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Sep 2025 22:30:42 -0700 (PDT)
Message-ID: <3fae286a-dc5b-4024-be28-ab51dc907ba5@gmail.com>
Date: Wed, 17 Sep 2025 11:00:36 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: Add support for QCS615 talos evk
 board
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: konradybcio@kernel.org, andersson@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 tingweiz@qti.qualcomm.com
References: <20250909125255.1124824-1-tessolveupstream@gmail.com>
 <20250909125255.1124824-2-tessolveupstream@gmail.com>
 <v2d4e6py34xb2hjrfnmlrmd7xme45equ76zb2c5cmftgylk7w6@5lmexwfupj4e>
 <70c2f78b-c3ce-4b7b-a961-9f3957ce40f8@gmail.com>
 <axtz5euoa5lyg5clwj44jhdn5gvfubic6un3ilndzzoy22rici@rqqk4eyw7yas>
Content-Language: en-US
From: Tessolve Upstream <tessolveupstream@gmail.com>
In-Reply-To: <axtz5euoa5lyg5clwj44jhdn5gvfubic6un3ilndzzoy22rici@rqqk4eyw7yas>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 16/09/25 15:55, Dmitry Baryshkov wrote:
> On Tue, Sep 16, 2025 at 11:22:02AM +0530, Tessolve Upstream wrote:
>>
>>
>> On 09/09/25 19:28, Dmitry Baryshkov wrote:
>>> On Tue, Sep 09, 2025 at 06:22:55PM +0530, Sudarshan Shetty wrote:
>>>> Introduce the device tree support for the QCS615-based talos-evk
>>>> platform, which follows the SMARC (Smart Mobility ARChitecture)
>>>> standard. The platform is composed of two main hardware
>>>> components: the IQ-QCS615-SOM and the talos-evk carrier board.
>>>>
>>>> The IQ-QCS615-SOM is a compact System on Module that integrates the
>>>> QCS615 SoC, PMIC, and essential GPIO connectivity. It follows the
>>>> SMARC standard, which defines a modular form factor allowing the SoM
>>>> to be paired with different carrier boards for varied applications.
>>>>
>>>> The talos-evk is one such carrier board, designed for evaluation
>>>> and development purposes. It provides additional peripherals
>>>> such as UART, USB, and other interfaces to enable rapid
>>>> prototyping and hardware bring-up.
>>>>
>>>> This initial device tree provides the basic configuration needed
>>>> to boot the platform to a UART shell. Further patches will extend
>>>> support for additional peripherals and subsystems.
>>>>
>>>> The initial device tree includes basic support for:
>>>>
>>>> - CPU and memory
>>>>
>>>> - UART
>>>>
>>>> - GPIOs
>>>>
>>>> - Regulators
>>>>
>>>> - PMIC
>>>>
>>>> - Early console
>>>>
>>>> - AT24MAC602 EEPROM
>>>>
>>>> - MCP2515 SPI to CAN
>>>
>>> No WiFi/BT/ethernet?
>>
>> Networking peripherals such as WiFi/BT and Ethernet will be enabled in follow-up patches.
> 
> Why? WiFi/BT are supported for the RIDE platform. Is EVK using something
> different?

We used a Quectel based AF68E module (PCIe for WiFi and UART for Bluetooth),
which is different from what is used on the RIDE platform. I plan to
enable these in a follow-up patch series.
> 


