Return-Path: <devicetree+bounces-253521-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E0E7D0E0F1
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 05:01:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 713DA300C6CF
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 04:01:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE6D81A23A0;
	Sun, 11 Jan 2026 04:01:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UHkujdTP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8531EF9D9
	for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 04:01:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768104093; cv=none; b=C3LIW5ATaYdKgnLnXxZPDZUqeLK08NMHCm3TL4V8I0pnfn0NNtHqE9F2lUPEjxEvOelayRZLIBnoywlJOmrXhvKKzZSGvgvFln7bvg3b9IlMOHFQVLjSY/1qZ4tQVECz42b3AAE6cDHSRIVnBokm4CDnsZzju3ga60HC2fg0Bio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768104093; c=relaxed/simple;
	bh=NcyWFIXdLsWHECMpFUUH7I65oUK5b9E6foMv8yDUJvc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ibsFmU/cG0RkWWmWDiCZ3nB4iQgzFc0pE6SiGx1aj8rL/y3BzovPErlQrEVe2T5o4k6u/+LHqdW1rjmm3gArCXVf+JKGTIqFAFQVVJb3nzN65zlkKLU9AEOQYO4COdBIODL/toHXbp0W8bblet5UPJ2iVVN1sE+Tj7e6xKP4Bcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UHkujdTP; arc=none smtp.client-ip=209.85.215.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f176.google.com with SMTP id 41be03b00d2f7-bc17d39ccd2so2321079a12.3
        for <devicetree@vger.kernel.org>; Sat, 10 Jan 2026 20:01:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768104092; x=1768708892; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6aSQimWPEMhTKsPYUy1vj9/5sPSG4zuP/FMO33v30Ew=;
        b=UHkujdTP3pfdfkoy5DtjZApnH1qGblmPGxMBYDeZ3lu5s+80KCNb2T7lKkdaaj49l1
         NXJLfiORPdLsorP7RI1j3fpHB5YZt0orGFT2lYuE1BTHsnY2w/tQLMsiuFFcGsd6++w2
         yzK2SffhUBWnY3sGHmXByjw3CP+vEcLAor0s/Dqui4ZtjKj/7XdouOUxzxM/zdrXRuRx
         10+rvjMUGbsKPfdp5ViuIMGGS4XBTWdD7EdeH/ua+Jtg6Z9+4D14rRS7/T6aLyv4sY2q
         iaqoegt90ri4auriS4wVSFgIWlBwBA5xOYr+Fe74t2jwvGzae1DsEwDkgBvwtGytyxDG
         xdGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768104092; x=1768708892;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6aSQimWPEMhTKsPYUy1vj9/5sPSG4zuP/FMO33v30Ew=;
        b=pEP5szSsgAUSKtBwZNsey4nhyZBphNeeyfRpbfZXSNU3MyAUUSzf/5ZKKbZ95mYmdb
         GC9b7SPCRcvT1scD95tbII609q50yz9eI+44z2Sqr9zPV48J/+PLiCPBRR76fbH4xOWO
         e3ckLNOmO3ObMw9UNflQx8J3DNC08e1qUpYrPVDcYCHrkzv0iuzrp3MmBccufSj23QbH
         EYe0vygM4U5BrnxWbmrLC0QrH6kAFeY3x1saUnJjA1j8a3mxkI3HrfkIGwC/yInNfTGI
         MNX6qIG37AqhE7zXuOULhjdV4a6xAITDIysvA5gr4hHaZLqopaCLhaRQnIN0dsbBLiXd
         VhGQ==
X-Forwarded-Encrypted: i=1; AJvYcCWdLnpTtsRo3L8S8E/H/syoKkW7vkTmbncGvEkxKf16QhPOfroauuQ2kjQr7yM9mSu9Bz/SawA6OvXg@vger.kernel.org
X-Gm-Message-State: AOJu0Yyu1Riccr9sYItPM2uJzu9+imH0/R1eQsFVBPfn1ZFLKFoIB/L7
	/zROhjeBbI6OOZpuBh3S5tzc+Z4zbmYfqOHoK8te1WNzILgvAKw8RtCr
X-Gm-Gg: AY/fxX5yVZzc/3WjTWwbx/63ROc9qpaK4z1hknajf9mM94QaiSdt0IOQoANHVXqLLSs
	u1Mut2M79pKcfWmiVjglgHRHnjo7y6S2VuCr2e7/SkwwemncTZYtcaqqL08HH+uOc2sxnLqpaXq
	9mEQ9S+8I3ZPHkTYytKyYvZ7klv6sL1J3e2tp2QNBC2U15s/MrqZqeTxiwKrlQANO3rINN3+rm4
	x0ngun4UKU3pPhJSCgdw8miOuTlQQVKL7Uz0LPB8Urw0qov5DfOGaui0gwvBkVrEGY+ZrnsXQ9t
	bTCLZu62gTaeCvSV7tTpULi+0RXcTW8jveb0rbiwB1jIUAq7bE2MROwN8Xq3jN1upjkgnguKn/O
	jOtSA83bMYL/2AShKezSUC239CiPK7zKt9JHxMLL8SH409mMS2KILl0FRWA/WhTgRx9KVOEd0AY
	Zqr9D3
