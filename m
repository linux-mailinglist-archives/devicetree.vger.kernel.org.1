Return-Path: <devicetree+bounces-223549-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B8E6BB7917
	for <lists+devicetree@lfdr.de>; Fri, 03 Oct 2025 18:35:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 006B2346F6D
	for <lists+devicetree@lfdr.de>; Fri,  3 Oct 2025 16:35:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAF0E2C15A9;
	Fri,  3 Oct 2025 16:35:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oASl89za"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C06112C234B
	for <devicetree@vger.kernel.org>; Fri,  3 Oct 2025 16:35:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759509329; cv=none; b=M3i5pXEmBTWDc/yXscGYGAfRWevhSM4Jd5/bQaSUSEOCHGJfjE6fmZZNfupKvLbQLKL5rHFFJuo8bTWcHqyrcw9UUMlwDeyKam02wMlBtJ7OXJJNRynWoqraRZlhQBPHB6AtDOSLxoCMLcaafM+zVHbe7x/kB8y213hiPcvYLBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759509329; c=relaxed/simple;
	bh=I30MtonLfzJyjjR9OhU6FDyMeifYKqRo+OhnYiEYRZ4=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=EVm4edt6qibljv6qPP6fgzp9OBtvwGyxoxH2+O5TD8kR4CNl+dy5t/kk+cov/Gf2e8bhbky1CR9WTkwc7AUo0NmHXwo9dtqbd5hyeXqbGZC76AXHp5BqgBJ31v4G0Ubv4O0L6UNepcOQdwleplVxeBi+EMXUzbyz2GkAIHqLFWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oASl89za; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-42421b1514fso1164996f8f.2
        for <devicetree@vger.kernel.org>; Fri, 03 Oct 2025 09:35:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759509326; x=1760114126; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I30MtonLfzJyjjR9OhU6FDyMeifYKqRo+OhnYiEYRZ4=;
        b=oASl89zaf6nfzo4MOxEA/4NYS10rkmVLEwWDMFJrZG/0AAdj8FKAhEKc7US2M6m3Q4
         jEaSXyhdt6ZQsGX1Jn4Jry3M7SMf8ZPXhF+nintMvOkQ3f3qh5AqDyzKHk/E32n/eh2z
         cqOVwZgXKXEXYGFYBXr6dcjl7jnqSUT866uAokUAa2e91iH3U0ODACAowd5O5hAzlfaR
         0Tx21eWWRD8VHFYUpWISzMnyitE5QZ2GBJ/TbbhOIiIQipC4TyhHfPXFIANreYEu6EiP
         tipA81kUjtsEQ+gClwlxoRDoXMf4wFgt+iS77p+PCPFdmi2ukefutqUewJZQE5CfFKY5
         JhgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759509326; x=1760114126;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=I30MtonLfzJyjjR9OhU6FDyMeifYKqRo+OhnYiEYRZ4=;
        b=Xlms7HemRdE32r/Lmvj2Ip7bvrqfFWIBgDYtyIJAtrvu/dM7iAUAOmCsbupi4JidUG
         /TNdRTLwPiCGrY7LIOB9nvaRKzHoRT9Gpfi8hz8v+zEthyI1zN+vjWh9Z9NNDaXyDNVQ
         HK9yB5P5hxd65PFkbC4Cr6/JHC41QjfWxaiOG5Kc6jwVn3lGAjS6JPfyjxA0+RkewURw
         wtHG7JcrpoN1/u0jaDIpD7cqgXA1f+EPQojy0DJYPgN1q6OaIdnRCw+utdBrMomnHCCo
         3ugi0EbHemXevEEtKabQTR66ZHrAc7C/rIGRJEoGewCxDrEyz6rei4l918PFnvdGH8PS
         kQzA==
X-Forwarded-Encrypted: i=1; AJvYcCVoq5VxkN3S2FLf9QvoAXrjiSthar2wf02ta5HR139EWhGjIkb83NYvr7UKYxeCgupSoBrcrimDLiX9@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4cfU9HGOQ5b6ZEIbNhZkV69Y2w7CXgV2TIdOGlJzc1/14EMD2
	P+Mu2KizBgsfe4KOGUBir06yPsr9L500KGn1VCBzfj0ba1vVkr54dUSURtWimyOkbRY=
X-Gm-Gg: ASbGncvS3ENvij7LVzkdgIvZwDgWpWMp96vEK0UJrubak8eTUxUXZ+FJy7YsReE3a3n
	OPik48jA2MpY8oCV9QNKZDC+Hn69Y7/OgY9xaCEfTzpueRQyXJyGLeDDLWwoYCIfJAtfNatWnPP
	NsXqZf21BQOMq/+42g9FUl1D+7eTnCjJ+FyGuCXHaMpCNjetVDajj1t8E4QRucIB/JyeiwWFw+M
	HknekSG9gJrY3tGR4vn3FrbhBYD8w1Lx5uwX5BUYmflZXuNXLV/6b6Iib4MsrmeJnsxl6N6gP0s
	dUuxzQYMRJfScLMo5toCEbqCjWh2Dg1NImwA1ONBAsoohJX56ecZPai6idc7KyLjiGvTo9P4VKv
	1KzKbuW3N/f2OYhXkcldTgQLZelI7xKgaDegai6OhO+szmSWoLH7p7O5BQl8h8ZuWvA==
