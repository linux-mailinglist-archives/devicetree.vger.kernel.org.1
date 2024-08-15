Return-Path: <devicetree+bounces-93799-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E3DD9526B7
	for <lists+devicetree@lfdr.de>; Thu, 15 Aug 2024 02:16:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B1D071C21FB7
	for <lists+devicetree@lfdr.de>; Thu, 15 Aug 2024 00:16:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1127015CB;
	Thu, 15 Aug 2024 00:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nexus-software-ie.20230601.gappssmtp.com header.i=@nexus-software-ie.20230601.gappssmtp.com header.b="jKoFTMNc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED06D8F62
	for <devicetree@vger.kernel.org>; Thu, 15 Aug 2024 00:16:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723680994; cv=none; b=JL+dFiAvPRpjPD/D7l38pxLypYycyptr/GTxxHHwKPh5hxN/MuPwl/g0KVXirhKvei8kKb37ynLiYrBQaHH/GrdMDqFaXjyq4KstEIoJizqYoSQ1bRiHYpEAGHekh4DlPy7CEY4Yrh/Q2NHaAjLrNQE8A7CqSblmApBbp7YLUBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723680994; c=relaxed/simple;
	bh=F1t2isRrKDubCdz+j0eAPXg5idK9hYQi55oHFsWBC4g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=a3lpdZz7noMxwedxt0k92gSoFARoDnOAiMl2xC2n8qKzgZD++Hyu3c1M2Yd/Qh26osX7jQI+it34/nOLNHSdkgVn1L6wGwDZVqSKSAu0xF1x6fc6ixbuW6NZLkDjSndI08zmtBUPhtt5c+80TM/r6XRhqvkm9EjWE4WAmEE0Ssc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nexus-software.ie; spf=none smtp.mailfrom=nexus-software.ie; dkim=pass (2048-bit key) header.d=nexus-software-ie.20230601.gappssmtp.com header.i=@nexus-software-ie.20230601.gappssmtp.com header.b=jKoFTMNc; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nexus-software.ie
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=nexus-software.ie
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-42803bbf842so2888825e9.1
        for <devicetree@vger.kernel.org>; Wed, 14 Aug 2024 17:16:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nexus-software-ie.20230601.gappssmtp.com; s=20230601; t=1723680990; x=1724285790; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kcyySO/Wg9CZpKT7IKp0MYN8KR1sVKZZKcglj0UTO+4=;
        b=jKoFTMNcXyWu4HA5UV0dDz8HgcCZiwSanzz+yVq2J+QBMUHuaCJ8tnhL/BVHii+y/l
         QJ4Cr1UwiVxhvWnTOQRwD0+s88g5lPtncDKzmkmyb+ihmxRnvrMiY3mhKZ03dvoSF+2k
         211ePwx3vxZO4VaLoRbh6fBhSCkm3Th93OcwGflyQu7AwHME9IJXrQxOt5MdvDHpNpoy
         yP0NkZwTl7HAyEpkCrLwej+zpARUZZLzpCBmuy+S7KKYjlDseOQQAkfFoENwRbBnk7hU
         eUgfncGHTEhFvbcytK9be2iLJXxqUxznNAURB1w2nPvdyCQhd+f7qqyQE6IQcgXda2J5
         wqKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723680990; x=1724285790;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kcyySO/Wg9CZpKT7IKp0MYN8KR1sVKZZKcglj0UTO+4=;
        b=I/iWYicroAiOL0cT7wM9PdyQfARY5CdCxvd0Duf2OnXlZMTeieKTDxv3MWpWD7x2BG
         WwhpZgNCMVGx58E3kBbpUyOQc5/MDIslI6YZXHIo8Lg4BGt/wf1JEUqaHClQs/Jx0EXF
         9of3H88G//LZDt2OLzgDPimdnS0xoemhwX+APBB6ViEN97mW0VEZYObvpo1Fug1l0e9w
         rAD+MlFA6HdESscZuyLp1cecIEr344FsU6xP1XL/hPZpz9NA6FPElVuBm5Fh/6GL1R7G
         LdKgyn2JIzmqMLSbhyNP1oBzHHGIgJVQ/R0nEs7IrAF61yiIR61FtI15ItmaqcFSbKpH
         6ubg==
X-Forwarded-Encrypted: i=1; AJvYcCVhpwS0ssSUkhuUrcIocM77oNCCLtkZnIWaSgc1E9dtge3p8ZlPtKSGWutePFjjwL8L1ff5qbsSp6Y3xnQ94gq8s+aeF8om5bl1rQ==
X-Gm-Message-State: AOJu0YxJRAvVwJEDw5V91+t2UgYUCE+o/wJypOd3lFCA+Koq+C9iR6Hh
	RWm+TInSf61beRUEIgZVoQFkmturIrewsROTZkyupJ0GT1N5nC1XXZRowCjf5oc=
X-Google-Smtp-Source: AGHT+IFY6+VWTdl6HGrF4ZvTkdgttMRkUwz3Qz4CdcIunOz+6SiVzveLecIQ/lxRZacFcyYZHe1a1w==
X-Received: by 2002:a05:600c:4fd1:b0:428:111a:193 with SMTP id 5b1f17b1804b1-429dd267dbdmr34933095e9.37.1723680989829;
        Wed, 14 Aug 2024 17:16:29 -0700 (PDT)
Received: from [192.168.0.25] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-429ded72524sm34167075e9.34.2024.08.14.17.16.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Aug 2024 17:16:29 -0700 (PDT)
Message-ID: <b31f175e-4171-491f-9203-8186a84ab712@nexus-software.ie>
Date: Thu, 15 Aug 2024 01:16:28 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 13/13] media: qcom: camss: Add support for VFE hardware
 version Titan 780
To: Depeng Shao <quic_depengs@quicinc.com>, rfoss@kernel.org,
 todor.too@gmail.com, bryan.odonoghue@linaro.org, mchehab@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kernel@quicinc.com, Yongsheng Li <quic_yon@quicinc.com>
References: <20240812144131.369378-1-quic_depengs@quicinc.com>
 <20240812144131.369378-14-quic_depengs@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <pure.logic@nexus-software.ie>
In-Reply-To: <20240812144131.369378-14-quic_depengs@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/08/2024 15:41, Depeng Shao wrote:
> +static void vfe_reg_update(struct vfe_device *vfe, enum vfe_line_id line_id)
> +{
> +	int port_id = line_id;
> +
> +	/* RUP(register update) registers has beem moved to CSID in Titan 780.
> +	 * Notify the event of trigger RUP.
> +	 */
> +	camss_reg_update(vfe->camss, vfe->id, port_id, false);
> +}
> +
> +static inline void vfe_reg_update_clear(struct vfe_device *vfe,
> +					enum vfe_line_id line_id)
> +{
> +	int port_id = line_id;
> +
> +	/* RUP(register update) registers has beem moved to CSID in Titan 780.
> +	 * Notify the event of trigger RUP clear.
> +	 */
> +	camss_reg_update(vfe->camss, vfe->id, port_id, true);
> +}

Hmm, so another thought here.

camss_reg_update() is not an accurate name -> camss_rup_update() because 
in this case we only update the RUP register, not the AUP or MUP.

reg is an abbreviation for register - but RUP has a defined meaning in 
the camera namespace i.e. RUP = register update and its job is to latch 
shadow registers to real registers.

camss_rup_update() please.

---
bod

