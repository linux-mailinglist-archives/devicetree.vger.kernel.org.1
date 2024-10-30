Return-Path: <devicetree+bounces-117413-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 43E1D9B626C
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 13:00:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AA83D282250
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 12:00:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5B271E884D;
	Wed, 30 Oct 2024 12:00:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wwu1UdnX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 483E01E47C3
	for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 12:00:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730289630; cv=none; b=e2M3x/RfWMATxwlHrwUwlS6ltVJI73uncyLJfj1irLrFWK80Fi3dFRMKhY76o9wEhaNoWOmOUyNF2nv7jEIkXa42emO5xKJsWX6PGAmprp2en3V9tQyAPCFIs9JZTJy4uFhpnNwkYbBP5g+3v0Q+raWRyDTLWISx14B/3Y6yVo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730289630; c=relaxed/simple;
	bh=nM38MNJvKA1mecfRM7u5vCbSbJQllP2Ezo9yQDCPKDs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uUHXIbk7x7GPURa1oayLxvwX0cxWrmXEKRlROmpHSweEyZy9+hnWGbNNZqFjBgDmDvrNjamZKW8c4zOpl4LhIj/362Q0kH5RWNplo36FQSZR9c6Vy+0I1fdQVeReL0ebSlGdlo3rK/CEOHXtq0x3wVuHAgh+R7awytJ2PYqx4m4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wwu1UdnX; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-43169902057so60916275e9.0
        for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 05:00:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730289624; x=1730894424; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=heM+XH6baATko105nYV8E2040lmy0LhxFZdot+CyuRw=;
        b=wwu1UdnXlNqqfLKebzkbOvo+TJ1bD0rSwmONnuKARwoq3V2ZViDauVnWlFv8lDx9EZ
         wddmg0pR5LwJjoCuUaoz6qwoW5cSRm3+6S4zoqTjFWtFPgJex8dA7yvPjD5l4vCPLHIO
         ljfmXFaYgSvNkqFIyj4qMDDxPL1rylBzjP3JdLIXXG9LzxSUcDF2jsGo9j1S/GvHcXLZ
         y1vYILv1yZnWq6eKS8MougYlWZ+n2deKA9HMa62+ugHRYKNxgPTuJhkvBXj/fh5fbsxo
         AU2ShtFYSBskyrUT1ndAvldyckmFh+MVmWC4CrVGW/3WSJbZRYExJiyB2yyMRx5kms4m
         bYsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730289624; x=1730894424;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=heM+XH6baATko105nYV8E2040lmy0LhxFZdot+CyuRw=;
        b=v5Kah7Eef2oLy3y1kxucvvDbecF7/BdLq9CtvXJFlCgX7fc10R5C/zHW632Jh30yLE
         e+Smr3dsZ/hm9Hd5NHd8/BIZwY6UGs8KJQiotE7gqlbVWAxSmLGArFKcnwq70pNquuVO
         PqJqTgYiu3Nfgu36bO1X2qFBzBSWlvk0SmU9ArlW/nxHPFmagKC6JhxtorYPRiJUcxak
         gof+ahfi/uCLDV/iyZMqJ6WZe7b8YI2gs8IXHzJvR0OpZhFn2nRe3hjnADeh5RFiMyzQ
         bpJxC+bGkyLheI11/FojtNm/hX/gI730KAJaYe+Q0rTt76V8OPS6Y0PW6PHI0MoMMz9a
         mnxA==
X-Forwarded-Encrypted: i=1; AJvYcCV3xlgeyfrvHOQqqy6nb20yytgFBYqRUx7BO+PTyTtAEWbp/w3NDO2cPggAcimvpzXD2WN8ciWVTkbl@vger.kernel.org
X-Gm-Message-State: AOJu0YwFOX0hTmuLxjO+kfHNFr7P/Dyh7O4g0Wva3DTW4xGdsOMzLF8Z
	aYtva9sj/KSUasaTTnQ68Nh9JBSHjH0UNynMSHSOGXHyvpSxQe6MPJ74zJEyt0s=
X-Google-Smtp-Source: AGHT+IHdqyep7BVt0uyn5JbTz0KBCY80ohOEAxNDfe2YT8nR9HTsXFBe91fCaeMmIZfL9ezJQQxpbg==
X-Received: by 2002:adf:ec8f:0:b0:374:b35e:ea6c with SMTP id ffacd0b85a97d-381b70ed1c3mr2049217f8f.40.1730289624347;
        Wed, 30 Oct 2024 05:00:24 -0700 (PDT)
Received: from [192.168.0.157] ([79.115.63.43])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-431bd9480e5sm19330995e9.16.2024.10.30.05.00.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Oct 2024 05:00:23 -0700 (PDT)
Message-ID: <b5dcd5df-7215-4679-a6be-c45d525e8051@linaro.org>
Date: Wed, 30 Oct 2024 12:00:22 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 10/11] scsi: ufs: exynos: fix hibern8 notify callbacks
To: Peter Griffin <peter.griffin@linaro.org>, alim.akhtar@samsung.com,
 James.Bottomley@HansenPartnership.com, martin.petersen@oracle.com,
 avri.altman@wdc.com, bvanassche@acm.org, krzk@kernel.org
Cc: andre.draszik@linaro.org, kernel-team@android.com,
 willmcvicker@google.com, linux-scsi@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 ebiggers@kernel.org
References: <20241025131442.112862-1-peter.griffin@linaro.org>
 <20241025131442.112862-11-peter.griffin@linaro.org>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <20241025131442.112862-11-peter.griffin@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 10/25/24 2:14 PM, Peter Griffin wrote:
> v1 of the patch which introduced the ufshcd_vops_hibern8_notify() callback
> used a bool instead of an enum. In v2 this was updated to an enum based on
> the review feedback in [1].
> 
> ufs-exynos hibernate calls have always been broken upstream as it follows
> the v1 bool implementation.
> 
> [1] https://patchwork.kernel.org/project/linux-scsi/patch/001f01d23994$719997c0$54ccc740$@samsung.com/

you can use the Link tag, Link: blabla [1]

A Fixes tag and maybe Cc to stable? Or maybe you chose to not backport
it intentionally, in which case you have to add:
Cc: <stable+noautosel@kernel.org> # reason goes here, and must be present

In order to avoid scripts queuing your patch. It contains "fix" in the
subject, there's a high probability to be queued to stable.

With these addressed:
Reviewed-by: Tudor Ambarus <tudor.ambarus@linaro.org>

