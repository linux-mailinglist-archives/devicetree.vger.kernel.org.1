Return-Path: <devicetree+bounces-272491-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KKbgGcdXrGnNowEAu9opvQ
	(envelope-from <devicetree+bounces-272491-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 17:52:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C0F2522CBFF
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 17:52:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 04090302D963
	for <lists+devicetree@lfdr.de>; Sat,  7 Mar 2026 16:50:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A573731352A;
	Sat,  7 Mar 2026 16:50:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="FcUn2hNM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6038332E729
	for <devicetree@vger.kernel.org>; Sat,  7 Mar 2026 16:50:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772902221; cv=none; b=DxplrosPpm0pdtzsfHsWKMoAXCvSeH9MculAPhj9TV/jbpUVJlEwW/WcF6kJFB46t9SPd9Ff0ZfObTfEXtcreYsyFlxKWiqkKvZVIJAO128Ca0Nx+fZX25Z8pdxCg45D8NPE+2AGi3qVIKcz03UBETgzeerqNp+r0sdIvwOcMJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772902221; c=relaxed/simple;
	bh=cNks/tp+AMRyN6sp5KytIVoOfz22YIR8StH2a4NjKG8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EkGlWkv7eyuj8dLvRElzcZj7DIDX/0s2Nt0StJ3aWQB95gbRkWzhxVhor6qO9qERucDbfLdDhL+L+zpGabLfQyDbruQtS4wfZl90Nj1Q2Qa+aO2EJrosVv4O4U/qWDZ80fQqs4I2Ja2LMsVC7T02IN1v5sA4VGPLTQg0xxtfWkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=FcUn2hNM; arc=none smtp.client-ip=209.85.210.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-7d4c7d04890so8733471a34.3
        for <devicetree@vger.kernel.org>; Sat, 07 Mar 2026 08:50:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1772902216; x=1773507016; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Z/82J0F6BsrTq+dl8XoJ9fpKY1YIojB94UrmWOeex5k=;
        b=FcUn2hNMuFw8q5cjDxl46XptIDKYrJsz8lJvkpzLyXPBSzXEjepT+vl4lxh80kZuFG
         vIRuNgk49nV7V+w2cctfLbM0adzyHL9AqKrxY7GsQlCtjKw4GA1vLigDcfB+7K9kUjbI
         2ibFfKxJJTp2uKuON9zgHww/JV4GzjnGd3E5UK7mpeoLVIyJ895K7kXaa+O3R0k5WObs
         3B7u9UiZhUqwPuiBXUEYDwdvtbfFkxuvrrmbh3gZUzA0BRXxjCNB9z2xkKvIfy8zqtx1
         48D4zCVAYhapqbIQa+GFWKVz5DaXvspgrAf0KP8PtpSYEifKaMK8k1yOs4ykYLdf5UCs
         dgrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772902216; x=1773507016;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Z/82J0F6BsrTq+dl8XoJ9fpKY1YIojB94UrmWOeex5k=;
        b=CComeRKviC05mEHdeq28a1zyB70aOLGQ9IgOVmNMKWVAhFeRROvT0wu9hv8Pg4Wu0F
         pCBpJ3uCG2PvYD0gQDwN3VYfeNIUScslYCzFZyLrjYkE2DAg2YiTOnER9cTvLLDkwN2G
         q6Wr7oCNSRctzgSm632gs1tcr4nr4d02RmAuToF63kHJlYCtE+y3A0MrExwCSWe6iqVu
         z0FoQ+4xQ+VnNhWFKZfn2yuAD+Pa+e2Gkcm/fO3AK98HuDAJneqFnNsqR11GHVBV26Al
         t6XhUrHX8cWhegwnzaw57xBIBRImEHv9+Lm56n35lgR1iac4EkFRYLTTnND3ujtspw5I
         aWhA==
X-Forwarded-Encrypted: i=1; AJvYcCVQkij5dFhkK9RkmHHWPQaILuVIWK9ojj9pFfpDnAcCMJOSqYiTnBVGITYmZ4PyNmfHKe7pd18A3ry7@vger.kernel.org
X-Gm-Message-State: AOJu0YyLTgxSy40Y7Kpm50bhi7//mte4vWX4cv0dzUP+dCDWKLOElHBr
	3GEvpw5BofaDZHeeCaj58Rp+TD4EODKeRiCJraO8/DGq+uY/lOxbEpswX8cg2weSGxI=
X-Gm-Gg: ATEYQzxtTs5drst7a1FymaqDxLksCJGmWisNMmcasUxSqlWB24qSXYpZ2uFmLF0x0aj
	a2M71RhIZBu/k+DYBwAfyGZD9Wp2rBsU5ve19ab3udx3+8k95JQXj/f05VT+TgdmNB+p8H90LJG
	KovBLDn+OoolNyk8F21kjBQB3ThXFm3wtw9ELHiaUBek0p/jrLSQOG6iJRvvrjCas0yow1e+Vra
	AQAl2HpTGjgs6+C/JHE/08Sa8PRVqQeJeCpUnAbYtWRPXpJeVjWOtNSBJy8AuO7Hdqs0/RamiPF
	rFBNDT8utKRK3dvxXv9SB+b1SiaUeWSc6vRC+T7qJ6x+gihRtB+L3djto+ET0P6uMf/jtMPPFx2
	ah6XQgfwT3W3lsGV+cif/P3IqEwMp5cVUmNAVt+ETXfLdVhgVDDa2ezgvq5GBl/axhruZqbRsOX
	bqWwjKsWlJy/7ZkHcID+Vvq0j59hSk3kiaJEhZl5tSfyUktMMa+Dm6TpSILX1DyJ1F7NfqsnwEc
	EVdgKGrxR0Q
X-Received: by 2002:a05:6830:410f:b0:7cf:dbb4:320a with SMTP id 46e09a7af769-7d726fe1a6bmr3617425a34.27.1772902216297;
        Sat, 07 Mar 2026 08:50:16 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:cccf:5174:fa72:c520? ([2600:8803:e7e4:500:cccf:5174:fa72:c520])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7d728c5b75csm3349388a34.2.2026.03.07.08.50.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Mar 2026 08:50:15 -0800 (PST)
Message-ID: <7cc67826-3a8a-4190-9447-62b7d68e4445@baylibre.com>
Date: Sat, 7 Mar 2026 10:50:14 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 0/8] AD9910 Direct Digital Synthesizer
To: Jonathan Cameron <jic23@kernel.org>,
 Rodrigo Alencar <455.rodrigo.alencar@gmail.com>
