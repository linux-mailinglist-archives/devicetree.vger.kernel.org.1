Return-Path: <devicetree+bounces-130505-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C5BBE9F0352
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 05:00:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0A5F31888FA0
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 04:00:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72CA317A597;
	Fri, 13 Dec 2024 04:00:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="d6YAOvUG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E693E16EB4C
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 04:00:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734062406; cv=none; b=R2Jp06sPBp22MgfNMAL0EhGQeZ17vpQM9ZPas4Taxxqrsb5TOazLg/C2FRrsRoa0UJVvh3LU5qmHFNbEwhXQl76HygW2vy1QvY/plQj5W8ju5FGF7Xv99fp1qO6kJBR6Hi2/gTEMGDNCbMkTKW2evs76k7ww2qSzay8YDLtmXwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734062406; c=relaxed/simple;
	bh=P01/0GoHPmuEpkWAv0N7wro68NmfQGGEanTXYNwOczo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pgS5rJpVWCEj5tFuU8uBITCk1TwemIsICcSWHGg0NJ1aiuubghABdgZol/cbjkt7Nv2kjbEkuqsmpIKhDgqzmcxoERAe7WkgZyy3kPl9sr0OxiNv7Tk3XJQlXMIQcvaM5oloeSMG3a0pNFA61nGLkUU1C4kc5FUCQtsbnegAGCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=d6YAOvUG; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-72739105e02so1511319b3a.0
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 20:00:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734062404; x=1734667204; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=uhXht5TlWW6CeNHzuz55gp9axLJIkTvb4c0JWEpQZMs=;
        b=d6YAOvUGswYQvn4sx5Xzz409DT3A9wRiFs7hyXls7RKX/b0iQbSHVgA9tX5ySaYWO2
         F+xWn7L3KsxniE4JxmQsnfuT8+6vf1d7RKsieUVvMmtbHuTSKxS7P+3yESyJcA2Y75ku
         JLICNjK/FyPPFubP5H7I+LtI4AK65nJTo348m+jeAjFY330orOai9zStDF7JNFpKgSFD
         ocYb7SeuF3E//wbCEwi1TvVygtE0mMNsJ1k068W199B6HiKCym1oH8Su0d2i0QFrCQqg
         x1bGiSYZ8hEJnXF3R7swvAAF/fofDznrfJm5NauHIN7UL47J9ydSVrUbtLqdCxRMmtjF
         nXDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734062404; x=1734667204;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uhXht5TlWW6CeNHzuz55gp9axLJIkTvb4c0JWEpQZMs=;
        b=n3+mSoYAvKw8C2uyvKIM1F6qEOFbqUm2hpVDoizOZn09cQVfR4vRrIZur0Kve6+js1
         j8HF/BnvENucoIeo+Ne56Yy+pEKCQkpkJuYwIJO8t2XzmkZJAeWvyGDZfmbivDUE8DZx
         KyuE2C6eGPCYxJyVz9pQnNpLZIUNdDhuaHkSUNdyAauMbIWEZ3OElnudpIZ/oFSoNpKG
         bA+pkUV+4C1yB74lFHioKxtBmOArbBH6F1H4tiZ1xFBlJ6YMsCh1W5cZd9o98yExurKd
         mL80FBh4ncZIfZTHc0YeKFI2GqLnAAVjIElX7P52OKj3ncZ9M0l/vtjAp3XNm88BlhdQ
         Ge+A==
X-Forwarded-Encrypted: i=1; AJvYcCXe1vRrIh0ZEQH6dErfu5R3vXeLT0xqI6j/KuAFRP1N11xFfoacw9zhzc9+MD8W47ypn5qLgS9L9shq@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9CGCvdTzYx+aVouUFVnV06tECJq5v2eKDo6YZiQ4byM3ONeV6
	B/cofpKLarttsHPn6H//08IQfBZQISVQC9/eIUW2X2Postv1zY9fT7jgE1RG1bs=
X-Gm-Gg: ASbGncvbx9CGNzulOujVxv6/3tYm/2IsRy85LNEEJN/ISx+THLSryg0hbgDiuphDxCd
	abfWABdGa8zIsTA2ve2hOwfbKSRPbbmQG2DD83XrrOaUz9h0QFPxIymWeB8kRl8mO24/KfdTi4T
	kPHjAOy4H5s2SORF5cOGsESRVezHB/yVHoR4ZgvAOrsImKXXf+8aPLeyJ6PFV/NVJj0moIAHusH
	R5y8YF1dg+bFd2CjFnmTZLl2wxJWrAs90Zn+UDYy7ZMMVr73lZGQL2FJ1U=
X-Google-Smtp-Source: AGHT+IEGiBKnjCtShkOggoGzo2ZF1oEbdV6d4yrpPr5N759VcuXFZHM+wVdwNBDeb1V2E/ylIgRB0A==
X-Received: by 2002:a05:6a00:1885:b0:725:eb85:f7f7 with SMTP id d2e1a72fcca58-7290c0dfe03mr1559884b3a.5.1734062404251;
        Thu, 12 Dec 2024 20:00:04 -0800 (PST)
Received: from localhost ([122.172.83.132])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-725de3cb93dsm9438945b3a.169.2024.12.12.20.00.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Dec 2024 20:00:03 -0800 (PST)
Date: Fri, 13 Dec 2024 09:30:01 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Ulf Hansson <ulf.hansson@linaro.org>
Cc: Christian Marangi <ansuelsmth@gmail.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	upstream@airoha.com
Subject: Re: [PATCH v7 2/2] cpufreq: airoha: Add EN7581 CPUFreq SMCCC driver
Message-ID: <20241213040001.jaqeuxyuhcc73ihg@vireshk-i7>
References: <20241206211145.2823-1-ansuelsmth@gmail.com>
 <20241206211145.2823-2-ansuelsmth@gmail.com>
 <CAPDyKFovtfR7BiXBfH-79Cyf1=rd-kmOoEnEdMArjGUxSks-Aw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAPDyKFovtfR7BiXBfH-79Cyf1=rd-kmOoEnEdMArjGUxSks-Aw@mail.gmail.com>

On 12-12-24, 13:01, Ulf Hansson wrote:
> On Fri, 6 Dec 2024 at 22:16, Christian Marangi <ansuelsmth@gmail.com> wrote:
> Hmm, it looks like this needs to be moved and possibly split up.
> 
> The provider part (for the clock and power-domain) belongs in
> /drivers/pmdomain/*, along with the other power-domain providers.
> 
> Other than that, I was really expecting the cpufreq-dt to take care of the rest.
> 
> To me, the above code belongs in a power-domain provider driver. While
> the below should be taken care of in cpufreq-dt, except for the device
> registration of the cpufreq-dt device, I guess.
> 
> Viresh, what's your view on this?

Sure, no issues.. These are all cpufreq related, but don't necessarily belong in
the cpufreq directory.

-- 
viresh

