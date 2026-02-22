Return-Path: <devicetree+bounces-267193-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iJJvJd1nm2nszAMAu9opvQ
	(envelope-from <devicetree+bounces-267193-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 21:32:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E58B0170512
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 21:32:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 050FA300D46A
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 20:32:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9408A35028B;
	Sun, 22 Feb 2026 20:32:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="RYCwUFaN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com [209.85.167.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40CB01DF26E
	for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 20:32:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771792345; cv=none; b=XZpEnq3ygliYo96H7jhorhjQsx5QdeqrZmhfSawFeE9deRO3Hn7bdPfnagiPTGTvwaL89tw+YbRqzzB1XM29xVK90XiYBFMg3OURvQNwb2Fhev3obtH9wiyQYp3eDS53h6hvk2dnRvetJHModZL9vrMpwcF71+t2W92VPXNiErA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771792345; c=relaxed/simple;
	bh=82WJPVfy9WAqeIaHBtFp/bXSsyZKrM1DrxWnoDfNung=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gBPKm+GfLIZ8Mbf/1pj57z3EA8ZpCfVLwi87DkonaOQwBhNqhUPYJD+TH+T44dYn7/5o/C9jpqHscQcQoqRY/n54o8jy/L2DuD2oM3ZDXBcd3VcCwIMz15O0b0lojHrnzAqTDMsuGGMQ2jTZEq6KQU3/diUicNiaZD8+tdImSRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=RYCwUFaN; arc=none smtp.client-ip=209.85.167.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f179.google.com with SMTP id 5614622812f47-463a94f8475so2376003b6e.0
        for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 12:32:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1771792343; x=1772397143; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Y3BHd39eqV4yTHa+i/17dJDjEQra8nLgeT8JYDZ2i+c=;
        b=RYCwUFaNgT5Beu+0+QeOscwAjKKtZEGlovxLev5eNbRjveLKieWJgw/NhwAdpNKW7f
         4HTtNS/LV2f4B5qSqK7fbEwIJ2psHfICoEGjIop0u+wv5jK6kw9CSok671lqQPAzvwfV
         /4fikoY6RcnlWybO9J1v7GX+pF7BSBEJa2TaaW+RINv7YhFJYMK1J5o94JFYUB4t2jBb
         BkF1X/Lc738Kpg5T/zN7OQojlRx6ftrxfPTZB9dltWH6a1M60c325aIDcez5RmJ9ynUU
         vdZixGbMhJ5UU0JwT2l/1Ia1jknGMEAfv3ZuWDRKbwGjiVKmZuNF/Sl7lj9f95rMV+l6
         yL3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771792343; x=1772397143;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Y3BHd39eqV4yTHa+i/17dJDjEQra8nLgeT8JYDZ2i+c=;
        b=iczokYQJdUFay1YxKfxYOdiKL7DoUjHBZCLeNbKEoMKXj7htcXwvyWSH348MQkTkVs
         u7NvASPfD4ztqijl+yUE7nViojG1L4YHHtiE+tdjDMbem+ETDSdCSSqkUqXcQyJNKcxN
         HWVJJt432H82T1olByz0A2y5aunccNzFhfu0JBnmwVLX3BIWFDleCdda0D90SEChQg2/
         FFoPVxeQ3NO9exFCvXkBfuIWOuNKiJSfbjtpqxnJ021CV1mdcdhCOb+IprAF9P+IBOmA
         dkbQ6Jx9yyXa6/Z1GyqYfbRy7zZ6NTl7yBl91Zu/D0ElCnchJ71JeeTuy+1VZRIcVgbU
         xelA==
X-Forwarded-Encrypted: i=1; AJvYcCVnIvlSKYJTHWasNwGwfrgFVUlwZwjPsiBwxmhFk8YuRjN3wcWl6qMx3nvXA+Sj4zVvZH6/FhH/B+q4@vger.kernel.org
X-Gm-Message-State: AOJu0YwN+g4imS+uiqf9xxRovJ/TV/c3InpbluOo+dx2VkY50hJfWJYf
	AYu5fqaFbN+jEHvwyNi+ZAObVswHQN21TsIQHWs2JUTDMzj8X3PtUIoyNK5MYJ1gzBo=
X-Gm-Gg: AZuq6aLVgeb07WoTbzbdrKeMLNpHIOvHdhQF3JU7mbgoMHz3f0n6gFu+LbeXghM5SSm
	9plrgh2r/E1Vb/TLBSJ33HgpGxmBP26BdM6D4W6LesRaVEPvCJ8YPFW1NV/lNFFmzYky6DC+7kY
	cPhR1o2+kVKwkrgdMtTzTeTS/yfN9HNYwuMXlnJlxyfGijlUGi+HfoWh999XY3zLWBYaJRIgzX1
	J3zvPhWtgTpEorLeqF+5EG/qmroDsjfkeqPVzuwkvInzZ+ZT0mRXz3U8SwZQ2ExRtVUkpaWkj+y
	GiKoCwrHHP5iEYlR9CG1uHoW2Fpbj4aW/sZ5+X3i7obXFhp1XwjALqvmZzj/RKTh89YavTzMUrL
	QBLKlF0KYQ9wGgLKBbuhUba6N3kchmtIm0qbVjKwGdTFKe4f40wSL5b5ejRbPfsYt1lEJpeivb6
	tYIbo0YtPbiGLF87Y9pKvvVeGRCGGjCcoinsi+71psr2ThlENuFWjQ+ox75LmFLxV1iJFCmZsV1
	w==
X-Received: by 2002:a05:6808:1187:b0:45e:f888:695e with SMTP id 5614622812f47-46447075503mr2871671b6e.11.1771792343189;
        Sun, 22 Feb 2026 12:32:23 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:810f:2680:3e30:5a87? ([2600:8803:e7e4:500:810f:2680:3e30:5a87])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-46449fd5432sm3758172b6e.4.2026.02.22.12.32.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Feb 2026 12:32:22 -0800 (PST)
Message-ID: <bdc973e5-df74-48f2-8884-439b03565940@baylibre.com>
Date: Sun, 22 Feb 2026 14:32:21 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 0/8] AD9910 Direct Digital Synthesizer
To: Rodrigo Alencar <455.rodrigo.alencar@gmail.com>,
 rodrigo.alencar@analog.com, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
