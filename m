Return-Path: <devicetree+bounces-100617-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 61E3496E488
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 23:00:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1DF5B2863AD
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 21:00:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DEE51A726E;
	Thu,  5 Sep 2024 20:59:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="0TSoHZXs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05EF11A7252
	for <devicetree@vger.kernel.org>; Thu,  5 Sep 2024 20:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725569997; cv=none; b=rS4pVMrgpYbeN5ehN/KGkmJ3pn1hqCkkZ/BQEWbLHY9X40bgmPoaqc7wfDDGldElBFQ8FDjz6h/piAiBcm9MrenyLCZFf/Jqbs4lcbEjL66MsDmMfzbYQQmOQLoS3+NW7R0li54U29O6Vdtsxsk7CkNrxR9LRsBxzqsc5qT3/y8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725569997; c=relaxed/simple;
	bh=VSc0FsUdAaCRAnns1yPMQhkU3spaERecdAVzZ7lEBR0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nyaXrRPebuEIVYrhgIbQ9jnrSYI3MHQir9BnIgu3hlSIwBalCcbNjo7LjlIeuxLHVIn0TvE/mwH0FaIRYEWxVzHfAehYtJBudgurW4x/Rg2Zblay6WYra0b56KQTiUg4rtKmoF17kiwYXVDmk19ljeFmZW2gCaIeCWFc8oukY14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=0TSoHZXs; arc=none smtp.client-ip=209.85.210.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-709340f1cb1so599385a34.3
        for <devicetree@vger.kernel.org>; Thu, 05 Sep 2024 13:59:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1725569994; x=1726174794; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=y0AS3aQS4y396g0OeRUOaq0UTWaz7Wtti26bVDh5PJM=;
        b=0TSoHZXsRQ7GZ5Kf2aypY53KyoJgV0Gy7y/hkIb7le/SzMVDIH1VdOsq7CfAP9g6Ym
         ObKFtBnrUpqFoSy6g3aZs4KLItxzSnJmDcxaVVySqybEuq+IU5tI/BW/5yGAuJYodE0O
         AhIzI6y94oLINZAcUhlfgK8v6/cQWbirYwPvDx8mi1KCdy/okADHk5Dn12rKX8POs97o
         Uo9T/iEeSiFgQzRJh6F9GFSzezqg5NTJSnnAHXqr/sXBM6ZWC4dEHweJCsCMCHeXMdhO
         dujrcKftYhbE7uUmkacijduXkQLZyVHtPF1MNAlbJxNtf59Vo2ByR4GupW4xiN/viL2d
         w/lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725569994; x=1726174794;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=y0AS3aQS4y396g0OeRUOaq0UTWaz7Wtti26bVDh5PJM=;
        b=WWtdByMtAdcqnJLMO/SvcsaWD+2hjDe7+icE7l3SKEEiehInMAo/AxRrh0Z1rP0aNG
         oeQUNEPv+8Zarl/NQ9sBz2FHQ6SYXVqj3rmhAm5zWX7F+dLCGOVKXCvgclwn40NOd4iI
         n2s+bAEug7Vh6yDjfLrufSz4LSDmaMy1u+p8i+kGiuEDBKnlO9fqucdK2PSn6+qaW8EX
         7L141xwqM7er8QjTjC7PKfaoS5UjLtZEMAkyjvuT1QL+iOHIQ1s2bgV73/tdwN89SwR+
         xzq5q4Jp5cDNaY71Z5C8OblI5r3dtVhedSvKijrPDg1+NhuoA/Y85qEEX7hr57HTpZdl
         +IYQ==
X-Forwarded-Encrypted: i=1; AJvYcCXaVre8YNrhWB7KpSi2tYt0QpqgC+9rCXbEmEgs6tmKVfh0TgTIQwS5xy/4y5URCoTRrVYzTHJLYTJD@vger.kernel.org
X-Gm-Message-State: AOJu0YxNX9Xz47LjPzvfgL7RKZSXhbUECbFsJfaYluXoWbvaIu3iROTy
	BPyVokfnkCxvPOwOZI9djmpcE/sSjffuQRCy6nCriHU8XRGfeQVgQUGVtc0qeRs=
X-Google-Smtp-Source: AGHT+IE+Oa42IPjQlhVs4Offh6SV9oNCZgoKpc2av+ZrWXwQs+ozewsSrYArydiuz3bunO1kfH+R1g==
X-Received: by 2002:a05:6830:911:b0:70d:f448:575c with SMTP id 46e09a7af769-710cc213f26mr442526a34.7.1725569993910;
        Thu, 05 Sep 2024 13:59:53 -0700 (PDT)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-70f671751b7sm3457067a34.48.2024.09.05.13.59.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Sep 2024 13:59:52 -0700 (PDT)
Message-ID: <0321188a-1da0-43ab-b583-9bf4e91dc01f@baylibre.com>
Date: Thu, 5 Sep 2024 15:59:51 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 6/9] iio: dac: ad3552r: changes to use FIELD_PREP
To: Angelo Dureghello <adureghello@baylibre.com>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Olivier Moysan <olivier.moysan@foss.st.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240905-wip-bl-ad3552r-axi-v0-iio-testing-v2-0-87d669674c00@baylibre.com>
 <20240905-wip-bl-ad3552r-axi-v0-iio-testing-v2-6-87d669674c00@baylibre.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20240905-wip-bl-ad3552r-axi-v0-iio-testing-v2-6-87d669674c00@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 9/5/24 10:17 AM, Angelo Dureghello wrote:
> From: Angelo Dureghello <adureghello@baylibre.com>
> 
> Changes to use FIELD_PREP, so that driver-specific ad3552r_field_prep
> is removed. Variables (arrays) that was used to call ad3552r_field_prep
> are removed too.
> 
> Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
> ---
Can we also remove enum ad3552r_dev_attributes and enum ad3552r_ch_attributes?
It looks like they aren't used any more after these changes.


