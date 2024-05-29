Return-Path: <devicetree+bounces-70654-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D04358D3EE4
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 21:30:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 95D872833B0
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 19:30:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D410E15B14E;
	Wed, 29 May 2024 19:30:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="i/SF2/nb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com [209.85.166.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D1FA42045
	for <devicetree@vger.kernel.org>; Wed, 29 May 2024 19:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717011036; cv=none; b=omBsyYEisr/mQLbptCk1Esz3HhpOEoKuKmi5PvoMy5eTmInl+ht5Ukxc3QqGJRDZweAGS4akFjJl6S2xLv6OJjxS+t6bkaKggqiTdmYH3M41JQZ0MLT9jSnO0gdDLBRpvACKL5zbaxxWUt5JcOc2esW0KKNkucztXESENkW8x6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717011036; c=relaxed/simple;
	bh=rbhu2ib/XGwYGFkI1NObBN7OwJKwg7X91DunIKl8pfg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=q3lzH2vLBeSLLD6FdAN5luWolduBG1SXhEYmIOCNOYoAJhxBt9gJigSxscWbvRvlHMK1e/7gzceg8quSzkHAlq8O1dceiGKSZVI/BknXtE/okbL6sAbk96imdKtqgut8de+z/9rFfXrdXLyW/Tyk4ARdaPf3afoIXrqKQXvCJ8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=i/SF2/nb; arc=none smtp.client-ip=209.85.166.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-io1-f47.google.com with SMTP id ca18e2360f4ac-7e9113f0cc8so1597739f.2
        for <devicetree@vger.kernel.org>; Wed, 29 May 2024 12:30:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1717011034; x=1717615834; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=O/S0KVWXFmOHVQryZxavE2DQTw/tgGX43OLxqtR+UFI=;
        b=i/SF2/nb//5u8Nge/gcITjzV50QCExCpqS/r/fIFoKuAXiKAxaGTCo0GCOeyGkYPzU
         0TXStnDNglPAFIErHEqrAcIGCANbKcAQSlGJ+2JqzHgfQBkmvxJDEcGh1rqrrd9tzbD7
         44pRe2zvN6trQONb5/cyxOy4MAz+DBrGJG05PHtPXt2cPhR6qf0wIkbYDiJ9txqNXprK
         jeKKIKsRaOTE790Moaui313bMpGiYJKomCnGguLdSEEXS98+10Gm5jvHI2fjMXwReQze
         IN8swmkUD07OXE5Q5bj3xotBBLa3wSlQGoI24gRqIbI6orxzryCt9s5ZgIheo/UJCTbz
         0TFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717011034; x=1717615834;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=O/S0KVWXFmOHVQryZxavE2DQTw/tgGX43OLxqtR+UFI=;
        b=E8lnys5qhRJUmDTKcmByKiHJtcQRBOCcAhgxjnf1TImMZktqXd5yavBOKaTZfXE+qA
         zZyqBvTZGgRJnuLhtnAON4Uq0AchDXa+M+0gQ6qhcv2MHN1fyMlQs1pPTABs9jkkx9ex
         AhgFulDwyLuJTU0wrzwaVNiWzLhLv17LuQ/a6EcZKIeYptusfcEeKAc+1V4eEYBgq0Zk
         BPfIgrARg46e2kPAM9wMu4Xp5K6hzfoAmjiEC7losLGpfJeTP6G0mF7t4j7QAGzTkPCL
         ra+QE9E5mAsWA+Pw6mUC+LXhn+k6M5TEtK4kMZXOyERrmbGyf6lWbnNnxX6nAV9UF3NP
         phug==
X-Gm-Message-State: AOJu0YxDR1vGJ4hvhdhvh0h9OZ6yKX7eX78APYQ4T3IJLMs6xtbFHAS1
	PYiw/TqDqmGapl4BGWkwGog6WMgLdIOI1tQs1fKKqKvTkEvmGUHSuoSYHjJEy5Q=
