Return-Path: <devicetree+bounces-227932-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id C31CCBE61CA
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 04:36:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id AEAFA4E1728
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 02:36:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2098E24111D;
	Fri, 17 Oct 2025 02:36:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QUIHuMHB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81C0D749C
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 02:36:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760668588; cv=none; b=E2jV+mY1RYDLX+/98L3cnrf2VvOn36prDR79/Hrud4sbjyXb6PYqxeAyTBLF3LjbQMNFKHsNr940n0vCa27ABjx/20DCgRJvQygmNir9MQHTmvi8CdaJZg6BEoat1fcl8AGxy9jpjZNEHKWUYfQOLZU3USuFM3orVX8/fhJnRos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760668588; c=relaxed/simple;
	bh=+BFO4lLkJxthYoEmQjLAG/syQi6B9883zZU7DUAi7A4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=a51FO/FDJr+a5nVvMLyBIOj0IBXOWmEum5iVdHkVFe4urnFnUNXYfaLwV9YKQ0qKsb/m1eCOeRo9FMZEv15giue7eaT1sKArO4oreNrk8cgdQGZBAV145AFBvCec0TKBRhP2nvpQnOAo29s9cDST3uH1jftiNBp5Uu/lSyy/Blo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QUIHuMHB; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-7a213c3c3f5so1956028b3a.3
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 19:36:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760668586; x=1761273386; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oUpWgSMWkTpFApzUC7CDo3cZln3kgiAbKNYPoGndo9g=;
        b=QUIHuMHBkE3Un4XMUWv2iBCUYCT/Thor8KLgeNjvIQZvhvp1Kj+eE0va3nWWf8dM85
         WDJ1cun+m9h64/xpAec+XMoDczeUQbGdQxGB2aIe4OHBhXi2znqteGOW47MXIeqvAWFZ
         y3Jgc17Lq1VeTxmlGT/IxrJxgL8poBq1y8MVFx3oxeis6WtxNAcgnRAvNNJU8spU5N5B
         AIb2ZNDiRfHqybH5YgNbRb6N9SJL7yWyCs+/nZU+vyZcfe6ttXAuEfCCBrBQICWvmbqC
         7FLckfim5z6Fq4mlNoBJsPDqiLlfsNxwWMgDSzumN4Cb6EXrOQTDBQSZPXu8g0gFP8Ot
         130Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760668586; x=1761273386;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oUpWgSMWkTpFApzUC7CDo3cZln3kgiAbKNYPoGndo9g=;
        b=lNHR5Y2L5Ofl3cWOdUXY8+ZTCU/dhzL6NVdK4EfrDUu/jlkSTiRtPGAg4QXLf+XjW8
         d+9OoZV4/BV54I/7yit6Nyhta/74+mYNYCLhEH3i1gwNHVI+SC+98TsIiDNXnBArKGRd
         Fj74UKQ1IiyInlgkz60F9z2cAl4a/NtT21acSWWUVEPHRIvGRlhWjTpqz3GepJugMcEU
         11vNFjwU8l4FkqZozg84Em0XEU67EZjNUE/6khGBN74pUy+JlkaREasaE2aYg8NunwrT
         9wkel6V6pXeJUeK3ASNRrctEDPubNTm40gIvlqOQfN2BAYAhTMECkyCQ2WvCPFzhJmiX
         crFQ==
X-Forwarded-Encrypted: i=1; AJvYcCW0HTuECihOgs/evvJNrsBC/X/8mX+65F60WneRHmQulhf7tjHWy+fn6yLet0oCxd0uCQUh6elL+lQh@vger.kernel.org
X-Gm-Message-State: AOJu0YxUs5efme7XyuSdF+tS1TZlsZgof8km5LaWIgVUvky8v7ex0yZU
	5u0+NmzPATfv9kUciteatDdWAbfjWC4Lt7C/EKyhta43qULBq3iNy11A
