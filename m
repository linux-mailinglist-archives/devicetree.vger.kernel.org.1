Return-Path: <devicetree+bounces-108700-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 21A459936E5
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 20:55:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8B28AB23E83
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 18:54:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60C3F1DCB2B;
	Mon,  7 Oct 2024 18:54:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="b66dAsxT"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A679E1DDA18
	for <devicetree@vger.kernel.org>; Mon,  7 Oct 2024 18:54:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728327247; cv=none; b=Iu2vJVpsGWOA3QTyMaWlNn5cr8gR+tiunZO2P/Q87ddZP6cljLF2IhDJFYr3rY/WF+R5x4TwAt31zbw8VvPDdLBKCvskg+toK6ul8hc51IHdfXGq4VKOuh2Oc3tc2VUypyLz0HltYw8z7JHVLnHRRbObhK48SqjLZ1gKtOM7xA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728327247; c=relaxed/simple;
	bh=hnTBwamPDAsTLDF+Js1D5YUZ3/8QsfQbBw6PXRBHvlw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mi8zUiDln0hGFFW/DFEA0wrdQso4x/FGPYfHjvcUMDd3ti0TfeJLGTDI/mSDAgbnmiwDxpaBdiCqBlO0ns1EVSbQrIQtYK9H/cd11/SXWe15k4ehYTfiKp73/6Sjxgd2ZweRqAJpDOZpKKA7QFEjzFkptyow+S8HUrT5ccX21lE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=b66dAsxT; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1728327244;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=TXl/fSOrjemj+ajnFjFM4CSMF/fXgBTJBQOb6whFU1E=;
	b=b66dAsxTTZQYW6SCSUHKilVUrLSbRtFCt7TYcuc+BcbKccz7u8wk65fzxX9Rgq3wncpkCK
	ygLnlkydYaYELag6+M6RG8bjMNyvu8kZshvdal4Keu7CNlEkpxsUm/Xf7Yw/LNcHZ70U4J
	nWBixa2FHUfigboTdVSvISsnnkeP8UU=
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-694-z2sO6qJUO2-jMAyhqdISBA-1; Mon, 07 Oct 2024 14:54:03 -0400
X-MC-Unique: z2sO6qJUO2-jMAyhqdISBA-1
Received: by mail-ed1-f69.google.com with SMTP id 4fb4d7f45d1cf-5c8824bb351so4139433a12.3
        for <devicetree@vger.kernel.org>; Mon, 07 Oct 2024 11:54:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728327242; x=1728932042;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TXl/fSOrjemj+ajnFjFM4CSMF/fXgBTJBQOb6whFU1E=;
        b=PT4tqtgWx3jEocJGP89SPtVVjoIotnylAx50LjBOZTYbXdfkXV1tAZDSNqPGif279j
         MX2DKloSJIw68eNE6lP8446Dt4OfsiUZPy1Ubzn5zyhtrw4RXeaoujJ34PGONWhTFlDa
         7WftWMMMIkXEQtHHQhynI1/aZaV6Z1C4KWusvhw+RbIVnxkZh+FBVLV1UNw5ZrfsCLUU
         Uucv/IdW+tnognZKKMlhNz2cVsJyWUD5VrGoBYMDojGp9U/6ef8itkBmumHquV+Hw9fD
         oWbBwMzlCZseuxXViADzsJidlMpexvUH6ELD63d6UoqGY1CGv7fajIkV/nmYk+GDhZYd
         6oYA==
X-Forwarded-Encrypted: i=1; AJvYcCXHJi8jYSZ6EB0nSqA21Y8o88zIgQDbkIQ7yoK/HicgxUQfDR1HQUvKvf0/M8qQvoO0MjS+ItffHQF6@vger.kernel.org
X-Gm-Message-State: AOJu0YwOb4jhmXbIdYqNs5txmJ+IfqzveS42KE9BatcWonEOrVvVLGHP
	iCdJ6mZnXTE5U59HSHgcLWbqCe1nhxxYMSBeNnJOSGO4ev3sLZjktuMbgwdQ/3xHbzRoAVZDP80
	4a1E7mAOhk/vuFH4Odi1lYOfOvzoeCBVfTowI7yKYxg0mnpTtOM3nGfaaymM=
X-Received: by 2002:a05:6402:35d1:b0:5c9:3f2:e69c with SMTP id 4fb4d7f45d1cf-5c903f2ea42mr1122640a12.9.1728327242261;
        Mon, 07 Oct 2024 11:54:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGtc/wASbpmCC3oX4yHn0opV5qAfwjsWz7nSRdYzab2WVqdaotFQbRwUdiaixLyJyahsBAPsA==
