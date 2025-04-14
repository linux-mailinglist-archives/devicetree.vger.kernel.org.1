Return-Path: <devicetree+bounces-166665-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id ABC17A87F65
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 13:42:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6BC53177A34
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 11:42:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C8902C3777;
	Mon, 14 Apr 2025 11:40:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="BcjqvWWB"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B781C29AB00
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 11:40:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744630802; cv=none; b=mfrqh26hIcv+ebBh32g9fvW/uXrSJiUxa/SIv3M2nkkX2KlZEQpPs6es11fhKcW1kPfZvMJGxcbzH55wmWv17b0gu/i2EEpjkWohcawvVdQxxSIZk5j5OADcoqBfCOvU1KQ4zGQCP5n1Mgo0KLDr5drP2K1jB+2LbuBFgBgfdVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744630802; c=relaxed/simple;
	bh=aN3vREgoyY+yv1yLBnetD/QJ1CV2mFTmNnwIKF2S5fQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Dgao2cPWa5dkWivb/A/gdwwE9jmsX+TvmdlVgOh3fcUE7mFb9Re33UcQk+Wau61CNVmwVgGssFDT4RukUW0AdwJXT/RDjg7K4IXB3e7rd7qf/+1LC8pUcr3c6VeesaNNLqM81UgKNfanJlsj4g94oxItGFbW7UMbK4vMwWS11SA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=BcjqvWWB; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1744630799;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=rIawZmBgOhpGYEhVsuU1W+uzBYpI/H/eKUzW5VGOfN4=;
	b=BcjqvWWBxl1XgjNFlAT6byx6qNU1o0iVHcZoJp8Hq7gHln91mqgeJ10Ppwhe+cLd9xJ5vn
	qX3LrPVGTI4Z8Is+rNh+7UfSICEnm6WpC1wAzHW8Eee34dCVwlLXt5A83qc2V6yP61I3Ck
	GFZZB0YmkqwMFHvJzvlkK7+zzQo5UHY=
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-194-EmvCNTGKPLODBxyGIK6-hQ-1; Mon,
 14 Apr 2025 07:39:55 -0400
X-MC-Unique: EmvCNTGKPLODBxyGIK6-hQ-1
X-Mimecast-MFC-AGG-ID: EmvCNTGKPLODBxyGIK6-hQ_1744630793
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 833F11801A1A;
	Mon, 14 Apr 2025 11:39:52 +0000 (UTC)
Received: from [10.44.32.81] (unknown [10.44.32.81])
	by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP id CA494180175B;
	Mon, 14 Apr 2025 11:39:47 +0000 (UTC)
Message-ID: <f3fc9556-60ba-48c0-95f2-4c030e5c309e@redhat.com>
Date: Mon, 14 Apr 2025 13:39:46 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 01/28] mfd: Add Microchip ZL3073x support
To: Andy Shevchenko <andy@kernel.org>
Cc: netdev@vger.kernel.org, Michal Schmidt <mschmidt@redhat.com>,
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
Content-Language: en-US
From: Ivan Vecera <ivecera@redhat.com>
In-Reply-To: <Z_ys4Lo46KusTBIj@smile.fi.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111



On 14. 04. 25 8:36 dop., Andy Shevchenko wrote:
>> What is wrong here?
>>
>> I have a device that uses 7-bit addresses and have 16 register pages.
>> Each pages is from 0x00-0x7f and register 0x7f is used as page selector
>> where bits 0-3 select the page.
> The problem is that you overlap virtual page over the real one (the main one).
> 
> The drivers you mentioned in v2 discussions most likely are also buggy.
> As I implied in the above question the developers hardly get the regmap ranges
> right. It took me quite a while to see the issue, so it's not particularly your
> fault.
Hi Andy,

thank you I see the point.

Do you mean that the selector register should not be part of the range?

If so, does it mean that I have to specify a range for each page? Like this:

	{
		/* Page 0 */
		.range_min	= 0x000,
		.range_max	= 0x07e,
		.selector_reg	= ZL3073x_PAGE_SEL,
		.selector_mask	= GENMASK(3, 0),
		.selector_shift	= 0,
		.window_start	= 0,
		.window_len	= 0x7e,
	},
	{
		/* Page 1 */
		.range_min	= 0x080,
		.range_max	= 0x0fe,
		.selector_reg	= ZL3073x_PAGE_SEL,
		.selector_mask	= GENMASK(3, 0),
		.selector_shift	= 0,
		.window_start	= 0,
		.window_len	= 0x7e,
	},
...


Thank you,
Ivan


