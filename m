Return-Path: <devicetree+bounces-113885-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D6E8D9A939C
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 01:01:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 118461C21565
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 23:01:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06C0E1FEFD4;
	Mon, 21 Oct 2024 23:01:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="u0OhyVJb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90442198A17
	for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 23:01:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729551676; cv=none; b=AHSm4+qAi+UxTcg/bkyzAUreExDcK9uc9lwCdT+Eeg+wkPosYrsL5+HEgEqw/SEzEBamq5ISCjMsNZNBs+OB05bDkXmOxdAha7EuFDFw44GvCrGuLk/AkF6R6qPm+KrmVSxmiYvfcxZlAZruQhmCgLAf/uOxjQpPZWoNLdNB+Qo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729551676; c=relaxed/simple;
	bh=5Zzqx3A4n5EeVx/0LWou/Imc9eW2gadMZF418UAHXGM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tTioJ0FI1BR974BFEkQO9o+nwwcjqwmReWHnqEfuH409q5Q7ifeK8hKdDMbg9nUoBxlfTGOyWj0KxONZc4USiRS85Zd2FjmBvhyoG7c0M2o8BbkBbq2zw2PNlbDW6mJxE3BBWK8zMvEPPnGJalKPkDtCTem9gAS47nMQ0Bb13Dc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=u0OhyVJb; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-20caea61132so39513505ad.2
        for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 16:01:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1729551674; x=1730156474; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CbX4JrS0G2aPmeTj0cPN4ckJcQHnSFIvvEuAPKo/Z/0=;
        b=u0OhyVJb1r2P+/JjIyqydUAzgb0EGQESaU4DYZob0T5wdNxWXOGlErg7zKHb7UmXeX
         zrffyrcAazMo6KRdibxzcR8Ih4E4fYhreC0XG4n2bAumMnTu6Q4xH3EZxOg4RkzXM8ya
         cinbUprdFLmIoc2oM5PyENAOtd4Bneo0dgNS3KpvMUULewlwQkn0C1EK/4p185kDoVBx
         6WOdkf45zQqPVYPQjgR85tkDM8mupb265CuaXGT0zIviC90ulZg3zPBArVro2mb//cIn
         cFcaBRhEKUxGPsnIGX3WKnGn0XDADEC6hA6plDNCLDbmBSAkeqthx3/oScnGGIWNi7Fl
         EX1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729551674; x=1730156474;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CbX4JrS0G2aPmeTj0cPN4ckJcQHnSFIvvEuAPKo/Z/0=;
        b=JF+RZJ8v0aHleWEVu0AtsECyoS5AU7hXdO9rYqudfPitWSLQ4FOoHSRrH0y7Z5mV+c
         cdlC1yBi3C5PE9ZcIYoy8ElQltJk/JD0vikFy9J27QGm/yqPRFHatvIdJRFmvhS2v60b
         CeBUYU0bHriNqOdT5YzMlAG1qACVhtTf1lO6+dGEml3tBPQLrNw84n/5c6BHVKvx5Ljt
         ut9qwPnS8U0h5CWs4uTfHRoT15y2Lx1cABQpENQ8NvM6mfbkkfyJJjo0jy+/sjHg3iSu
         Ka0X5b/22wc5jxF4r/iwTt7Si9Z9Mp0q0lIUqhyhaMn4GnqSIAASj2GkmCbPIiwJEv7v
         PmdA==
X-Forwarded-Encrypted: i=1; AJvYcCWS49Xn7MKSqVuq0lfZyFLr66l+BPy72X5U5dLskiFcjVC+wN2pvOUna3hbzb9a/OSGZykDb75X4/ye@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4qrAEsMM6umn/k3ggevnEL/TipWGU/fPZR5OGYK3U/BKXqTnQ
	juUe/TSdzghNaxAmtHDVBqVSP2ManSEDWw2eDThGsi8UUz3L23YlVW7iYZuUXA==
X-Google-Smtp-Source: AGHT+IHoldcCnyrgXNW1sALFOZ6iz/sj7e0UYEYVGjzOFiNIzCmJhdTycWg08bSvHILJAbVkZRgVcQ==
X-Received: by 2002:a17:902:db04:b0:20c:9062:fb88 with SMTP id d9443c01a7336-20e5a70d863mr176436595ad.1.1729551673349;
        Mon, 21 Oct 2024 16:01:13 -0700 (PDT)
Received: from ?IPV6:2a00:79e0:2e14:7:a9a0:cfc3:258b:2293? ([2a00:79e0:2e14:7:a9a0:cfc3:258b:2293])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20e7ef0c5e4sm31217595ad.97.2024.10.21.16.01.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Oct 2024 16:01:12 -0700 (PDT)
Message-ID: <cf0f9a77-4981-48af-8fda-76e57f8a54fa@google.com>
Date: Mon, 21 Oct 2024 16:01:10 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC v4 0/2] Add support for time DT property in TCPM
To: gregkh@linuxfoundation.org, robh@kernel.org,
 heikki.krogerus@linux.intel.com, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: badhri@google.com, kyletso@google.com, rdbabiera@google.com,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 devicetree@vger.kernel.org, dmitry.baryshkov@linaro.org
References: <20240925031135.1101048-1-amitsd@google.com>
Content-Language: en-US
From: Amit Sunil Dhamne <amitsd@google.com>
In-Reply-To: <20240925031135.1101048-1-amitsd@google.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I had a process related question. Once an RFC patchset gets a 
Reviewed-by tag, do I need to send a formal [PATCH] or is an RFC patch 
sufficient for being accepted?

I tried to look for it in the Kernel documentation but couldn't find. 
Please can you help me on the next steps.


Thanks,

Amit

On 9/24/24 8:11 PM, Amit Sunil Dhamne wrote:
> USB PD specification defines a bunch of timers that can have a range of
> acceptable values instead of specific values. These values have to be
> tuned based on the platform. However, TCPM currently sets them to a
> default value without providing a mechanism to set platform specific
> values.
>
> This patchset adds new DT properties per timer to allow users to define
> platform specific values.
>
> Changes compared to v3:
>    - nit: removed an extra newline that got added in tcpm_register_port()
>
> Changes compared to v2:
>    - Added min, max & default values to DT property in Documentation.
>    - Changed return type of tcpm_fw_get_timings to void instead of int.
>
> Changes compared to v1:
>    - Defined new properties per timer that we are interested in rather
>      than defining a single pd-timers u32 array property.
>    - Better description of the timer properties.
>    - Since subject has changed, adding link for previous patchset for
>      posterity:
>      https://lore.kernel.org/all/20240911000715.554184-1-amitsd@google.com/
>
> Amit Sunil Dhamne (2):
>    dt-bindings: connector: Add properties to define time values
>    usb: typec: tcpm: Add support for parsing time dt properties
>
>   .../bindings/connector/usb-connector.yaml     | 35 ++++++++-
>   drivers/usb/typec/tcpm/tcpm.c                 | 73 +++++++++++++++----
>   2 files changed, 91 insertions(+), 17 deletions(-)
>
>
> base-commit: 68d4209158f43a558c5553ea95ab0c8975eab18c

