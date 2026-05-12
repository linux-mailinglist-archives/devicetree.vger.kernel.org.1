Return-Path: <devicetree+bounces-296279-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sKfeBbkwA2oJ1gEAu9opvQ
	(envelope-from <devicetree+bounces-296279-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 15:52:57 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A3CBA521B75
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 15:52:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 833BD304A317
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 13:48:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00E10397B1B;
	Tue, 12 May 2026 13:48:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=arm.com header.i=@arm.com header.b="DjNptRD3"
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC8943905E6;
	Tue, 12 May 2026 13:48:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778593692; cv=none; b=JzqrOgxPB4VktYG8I/BA/5w1hnm9qdtxOPRBagmLYhqCwcT2uqSlzFaX7tIHhcl2D9QNofQSj5yhEI0rMTG6VkKiDQOWjPKyC/eZSk8AngKntaj3MmMUq7Jbk1IijNt2VCiimoZcTip7k0nNJLD91WWstrQx1j9yfJdOv+Sknf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778593692; c=relaxed/simple;
	bh=OOEl7Ee3v2lvVmXZkjR9vENiJNiSv2BYwxgLSf9hiw8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qo8+svkT6rLbC9+HJFGhSRLDMnG4CXedEMeM5K1tz1nbhN8KX+j/25gs2fiyPEIMu1Ye+Rjukb2xJ3AE2RsZljM5zXndU4GTXIFBb2hNAmkV2JAqS2WOQlbPTjkaieePooclpHJUwSHHbw5Yg6EeSJoRpdKg9qFm3yweQCVkYYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; dkim=pass (1024-bit key) header.d=arm.com header.i=@arm.com header.b=DjNptRD3; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9F6641655;
	Tue, 12 May 2026 06:48:05 -0700 (PDT)
Received: from [10.57.33.240] (unknown [10.57.33.240])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D6BD63F85F;
	Tue, 12 May 2026 06:48:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=arm.com; s=foss;
	t=1778593690; bh=OOEl7Ee3v2lvVmXZkjR9vENiJNiSv2BYwxgLSf9hiw8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=DjNptRD3V6bvItp9OSAF88zx5I9jZmWvqzrzPUdgdrZLNcdLQDqA6SIjnlcVWL4fc
	 eKpZpYKfRC4U2FugcbGB5KReWOFqR2VFf1k1tc6M0CxzT+uoTaXPzAOLWw1YAetIbp
	 3VvkIpQmXGEexpxJQ5U4KpIRTM6KMebD8HElYdIQ=
Message-ID: <7e073ece-4fd6-4c36-ac2f-7604ccd38fff@arm.com>
Date: Tue, 12 May 2026 15:48:05 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] iio: adc: sun20i-gpadc: add A523 gpadc support
To: Jonathan Cameron <jic23@kernel.org>,
 Michal Piekos <michal.piekos@mmpsystems.pl>
Cc: David Lechner <dlechner@baylibre.com>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>, Maksim Kiselev
 <bigunclemax@gmail.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org
References: <20260510-sunxi-a523-gpadc-v1-0-4f6b0f4000fb@mmpsystems.pl>
 <20260510-sunxi-a523-gpadc-v1-2-4f6b0f4000fb@mmpsystems.pl>
 <20260512125106.718d48d9@jic23-huawei>
Content-Language: en-US
From: Andre Przywara <andre.przywara@arm.com>
In-Reply-To: <20260512125106.718d48d9@jic23-huawei>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: A3CBA521B75
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[arm.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[arm.com:s=foss];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[baylibre.com,analog.com,kernel.org,gmail.com,sholland.org,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	TAGGED_FROM(0.00)[bounces-296279-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[arm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.przywara@arm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[arm.com:mid,arm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Action: no action

Hi,

On 5/12/26 13:51, Jonathan Cameron wrote:
> On Sun, 10 May 2026 14:57:23 +0200
> Michal Piekos <michal.piekos@mmpsystems.pl> wrote:
> 
>> A523 differs from existing sun20i-gpadc-iio by having two clocks; bus
>> clock and module clock.
>>
>> Change driver to enable all clocks.
>>
>> Signed-off-by: Michal Piekos <michal.piekos@mmpsystems.pl>
> I'm expecting this to change given comment on not being quite compatible so
> I'll wait for v2 before reviewing.

Yes, we need a v2, but just for adding the new compatible string. 
Otherwise I think this patch is a neat solution, because we don't need 
to further differentiate between the different SoC's number of required 
clocks.

Cheers,
Andre

> 
> Thanks,
> 
> Jonathan
> 
>> ---
>>   drivers/iio/adc/sun20i-gpadc-iio.c | 8 ++++----
>>   1 file changed, 4 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/iio/adc/sun20i-gpadc-iio.c b/drivers/iio/adc/sun20i-gpadc-iio.c
>> index 861c14da75ad..dd4c7e6e3d76 100644
>> --- a/drivers/iio/adc/sun20i-gpadc-iio.c
>> +++ b/drivers/iio/adc/sun20i-gpadc-iio.c
>> @@ -180,7 +180,7 @@ static int sun20i_gpadc_probe(struct platform_device *pdev)
>>   	struct iio_dev *indio_dev;
>>   	struct sun20i_gpadc_iio *info;
>>   	struct reset_control *rst;
>> -	struct clk *clk;
>> +	struct clk_bulk_data *clks;
>>   	int irq;
>>   	int ret;
>>   
>> @@ -205,9 +205,9 @@ static int sun20i_gpadc_probe(struct platform_device *pdev)
>>   	if (IS_ERR(info->regs))
>>   		return PTR_ERR(info->regs);
>>   
>> -	clk = devm_clk_get_enabled(dev, NULL);
>> -	if (IS_ERR(clk))
>> -		return dev_err_probe(dev, PTR_ERR(clk), "failed to enable bus clock\n");
>> +	ret = devm_clk_bulk_get_all_enabled(dev, &clks);
>> +	if (ret < 0)
>> +		return dev_err_probe(dev, ret, "failed to enable clocks\n");
>>   
>>   	rst = devm_reset_control_get_exclusive(dev, NULL);
>>   	if (IS_ERR(rst))
>>
> 
> 


