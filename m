Return-Path: <devicetree+bounces-82496-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B621D924933
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 22:28:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 436FB1F234BD
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 20:28:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EEEA120013B;
	Tue,  2 Jul 2024 20:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="B4I1gUfA"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1138E282E1
	for <devicetree@vger.kernel.org>; Tue,  2 Jul 2024 20:28:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719952096; cv=none; b=PWv/V2jD0FtV8uvJwA3zL1yBfIv30C7MAlytONzyHHMDWGZNaZZglgyN33GA/f/ga+8B2oZIrVj7mvz7PJIADOtDDskTwY50sVGkEMCEmA4nGrAxtQIpR8bxxYqotQ/hjJmy+QYiXouNWNf4JOPiOhY9WLw9cRhHLygda5wNQkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719952096; c=relaxed/simple;
	bh=ZrE3mRVGZ+ndBhYz/L7GW+MlUirBfT0klU3VQWU3i+o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZHumRwof62y7nWtAdov6rSnKaDuarVuOPFYwGp46mo+5LZkFAMQznTcERz3zXvWSTXE82yLAUZLxj08WuKCaPZ4Tp4xunw7UBHC+QDXfURLzqhWOlcNBm3SMN5gNj09jQZib78MGzhTycd0ErR6nHrPXd7I2mIzQpbksW8R6HBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=B4I1gUfA; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-lf1-f72.google.com (mail-lf1-f72.google.com [209.85.167.72])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id C5DF53FD44
	for <devicetree@vger.kernel.org>; Tue,  2 Jul 2024 20:28:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1719952090;
	bh=PjCPClCpjBs/p2tUVXJFW10eusIRDwEpK2dNZ9Ttm5Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type;
	b=B4I1gUfAJXBUQHk+qrQ72H42/SX8kmWbJONMKQmDZWkpOSMsnykmAKL5veLvxLdMm
	 8EXWEIocvHxeJagIBQus8Q/uV/sOb6965oD+JmBLN++iLSpf4wukObzJ0wthZJ8MRA
	 vO0qCmrMTpo0Eay37l+FgQcmIaqR3AY98OlDf6ZCr+aE724VaMnY2TL+LXWrajz3mW
	 RBMtt38FvZg2Uso4Uhx77CeBWuOmlox82b3l4LNwYfFdEWtBGXlE+2B4wyh4i11b7w
	 iYPbuAxN7t86RwNWb5bcJgtdh0OnKyJ4VLxbbpBveqnXC1sPu64HkACcGH5Ysz1xnV
	 MfAAW/RfNKmtQ==
Received: by mail-lf1-f72.google.com with SMTP id 2adb3069b0e04-52ce324c204so5778649e87.1
        for <devicetree@vger.kernel.org>; Tue, 02 Jul 2024 13:28:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719952058; x=1720556858;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PjCPClCpjBs/p2tUVXJFW10eusIRDwEpK2dNZ9Ttm5Q=;
        b=g1XuwVWv1sgNvdizcuy9rdF+BMLFGRviOnsgF8yWf6VMsT6P4V4Sje8wzN0RRrre3I
         sW7R2WaUlYWd10NrjPrhtBL2EWDxnd6ABIEDXp7tH4SEA+0V5n8ZJ1T8Akyv4INMQUjR
         BeA9SM8jiDgUVVRlpI8ZStB+8cZj/C0PEujqWGkiDLgm6XXN4s8gcUvacqcG4iM52gI0
         VqneZ6YIGGh4YwwUG8g2fveszyCcyfIUo4kuefMTCjtn/B4OWX1T1Oa1WLIWEdnq9xzp
         36k7YU4HCxntYlaU7bqvaXAP0pU+Wu3kP2wgLYo/osUBKbxE/O5he6xzegDm3BHTWMk2
         Srrw==
X-Forwarded-Encrypted: i=1; AJvYcCUK8YvISup1N8FaN9qQtoakkjFpjvWb+hoPbHgJrk5Sz7AjAWAC4BHfpE0wMOkxBmBGzyB+zs085B/YuNV3UE5m6f8zwhZX+QUidA==
X-Gm-Message-State: AOJu0YyKL2zAiMLaHwKitvZgDV+vfMocuqiHY9Un9MrAU0/nPXF5OvVc
	H5Nd7I09LzgDEYe0FM/h6t+kLPMYBsFRepOi196pSRmsLkptaMK8NKJkfzzBazDeSil7JCeoxK1
	owmntOLiwFa48Ht7WJp+JzxDfC50OVb5T3eVaoiIDeaAG6oiHMm36osPUjmLv6erBg2mSJG0xyG
	k=
X-Received: by 2002:ac2:4e0b:0:b0:52e:767a:ad9c with SMTP id 2adb3069b0e04-52e826fc0dcmr5971731e87.53.1719952058113;
        Tue, 02 Jul 2024 13:27:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFrPClqZ7t+PLQg/6c3CMMDg8NF54ih1EeXULSqoKAEw+bmf9ARIbHAngTG/EH954cztfog4g==
X-Received: by 2002:ac2:4e0b:0:b0:52e:767a:ad9c with SMTP id 2adb3069b0e04-52e826fc0dcmr5971723e87.53.1719952057709;
        Tue, 02 Jul 2024 13:27:37 -0700 (PDT)
Received: from [192.168.123.161] (ip-178-202-041-025.um47.pools.vodafone-ip.de. [178.202.41.25])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3675a0d90d5sm14187690f8f.31.2024.07.02.13.27.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Jul 2024 13:27:37 -0700 (PDT)
Message-ID: <530a2dcf-82ad-4e59-a162-5d3080766e6c@canonical.com>
Date: Tue, 2 Jul 2024 22:27:19 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] libfdt: check return value of fdt_num_mem_rsv() in
 fdt_pack()
To: Markus Elfring <Markus.Elfring@web.de>
Cc: LKML <linux-kernel@vger.kernel.org>, devicetree@vger.kernel.org,
 Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>
References: <20240701215441.54353-1-heinrich.schuchardt@canonical.com>
 <8b083a48-5e56-493a-b235-60afaf794fd7@web.de>
Content-Language: en-US
From: Heinrich Schuchardt <heinrich.schuchardt@canonical.com>
In-Reply-To: <8b083a48-5e56-493a-b235-60afaf794fd7@web.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 7/2/24 14:54, Markus Elfring wrote:
>> fdt_num_mem_rsv() may return -FDT_ERR_TRUNCATED.
>> In this case fdt_pack() should propagate the error code.
> 
> 1. Please choose imperative wordings for an improved change description.
>     https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/process/submitting-patches.rst?h=v6.10-rc6#n94

The current subject is an imperative?

> 
> 2. Would you like to add any tags (like “Fixes” and “Cc”)?

d5db5382c5e5 ("libfdt: Safer access to memory reservations") introduced 
the check that returns the error code. But before that we could simply 
overrun the buffer. I would not know which patch to blame.

Whom do you want to Cc?

> 
> 3. How do you think about to use a summary phrase like “Complete error handling
>     in fdt_pack()”?
> 

Why should I choose a less specific subject?

Best regards

Heinrich

