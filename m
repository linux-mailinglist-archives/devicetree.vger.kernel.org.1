Return-Path: <devicetree+bounces-193051-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A168AF90D5
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 12:42:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 33D463AE019
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 10:41:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D8D424A066;
	Fri,  4 Jul 2025 10:42:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9E102BE7BC
	for <devicetree@vger.kernel.org>; Fri,  4 Jul 2025 10:41:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751625723; cv=none; b=laIVoqi/H4msby1qHA+Adoh98tGBffZuByc0vlChA9aCXCBT2DfzD1jkieCTDJcJkL4sq0C+CjvksFojHQHCR+JO+qzo534TSHaa+wRKk2tzHIqlQAILCiQCDUlfnkcPxQheCHqjErPUaoJCcWUvh2/eM+xgLl2joQO80N/vn5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751625723; c=relaxed/simple;
	bh=o8mIPqCV6/8edY4AzoD0hJSbVoBdW4AvbcOTA6sbRSE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cjUUhYQEvRIGWJz1gnuqqJzQ9pYzPqKMld1KJZvJEe71qm4VGLH3Wa4uGfjS9fb6ncNXcUcOm2HNkUwMoTa53gUJVUxB/olPFpbINEOSSCMOnmN9A64hsVLLGsp73nXOKHS4CUW9S1i8tXzA1wEWIgJoKBlxEeJUkYNv0FA7/+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uXdrh-0002Yd-Ed; Fri, 04 Jul 2025 12:41:57 +0200
Message-ID: <d60d1735-7080-4763-876b-6571b023a247@pengutronix.de>
Date: Fri, 4 Jul 2025 12:41:56 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Access controllers: differentiate between access checks and
 grants?
To: Oleksii Moisieiev <Oleksii_Moisieiev@epam.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Cc: Gatien Chevallier <gatien.chevallier@foss.st.com>,
 Rob Herring <robh@kernel.org>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, Laurentiu Mihalcea
 <laurentiumihalcea111@gmail.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
References: <a89f387d-bf81-459e-979e-d97afe25dea3@pengutronix.de>
 <08bbbcaa-4a23-471b-bffb-39f71dc5160e@epam.com>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <08bbbcaa-4a23-471b-bffb-39f71dc5160e@epam.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Hi Oleksii,

On 7/4/25 12:07, Oleksii Moisieiev wrote:
>> Quoting access-controllers.yaml:
>>
>>    Access controllers are typically used to set/read the permissions of a
>>    hardware block and grant access to it.
>>
>> I am afraid that having the exact same binding for both granting and
>> checking accesses complicates matters:
>>
>>    1) Harder to reason about device trees: Does this property actually
>>       modify hardware state or not?
>  From my standpoint driver should decide this. The main purpose of the
> device-tree is to provide information, not runtime data.

It's an aspect of the hardware if a device is accessible or not.
We have status and secure-status for example for devices strictly
partitioned for either normal or secure world.
There is also prior art for restricting usage of nodes, e.g.
protect-exec for SRAM or read-only for NVMEM.

So this is not misaligned with existing practice.

>>    2) More difficult migration: If access granting is added initially to
>>       Linux, but later moved into the secure world. How to reflect in
>>       the DT that the access controller has become read-only and that the
>>       driver should not attempt writes?
> This sounds to me more as runtime configuration. I mean that in this
> case we should handle 2 device-trees:
> - configuration where HW didn't migrate to the Secure World
> - configuration where read-only access is needed.

A migrated device tree might still want to describe the access
controller, e.g. so the probe of devices known to be off limits can be
skipped. Then we are back at square one of defining a binding on how to
differentiate between an access controller that does modification and
one that only does access checks.

>> My suggestion would be adding an `access-checks-only;` or similar
>> property for access controllers that are read-only.
>>

>> access-checks-only could be that way.
>>
> I've taken this example from [1]:
>            access-controllers = <&aips5
>                  IMX8MP_AIPSTZ_HIFI4
>                  IMX8MP_AIPSTZ_MASTER
>                  (IMX8MP_AIPSTZ_MPL | IMX8MP_AIPSTZ_MTW | IMX8MP_AIPSTZ_MTR)
>              >;
> What if just define some *_RO flag and add it for example with u-boot?
>> Thoughts?

As extra cell or as value that's OR'd into the last cell with the flags?
An extra cell would be an option, but I rather think it's a property
of the controller if it's read-only or not and not of the consumers?

Thanks,
Ahmad

>>
>> [1]:
>> https://lore.kernel.org/all/20250610160152.1113930-1-laurentiumihalcea111@gmail.com/
>>
>> Thanks,
>> Ahmad
>>
>>
>>
>> --
>> Pengutronix e.K.                       |                             |
>> Steuerwalder Str. 21                   | http://www.pengutronix.de/  |
>> 31137 Hildesheim, Germany              | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686       | Fax:   +49-5121-206917-5555 |
>>

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |


