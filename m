Return-Path: <devicetree+bounces-103996-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E276B97CF29
	for <lists+devicetree@lfdr.de>; Fri, 20 Sep 2024 00:09:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 42D15B20D35
	for <lists+devicetree@lfdr.de>; Thu, 19 Sep 2024 22:09:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 759681B29D4;
	Thu, 19 Sep 2024 22:09:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="KCFg+HIg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE4E01B29CD
	for <devicetree@vger.kernel.org>; Thu, 19 Sep 2024 22:09:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726783743; cv=none; b=AWEXSNawawYG+HJr1X6y/ZNQzYgQJvbjeP04i28K0eFOM1e7WTkXnid+AtYAe/LidOxM/e3f/BymIm2IVnAcV1pjiYISFKR3QapfaVO4UMuxVCCdjzbhNf1Ax4zglQ/+XFT+k78Y5eQUe3TatpCRD6ozouazuutrRouyHEZUna0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726783743; c=relaxed/simple;
	bh=G9yE4+uWNfyLAv4fFzlztmZDkhOUDZWoggL5Ycheq7Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rnjBY6H71EM5D0vLi2a76vpPm4Sz39EXRFABRoKLtGGaQ8rpurXIYG2qN8rp59U+r0tdrkM/QGau/zjTL6X2YcX347jf5bLvFhm+UBXQPZzEuxE0SGz7OIe/KsYzTqAKwkYL5PkOFCTN2xzDEkMFukWfvr2/lpra0j1p38wckXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=KCFg+HIg; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-20696938f86so12070025ad.3
        for <devicetree@vger.kernel.org>; Thu, 19 Sep 2024 15:09:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1726783741; x=1727388541; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HALBZp2jc83L61eJl0ipgdKgkDtFqu9OPrY9XMWAKJ4=;
        b=KCFg+HIgs4zT7JzIXLvwwauxXyN6CMg6QBA6FLL7hVlhytL/baXslbm8wTW6K9F8eM
         fPpzdZoykzcuQVCt67LdFd4D3hHxM0VZzuZBh9Tta0zDPy5JsgjIVw//RET8NjRZbPGP
         ImIQrPWosBWuWTXGwnRt7CeQhuyZLuKU12W+jLQqXVUdb+GIW9TeWbV8QbCRNZeKfKhm
         jCCKlg6mhP8Sv3qvrtKVcYQwUpDlFSDegGRG6Er96rrFlzllJkj5248HmKNJh1XLoksG
         7f7W5cv3DpYzPZEA8RY55NPu2ri8Z+CSn4DkC8BKgclmkiVKATKd4kupICFW+5yNUs8C
         16HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726783741; x=1727388541;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HALBZp2jc83L61eJl0ipgdKgkDtFqu9OPrY9XMWAKJ4=;
        b=DuB0c6ctcet9pP9eSjIsExMQFTiOQ8jqgi2IGe0M/RdvyHpLMFYI4pOcge1I3z1qVL
         euz2lc1LTic7E/HXOYdwtkqPdtWV9nDzsDWBmamgy/ELd+Vl/gUMXUOGoO91WQkwX1RC
         e4H1fEtik5fL9rig0w5OcawDrCTZ0kVh8HOxREpVzc9tMZzYVmO4IMK4i5lHd4SEAJxs
         CHq5J5GnPuevco/B7LMgtytIFYy6CbLCcstnwofx8zpCJWrkOTo3mfsx8dzqwri9Zthd
         JFsYpl6ZT0L/YY2yY07unCNLvBlF7bPVVuRjsuV61kL3yvw9pjmqJrl/SpjLDKtB7YNl
         2Msw==
X-Forwarded-Encrypted: i=1; AJvYcCUcV12XyTLzZjL+5/PUz0eJp1UZ50BIWLceXW4qdSxGykpOID94WBsaxHR6ACByH24ABPZ+zfVXP+Ld@vger.kernel.org
X-Gm-Message-State: AOJu0YyEGrWvOMz3frrTceJGOTJYIQ7HDcKXl84l/BIPgMv4a6dNcp7+
	6eE0aZa8F8B3DBPe0wMhppOe/n2uempsaSq/XTcma3dj1shZNvlFQyd25FUcO1QVAU9x4P8vySo
	V06BRhXk=
X-Google-Smtp-Source: AGHT+IFQqH4F/4wA9Fq7IQf0m27SW+uYFPWKJKFxvZ9qal0ZDqURFD6d8DCTfnH6U6mupiMJ4cY3+w==
X-Received: by 2002:a17:903:2a83:b0:205:76f3:fc2c with SMTP id d9443c01a7336-208d980bfa4mr4690385ad.16.1726783740829;
        Thu, 19 Sep 2024 15:09:00 -0700 (PDT)
