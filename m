Return-Path: <devicetree+bounces-156507-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E07CA5C0CB
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 13:24:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E67BD3A81A1
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 12:22:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1770A253F13;
	Tue, 11 Mar 2025 12:22:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="umwDyNNT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 349241EB196
	for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 12:22:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741695751; cv=none; b=nOYeOqgVEAmFY5k9jVAms+OJ0AaDnfrHD31ZvAiNlkdkntamprvQ6uSLtgTh0anGs6kriUdonA5EGN1p+p2C757f5yP0cq5oBiXWyuZ3NPAqhALSNx1uz7jA4iFvCf629Whpe+kbMWZZlsOt8DC6ndlRLmaCIgSxkVzn66HIYis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741695751; c=relaxed/simple;
	bh=BO2rDpHB1rK6ubktCHUsRSb+c7GamYkrXTUiMXgVYrw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XbymJazBAirYHZ/CBcRhjSE2YPYfzPONeqQ0NYnlBHXPS2CIcoEy8SyptkHLc/gMRoPTUKCzjQiPNghEh/0yCqcghdevkg1yBCtcQqFSMxYHUiHHMrQbhXkdXElqeZ+P3V0qo4sQLz5lc0ERLxnfBtsOl8Nh92mZAUQ81pcB4Tw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=umwDyNNT; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-38a25d4b9d4so2901263f8f.0
        for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 05:22:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741695746; x=1742300546; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RuRTdmTo0miGxQN5iUZvcytRHU1YTlQp0tIlh3ar5LE=;
        b=umwDyNNTJTqPsvOAdWRidI3Kk0+lbCzlq28naMq1jsWc6zR+TGEVH+X9ba9yDawsq1
         GrzE/SkKmPsbSAnaD3bAnbsdK+LT1n0BKX8hCDQhnMxuont6k3OEksv7arAFNgR+9WQI
         rqcoOb7oDn3N4rMES3KgU1j3/zJe9fCgvh6ykf1ncRIp7+MBzWbdvJSeuf3gGgRnEpoz
         hcD5mxex6Z8Q58WN8QRkqYOc2/ExzGMklHWp4MTUaCQ/R/kSCiQDMS7JIRmuFLpjxNw9
         7T/s6uj/cvGJ195Qb0iWHlmjehg7c3QC8g4IENFe7B4QrN0bELN4dl72H8PSo7DU6vxM
         sYgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741695746; x=1742300546;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RuRTdmTo0miGxQN5iUZvcytRHU1YTlQp0tIlh3ar5LE=;
        b=AEJ26GdTvJgvq415jbS5+k7z+2iJ6bKYZgkWlnfXd8JAzWrzBBaDe8LFdJAWZeAgXY
         n/NV2go2+cf4qUUmhVW29BLPd6rv6c0YY/wumVbj05jwPGOvI0WKAX4j+v1i5FUr46T7
         Pw+ohQ4vwWeNwU4eiNH/5JuY7tXEJcRN7qOhQzaowFD+SIxZhgwbY22Ieq+zs5EUWFft
         vQFC83HCgUSsn+tajQdU0bxbDIBrrBqv5QKg/BS4BG8zA4kRRiyK9qKtBdGFi2DQOhyi
         ZsEeMSOVMojoutGILnNS4kMUCnCEDYO6e+qexXvG2UNQYMd3EbTM64jihrS6ovZKcpAW
         tLwg==
X-Forwarded-Encrypted: i=1; AJvYcCX5SDLolgUStZNMbUyVWHbSqQbrUez4ulbLTdJ9Sx6SQvh3LhGcPqptcNeDw9EtTgJREY6yMzCMRnSQ@vger.kernel.org
X-Gm-Message-State: AOJu0YzsEf2AOCL17sjrRaSW1BmGB1XVC3HoTPv2+ZHt30/D/wXKyulk
	nyC1Zd58mpYC8kkSqmM7cifKF7oux+IoG6N2GGNNnZCUwOsHCpN0lkQIQpZSyS8=
X-Gm-Gg: ASbGncvgLYMYQj4YRZbcaSU1T2+WkVvOiAjbTWD8KeBiSTGbfbGUv7glBgTjD5s6hem
	YUscIevHKqvKArxUXoa0vOFlSlZMLwmSbISvhAb75K0H3bqSGqSjDuYpqkiZXqUEk0pswlDfcuq
	6aU/cDYvTeMG9ivi5dxYIFc+kkXG99Lvbkz5TL55xiduiVAZRt1VWn2EqHr8M+nP7Nt2pjDbqQZ
	8wtG9oVs6ik/d+OCI3Yb8ohnBRAj/iPF7tWIo/Qw2HwNcusHa745EkJu61cePJpEvpj6j3kfuG0
	RZ5OtybpPTI3NcFtaHk7Kp07/Ki65/+/B0LjdtMHH84GZJpOpwWN29Jg63QX589ukS6zHZwk1wm
	CTH4/N0l1Z1kkM91aqYjYsc5Qog==