X-Google-Smtp-Source: AGHT+IGH/6KegzkUgys9rBPlGXzDuwuB6PvXzY3NlqpGylyoIeQBRNeVmq/3xNj56KnkqbTgj17LXA==
X-Received: by 2002:a5d:9304:0:b0:7de:cd12:ed2d with SMTP id ca18e2360f4ac-7e8c461533emr1764314239f.3.1717011034379;
        Wed, 29 May 2024 12:30:34 -0700 (PDT)
Received: from [100.64.0.1] ([170.85.6.197])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-7e903e0b783sm263170539f.4.2024.05.29.12.30.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 May 2024 12:30:34 -0700 (PDT)
Message-ID: <f18a74a5-330e-402a-93ca-5552faf00e7e@sifive.com>
Date: Wed, 29 May 2024 14:30:31 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 0/2] riscv: dts: starfive: Enable Bluetooth on JH7100
 boards
To: Andreas Schwab <schwab@linux-m68k.org>,
 Emil Renner Berthing <emil.renner.berthing@canonical.com>
Cc: devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org, Emil Renner Berthing <kernel@esmil.dk>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Paul Walmsley
 <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Albert Ou <aou@eecs.berkeley.edu>
References: <20240508111604.887466-1-emil.renner.berthing@canonical.com>
 <87wmo2nmee.fsf@linux-m68k.org>
 <CAJM55Z-F6N6ua5LoqyMFogDtLp=FaRPoDv4osXFDMjR1b8r9nw@mail.gmail.com>
 <87zfsy102h.fsf@igel.home>
 <CAJM55Z8Ce1i==pSUj0z4T2y71g713-675mAYQP5qSN5Euz=rLQ@mail.gmail.com>
 <878qzsbona.fsf@igel.home>
Content-Language: en-US
From: Samuel Holland <samuel.holland@sifive.com>
In-Reply-To: <878qzsbona.fsf@igel.home>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Andreas,

On 2024-05-29 10:53 AM, Andreas Schwab wrote:
> On Mai 29 2024, Emil Renner Berthing wrote:
> 
>> Oddly it doesn't work on my Starlight board either. I was thinking the firmware
>> might set up pinconf differently, but comparing
>>
>>   /sys/kernel/debug/pinctrl/11910000.pinctrl-pinctrl-starfive/pinconf-pins
>>
>> on the two boards shows no differences. I've also not been able to spot any
>> differences in how the AP6236 module is connected in the schematics for the two
>> boards, so not really sure how to proceed.
> 
> I see no difference between Starlight and Visionfive boards, both fail
> the same way.
> 
> I also see that sometimes the firmware greeting from brcmfmac occurs
> _after_ the timeout error from hci0:
> 
> # journalctl -b -2 | grep -e brcmf_c_preinit_dcmds -e hci0:
> May 16 12:01:54 beaglev kernel: Bluetooth: hci0: command 0x1001 tx timeout
> May 16 12:01:54 beaglev kernel: Bluetooth: hci0: BCM: Reading local version info failed (-110)
> May 16 12:01:54 beaglev kernel: brcmfmac: brcmf_c_preinit_dcmds: Firmware: BCM43430/1 wl0: Mar 30 2021 01:12:21 version 7.45.98.118 (7d96287 CY) FWID 01-32059766
> 
> Is this perhaps a race with the firmware loading?

brcmfmac is the WiFi driver. The WiFi and Bluetooth parts of the module are
functionally independent -- different drivers, different firmware, different DT
nodes. So the brcmfmac line is not relevant to debugging Bluetooth issues.

If the Bluetooth part has some dependency (pinconf, reset pin, clock, regulator,
etc.), then such dependency must be declared specifically for the Bluetooth in
the DT. Those seem to be correct, so maybe the issue is the maximum UART
frequency, if the signal integrity is marginal. Have you tried reducing that?

Regards,
Samuel