X-Gm-Gg: ASbGncswAKxkwjAHa/ZuFR4LuyT0xwYJN4an047olNCofggA/WiD81tJqc5OiUKDOxY
	QfTjZ9hQKcMpeiy/OTNNlwudfoV1A+jwmZ44A9K5DRMR86nKHVMhjUQR6/Ikd6dSgnYWXXsMQcK
	aj+MA9BOojkgxpAcE/xrGZWfME0FD4XP2R2ErxtTMif4fH0dH/g29rJ26rITirgmqUv+I++c85N
	cfzmyncRYgZJJbpxi6P4i4pkp3nh+l0fpJt86XIEge3U0noLhmGsiaVuxXLdgjQ0g/LSQYHp/xu
	kovOsyhVvnWHSvDBhcPilc3FVynHVvroEe8BRhijBDFKNpKfsVXsT9Iw46OVD97vZwVl+LpFNOW
	pPevNdPPV8q4ADGehdK/rRzHEqkbhjV6yRQKEV9LWCuHttT9L7ZkYFvPOX4BKoONvuBb+pF6aQu
	v1Jogk9Fx72mRntbxnozbYMz+54yUdnkEA8zUJqfZnHtVsOZSdJ5+2cFZxB8YAIuw=
X-Google-Smtp-Source: AGHT+IHO+wJ5JjyMkUevnY1xKGNgX+w4v+WcCwT64cpY6qMZzpSPM2eZ+hY+r1WXLmPRChu8jM9Ueg==
X-Received: by 2002:a05:6a00:4f88:b0:78a:f784:e8cf with SMTP id d2e1a72fcca58-7a220d42784mr2450072b3a.27.1760668585794;
        Thu, 16 Oct 2025 19:36:25 -0700 (PDT)
Received: from ?IPV6:2804:7f5:b08b:ada3:3ad1:edd9:3bc:4a5c? ([2804:7f5:b08b:ada3:3ad1:edd9:3bc:4a5c])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7992d5b8135sm23504584b3a.68.2025.10.16.19.36.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Oct 2025 19:36:25 -0700 (PDT)
Message-ID: <8c1a533a-2c39-41a9-a007-f64cefe30e35@gmail.com>
Date: Thu, 16 Oct 2025 23:36:17 -0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v13 1/2] dt-bindings: iio: adc: add max14001
To: Marcelo Schmitt <marcelo.schmitt1@gmail.com>
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, Kim Seer Paller <kimseer.paller@analog.com>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Marcelo Schmitt <Marcelo.Schmitt@analog.com>,
 Ceclan Dumitru <dumitru.ceclan@analog.com>,
 Jonathan Santos <Jonathan.Santos@analog.com>,
 Dragos Bogdan <dragos.bogdan@analog.com>
References: <830368e5bc303faf04f542268acb95e99d0d1cde.1760502331.git.marilene.agarcia@gmail.com>
 <aPGeCMiLSB9-A7t_@debian-BULLSEYE-live-builder-AMD64>
Content-Language: en-US
From: Marilene Andrade Garcia <marilene.agarcia@gmail.com>
In-Reply-To: <aPGeCMiLSB9-A7t_@debian-BULLSEYE-live-builder-AMD64>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 16/10/2025 22:38, Marcelo Schmitt wrote:
> On 10/15, Marilene Andrade Garcia wrote:
>> Add device-tree documentation for MAX14001/MAX14002 ADCs.
>> The MAX14001/MAX14002 are isolated, single-channel analog-to-digital
>> converters with programmable voltage comparators and inrush current
>> control optimized for configurable binary input applications.
>>
>> They share the same features, but in the MAX14001 the inrush trigger
>> threshold, current magnitude, and current duration are all programmable,
>> whereas in the MAX14002 these parameters are fixed.
>>
>> Co-developed-by: Kim Seer Paller <kimseer.paller@analog.com>
>> Signed-off-by: Kim Seer Paller <kimseer.paller@analog.com>
>> Signed-off-by: Marilene Andrade Garcia <marilene.agarcia@gmail.com>
>> ---
> Reviewed-by: Marcelo Schmitt <marcelo.schmitt1@gmail.com>
> 
> Since you've dropped the ADC node label, I think you could have picked up
> Conor's review tag from v12.
> 
> If nothing else comes up, you won't need to send a v14 as Jonathan will probably
> pick the latest tags when applying the patches.
> 
> Cheers,
> Marcelo

I agree, I forgot to pick up Conor's review tag. Sorry about that.
Okay, thank you.

Best regards,
Marilene

