Return-Path: <devicetree+bounces-158159-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 11623A64E4C
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 13:14:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 856081661A8
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 12:13:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10E3B23ED77;
	Mon, 17 Mar 2025 12:09:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="dJHadBPE"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66933238D57
	for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 12:09:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742213342; cv=none; b=KxSs9+y2jT0dQqgykHvunknzaftS/xghkQzmVhI8gtEd8aBw1ZYwNHJiNEzPvCizMc+TIemXJEKTwRgAIKZySFrrnAyGSsvAQwVkl+mxZ0Yx8Yove3Dmp/0nnx8uuvWICg+IqcLH2WuF24bwziwA3VDWz74IQuDRlnJLdoRhlqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742213342; c=relaxed/simple;
	bh=fgKkev5GNis8u+sBMd7UBvRwmZ3uweOhIS9C30idRKE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=b7E1sAgeRRKYH7cQpbtEa9NWjIH0DMMGL3grNburYG7iGAJLDQFCr0e2LcPWu09I0Q2LNItrXz6kVfITQJphmvNI3GlXPB54Omn/pLKNclkQcPrROQna2tXkbPZaD2ao9tx9+vCB3VMw/RQEBKsS+KlnGs5lZEi7BsgzoCaP7pU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=dJHadBPE; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1742213339;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=dJPQeSME8GvdRg4e0/QcxZw7No+3gHVhzWB0lS12ve8=;
	b=dJHadBPE4wcHTYhKFkDjADTKhOrd3mgaJ3r1bAUT8CBSAFwywRePHsc6ErqKw5KERj8zi7
	PdztnKarVvq83gc/2dpno1cuij8fEL5izokJiKZP3Erpiqqx2hvPAzz/BRVnpnNhwTiA4S
	5yXYFOPjNl9UqQA/AoljN3oNsyJcWuU=
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-659-8pNWntapNEOAFs7rSF-8Fg-1; Mon, 17 Mar 2025 08:08:56 -0400
X-MC-Unique: 8pNWntapNEOAFs7rSF-8Fg-1
X-Mimecast-MFC-AGG-ID: 8pNWntapNEOAFs7rSF-8Fg_1742213336
Received: by mail-ej1-f71.google.com with SMTP id a640c23a62f3a-ac25852291cso402212166b.2
        for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 05:08:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742213336; x=1742818136;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dJPQeSME8GvdRg4e0/QcxZw7No+3gHVhzWB0lS12ve8=;
        b=VdloeZISBReVvomhAHc0DjNQcLJWf+cjj6pdL0TO/ytOnylnWRI7nkSGTsN2L4mcAU
         DOZrpr8XbJuMP//BEqO3MuW4mxIjNTjxsYYXdpjWdt5J8wvoCdR6xHxJ1Wh0oH6toerd
         nmgnEeaBuyKAyF6qZj9zZGq26QTjfH24UUW1KSqC6tpYJsUjuMkCBcT7VbV2BxVPG9wg
         H3APi17lK2EubaEwD5a/oEJ6Z1KmEaE75UblkAyC8K6M1RYYZ1a2+umBQxtoiAfB9vvo
         nIP+GIHVfvp/mGpbajmn/TSI25JGUzHe6YY5GEjDcKJ6FiELloddLJUWqIPtHL0sXzmE
         slGA==
X-Forwarded-Encrypted: i=1; AJvYcCVn+eXSZCCcSgUer90ESj8sGuYrURTmauNncZ3qddqfHXSM7t8GcN7fx84lijXa2uhZnvm8UEQh/GUt@vger.kernel.org
X-Gm-Message-State: AOJu0YxsvHLGaRR1oIGkp/vhqc0ItnRtk6EVpv2RYRA8xYclFxCy8BV+
	ZS/YP8Qw+pvfJAJc7oyVmpWjB2zospcdFdvOF1HeHhQjfPUli2931wYxDwL3VssScOZT5aB4Muu
	WfSktasL9PMkJaIFjPyOkcSepJVkWfE+W3iDcGOojkvC1BTTCrkXy7pdeB4U=