X-Google-Smtp-Source: AGHT+IGPybPvZupy/FYihDwzQNc/n+V1kR/RRvYwaA6/FcFDZUxpWNk2e4gufz92hDuNfXzVOvBWtg==
X-Received: by 2002:a05:6a20:a128:b0:35f:68d:430e with SMTP id adf61e73a8af0-3898f8f45bemr12792422637.9.1768104091706;
        Sat, 10 Jan 2026 20:01:31 -0800 (PST)
Received: from [0.0.0.0] ([8.222.167.232])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c4cc96ca7a9sm13871167a12.25.2026.01.10.20.01.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Jan 2026 20:01:31 -0800 (PST)
Message-ID: <0d54ddca-9270-40a5-aa82-d8a7b65027ff@gmail.com>
Date: Sat, 10 Jan 2026 20:05:31 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/2] dt-bindings: ethernet: eswin: add clock sampling
 control
To: "Russell King (Oracle)" <linux@armlinux.org.uk>,
 Andrew Lunn <andrew@lunn.ch>
Cc: lizhi2@eswincomputing.com, devicetree@vger.kernel.org,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 netdev@vger.kernel.org, pabeni@redhat.com, mcoquelin.stm32@gmail.com,
 alexandre.torgue@foss.st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 ningyu@eswincomputing.com, linmin@eswincomputing.com,
 pinkesh.vaghela@einfochips.com, weishangjuan@eswincomputing.com
References: <20260109080601.1262-1-lizhi2@eswincomputing.com>
 <20260109080859.1285-1-lizhi2@eswincomputing.com>
 <00b7b42f-2f9d-402a-82f0-21641ea894a1@lunn.ch>
 <aWKZvEW7rKFFwZLG@shell.armlinux.org.uk>
Content-Language: en-US
From: Bo Gan <ganboing@gmail.com>
In-Reply-To: <aWKZvEW7rKFFwZLG@shell.armlinux.org.uk>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 1/10/26 10:26, Russell King (Oracle) wrote:
> On Fri, Jan 09, 2026 at 07:27:54PM +0100, Andrew Lunn wrote:
>>>     rx-internal-delay-ps:
>>> -    enum: [0, 200, 600, 1200, 1600, 1800, 2000, 2200, 2400]
>>> +    enum: [0, 20, 60, 100, 200, 400, 800, 1600, 2400]
>>>   
>>>     tx-internal-delay-ps:
>>> -    enum: [0, 200, 600, 1200, 1600, 1800, 2000, 2200, 2400]
>>> +    enum: [0, 20, 60, 100, 200, 400, 800, 1600, 2400]
>>
>> You need to add some text to the Changelog to indicate why this is
>> safe to do, and will not cause any regressions for DT blobs already in
>> use. Backwards compatibility is very important and needs to be
>> addressed.
>>
>>> +  eswin,rx-clk-invert:
>>> +    description:
>>> +      Invert the receive clock sampling polarity at the MAC input.
>>> +      This property may be used to compensate for SoC-specific
>>> +      receive clock to data skew and help ensure correct RX data
>>> +      sampling at high speed.
>>> +    type: boolean
>>
>> This does not make too much sense to me. The RGMII standard indicates
>> sampling happens on both edges of the clock. The rising edge is for
>> the lower 4 bits, the falling edge for the upper 4 bits. Flipping the
>> polarity would only swap the nibbles around.
> 
> I'm going to ask a rather pertinent question. Why do we have this
> eswin stuff in the kernel tree?
> 
> I've just been looking to see whether I can understand more about this,
> and although I've discovered the TRM is available for the EIC7700:
> 
> https://github.com/eswincomputing/EIC7700X-SoC-Technical-Reference-Manual/releases
> 
> that isn't particularly helpful on its own.
> 
> There doesn't appear to be any device tree source files that describe
> the hardware. The DT bindings that I can find seem to describe only
> ethernet and USB. describe the ethernet and USB, and maybe sdhci.
> 
> I was looking for something that would lead me to what this
> eswin,hsp-sp-csr thing is, but that doesn't seem to exist in our
> DT binding documentation, nor does greping for "hsp.sp.csr" in
> arch/*/boot/dts find anything.
> 
> So, we can't know what this "hsp" thing is to even know where to look
> in the 80MiB of PDF documentation.
> 

HSP -> High-Speed Peripheral. eswin,hsp-sp-csr is mentioned in

Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
Documentation/devicetree/bindings/net/eswin,eic7700-eth.yaml
Documentation/devicetree/bindings/usb/eswin,eic7700-usb.yaml

 From ESWIN's vendor/testing kernel tree:

hsp_sp_csr: hsp-sp-top-csr@0x50440000 {
   compatible = "syscon";
   #size-cells = <2>;
   reg = <0x0 0x50440000 0x0 0x2000>;
};

Apparently it's just a register block that controls varies behaviors of
high speed peripherals. I'm not sure if DT bindings mandates it, but it's
undocumented in the TRM. Perhaps ESWIN should properly document it going
forward? Also, I think ESWIN needs to check-in the sdhci/eth/usb device-
tree components ASAP, so folks can test it.

Bo

