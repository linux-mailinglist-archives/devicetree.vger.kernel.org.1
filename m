Return-Path: <devicetree+bounces-219955-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C610B8FE4B
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 12:02:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5ACFF18A2002
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 10:02:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB2412FB96C;
	Mon, 22 Sep 2025 10:01:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cHO1HZ5M"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D49592FD7A0
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 10:01:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758535318; cv=none; b=LxRtFPS02e9C0Ns+vKNSK/O5/OwOX/FTFnoVrO3H7DyW0otz0HMAIbaUZA3mSkvijIQCkYsbQrsxNYkEDZzLrVcajk23sfUiVPMzrnol36RLsYnyEJpQS298M+5GnwcHU4b3THpxXKdcY67qVDtaDEQh3eCf2n18K2yq+nxuzwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758535318; c=relaxed/simple;
	bh=GLC9unjLHcduutfU2De8SO6Cn5IZFndntQa/0T2wPQw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pq7VN8d/D2ljLOA8JJ6v9nOm8HMQnfnUNTvX0Rl8JWuCCrJCUxZNS/isJuyCaqlxEmTOQsi+TcEEypMECSBb2lMj204MnPctILY+jTuQhvkhv6Q/OWq5b7AcDTTI4rJbNp6ceHUq+kMXUg/Z/ZXeOekG1qqNJXk8SUUjNeZbcNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cHO1HZ5M; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-3ee13baf2e1so2941432f8f.3
        for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 03:01:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1758535315; x=1759140115; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Y811XUkUAcjUYq9kF2IbC9o9QTenp6PpvmUvV5JyxCo=;
        b=cHO1HZ5M30mU5lJ+mWZ3CuIc02V2Kw+aRK3u+qJ6OaPpYZ8smMH0dyYT9aBV+j5G3A
         5RngpuRemNRb2YCNUzP0pJxaX78uxGNQLguZ0yyIh+JBfbANGjhPZKwxGrntsMUzTWLc
         NRJeDWPfTtYQBs/HEpOUUeVHjTSLKGDAgm4Hu3A7+tYwLVpjk1G2K46X9NNey6VL5K+f
         dohhc3vEM7Oi4lYHZQ2Wjn4MVuI2GpkSoOuoSIV+OmuRxuoVh+SjNY1kjNuchAEF5vcs
         jdPQl+7bVFQsuuvHlfB3KTCLmKUHtkduO6xgd1qX+whD6UJo1QUDV77jRLywTeqCYSoV
         Z77A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758535315; x=1759140115;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Y811XUkUAcjUYq9kF2IbC9o9QTenp6PpvmUvV5JyxCo=;
        b=g4h9EKy75uVH2jxpMHsgrzD95/5sk82EVlTdJk6841ZUNISlzRzv9YMt2l6kxSPyzr
         qhxBD0ZIykFnglFC0u1+GixzevTbmDJVkkGA/2XDRPFU6kg4m70/7VucmEjjCBfzxIy+
         b462wzxRu6VhuPa+lyi260I142yt1xuYpRyuHoM97GKluGtLAYetsuKQ4OLMYECBAhlI
         OzLznhJYS4bNspODVqYm87GwfN+4e6xWaq5lMOxvoGtv8E4pxU93v+Ux4mUF9J2Ckpa0
         6W0TWpfHuUegB9i2zKAW0qgjVonKwqvKLK379uXcbk4Or5SUGLgWPD/BhKmfKE/k5IRF
         Jpog==
X-Forwarded-Encrypted: i=1; AJvYcCUHvJpIjFQ7FwgL2TkGvtKIQHs4nhaavfCClnxsq/8t0kK3pg0vhURW4Ldjjlc+iWqj7sHES7La+dxT@vger.kernel.org
X-Gm-Message-State: AOJu0Yxfo/DG/nUw7jLnODOKvukSDuiBKB/tWPGWB6FjfNfFAOs+KQ/i
	XQQgNuv1BWyy+zLIj2y/HFm9mirmr3B0Zg3VTzc2BTZLMPDFjm6FGz06sXiTVRek/C8=