X-Gm-Gg: ASbGncun5HbHbB9bKk9877Q9V6+amR0my7JsbbWcGSmUBxgkbtjgExR2/wT3OYKDZOx
	09mKfrEZ7ZVGBMjKFUxEZFWLplGSG6u06oyWU/t5hBBQM4eXUUXfBDPmasF5+wTKXeviPCwEzlP
	X4JLMwJcz/JiRpe5NEaUJt/HrsyifdBd0D5dxfXe3Ytlij1SRgogwpCeZ1/JDNtFkxrE3BsweoL
	P65JP1J18ycTKVMj2yiqetr+XzrZn0FORrzi5uvZUvBnt4k5MphgzMr0PRjv6g5zuy5/8erf1Ln
	6MGHH+LsuIjRyAqhyqw=
X-Received: by 2002:a17:907:7251:b0:ac1:ecb5:7207 with SMTP id a640c23a62f3a-ac330301e93mr1164668166b.29.1742213335656;
        Mon, 17 Mar 2025 05:08:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEASQHm2+bhVpahCDmGzllaOZY//NhzMkpnMVSSXwheT0L/ool1AlnploYIuxInxifydvQX+Q==
X-Received: by 2002:a17:907:7251:b0:ac1:ecb5:7207 with SMTP id a640c23a62f3a-ac330301e93mr1164664766b.29.1742213335224;
        Mon, 17 Mar 2025 05:08:55 -0700 (PDT)
Received: from [10.40.98.122] ([78.108.130.194])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac3146aeaa1sm652245866b.2.2025.03.17.05.08.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Mar 2025 05:08:54 -0700 (PDT)
Message-ID: <b59d649d-4354-4fab-91aa-865af5d747de@redhat.com>
Date: Mon, 17 Mar 2025 13:08:54 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH v1 0/2] platform: toradex: Add toradex embedded
 controller
To: Andy Shevchenko <andy@kernel.org>
Cc: Francesco Dolcini <francesco@dolcini.it>,
 Emanuele Ghidoli <ghidoliemanuele@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Francesco Dolcini <francesco.dolcini@toradex.com>,
 Emanuele Ghidoli <emanuele.ghidoli@toradex.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, soc@kernel.org,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
References: <20250313144331.70591-1-francesco@dolcini.it>
 <4596db59-51fc-4497-9e94-670e9533e7aa@redhat.com>
 <20250317100856.GC17428@francesco-nb>
 <bc3144b7-23c8-4b47-bdd8-c482b1a6d81d@redhat.com>
 <Z9gQMPjjCt9Rn4lH@smile.fi.intel.com>
Content-Language: en-US, nl
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <Z9gQMPjjCt9Rn4lH@smile.fi.intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi,

On 17-Mar-25 13:06, Andy Shevchenko wrote:
> On Mon, Mar 17, 2025 at 11:39:14AM +0100, Hans de Goede wrote:
>> On 17-Mar-25 11:08, Francesco Dolcini wrote:
> 
> ...
> 
>> But if Andy and Ilpo are happy to take this as a more monolithic
>> driver under drivers/platform/aarch64 I'm not going to nack that
>> approach.
> 
> I'm okay with the choice as long as it's suffice the purpose.
> I agree that aarch64 maybe not a good choice after all, but
> we should start from somewhere. Later on we can move to agnostic
> folder if needed. The question here is more about MFD/not-MFD.
> If the former becomes the case, it would need to be under drivers/mfd
> as Lee asked for that (or even required).

Right if we go with MFD (which IMHO would be the cleaner approach)
then the base driver registering the regmap + cells / child devices
would live under drivers/mfd, there reboot/shutdown driver under
drivers/power/reset/ , gpio under drivers/gpio and any new
functionalities in the correct places for those functionalities.

Regards,

Hans



