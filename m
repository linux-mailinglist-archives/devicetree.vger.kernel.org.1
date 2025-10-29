Return-Path: <devicetree+bounces-232595-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ABFBC193B2
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 09:55:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 1A157566424
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 08:41:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3FC431327F;
	Wed, 29 Oct 2025 08:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qQpqFvc6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EDFD311951
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 08:41:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761727313; cv=none; b=El5rHqw1jgsSblLSUJ6yDdoDa1d8WlD1VbXoKKNUK9XBByTlKr5J25qxE6ku85rdbuCs5GAL0rQSljggRDd/2E3R9oQmZWCEVlSjUNb3sGLrYO76KFHXOdVoAUc6mCQjF4ENlJ6FNgBAwBqofk4zHP9e9SBhbNOaXjlikVgLk8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761727313; c=relaxed/simple;
	bh=ctX4MdZfx84lGeX25UkTupRgmJNk4fL9fRD5FVPxirc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=j0secvve6cfGAwAm8zKSGH/hLqWKxhzp4lccS11MFfP0rBvcu6UFsNusb4LxjvUh9Y25BNDwyMWa9WAzGBBwP66n0+7Ciq+BprwIusFAeAlT1twSKh8CXNgYL4VIz+1viByHds8oOp68yxROUyUWLi7TucgvPwXTxuF/F7Chnyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qQpqFvc6; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-475dd559b0bso57193825e9.1
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 01:41:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761727310; x=1762332110; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=uBBrlwGJ2FMdv5DZLLDl2beUjlm3lE+s6lLf/CTiy9Y=;
        b=qQpqFvc6krdl/hQx7sbdpAM7M8G/L4AdCP9Pdndk7L145jQ1siUlq2Q1ct/IiNWrLt
         38rBdReML8wpOipsJZGf1ZC5K0m5o5Z5lufwV0RwCXKRFMXDmaxVB2NzkD+J9dMC+hSS
         JlQ44uTUWR60b9uOkk0epFaE8209KerHMojNge8SOSEqS6t8E3CBlus9nCNt876xQ0h5
         p7OnPbqD+8TpiCpSbREQsDUXAJOOvRyB67oV3mqlPcR1lD1WxG3uRATJxKCo/2N99mRx
         bgJYAfyPkHNDiwqSlpAB+1VngXYzj+D6AHXbc9tjEsoxG/gNkduebBQxlM5dBtsY+Tbh
         PYMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761727310; x=1762332110;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uBBrlwGJ2FMdv5DZLLDl2beUjlm3lE+s6lLf/CTiy9Y=;
        b=QwDEVlLGdqtugOxjxrL5Lquv/2nbDfTYvmUxb4jpbBcexZnX9JLvEjo74b8B895Nil
         MBwg4plX604tp2U0K9NbrYnTKj3CmP83YGBEgnIx1JhpjnRbC+YrVS0sk7GBED9EK6dH
         IAaKYkfZvaHUVWZloC+BDyWdtSfVFEEi3+ckNak8NhYgrwEEv244HMWS/fEv+2Ddlbat
         OV/lcq+Xozz9b6MMej+N4BNHG/LUcl7ntL2DD1zWtiBlEVH215vVTRgXR5NBfCBfdIge
         k8Hg1A0q55uNyi4fLe+L3bUYieLA/cC8/AJtSZ22Y/DmH9RY9qn8g3UjHa9XN0MwWzOY
         K1pA==
X-Forwarded-Encrypted: i=1; AJvYcCUtIsiJKv3mpwHhSC6zWTFlsmA+q2GI6I1tl/kQGfQUY1w8jf6ygF4X1EIdN2HzsOqu9D4S8rN7odjK@vger.kernel.org
X-Gm-Message-State: AOJu0YyLdvO3/fPNNhCs4SiS//98KKBXwqcCc2imJ91L1/ZC+rbbY8oC
	U5vy2FuLnS70Ke0pmynNgozZZSXvrdhQV7SsawRZbIvHkrNHCjc1LbmgaRkcFr+ThKQ=
