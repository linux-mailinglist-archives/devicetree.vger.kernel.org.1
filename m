Return-Path: <devicetree+bounces-105078-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BF3C598510A
	for <lists+devicetree@lfdr.de>; Wed, 25 Sep 2024 04:44:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EF6D01C23450
	for <lists+devicetree@lfdr.de>; Wed, 25 Sep 2024 02:44:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A01CF148FF2;
	Wed, 25 Sep 2024 02:44:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="MtAgPLJ/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E501148827
	for <devicetree@vger.kernel.org>; Wed, 25 Sep 2024 02:44:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727232266; cv=none; b=pQE7bYaitTnNBlmf2kHxyaPYd1a7dnq0rJ5eKFz5jkiFobo8wAseMRFKugyql+VOxUXbC/ygz6B7kzDOx6Nt/JEQB1i25uyGfYwdWRAVsHfpxbW4wnq9WAIAM02Z4uW/w323i1/BH0bdeJo8FY/0bjK1lfVLPUxFeDrXxSkR35Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727232266; c=relaxed/simple;
	bh=n4vzVMJk/wnTZoLjPI6/94113lyUB4lEeWRcZRd99M4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BaP678S9P5lIGmIVjlnQMBpM52CD8vaoTtYPyXdKR3oYx7ldv8JVfVYpkU0XDnJLgmZpcwAf5F4CKkdItxMg5W/9a/WIc1jWCH9qI6kqkcMKgN2PewgwH06su/ylzrDXhPiVN6SqA9mtKU/av4uiTndp8yf5NBcgxr9hgyUfqXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=MtAgPLJ/; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-206b9455460so3661985ad.0
        for <devicetree@vger.kernel.org>; Tue, 24 Sep 2024 19:44:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1727232264; x=1727837064; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5u9fJUNtEJazJzPyTQOtG1FO6Z7cS1MgX+7pZ8RK+ts=;
        b=MtAgPLJ/8BNj+j2n9NpzgVXS/nyxj2z1pFBVCFeRJUWGOoZBxWjaO66AKIce/xlX3k
         L2jF2mNAmIvH9XI9h6/Djskf461Zxa+me8ksgNS5cb0Kgd16NsljUIen50E+ReCWhtUK
         YOaR9rZzKUHbEOKCRbXA9NIBQcmO1vomUxxNXqPBTzYocYdWrQhndHZsPX7S9fiYIYja
         shjcrrC56nlpOT/7hk0hbtKB10SUcxUizR3rpDrmHpSX6ua5IojtY6K3iNW8jd5y5YkW
         7B+Jtr1SpOVS/HcDI+tUZyPNP2QrHBSb3JiXqIgzaW+5mGnhDek9V9IGhOgmMvOV/o3G
         DBYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727232264; x=1727837064;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5u9fJUNtEJazJzPyTQOtG1FO6Z7cS1MgX+7pZ8RK+ts=;
        b=Lfjv5y0ZYuYZwXSjprZGbROOemFcWTfhmd6NpBOkQJmZp8XogRgVr5FjMinc2wA89b
         1OV5h60OV+YyQvesSXZSJFt4FjyhwnGXVN/zCFHghnrSZv+YfEZYcBWkeMLG5ooGHPoX
         f5v420n+9y6LxgBfBm50TkziJb0co4N/4tYgCLCbCU4afT1XirzdDs6uv+83sFbrsBNO
         LZQ5bMUmPq517No1++ktxbunIN+X352Yo7XeFQaGJyp7zxIOwgcwvdNVUB0ejCjdgZ67
         Suw93+kH4xX+c+6vxP5YHK+gW55kNds3wCAYvbJKpSqle/4nAsWXfmtcokq4OZiPggkV
         gIRw==
X-Forwarded-Encrypted: i=1; AJvYcCW8m8zKHttgLY+1MPEGKL8MC+ZFTTs1gEmmGnEC9KIp2sPg5clhm2T0yEBzE2klABgPBUKn+ufTukKO@vger.kernel.org
X-Gm-Message-State: AOJu0YwoFpEyzND05S+O7pe6y3JeO5ZiC1TJQ1N1B0UeAHFrkvlSVnXS
	+Vl2s3cruDETphWXDADpnzN39EJOBcRytKdHjuNVLZZBXbrk+fTKjcutMoe/mJYStZUrqMZ7DsO
	9AGwehpM=
X-Google-Smtp-Source: AGHT+IFOu3sATw4O+ghyS7x5azvPQ4AJoo6YIcBuz/3H73r9HL0ro3DSjKBapUQ9ynom5wab2GLyuQ==
X-Received: by 2002:a17:902:f644:b0:207:3a4c:8c6f with SMTP id d9443c01a7336-20afc436639mr16594225ad.29.1727232264093;
        Tue, 24 Sep 2024 19:44:24 -0700 (PDT)
Received: from ?IPV6:2a00:79e0:2e14:8:32ad:6c37:2d1:220a? ([2a00:79e0:2e14:8:32ad:6c37:2d1:220a])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20af1859c00sm15796035ad.286.2024.09.24.19.44.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Sep 2024 19:44:23 -0700 (PDT)
Message-ID: <d72cc89a-7f73-4294-927e-48e647e37310@google.com>
Date: Tue, 24 Sep 2024 19:44:19 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC v3 2/2] usb: typec: tcpm: Add support for parsing time dt
 properties
To: Heikki Krogerus <heikki.krogerus@linux.intel.com>
Cc: gregkh@linuxfoundation.org, robh@kernel.org, dmitry.baryshkov@linaro.org,
 badhri@google.com, kyletso@google.com, rdbabiera@google.com,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20240923224059.3674414-1-amitsd@google.com>
 <20240923224059.3674414-3-amitsd@google.com>
 <ZvK2slBHR8PhzaMt@kuha.fi.intel.com>
Content-Language: en-US
From: Amit Sunil Dhamne <amitsd@google.com>
In-Reply-To: <ZvK2slBHR8PhzaMt@kuha.fi.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Heikki,

On 9/24/24 5:55 AM, Heikki Krogerus wrote:
> Hi,
>
>> @@ -7611,10 +7650,13 @@ struct tcpm_port *tcpm_register_port(struct device *dev, struct tcpc_dev *tcpc)
>>   	err = tcpm_fw_get_caps(port, tcpc->fwnode);
>>   	if (err < 0)
>>   		goto out_destroy_wq;
>> +
>
> This extra newline is not relevant or necessary. Otherwise this LGTM:

Thanks for reviewing! Please let me know if I should upload a new set or 
this is alright at this time?

--

Amit

>
> Reviewed-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>
>
>>   	err = tcpm_fw_get_snk_vdos(port, tcpc->fwnode);
>>   	if (err < 0)
>>   		goto out_destroy_wq;
>>   
>> +	tcpm_fw_get_timings(port, tcpc->fwnode);
>> +
>>   	port->try_role = port->typec_caps.prefer_role;
>>   
>>   	port->typec_caps.revision = 0x0120;	/* Type-C spec release 1.2 */
> thanks,
>

