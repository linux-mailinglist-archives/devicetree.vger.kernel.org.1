Return-Path: <devicetree+bounces-165984-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E7C6FA8606F
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 16:24:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 60B7C188FC83
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 14:23:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7AC51F2C52;
	Fri, 11 Apr 2025 14:23:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="fpIBZJkv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f54.google.com (mail-oa1-f54.google.com [209.85.160.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B113C142E83
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 14:23:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744381414; cv=none; b=YBTgnrKJUjG28tdp7NQph4U6KFbDCIXHGLB+x2u/ioabikZugefkfpPQqMk8CxwfKJ8x3wixzMrmpayvrF7dr7KZzJ7d+DarCap0D04H9e0FUKY5gSIxsQWfFoUT3B/+UFizpIzuP8ZGCnpz/LbxEb5aK9CY42qNU2cPJmdenBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744381414; c=relaxed/simple;
	bh=eCECi8hvjc4H1yNEulfKYz4kG15vkMiOtptaPhuEBII=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FrEOEt56qL4CaOLfjyV/izFHNGM194HQooqV8xIv8gNAmYDMHXeVHskuRolTGtDWOdC6C790/NSOngjhSWU3Hw7NlfNocdCAb5Lz6po7iqbW5dzusTpamTVj5aWAAi6zhkOR/MjagueLtJAXG//mW4sjnbOHYdH2mejlvk/U2N8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=fpIBZJkv; arc=none smtp.client-ip=209.85.160.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-oa1-f54.google.com with SMTP id 586e51a60fabf-2d0920ce388so490914fac.0
        for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 07:23:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1744381411; x=1744986211; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+E7p0o5spFsIl4UEBEn7tp0i54T+KYSkEhlNQklbq8A=;
        b=fpIBZJkvuBUrKHDt3SJTjsUsjm6oT3NqjjrKxKjji2OZ6w4cXurFb9eIUFok0EuNEY
         +fHaJQK44ihm1pnVUEvllql1ikIkvF0JoF2sphj8OiYz6c8q9/kmY9g1imo5hKdeALRR
         POWEagXWKtciU41gTsDXHsIx1gc0SBglY9rG2nGwVRHevwm06VXLfRzrc/yJ/UNGzeBU
         rj25hsD0caqw929A7Va+NeFk7ds9lLjIJJlg4MZv4XFwMEbuc2ZWUm4+GIXc6dGD6zcy
         SSYmXNH82GzUv0gsTxTLlaN2PHf0BDMAfEnXz8q0iQZwY3hXoKvRvRNiY4Q/aJ3hXoL9
         d7Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744381411; x=1744986211;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+E7p0o5spFsIl4UEBEn7tp0i54T+KYSkEhlNQklbq8A=;
        b=ckIz0Nl5ZXppYieyU6ddSXA0MdzUe1uwDJks8PI8ulli69Nz9Su+YAwU6gsxDgcZwi
         jxHeT2UVleU6toYV/FzvM7yEZit8rAMXKGVgekNz869eU82Kh6Gv3oaHlJWfGnW7YCtu
         27k2b2fTeOvJUpQbjD0xNUMDLHJwnV+K8LJ0ruckPYMTmVpZwXejNpjUGKYtS33pSyPS
         GMjD9VCX2pNn0g8oRujgvZxkqglsGDjrR8fRUdrVXZqhMmMLFnMzXntcfVqZWB9DWC0H
         Shp5Pd/9c6hAipdMOyyctKQyXCeurIMWk3pM8/gB/g2JmHEeyqxE7uwVOPdtbqFjOLKn
         hYOg==
X-Forwarded-Encrypted: i=1; AJvYcCXqN3gCCK5i7JmGcr5dL1a1Hh+cVt1cRof0X2+KVcP7bUGimHQ6g8zJqmznBIcnpkLA2gkvDypbZbUG@vger.kernel.org
X-Gm-Message-State: AOJu0YzHu4oNjACvYVRdheY1yogN3r4E+jWvs8Xl/efuUvoroK4IHazf
	6ke6h9FhupNNWM+n8hg78rtzrlOcTFHZd36JPwuPtIS5d8rGbS9lGKTO8brB4yE=
X-Gm-Gg: ASbGncvYllaB06oDAGi9UNo+EpLmfuup2NVug1nykvDG2D+44dnkabolahr389XNIhF
	vYB3OZyxXPyRZ7egRQbjJhraP5juuwfcMcsEKl7OAnopTHzjUjJqFmQX4kgVVsNHvmytlOW6s01
	vSNd0YSyPPh76vokdg6RTibkfCwS3inH5CF93sHB6x1tgdCqzwni4MyAs974lw8YgRgz6axXoU+
	Y4/YzNPQZre70l3Dry9qKpcLJsZxN/JLKfSzG9Ecf2n4hWoZy5O94dXlhh7O186x4p9ppJzD7Ax
	NYMoIJAzvrXOU+EyjzjRw2VUGbYDSqRkdXg62jZvTSCbKm0jKIYAIXsk8TLzloOIhTUJOD4DZl5
	qltU1
X-Google-Smtp-Source: AGHT+IFPIaNYuj9Tjx4dRLkT1R8N8HYwjaMapquLcZYIrOm6BqeSxjwlZBr9Pe67U0+m0146ayQe0A==
X-Received: by 2002:a05:6871:a4c1:b0:29e:5de2:cffb with SMTP id 586e51a60fabf-2d0d5d8262bmr1560654fac.17.1744381411628;
        Fri, 11 Apr 2025 07:23:31 -0700 (PDT)