X-Gm-Gg: ASbGncs27M6oa1z998330fN7V02g5yn9UzcKA5ITEmNS/mnDuKsVLhNQ2OvD+NtV/4J
	Rk7Bb29AJXxaKxJFo+EE7LxUrJjV6blhb6crBi3tyNqEaxRfBTiKFWv2evMUpEIvTgwA6opTvvc
	H5FA8UWrWgLJOK4ooaT8F3hBIcsEzCOah3mj6o/vGB3J9/lpiPOmZCL4Ad8nlc73kym3Ko4sT2w
	Rnm9slntPMQladFOEYfZOOjpzmd8oNTMQHU2BDqrzsbx0dXiVLFYTjOE3B5L+tCDSy6G/VVK622
	KwpfpLI6iUj18lgjgd2mmkDXDBSIstf/yFokJTTHPNWjsz6G7a+h9Z1Gy07kK5SEDEGoqT+Az7y
	q+pMncGWXInns4m7//5w1fy4HQGb488BwqcTT26qiRvRAbFAWvZRHNQQagi8wPZgIz9fDQ1IW
X-Google-Smtp-Source: AGHT+IHUTSUOs0tGv7zl7KpB9ykYP2sqLOmcbk6SjkJaIKL0XDNrskTIK/G1sv7thpTY/0mBbnnZgg==
X-Received: by 2002:a05:600c:5491:b0:475:df91:de03 with SMTP id 5b1f17b1804b1-4771e20e433mr18472465e9.39.1761727310407;
        Wed, 29 Oct 2025 01:41:50 -0700 (PDT)
Received: from linaro.org ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4771e39380dsm34585935e9.7.2025.10.29.01.41.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 01:41:49 -0700 (PDT)
Date: Wed, 29 Oct 2025 10:41:47 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Anjelique Melendez <anjelique.melendez@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] soc: qcom: pmic_glink: Add charger PDR service
 path and service name to client data
Message-ID: <fu7rrczguihxdri6mhnc5pdllokzbaxl7heymuea2ybhyrzytj@g63qicfzbyvn>
References: <20251027212250.3847537-1-anjelique.melendez@oss.qualcomm.com>
 <20251027212250.3847537-3-anjelique.melendez@oss.qualcomm.com>
 <5uyhz4uv7ccsj7cevimqrsoywne6f5ax5j2t4uosz6a7due4ac@3x4ouutt5nwy>
 <54602e66-4692-409b-b520-2f880e0c3dd3@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <54602e66-4692-409b-b520-2f880e0c3dd3@oss.qualcomm.com>

On 25-10-28 16:30:28, Anjelique Melendez wrote:
> 
> 
> On 10/28/2025 10:20 AM, Abel Vesa wrote:
> > On 25-10-27 14:22:50, Anjelique Melendez wrote:
> 
> > > -		goto out_release_aux_devices;
> > > +	if (pg->data->charger_pdr_service_name && pg->data->charger_pdr_service_path) {
> > > +		service = pdr_add_lookup(pg->pdr, pg->data->charger_pdr_service_name,
> > > +					 pg->data->charger_pdr_service_path);
> > > +		if (IS_ERR(service)) {
> > > +			ret = dev_err_probe(&pdev->dev, PTR_ERR(service),
> > > +					    "failed adding pdr lookup for charger_pd\n");
> > > +			goto out_release_aux_devices;
> > > +		}
> > >   	}
> > 
> > But this does nothing on Kaanapali and Glymur. Am I wrong?
> > 
> > Yes, you do not have a charger PD on Glymur, but you do have an ssr,
> > for which you do need to register a notifier instead.
> > 
> > You need to be doing something like this:
> > https://gitlab.com/Linaro/arm64-laptops/linux/-/commit/2cd84e303d263d8fd5de3730714a16c29cc6788b
> 
> Please take a look at this change, just applied: https://lore.kernel.org/all/20250919175025.2988948-1-anjelique.melendez@oss.qualcomm.com/.

Fair enough. I think your approach is even cleaner.

Thanks.

