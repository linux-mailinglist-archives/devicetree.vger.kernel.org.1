Return-Path: <devicetree+bounces-275720-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mIj9J0dztWmi0gAAu9opvQ
	(envelope-from <devicetree+bounces-275720-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 15:40:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0316828D869
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 15:40:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0D32D302FAB6
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 14:39:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AF49378D9A;
	Sat, 14 Mar 2026 14:39:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="MIOaTg7f"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f45.google.com (mail-oa1-f45.google.com [209.85.160.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8366534677D
	for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 14:39:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773499148; cv=none; b=ZBXcPpxj2LOw3gxq13t/PXFdLD2BONBqFoH4DLQZtOlD0OvkkO5KvJNkYA+PdfS0rhLAsRghp5CyVNiEqGcW4ZscqgAigAsk0NAsbAWiIsa7Wmn2xeAJTIcZqBrU9bGgqonqprHUssijC9At2OOt/HLGdaUrZB1PFX5ZP7EYnpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773499148; c=relaxed/simple;
	bh=5M+8FF18btNiR/OXWuCMOHZwYvMZZMCmX9jXGsGAsUM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=awDbvJaL33tOcQfTX7KjBwGdmQpNW781mGRqMOxkaFdOOCIWgiNIBPx3RPxGPuU/xP+DHZQwNa7sGS48Ve5x/oO7YIqj/5iKyny38Ljb4It3kKPQ7/Zxnl1b2hr6ubufv5fM7EFrb4fH7GfVHO9lBBXX2g/g/ghyS84iM48z0Pk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=MIOaTg7f; arc=none smtp.client-ip=209.85.160.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f45.google.com with SMTP id 586e51a60fabf-408778a8ec4so1910889fac.0
        for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 07:39:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1773499145; x=1774103945; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=f30xM/Mb3048ZhnccFuHLAyII+0/eJw/DdO5W4q5nGM=;
        b=MIOaTg7fWAR5C4/7q4i1DiEjxFexoVTQ3GzXj8GT8+zCHWHGVMUPI3GOcyTjB2TG8j
         6x90oQZExaRCGh1q0piZyccq6i8LhPs8qH8elO6srXUem9LVhafXxwSf3QjSzST1FpK1
         l3JS5WujmUuwfDJ2ZeczclXEeNQbiaKfpZ3BAMb9D1IDZ9CqtSUEFrtf//8btdkiRJXL
         hLFl8t+r9VJXcMQ6bT9kgE2FlZC1bXXnoydT7YxMjD1inXLlWFtEDFI26C3cWOw4OqNs
         qPVLE//0zk1t4xiuR02hlbj2BzZ5LmDYYOlXftygCUAARe3SX4NlySJCSvfbH14l6OUx
         Nm7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773499145; x=1774103945;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=f30xM/Mb3048ZhnccFuHLAyII+0/eJw/DdO5W4q5nGM=;
        b=d8xTyATQ0gEm6YMo3WAJPTnmzZVm4XdgEiw47Kxpy4M+J2Rd2IIr/Ri3shV1tg8hX5
         KNYTR70rm7qskZytw+AjN5UmGaAO9yo4ysiPM8CnnUmmOlEmoy59oFEhAO6uOSJvkovQ
         kK4I3A1wRmCw2nnWTxZ2fP3h+lhIjKZ15uMcpGLIBbgMbudvRTYmb1zijqgzAcoNEuy5
         5toZQv+IuOhd0hXV9hm8NFnSSJP5uv5s44ylMlHGmU2Z87kUY54xBBZgcjaVq2olzJK4
         lxWTELt954C4Hujs5DeqhcWvKYadst4coQnpDcr+SeHiLCPD1Q2n7uGx8mJnvfkC1rpH
         LJew==
X-Forwarded-Encrypted: i=1; AJvYcCWCKyw5m6graxjJFL1qVJw9F1vZXNgkLOmkxSJm2/5/j6xOE9JhyE+pbHar43vzcowku8JD8bdSu5c9@vger.kernel.org
X-Gm-Message-State: AOJu0YyfHggTFBuzmUDwFWkZCg033UIx1avi91HM6yqYG74QW7rwmsb3
	Rw4iqE2daRplE84nNRoN7Ve4cD6agREgun8hO5iZO5PNhUEU9IriWhU37a5imvJPXEseAKdVUP5
	FCWOd
X-Gm-Gg: ATEYQzzcmrFVMoW3vEoyZiYxXHVz6VbVS46g0wx9DqG5AZmrfCu3TXSFvQxLwaiceai
	xvRkjL/chEKr5R1tqydrysKY5p01UCAyEiyT6T2/tNHeV/p9YbnuDx1KuuoyI7RK/BgOVYMBRvA
	wgJolxOB19EsC3beOWFmMyOepSQv5DnbPGxnvOJIDfMtG1VI/8ugJVY5nd14iD/XOZ3QuRTzumn
	2K96CW/XgQHRtQasyudQ2WK8YAOzBrSs1aH/PmpIgoIqsc1a8Jf2WMo/0CsPqVbeaGDxvJuiKnT
	zJMNnHeLXKjyiiAiXh7aPomJIPPaDKOxyQsxhDorYt/zMB7mr2X6CbvpcqKJlynr1zMK1/zPpw4
	hp6r+bc/9CLdqMgaNrKZHze5EjI7nIL/fr1LQtP2J6eh3k78Odc4SCDwe195ywFi+ciQ336obv0
	ea2wqzqBmBHGNhrGBuUiWTh9eQQOAxOZmhy9I7BNsHnSy4XOSuwgcknXmXaSOutHMPwyK9oBXVC
	A==
X-Received: by 2002:a05:6870:8318:b0:36e:8381:db00 with SMTP id 586e51a60fabf-417b902b7eemr3936827fac.9.1773499145404;
        Sat, 14 Mar 2026 07:39:05 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:500:14a9:db6c:e65a:4287? ([2600:8803:e7e4:500:14a9:db6c:e65a:4287])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4177e6c7885sm10415806fac.17.2026.03.14.07.39.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Mar 2026 07:39:04 -0700 (PDT)
Message-ID: <a2486bc7-13be-4567-a53c-b37921df7bcd@baylibre.com>
Date: Sat, 14 Mar 2026 09:39:03 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/2] iio: proximity: add driver for ST VL53L1X ToF
 sensor
To: Sirat <email@sirat.me>, Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, jic23@kernel.org,
 nuno.sa@analog.com, andy@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, linux-kernel@vger.kernel.org
References: <20260311224044.21480-1-email@sirat.me>
 <abLNbGUmaA7K0s68@ashevche-desk.local>
 <CANn+LW+F2bVMAGwoF8q9yBpF3x5r_hWDqvE3_JYjcLd16A_cEA@mail.gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <CANn+LW+F2bVMAGwoF8q9yBpF3x5r_hWDqvE3_JYjcLd16A_cEA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	TAGGED_FROM(0.00)[bounces-275720-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 0316828D869
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/12/26 10:12 AM, Sirat wrote:
> On Thu, Mar 12, 2026 at 8:28 PM Andy Shevchenko
> <andriy.shevchenko@intel.com> wrote:
>>
>> On Thu, Mar 12, 2026 at 04:40:35AM +0600, Siratul Islam wrote:
> ...
>>> ---
>>> Changes in v3:
>>> - Merge DT binding into existing st,vl53l0x.yaml (per Krzysztof).
>>> - Use "reset-gpios" in the binding but xshut_gpio in the driver since that's the actual pin name.
>>
>> But why is it "reset" in the bindings? If it's a power rail or enable pin, why
>> not call it as a such in the bindings? The connection on PCB level is different story.
>>
> In v2, I actually used a separate st,vl53l1x.yaml binding with
> `xshut-gpios` and a required `vdd-supply`.
> But Krzysztof pointed out that they share the same pins so the
> existing st,vl53l0x.yaml should suffice,
> using reset as the xshut pin.
> 
> I think a choice has to be made here:
> 1. Either I use the st,vl53l0x.yaml binding with wrong pin name and
> optional vdd-supply to not break existing code.
> 2. Or use a separate binding st,vl53l1x.yaml with 1. correct pin name,
> and 2. require vdd-supply

We can modify the existing binding to make the supply required based
on the compatible.

allOf:
  # Technically supply is required to power device, but we keep it
  # optional for "st,vl53l0x" for backwards compatibility.
  - if:
      not:
        properties:
          compatible:
            const: "st,vl53l0x"
    then:
      required:
        vdd-supply


And we can add a description to reset-gpios to explain that it is actually the
XSHUT pin.

> 
> Krzysztof, do you have a preference on how we should handle this?
>>
>>