X-Received: by 2002:a05:6402:35d1:b0:5c9:3f2:e69c with SMTP id 4fb4d7f45d1cf-5c903f2ea42mr1122594a12.9.1728327241693;
        Mon, 07 Oct 2024 11:54:01 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec? (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl. [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5c8e05ecda3sm3473540a12.73.2024.10.07.11.53.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Oct 2024 11:54:00 -0700 (PDT)
Message-ID: <8370d062-b3d2-46f5-9e7b-8e16edde8480@redhat.com>
Date: Mon, 7 Oct 2024 20:53:59 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/5] platform/surface: aggregator_registry: Add Surface
 Pro 9 5G
To: =?UTF-8?Q?J=C3=A9r=C3=B4me_de_Bretagne?= <jerome.debretagne@gmail.com>,
 Maximilian Luz <luzmaximilian@gmail.com>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Johan Hovold <johan+linaro@kernel.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, platform-driver-x86@vger.kernel.org
References: <20240908223505.21011-1-jerome.debretagne@gmail.com>
 <20240908223505.21011-4-jerome.debretagne@gmail.com>
 <f9cbd1c3-eb05-4262-bdc6-6d37e83179e5@gmail.com>
 <CA+kEDGEdd_s+DGKsVNY6Jy870B72eHuaj2EgEnwP8J46ZGbxpQ@mail.gmail.com>
Content-Language: en-US, nl
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <CA+kEDGEdd_s+DGKsVNY6Jy870B72eHuaj2EgEnwP8J46ZGbxpQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi Jérôme,

On 7-Oct-24 8:44 PM, Jérôme de Bretagne wrote:
> Hi,
> 
> I'm replying with Hans and Ilpo, who I initially forgot for this
> patch, sorry about that.

No worries thank you for forwarding Maximilian's review.

> Le mar. 10 sept. 2024 à 23:29, Maximilian Luz
> <luzmaximilian@gmail.com> a écrit :
>>
>> Looks good. Two very small nit-picks below, if this goes for a v3:
> 
> Atm I'm not planning for a v3 as Bjorn has applied the other v2
> patches earlier today.
> Feel free to include the 2 small suggestions when applying this patch maybe?
> 
>> On 9/9/24 12:35 AM, Jérôme de Bretagne wrote:
>>> Add SAM client device nodes for the Surface Pro 9 5G, with the usual
>>> battery/AC and HID nodes for keyboard and touchpad support.
>>>
>>> Signed-off-by: Jérôme de Bretagne <jerome.debretagne@gmail.com>
>>> ---
>>>   .../surface/surface_aggregator_registry.c       | 17 +++++++++++++++++
>>>   1 file changed, 17 insertions(+)
>>>
>>> diff --git a/drivers/platform/surface/surface_aggregator_registry.c b/drivers/platform/surface/surface_aggregator_registry.c
>>> index 25c8aa2131d6..8b34d7e465c2 100644
>>> --- a/drivers/platform/surface/surface_aggregator_registry.c
>>> +++ b/drivers/platform/surface/surface_aggregator_registry.c
>>> @@ -390,6 +390,21 @@ static const struct software_node *ssam_node_group_sp9[] = {
>>>       NULL,
>>>   };
>>>
>>> +/* Devices for Surface Pro 9 5G. */
>>
>> Would be nice if you could change the comment on the SP9 node group to
>> "Surface Pro 9 (Intel/x86)" and the comment here to "Surface Pro 9 5G
>> (ARM/QCOM)" or something along those lines to make things a bit more
>> clear.
>>
>>> +static const struct software_node *ssam_node_group_sp9_5G[] = {
>>
>> (This is really just me being a bit obsessive:) It would be nice to have
>> all-lowercase variable names (regarding the 5G).
> 
> :)
> 
>>> +     &ssam_node_root,
>>> +     &ssam_node_hub_kip,
>>> +     &ssam_node_bat_ac,
>>> +     &ssam_node_bat_main,
>>> +     &ssam_node_tmp_sensors,
>>> +     &ssam_node_hid_kip_keyboard,
>>> +     &ssam_node_hid_kip_penstash,
>>> +     &ssam_node_hid_kip_touchpad,
>>> +     &ssam_node_hid_kip_fwupd,
>>> +     &ssam_node_hid_sam_sensors,
>>> +     &ssam_node_kip_tablet_switch,
>>> +     NULL,
>>> +};
>>>
>>>   /* -- SSAM platform/meta-hub driver. ---------------------------------------- */
>>>
>>> @@ -462,6 +477,8 @@ static const struct acpi_device_id ssam_platform_hub_acpi_match[] = {
>>>   MODULE_DEVICE_TABLE(acpi, ssam_platform_hub_acpi_match);
>>>
>>>   static const struct of_device_id ssam_platform_hub_of_match[] __maybe_unused = {
>>> +     /* Surface Pro 9 5G */
>>> +     { .compatible = "microsoft,arcata", (void *)ssam_node_group_sp9_5G },
>>>       /* Surface Laptop 7 */
>>>       { .compatible = "microsoft,romulus13", (void *)ssam_node_group_sl7 },
>>>       { .compatible = "microsoft,romulus15", (void *)ssam_node_group_sl7 },
>>
>> Thanks!
>>
>> Reviewed-by: Maximilian Luz <luzmaximilian@gmail.com>
> 
> Thanks for your review and all the work about SSAM for Surface owners!

FWIW I agree with Maximilian's remarks and I would really like to
see these applied to clearly differentiate the x86 and ARM versions.

Normally I would pick up a patch like this which just adds hw-ids as
a fix for 6.12-rc# and squash in the suggested changes.

But looking at the test of the series this is more 6.13 material
since the rest is landing in 6.13, right ?

Patches for linux-next / 6.13 are managed by Ilpo this cycle.

So I'll leave it up to Ilpo if he will squash in the suggested changes
or if he wants a new version (of just this patch, no need for a v3
of the already applied patches).

Regards,

Hans