References: <20260220-ad9910-iio-driver-v1-0-3b264aa48a10@analog.com>
 <a72b2d62-3b91-4789-a1b1-ff1429e80ed5@baylibre.com>
 <2k4ouimpaxjuhnk67qmrues2375zj43ehru7h5as6w6kf7yak3@2ndr72co5trh>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <2k4ouimpaxjuhnk67qmrues2375zj43ehru7h5as6w6kf7yak3@2ndr72co5trh>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267193-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,analog.com,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre-com.20230601.gappssmtp.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,baylibre.com:mid]
X-Rspamd-Queue-Id: E58B0170512
X-Rspamd-Action: no action

On 2/22/26 4:01 AM, Rodrigo Alencar wrote:
> On 26/02/21 02:16PM, David Lechner wrote:
>> On 2/20/26 10:46 AM, Rodrigo Alencar via B4 Relay wrote:
>>> This patch series adds support for the Analog Devices AD9910 DDS.
>>> This is an RFC so that we can agree/discuss on the design that follows:
>>>

...

>>> represents a distinct signal path into the DDS accumulator, so the driver
>>> models them as separate IIO output channels (all IIO_ALTVOLTAGE type).
>>
>> Generally IIO channels represent the physical input/output, not the
>> internal channels.
> 
> That is part of the reason for this RFC. Dividing those top-level modes
> into channels allows for better organization, as they can operate together,
> i.e., phase or scale can be provided by single-tone profile, while
> frequency is controlled by the digital ramp generator (see Mode Priority
> section in the datasheet). Also, it allows to explore the most of standard
> ABIs like, scale, frequency, phase, sampling_frequency and enable.
> Putting everything into a single channel would make things a lot messy
> to interface with.
> 
>> Ideally we would just have the one channel here with a mode selection
>> attribute. Documentation can tell us which modes use which attributes.
>>
>>> This per-channel separation allows userspace to configure each mode
>>> independently through its own set of sysfs attributes, and to
>>> enable/disable modes individually via IIO_CHAN_INFO_ENABLE, relying on
>>> the hardware's own mode selection architecture.
>>>

Looking at Table 5 in the datasheet really helped me understand this better.
I think this series could benefit from a documentation patch that explains
more about how the driver works with some diagrams.

So really what we have here are a bunch of digital data generators rather
than a bunch of altvotlage output channels. And the same data channels can be
mixed and match as the source for up to 3 different components of the output
(frequency, phase, amplitude) depending on the priority rules defined in
Table 5.

Digital data sources are really more like a buffer in IIO terms than a
channel. And before we added the IIO backend stuff, there wasn't really
any other digital data source/sink that I am aware of other than buffers
(but there are certainly a lot of odd corners of IIO that I haven't explored
yet, so maybe I missed some).

In a recent discussion, the idea of possibly needing a way to provide
some userspace interface to be able to tweak knobs of an IIO backend
was also brought up.

Putting those ideas together, I'm wondering if we need some new channel
type or even a whole new interface (e.g. a new sysfs directory like buffers
and events) for managing these digital data sources/sinks that are not an
IIO buffer.

I think we've seen enough of these already to know that things like a
"tone generator" and a "ramp generator" are going to be common and could
share some standard attributes. 



