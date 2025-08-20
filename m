Return-Path: <devicetree+bounces-206756-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 441D4B2D6E0
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 10:42:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4489B3AC930
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 08:38:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1752C2D9EF2;
	Wed, 20 Aug 2025 08:37:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jP3kgYXe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95DA32D8DCE
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 08:37:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755679041; cv=none; b=Qnf+4s34rz8Agg1ILggmQZL92XGxNs6ucqYDrSrlTsxd1+NwVGa5as56uy73KOH8m7HPjVayfVgS4IuEWTv3R4dYI5MRNfv7umi7TsBWn0FZmo1olDx1jvKOzj8Dc46DcgSGHmI/KurEEKFsUhFUMmStAIEJgCPRtadZ3l9m500=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755679041; c=relaxed/simple;
	bh=xZW3/6BdFNENaqcayraBvFNOb+CJk1Z7mxMRZBIVkS4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Oz6y9DoSBn82RzmSnIIYLteRrS23m2JsxCr1ooubVuxXU/MlKo7MUv3eImWX6EIE+id2UKfyKZtdY+ornQg5gmBmpivoRo0ZRFoZHkSEgD2DPdzxC//jb3tkn2hAHlLUH8mnlq256geqg8rWEqiMMzHwqyIErWyGV6iy7FNzhJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jP3kgYXe; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-76e1fc69f86so542071b3a.0
        for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 01:37:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755679038; x=1756283838; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=o46xinVR1s0iYeN1jBFkHlapCwoj6PpvJWdxxR0YCtE=;
        b=jP3kgYXeMCZPevJHb+4/ACiZ00jcjBk9LKtF0O0uhTGM+tFo5jJNWKmvSk6xfHVRXB
         iXGeevw+85nQF36jX/cTzl9MlV4jh0HOXKpzLVLcUjhRIQ/vuyqnQrIMNGtwQB5+LCg1
         qfZoeq/wy0eBougAezCP1YmxIH6dWciawMRKGI5ub1HZRlsLiIujBf2aI03bbSo5vCCg
         7C4LHa6CTgZYvTc3H0tVRlY7WWO72Y8niwadUfQvRCg7flgd6CWwWjgNNTeX7Ozo9tJo
         RrBhhpdEwhxMczjKH1+8CWIYVkiHXvP9gyX0QPEB48HPrlVE4o27UPIUx4WqHaxHy01Z
         NyFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755679038; x=1756283838;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o46xinVR1s0iYeN1jBFkHlapCwoj6PpvJWdxxR0YCtE=;
        b=YNOTCpVZYpkWJDouz1b5tlHlvTgRSK1nk2liry4/Ghd0azup6EyIAqxmOb6oahA+4K
         HYObt6CRfTYXnqoHXe77wXQENxqv8VCCH4Pf5VTV2kcVEUBh6/6/3EpiIEPDcrncNzmB
         4rLr1272K7Cg7ON5IalQKyF0MP1jQE53DJHXUUNVhw47jFDbbCQFUL6myVnv3MNY2QgB
         I2RZiP0Uwy3xhoqq1YSikSLLVgLxI8taze+xqa7EiOLoTf7kNqCIPxs5jTzMMS53Pt6w
         ElIndo6n6SW2cVskjY1ucJMBBrZN0ARw0RWSMY3y0gRwB5AMAT1aI/4wZdiA5NtCVv2V
         7BrA==
X-Forwarded-Encrypted: i=1; AJvYcCWXlrsbXrWuCsCHlRuzEdt51JZiNx3rJjMn6Y2qGlRgQUECWUBeEgun1JIU8KY2EN4gC8kVB2pigKS2@vger.kernel.org
X-Gm-Message-State: AOJu0YyMC8A5AbdM7mw8dUp+N/QG95UwZ1tbr0ZxCMV4lBMzS3uEEi5c
	SYQZ2MnkXqTPqHzd0PhN1AxqXt+7K0bd+sN6SeFfROgvmJOEI8ZJWZMBdrEDEVyDVCI=
X-Gm-Gg: ASbGncss7l4Q4wtvyAG5yW4k64UHELp5BF+0+2b1d3VAnOGmWGxq48gGBhP+CV5DPOu
	792085qrK7bz+85NbHmBS/ROag4WeOTtGfklspSHZsEXNy/RfQL3qErwA47qB81rbIkV5ZdY0eY
	y30bgVWU1UTRYkdA3d2pfGv5fEgnic/sK47I76W7Lbu3Na/XQcmbOcB7QiDKlX8b+WukU+rwq2P
	IrVI8NiJpDX8tqBL65cOJXCSeessxvu+Sn/c9S9CJsGjFvDoqhNRtG5UEyTX1SmF1CrsbYht9Sk
	dL9GkPTkAoFIEGWPbZJopYg8dAeym3ZRGWjgJdtFaWQN+PRualk7kJSLanj/eCPNvb/78V29/+i
	9B9JOyase1FkpPcel8e8rq/HF
X-Google-Smtp-Source: AGHT+IHpJFoo2XVLENsEBA/Y5llAs8G7zIxVfwM+c4WxloFPk+FGCECVKHDac8lZXlFp3d+0H3OcQA==
X-Received: by 2002:a05:6a20:9389:b0:1f3:31fe:c1da with SMTP id adf61e73a8af0-2431b7c629amr3202399637.11.1755679037542;
        Wed, 20 Aug 2025 01:37:17 -0700 (PDT)
Received: from localhost ([122.172.87.165])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-324e2625998sm1600813a91.16.2025.08.20.01.37.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 01:37:16 -0700 (PDT)
Date: Wed, 20 Aug 2025 14:07:14 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Paresh Bhagat <p-bhagat@ti.com>
Cc: nm@ti.com, vigneshr@ti.com, praneeth@ti.com, kristo@kernel.org,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	rafael@kernel.org, linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org, khasim@ti.com, v-singh1@ti.com,
	afd@ti.com, bb@ti.com, s-vadapalli@ti.com
Subject: Re: [PATCH 0/4] Add cpufreq and USB support for AM62D2
Message-ID: <20250820083714.bvocz6cmcbhnrsmt@vireshk-i7>
References: <20250820083331.3412378-1-p-bhagat@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250820083331.3412378-1-p-bhagat@ti.com>

On 20-08-25, 14:03, Paresh Bhagat wrote:
>   cpufreq: dt-platdev: Blacklist ti,am62d2 SoC
>   cpufreq: ti: Add support for AM62D2

Applied these two patches. Thanks.

-- 
viresh