Received: from [172.22.22.28] (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2d0968ea1c6sm1133431fac.5.2025.04.11.07.23.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Apr 2025 07:23:31 -0700 (PDT)
Message-ID: <d2c26d3e-787a-490e-9134-8ffe2f6b8333@riscstar.com>
Date: Fri, 11 Apr 2025 09:23:29 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 7/9] riscv: dts: spacemit: Add PWM14 backlight support for
 BPI-F3
To: Yixun Lan <dlan@gentoo.org>, Guodong Xu <guodong@riscstar.com>
Cc: ukleinek@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, paul.walmsley@sifive.com, palmer@dabbelt.com,
 aou@eecs.berkeley.edu, alex@ghiti.fr, p.zabel@pengutronix.de, drew@pdp7.com,
 inochiama@gmail.com, geert+renesas@glider.be, heylenay@4d2.org,
 tglx@linutronix.de, hal.feng@starfivetech.com, unicorn_wang@outlook.com,
 duje.mihanovic@skole.hr, linux-pwm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org, spacemit@lists.linux.dev
References: <20250411131423.3802611-1-guodong@riscstar.com>
 <20250411131423.3802611-8-guodong@riscstar.com>
 <20250411140510-GYA22364@gentoo>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <20250411140510-GYA22364@gentoo>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 4/11/25 9:05 AM, Yixun Lan wrote:
> 
> On 21:14 Fri 11 Apr     , Guodong Xu wrote:
>> Add a PWM-based backlight node for the Banana Pi BPI-F3 board,
>> using PWM14. The backlight is defined as a 'pwm-backlight' device with
>> brightness levels and a default brightness setting. PWM14 is assigned
>> a period length of 2000 nanoseconds.
>>
>> This configuration was used to verify PWM driver changes, with PWM14
>> tested and its waveform confirmed as correct.
>>
>> The node status is set to "disabled", and should be enabled when the
>> display driver is ready.
>>
> .. see comments below
>> Signed-off-by: Guodong Xu <guodong@riscstar.com>
>> ---
>>   .../boot/dts/spacemit/k1-bananapi-f3.dts      | 32 +++++++++++++++++++
>>   1 file changed, 32 insertions(+)
>>
>> diff --git a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
>> index 816ef1bc358e..d04b57ddeb46 100644
>> --- a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
>> +++ b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
>> @@ -28,6 +28,32 @@ led1 {
>>   			default-state = "on";
>>   		};
>>   	};
>> +
>> +	pwm_bl: lcd_backlight {
>> +		compatible = "pwm-backlight";
>> +
>> +		pwms = <&pwm14 2000>;
>> +		brightness-levels = <
>> +			0   40  40  40  40  40  40  40  40  40  40  40  40  40  40  40
>> +			40  40  40  40  40  40  40  40  40  40  40  40  40  40  40  40
>> +			40  40  40  40  40  40  40  40  40  41  42  43  44  45  46  47
>> +			48  49  50  51  52  53  54  55  56  57  58  59  60  61  62  63
>> +			64  65  66  67  68  69  70  71  72  73  74  75  76  77  78  79
>> +			80  81  82  83  84  85  86  87  88  89  90  91  92  93  94  95
>> +			96  97  98  99  100 101 102 103 104 105 106 107 108 109 110 111
>> +			112 113 114 115 116 117 118 119 120 121 122 123 124 125 126 127
>> +			128 129 130 131 132 133 134 135 136 137 138 139 140 141 142 143
>> +			144 145 146 147 148 149 150 151 152 153 154 155 156 157 158 159
>> +			160 161 162 163 164 165 166 167 168 169 170 171 172 173 174 175
>> +			176 177 178 179 180 181 182 183 184 185 186 187 188 189 190 191
>> +			192 193 194 195 196 197 198 199 200 201 202 203 204 205 206 207
>> +			208 209 210 211 212 213 214 215 216 217 218 219 220 221 222 223
>> +			224 225 226 227 228 229 230 231 232 233 234 235 236 237 238 239
>> +			240 241 242 243 244 245 246 247 248 249 250 251 252 253 254 255
>> +		>;
>> +		default-brightness-level = <100>;
>> +		status = "disabled";
> I'm confused, has DT in board file with disabled status doesn't make sense?
> it doesn't really useful for placeholder, even worse that functionality may not
> verified, so I'd suggest sending along with display driver while at it..

I think I suggested he include this.  Guodong tested PWM using
a backlight on a display connected to a Banana Pi PBI-F3 board.
The above numbers come directly from the downstream code, which
uses this PWM consistently as a display back light.

But you're right, the exact set of numbers to use is dependent
on the display used, so it's better to add them when the display
gets integrated.

The pwm14 node could update still be added here, but that too
might as well wait until there's something to use it.  So I
think this patch can just be dropped.

					-Alex

> 
>> +	};
>>   };
>>   
>>   &uart0 {
>> @@ -35,3 +61,9 @@ &uart0 {
>>   	pinctrl-0 = <&uart0_2_cfg>;
>>   	status = "okay";
>>   };
>> +
>> +&pwm14 {
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&pwm14_1_cfg>;
> ..
>> +	status = "disabled";
> ditto
> 
>> +};
>> -- 
>> 2.43.0
>>
> 