Received: from ?IPV6:2a00:79e0:2e14:7:f9c5:155b:ca02:2b70? ([2a00:79e0:2e14:7:f9c5:155b:ca02:2b70])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-207946032b9sm84927275ad.116.2024.09.19.15.08.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Sep 2024 15:08:59 -0700 (PDT)
Message-ID: <f025bb6b-b9b2-41eb-bd09-13a2538751af@google.com>
Date: Thu, 19 Sep 2024 15:08:58 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC v2 2/2] usb: typec: tcpm: Add support for parsing time dt
 properties
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: gregkh@linuxfoundation.org, robh@kernel.org,
 heikki.krogerus@linux.intel.com, badhri@google.com, kyletso@google.com,
 rdbabiera@google.com, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org, devicetree@vger.kernel.org
References: <20240919075120.328469-1-amitsd@google.com>
 <20240919075120.328469-3-amitsd@google.com>
 <kjscycfgp7kxlrrdvfszzmhvxxql7y6gs6jpfcgebvtj5qwhxp@zayctjtma2cx>
Content-Language: en-US
From: Amit Sunil Dhamne <amitsd@google.com>
In-Reply-To: <kjscycfgp7kxlrrdvfszzmhvxxql7y6gs6jpfcgebvtj5qwhxp@zayctjtma2cx>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Dmitry,

Thanks for the review!

On 9/19/24 1:56 AM, Dmitry Baryshkov wrote:
> On Thu, Sep 19, 2024 at 12:51:14AM GMT, Amit Sunil Dhamne wrote:
>> Add support for DT time properties to allow users to define platform
>> specific timing deadlines of certain timers rather than using hardcoded
>> ones. For values that have not been explicitly defined in DT using this
>> property, default values will be set therefore, making this change
>> backward compatible.
>>
>> Signed-off-by: Amit Sunil Dhamne <amitsd@google.com>
>> ---
>>   drivers/usb/typec/tcpm/tcpm.c | 81 ++++++++++++++++++++++++++++-------
>>   1 file changed, 65 insertions(+), 16 deletions(-)
>> @@ -7053,6 +7068,35 @@ static int tcpm_port_register_pd(struct tcpm_port *port)
>>   	return ret;
>>   }
>>   
>> +static int tcpm_fw_get_timings(struct tcpm_port *port, struct fwnode_handle *fwnode)
>> +{
>> +	int ret;
>> +	u32 val;
>> +
>> +	if (!fwnode)
>> +		return -EINVAL;
> I think this check isn't really necessary here. Other than that:
>
> Acked-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>
Will remove this check in next rev as suggested in 
https://lore.kernel.org/all/Zuwn1Fn1DrLGvPK9@kuha.fi.intel.com/ .


Regards,

Amit

>> +
>> +	ret = fwnode_property_read_u32(fwnode, "sink-wait-cap-time-ms", &val);
>> +	if (!ret)
>> +		port->timings.sink_wait_cap_time = val;
>> +	else
>> +		port->timings.sink_wait_cap_time = PD_T_SINK_WAIT_CAP;
>> +
>> +	ret = fwnode_property_read_u32(fwnode, "ps-source-off-time-ms", &val);
>> +	if (!ret)
>> +		port->timings.ps_src_off_time = val;
>> +	else
>> +		port->timings.ps_src_off_time = PD_T_PS_SOURCE_OFF;
>> +
>> +	ret = fwnode_property_read_u32(fwnode, "cc-debounce-time-ms", &val);
>> +	if (!ret)
>> +		port->timings.cc_debounce_time = val;
>> +	else
>> +		port->timings.cc_debounce_time = PD_T_CC_DEBOUNCE;
>> +
>> +	return 0;
>> +}
>> +
>>   static int tcpm_fw_get_caps(struct tcpm_port *port, struct fwnode_handle *fwnode)
>>   {
>>   	struct fwnode_handle *capabilities, *child, *caps = NULL;
>> @@ -7608,9 +7652,14 @@ struct tcpm_port *tcpm_register_port(struct device *dev, struct tcpc_dev *tcpc)
>>   	init_completion(&port->pps_complete);
>>   	tcpm_debugfs_init(port);
>>   
>> +	err = tcpm_fw_get_timings(port, tcpc->fwnode);
>> +	if (err < 0)
>> +		goto out_destroy_wq;
>> +
>>   	err = tcpm_fw_get_caps(port, tcpc->fwnode);
>>   	if (err < 0)
>>   		goto out_destroy_wq;
>> +
>>   	err = tcpm_fw_get_snk_vdos(port, tcpc->fwnode);
>>   	if (err < 0)
>>   		goto out_destroy_wq;
>> -- 
>> 2.46.0.792.g87dc391469-goog
>>