X-Google-Smtp-Source: AGHT+IHq20LH2uxw3VbZolyrJ2NcnkJ2H6FV9IdtXZLY8mifNy7lWFQGbFrn1pfpFBMVS+O5dKaU0w==
X-Received: by 2002:a5d:64a4:0:b0:391:a74:d7dc with SMTP id ffacd0b85a97d-39132db7543mr13516692f8f.50.1741695746463;
        Tue, 11 Mar 2025 05:22:26 -0700 (PDT)
Received: from ?IPV6:2a0a:ef40:1d11:ab01:f578:9a7d:3957:bef9? ([2a0a:ef40:1d11:ab01:f578:9a7d:3957:bef9])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3912c0e308dsm18364281f8f.67.2025.03.11.05.22.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Mar 2025 05:22:25 -0700 (PDT)
Message-ID: <58cd8f7b-e824-4518-8bc1-c004c8a605f2@linaro.org>
Date: Tue, 11 Mar 2025 12:22:24 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/7] Input: synaptics-rmi4 - handle duplicate/unknown
 PDT entries
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>, david@ixit.cz
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, "Jason A. Donenfeld" <Jason@zx2c4.com>,
 Matthias Schiffer <matthias.schiffer@ew.tq-group.com>,
 Vincent Huang <vincent.huang@tw.synaptics.com>, linux-input@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
 methanal <baclofen@tuta.io>
References: <20250308-synaptics-rmi4-v3-0-215d3e7289a2@ixit.cz>
 <20250308-synaptics-rmi4-v3-2-215d3e7289a2@ixit.cz>
 <Z885Jw0K6d2h_2pl@google.com>
Content-Language: en-US
From: Caleb Connolly <caleb.connolly@linaro.org>
In-Reply-To: <Z885Jw0K6d2h_2pl@google.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Dmitry,

On 3/10/25 19:10, Dmitry Torokhov wrote:
> Hi David,
> 
> On Sat, Mar 08, 2025 at 03:08:38PM +0100, David Heidelberg via B4 Relay wrote:
>> From: Caleb Connolly <caleb.connolly@linaro.org>
>>
>> Some third party rmi4-compatible ICs don't expose their PDT entries
>> very well. Add a few checks to skip duplicate entries as well as entries
>> for unsupported functions.
>>
>> This is required to support some phones with third party displays.
>>
>> Validated on a stock OnePlus 6T (original parts):
>> manufacturer: Synaptics, product: S3706B, fw id: 2852315
>>
>> Co-developed-by: methanal <baclofen@tuta.io>
>> Signed-off-by: methanal <baclofen@tuta.io>
>> Signed-off-by: Caleb Connolly <caleb.connolly@linaro.org>
>> Signed-off-by: David Heidelberg <david@ixit.cz>
>> ---
>>   drivers/input/rmi4/rmi_driver.c | 47 +++++++++++++++++++++++++++++++++++------
>>   drivers/input/rmi4/rmi_driver.h |  6 ++++++
>>   2 files changed, 47 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/input/rmi4/rmi_driver.c b/drivers/input/rmi4/rmi_driver.c
>> index 2168b6cd7167334d44553c9c566f870a4e034179..51c23a407b2731d5b6eaefe9cae6288f97316e34 100644
>> --- a/drivers/input/rmi4/rmi_driver.c
>> +++ b/drivers/input/rmi4/rmi_driver.c
>> @@ -493,12 +493,44 @@ static void rmi_driver_copy_pdt_to_fd(const struct pdt_entry *pdt,
>>   	fd->function_version = pdt->function_version;
>>   }
>>   
>> +static bool rmi_pdt_entry_is_valid(struct rmi_device *rmi_dev,
>> +				   struct pdt_scan_state *state, u8 fn)
>> +{
>> +	unsigned int i;
>> +
>> +	switch (fn) {
>> +	case 0x01:
>> +	case 0x03:
>> +	case 0x11:
>> +	case 0x12:
>> +	case 0x30:
>> +	case 0x34:
>> +	case 0x3a:
>> +	case 0x54:
>> +	case 0x55:
> 
> This mean that we need to update this code any time there is new
> function introduced. I'd rather we did not do that. The driver should be
> able to handle unknown functions.

Synaptics don't produce new RMI4 based tech anymore afaik, they have 
moved on. So I don't think there will be new functions being added here.

Unfortunately in my experience the fake touch ICs report completely 
random values here, so there really isn't a good way to handle this 
otherwise.

What if this list rather than being hardcoded here was just using the 
fn_handlers[] array from rmi_bus.c?

Kind regards,
> 
>> +		break;
>> +
>> +	default:
>> +		rmi_dbg(RMI_DEBUG_CORE, &rmi_dev->dev,
>> +			"PDT has unknown function number %#02x\n", fn);
>> +		return false;
>> +	}
>> +
>> +	for (i = 0; i < state->pdt_count; i++) {
>> +		if (state->pdts[i] == fn)
>> +			return false;
>> +	}
>> +
>> +	state->pdts[state->pdt_count++] = fn;
> 
> Duplicate detection could be handled thorough a bitmap.
> 
> Thanks.
> 

-- 
Caleb (they/them)