X-Gm-Gg: ASbGncvZ+UeJze9E6ZXDO8z/j9GN4PNqqWRFSeyj5g8yrxl+ktbDH7od2xmj/GEL3W5
	3K/C6rbHBma2h9wCPCEfkhAG2ZQVcOjPDSUHGaQ3P02c+Arl4arv22zctEMPu22FqjHnfXRE5kb
	Fzp+F02U2lspo7MHFKaM9zcosetqBLXZenUpNl2NLr6vglkdnRIl5NBKvroeENM3lnUrh5l44u8
	V24ig+BtqW2HPCt/yWOhAxdm4U3hmUKkgXRFrxj0tKsFkeutww6o2fExzQLG+zBT8nb2TGa/1sA
	84jXukafI5nSXN+hYSA7M4yelosPngv6bOnSWvz9sAfcht49R70XWMHJkhUpN2nyHPw1bwQ2WsL
	XxvqTjQ9iKweuoo1UuzlTsjz+hM6Y7LLG
X-Google-Smtp-Source: AGHT+IHyiSZQlLreoJ3W3Ph8Q291wVJ5XeiMCjmBz4nM2qvfV1a5GmC8lVHC1BmJs2M+jyBWopho2A==
X-Received: by 2002:a05:6000:144f:b0:3ea:e0fd:290a with SMTP id ffacd0b85a97d-3ee7ca198bcmr9624896f8f.12.1758535315118;
        Mon, 22 Sep 2025 03:01:55 -0700 (PDT)
Received: from [10.11.12.107] ([79.118.185.144])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3ee1095489asm18419549f8f.24.2025.09.22.03.01.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Sep 2025 03:01:54 -0700 (PDT)
Message-ID: <c0a0daf4-e9e3-4152-8e5e-c7b52a30dae9@linaro.org>
Date: Mon, 22 Sep 2025 11:01:51 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC][PATCH v3 15/16] kmemdump: Add Kinfo backend driver
To: Eugen Hristev <eugen.hristev@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org, tglx@linutronix.de,
 andersson@kernel.org, pmladek@suse.com, rdunlap@infradead.org,
 corbet@lwn.net, david@redhat.com, mhocko@suse.com
Cc: mukesh.ojha@oss.qualcomm.com, linux-arm-kernel@lists.infradead.org,
 linux-hardening@vger.kernel.org, jonechou@google.com, rostedt@goodmis.org,
 linux-doc@vger.kernel.org, devicetree@vger.kernel.org
References: <20250912150855.2901211-1-eugen.hristev@linaro.org>
 <20250912150855.2901211-16-eugen.hristev@linaro.org>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <20250912150855.2901211-16-eugen.hristev@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi,

On 9/12/25 4:08 PM, Eugen Hristev wrote:
> Add Kinfo backend driver.
> This backend driver will select only regions of interest for the firmware,
> and it copy those into a shared memory area that is supplied via OF.
> The firmware is only interested in addresses for some symbols.
> The list format is kinfo-compatible, with devices like Google Pixel phone.
> 
> Signed-off-by: Eugen Hristev <eugen.hristev@linaro.org>
> ---
>  MAINTAINERS               |   5 +
>  mm/kmemdump/Kconfig.debug |  13 ++
>  mm/kmemdump/Makefile      |   1 +
>  mm/kmemdump/kinfo.c       | 293 ++++++++++++++++++++++++++++++++++++++
>  4 files changed, 312 insertions(+)
>  create mode 100644 mm/kmemdump/kinfo.c

I tested the series on pixel 6 and I could see the backtraces correctly
decoded by the bootloader:

Tested-by: Tudor Ambarus <tudor.ambarus@linaro.org>

Thanks!