Cc: =?UTF-8?Q?Nuno_S=C3=A1?= <noname.nuno@gmail.com>,
 rodrigo.alencar@analog.com, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
References: <20260220-ad9910-iio-driver-v1-0-3b264aa48a10@analog.com>
 <a72b2d62-3b91-4789-a1b1-ff1429e80ed5@baylibre.com>
 <2k4ouimpaxjuhnk67qmrues2375zj43ehru7h5as6w6kf7yak3@2ndr72co5trh>
 <bdc973e5-df74-48f2-8884-439b03565940@baylibre.com>
 <9392fea00a9c3b23d1bc9468faa1b3cc20904398.camel@gmail.com>
 <20260301133806.5e706756@jic23-huawei>
 <pohirub7gjqu7xtq5qakkmr3wlek2rgj6kdgltjvir6g4jwgbr@hmjflsplni4o>
 <20260307140953.46db3c19@jic23-huawei>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20260307140953.46db3c19@jic23-huawei>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: C0F2522CBFF
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272491-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,analog.com,vger.kernel.org,metafoo.de,kernel.org,pengutronix.de];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	NEURAL_HAM(-0.00)[-0.990];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre-com.20230601.gappssmtp.com:dkim,baylibre.com:mid,bootlin.com:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

On 3/7/26 8:09 AM, Jonathan Cameron wrote:
> On Mon, 2 Mar 2026 10:22:47 +0000
> Rodrigo Alencar <455.rodrigo.alencar@gmail.com> wrote:
> 
>> On 26/03/01 01:38PM, Jonathan Cameron wrote:
>>> On Mon, 23 Feb 2026 10:02:00 +0000
>>> Nuno Sá <noname.nuno@gmail.com> wrote:
>>>   
>>>> On Sun, 2026-02-22 at 14:32 -0600, David Lechner wrote:  
>>>>> On 2/22/26 4:01 AM, Rodrigo Alencar wrote:    
>>>>>> On 26/02/21 02:16PM, David Lechner wrote:    
>>>>>>> On 2/20/26 10:46 AM, Rodrigo Alencar via B4 Relay wrote:    
>>>>>>>> This patch series adds support for the Analog Devices AD9910 DDS.
>>>>>>>> This is an RFC so that we can agree/discuss on the design that follows:
>>>>>>>>     
>>>>>
>>>>> ...
>>>>>     
>>>>>>>> represents a distinct signal path into the DDS accumulator, so the driver
>>>>>>>> models them as separate IIO output channels (all IIO_ALTVOLTAGE type).    
>>>>>>>
>>>>>>> Generally IIO channels represent the physical input/output, not the
>>>>>>> internal channels.    
>>>>>>
>>>>>> That is part of the reason for this RFC. Dividing those top-level modes
>>>>>> into channels allows for better organization, as they can operate together,
>>>>>> i.e., phase or scale can be provided by single-tone profile, while
>>>>>> frequency is controlled by the digital ramp generator (see Mode Priority
>>>>>> section in the datasheet). Also, it allows to explore the most of standard
>>>>>> ABIs like, scale, frequency, phase, sampling_frequency and enable.
>>>>>> Putting everything into a single channel would make things a lot messy
>>>>>> to interface with.
>>>>>>     
>>>>>>> Ideally we would just have the one channel here with a mode selection
>>>>>>> attribute. Documentation can tell us which modes use which attributes.
>>>>>>>     
>>>>>>>> This per-channel separation allows userspace to configure each mode
>>>>>>>> independently through its own set of sysfs attributes, and to
>>>>>>>> enable/disable modes individually via IIO_CHAN_INFO_ENABLE, relying on
>>>>>>>> the hardware's own mode selection architecture.
>>>>>>>>     
>>>>>
>>>>> Looking at Table 5 in the datasheet really helped me understand this better.
>>>>> I think this series could benefit from a documentation patch that explains
>>>>> more about how the driver works with some diagrams.
>>>>>
>>>>> So really what we have here are a bunch of digital data generators rather
>>>>> than a bunch of altvotlage output channels. And the same data channels can be
>>>>> mixed and match as the source for up to 3 different components of the output
>>>>> (frequency, phase, amplitude) depending on the priority rules defined in
>>>>> Table 5.    
>>>>
>>>> More bellow... But note that all of the (or most of it) generators are going to
>>>> be feed into a DAC. Your output is altvoltage but maybe we can treat the
>>>> internals as voltage. Not sure.
>>>>    
>>>>>
>>>>> Digital data sources are really more like a buffer in IIO terms than a
>>>>> channel. And before we added the IIO backend stuff, there wasn't really
>>>>> any other digital data source/sink that I am aware of other than buffers
>>>>> (but there are certainly a lot of odd corners of IIO that I haven't explored
>>>>> yet, so maybe I missed some).
>>>>>
>>>>> In a recent discussion, the idea of possibly needing a way to provide
>>>>> some userspace interface to be able to tweak knobs of an IIO backend
>>>>> was also brought up.
>>>>>
>>>>> Putting those ideas together, I'm wondering if we need some new channel
>>>>> type or even a whole new interface (e.g. a new sysfs directory like buffers
>>>>> and events) for managing these digital data sources/sinks that are not an
>>>>> IIO buffer.
>>>>>     
>>>>
>>>> But what would be that channel? In the end of the day, we typically have voltage or
>>>> current DACs and a DDS primary function is indeed to generate alternating waveforms
>>>> that you then typically feed into a DAC (and in some cases from the DAC into a
>>>> power amplifier). So the DDS is just part of the data/signal path. Anyways, not sure
>>>> on the new type and I think we already have the "blocks" in IIO for dealing with this:
>>>>
>>>> . frequency
>>>> . phase
>>>> . amplitude (raw + scale + offset)
>>>>
>>>> But you're right that maybe it's time to think in a better way to fit them together. 
>>>> Maybe a new type (as buffers or events) can make sense where the above are treated as, example, scan
>>>> elements. Maybe it's overcomplicating, not sure. It surely needs  discussion and thinking :).
>>>>
>>>> And spoiler alert, as you might have guessed already, the parallel port stuff is to be
>>>> used with DMA buffers (and IIO backends). At least, that was the plan IIRC. But Rodrigo
>>>> can confirm it.
>>>>   
>>>>> I think we've seen enough of these already to know that things like a
>>>>> "tone generator" and a "ramp generator" are going to be common and could
>>>>> share some standard attributes. 
>>>>>     
>>>>
>>>> I tend to agree. For example, there already some DACs (with dithering) that make use of a similar
>>>> interface (but with a custom prefix). Though the end goal is different, the interface is not that
>>>> far off:
>>>>
>>>>
>>>> https://elixir.bootlin.com/linux/v6.19.3/source/Documentation/ABI/testing/sysfs-bus-iio-dac-ltc2688
>>>>
>>>> Anyways, I knew this one would be an interesting one for upstream :)  
>>>
>>> For history buffs, we had a bunch of DDS chips in staging at one point and never
>>> manage to figure out the questions being raised here :(  They are complex
>>> beasts.  Clarity of ABI proposal and documentation is going to be key to driving
>>> this series forwards. In a sense the code is the easy part.  
>>
>> Does that mean that once good documentation is provided, the presented design can
>> be accepted? Even though data generators/sources might not be interpreted as
>> altvoltage channels?
> 
> I'm not sure yet :(  It's a pretty complex design and we haven't really come to a conclusion
> on how to handle this channel 'mixing' case.
> 
> If we did go this way, we'd need to figure out a way to describe the mixing part.
> So either we describe it as one channel (which is going to be really complex)
> or we describe it as multiple channels but add extra ABI to make it clear they
> are mixed into a single 'physical' channel.
> 
> Jonathan
> 
>>
> 

Some ideas have crossed my mind, like adding new option to the in_/out_
prefix for "internal" channels. But I it would take a long time to teach
existing generic userspace libraries/tools about this.

What has popped into my head just now is that perhaps we could do like
Rodrigo is proposing here reusing existing channels and standard attributes
as much as possible and add a new "subcomponent_of" attribute to provide
the link, similar to "current_trigger" for triggers.

This way, it would still work with existing userspace tools (even if it
looks a bit confusing). And userspace tools could eventually be taught
to present the channels as a tree-like structure with the main channel
and subcomponents nested under it.

We would want to spell out up front what all of the anticipated ways of
using it are. For example, I suspect eventually someone will want this
attribute to be writeable to assign a specific limited resource to a
specific channel. An I expect that we would eventually see something were
a single subcomponent is shared between multiple physical channels. In
this case, we would want the value of the "subcomponent_of" attribute to
be able to be a list.