X-Google-Smtp-Source: AGHT+IEUablzE36cMk8CVwI0yiUUTr0R9KkSb7pzSBhrHE4oBgjDJpd0ISn4QhweGmHb1W4PbPa0uw==
X-Received: by 2002:a5d:5f93:0:b0:410:3a4f:12c8 with SMTP id ffacd0b85a97d-4256714d39bmr2395773f8f.20.1759509326121;
        Fri, 03 Oct 2025 09:35:26 -0700 (PDT)
Received: from localhost ([2a02:c7c:7259:a00:e0d5:382b:d116:cf67])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4255d8a6c3esm8580556f8f.1.2025.10.03.09.35.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Oct 2025 09:35:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 03 Oct 2025 17:35:24 +0100
Message-Id: <DD8U00VMC4P1.1P4RGHGOLO92J@linaro.org>
Cc: <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <aiqun.yu@oss.qualcomm.com>,
 <tingwei.zhang@oss.qualcomm.com>, <trilok.soni@oss.qualcomm.com>,
 <yijie.yang@oss.qualcomm.com>, "Tengfei Fan"
 <tengfei.fan@oss.qualcomm.com>, "Qiang Yu" <qiang.yu@oss.qualcomm.com>,
 "Manish Pandey" <manish.pandey@oss.qualcomm.com>, "Ronak Raheja"
 <ronak.raheja@oss.qualcomm.com>, "Jishnu Prakash"
 <jishnu.prakash@oss.qualcomm.com>, "Kamal Wadhwa"
 <kamal.wadhwa@oss.qualcomm.com>, "Jyothi Kumar Seerapu"
 <jyothi.seerapu@oss.qualcomm.com>, "Hangxiang Ma"
 <hangxiang.ma@oss.qualcomm.com>, "Vikash Garodia"
 <vikash.garodia@oss.qualcomm.com>
Subject: Re: [PATCH 00/20] arm64: dts: qcom: Introduce Kaanapali platform
 device tree
From: "Alexey Klimov" <alexey.klimov@linaro.org>
To: "Prasad Kumpatla" <prasad.kumpatla@oss.qualcomm.com>, "Jingyi Wang"
 <jingyi.wang@oss.qualcomm.com>, "Bjorn Andersson" <andersson@kernel.org>,
 "Konrad Dybcio" <konradybcio@kernel.org>, "Rob Herring" <robh@kernel.org>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley"
 <conor+dt@kernel.org>
X-Mailer: aerc 0.20.0
References: <20250924-knp-dts-v1-0-3fdbc4b9e1b1@oss.qualcomm.com>
 <DD6BOLBXKBYP.2NVXRXGJ9W3IG@linaro.org>
 <58a69bdd-f26e-4cc2-bbe2-6e9d5bb69aa0@oss.qualcomm.com>
In-Reply-To: <58a69bdd-f26e-4cc2-bbe2-6e9d5bb69aa0@oss.qualcomm.com>

On Fri Oct 3, 2025 at 10:09 AM BST, Prasad Kumpatla wrote:
>
> On 9/30/2025 11:18 PM, Alexey Klimov wrote:
>> On Thu Sep 25, 2025 at 1:17 AM BST, Jingyi Wang wrote:
>>> Introduce the Device Tree for the recently announced Snapdragon SoC fro=
m Qualcomm:
>>> https://www.qualcomm.com/products/mobile/snapdragon/smartphones/snapdra=
gon-8-series-mobile-platforms/snapdragon-8-elite-gen-5
>>>
>>> Bindings and base Device Tree for the Kaanapali SoC, MTP (Mobile Test P=
latform)
>>> and QRD (Qualcommm Reference Device) are splited in three:
>>>
>>> - 1-3: MTP board boot-to-shell with basic function.
>>> - 4-16: More feature including PCIE, sdcard, usb, DSPs, PMIC related, t=
sense, bus, crypto etc. Add QRD board support.
>>> - 17-20: Multimedia features including audio, video and camss.
>>>
>>> Features added and enabled:
>>> - CPUs with PSCI idle states and cpufreq
>>> - Interrupt-controller with PDC wakeup support
>>> - Timers, TCSR Clock Controllers
>>> - Reserved Shared memory
>>> - GCC and RPMHCC
>>> - TLMM
>>> - Interconnect with CPU BWMONs
>>> - QuP with uart
>>> - SMMU
>>> - RPMHPD and regulator
>>> - UFS with inline crypto engine (ICE)
>>> - LLCC
>>> - Watchdog
>>> - cDSP, aDSP with SMP2P and fastrpc
>>> - BUS with I2C and SPI
>>> - USB2/USB3
>>> - Modem(see crash after bring up)
>>> - SoCCP
>>> - SDHCI
>>> - random number generator (RNG) and Qcrypto
>>> - tsens
>>> - PCIE
>>> - coresight
>>> - Bluetooth
>>> - WLAN
>>> - Audio
>> Were everything described as audio enabled and tested? As far as I was a=
ware
>> some devices required some soundwire rework to support soundwire microph=
ones.
>> Is it finished? I don't see this linked here, but you state that audio
>> features "added and enabled".
>>
>> Do we understand this correctly that, I presume, everthing that is more-=
or-less compatible
>> with previous platforms were added and enabled (with renames) but not _a=
ll_ ?
>>
>> Probably some rewording is required.
>
> No, As outlined in the commit message, validation was performed on the=20
> Kaanapali-MTP platform having
> WSA8845 and On board Microphones(Mic Bias supply from WCD939x) , and=20
> there is no SoundWire
> microphones support on this MTP platform.

No, the email here clearly says both MTP and QRD and then that audio
is enabled. That's why is should be clarified otherwise it misleads
that audio is enabled on all platforms/devices including missing
features.

Best regards,
Alexey

