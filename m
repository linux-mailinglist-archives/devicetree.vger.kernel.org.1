Return-Path: <devicetree+bounces-166749-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C73BEA88524
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 16:36:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5EB0A1693DC
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 14:32:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6FE8428468C;
	Mon, 14 Apr 2025 14:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="TnOZamE/"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA839284681
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 14:08:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744639714; cv=none; b=YhhqLdMuWMyomSF2g490OFEK6FobjudFoeeMiRa3VWipebZFJTl8GHFNBq0VFvs/hnd/kdCMCVyS3H0rWZymhyoZS1QS1Nxf6TAHTDSso8xFE+7Fma/6cMJ/OvqE5KR4H99i1chIWp0b+afA91050lMj3+ZfwcV1sA9FdjdX1UM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744639714; c=relaxed/simple;
	bh=WqGTqa2wWw2oXDWJ5sPQzdsrwsWJMRcIj1r1cQCHE4I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tckxghfaZ/PcXnBIQma4Hva0BOYaWJm3ieLqA1DSN5F53zBlTb2y/uoGbhNJ2M6APc780soRNNIh4klGr9u6ftyeHaWiguyRS2Zms1oNrLyEigJX/0R8V6ayLRgOAhF1e2dD1fXV+jEKSW5XT+6aPpKBzSkRCHOSsqCM6Sz257I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=TnOZamE/; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1744639711;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=RVLsjYDvYBHlqk+yeP8jOnkwTdAVrBmSgCOK1FGYOz0=;
	b=TnOZamE/x3z1CNN/NYrq2qthAji2+4qRcXb9aT601ToR/1RWa2IRXQg4vGZc8AfK4DfQNe
	pgCwKK6thnDvEEykUdL3TtwMUbpMRW0sbUn+60rcxDMrqS9m95X9/CHbp02EK7ST94MwPI
	Pgh9NGbu/uMGQ+pbshYhjPw5LJphub0=
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-54-H_swq0IhO42Cqi9zOHrAjw-1; Mon,
 14 Apr 2025 10:08:25 -0400
X-MC-Unique: H_swq0IhO42Cqi9zOHrAjw-1
X-Mimecast-MFC-AGG-ID: H_swq0IhO42Cqi9zOHrAjw_1744639701
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E63281955DCF;
	Mon, 14 Apr 2025 14:08:20 +0000 (UTC)
Received: from [10.44.32.81] (unknown [10.44.32.81])
	by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP id 5DEBA180AF7C;
	Mon, 14 Apr 2025 14:08:16 +0000 (UTC)
Message-ID: <79617a32-ddc3-42c4-bdb5-c21bf985c92c@redhat.com>
Date: Mon, 14 Apr 2025 16:08:15 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 01/28] mfd: Add Microchip ZL3073x support
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: Andy Shevchenko <andy@kernel.org>, netdev@vger.kernel.org,
 Michal Schmidt <mschmidt@redhat.com>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Jiri Pirko <jiri@resnulli.us>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Prathosh Satish <Prathosh.Satish@microchip.com>,
 Lee Jones <lee@kernel.org>, Kees Cook <kees@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org
References: <20250407172836.1009461-1-ivecera@redhat.com>
 <20250407172836.1009461-2-ivecera@redhat.com>
 <Z_QTzwXvxcSh53Cq@smile.fi.intel.com>
 <eeddcda2-efe4-4563-bb2c-70009b374486@redhat.com>
 <Z_ys4Lo46KusTBIj@smile.fi.intel.com>
 <f3fc9556-60ba-48c0-95f2-4c030e5c309e@redhat.com>
 <79b9ee2f-091d-4e0f-bbe3-c56cf02c3532@redhat.com>
 <CAHp75VcumcH_9-2P2iayGWwD3Y87A7CZyO9vxqvbaUptS1FeQw@mail.gmail.com>
Content-Language: en-US
From: Ivan Vecera <ivecera@redhat.com>
In-Reply-To: <CAHp75VcumcH_9-2P2iayGWwD3Y87A7CZyO9vxqvbaUptS1FeQw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93



On 14. 04. 25 3:55 odp., Andy Shevchenko wrote:
> On Mon, Apr 14, 2025 at 2:52 PM Ivan Vecera <ivecera@redhat.com> wrote:
>> On 14. 04. 25 1:39 odp., Ivan Vecera wrote:
>>> On 14. 04. 25 8:36 dop., Andy Shevchenko wrote:
>>>>> What is wrong here?
>>>>>
>>>>> I have a device that uses 7-bit addresses and have 16 register pages.
>>>>> Each pages is from 0x00-0x7f and register 0x7f is used as page selector
>>>>> where bits 0-3 select the page.
>>>> The problem is that you overlap virtual page over the real one (the
>>>> main one).
>>>>
>>>> The drivers you mentioned in v2 discussions most likely are also buggy.
>>>> As I implied in the above question the developers hardly get the
>>>> regmap ranges
>>>> right. It took me quite a while to see the issue, so it's not
>>>> particularly your
>>>> fault.
>>> Hi Andy,
>>>
>>> thank you I see the point.
>>>
>>> Do you mean that the selector register should not be part of the range?
>>>
>>> If so, does it mean that I have to specify a range for each page? Like
>>> this:
>>>
>>>       {
>>>           /* Page 0 */
>>>           .range_min    = 0x000,
>>>           .range_max    = 0x07e,
>>>           .selector_reg    = ZL3073x_PAGE_SEL,
>>>           .selector_mask    = GENMASK(3, 0),
>>>           .selector_shift    = 0,
>>>           .window_start    = 0,
>>>           .window_len    = 0x7e,
>>>       },
>>>       {
>>>           /* Page 1 */
>>>           .range_min    = 0x080,
>>>           .range_max    = 0x0fe,
>>>           .selector_reg    = ZL3073x_PAGE_SEL,
>>>           .selector_mask    = GENMASK(3, 0),
>>>           .selector_shift    = 0,
>>>           .window_start    = 0,
>>>           .window_len    = 0x7e,
>>>       },
> 
> ...
> 
>> Sorry,
>> .window_len = 0x7f /* Exclude selector reg */
> 
> It actually will make things worse. If selector register is accessible
> to all of the pages, it's better to include it in all pages.

Yes :-) I know this is non-sense.
See my recent reply.

Thanks,
Ivan


