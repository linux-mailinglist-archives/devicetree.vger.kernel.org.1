Return-Path: <devicetree+bounces-116823-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 387589B4272
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 07:36:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F0A952832C2
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 06:36:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E24B420111B;
	Tue, 29 Oct 2024 06:36:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GIBWk9s8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f45.google.com (mail-oa1-f45.google.com [209.85.160.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F007D2010FC
	for <devicetree@vger.kernel.org>; Tue, 29 Oct 2024 06:36:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730183791; cv=none; b=ju4FHy3mNA8+jaOeS6DB1wbJCefvMR6SdyRbKnexqpN/y6HIEGa+98JsTBf/oLEGBRTPUSxzBgObzu/a4T+jAKpQ6pg34GEePgjYTUW2z6e9QkFLbGVfA+eQLCgK/vxL3asylCknNY2wHvAl9YVQKRlOjrrlkfvx1+R1Tb9u/XI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730183791; c=relaxed/simple;
	bh=lrobQYm06kSMi9bBZlt4TteJuGSfxroyROvsf+/tPoc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YCXrAMhtBd//LTBjm8y/Rb5K5EDTm59XBXn1Qw6hOOpAJCTJuluOAhiumG8ZHUrgywLLOUCoohK1gzADfkAQ0jjn2BxgLDFX1m4Bv0rSD7s98vCi3Ah9MjYJFfvqWe6d03ixp/bHDdvqYVu960b+H95weDMGqOtB+JbvJwhjXPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GIBWk9s8; arc=none smtp.client-ip=209.85.160.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oa1-f45.google.com with SMTP id 586e51a60fabf-288fa5ce8f0so2465716fac.3
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 23:36:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730183789; x=1730788589; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4QD5OKsQgrGnNIeqy7aCbkomCeG9kMbtwvROJk9froc=;
        b=GIBWk9s8/GqhjtVMALwYnSc2+wGcIwGZpEXJyttA63oQ7MadlQ0OYTN9kQ4hSn2RdH
         4AsuGHdVuGk+0M7qfxg8Vj0tHXUzhJlc+XlSMeS5xlsgjPC3m474LVPxCz3bNLsJIi4g
         IlB7EDgN3MBckDoCt4rWZgAloXQh5cG1fZ1VwZWEC/DpNswFsY9TY52GyxkZy5lMMwJu
         QJVaRMXtHMQNKin8OaV2zyKGu4HlpyNrht2SzS5z4lH6+b26TtLwEizDRNe3A/WTusIm
         /pjJglErxf4jSNQf3W14Z62Y3PH2SR97nFDF5dPeDKfLCbEEixHJXD9BBTxjoC3vKci6
         /XdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730183789; x=1730788589;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4QD5OKsQgrGnNIeqy7aCbkomCeG9kMbtwvROJk9froc=;
        b=IgbAha6naeXFI0VS+M0Vkz7qGHYwuvM1BOrnYQhT5zCurkEVFa64fiWNV+aRfuEsJo
         xnKxs/YnwSAYqW+YiWBh/km3c31XleNhXzk3R558aE5KJXy6R0LP8Esf/rlKHRJPyuwO
         LOP2XPogdIp+Y3h+xh4c3cEjQ3GmCuy+KVkDJHqPME7PQsr1N/q03B5pVUgEHDmEKmug
         a+FoQgJP0JhngnWhyXM6zRJHAa9RTV8Yce3OJrOFskDXgJes9i+pDVaz/1JvjEHcRsxo
         4nnOgC47T0+qpk8BAHQL5DpBC7Bk3MElPa7tAY8cwTq68Nu4dBV4SbW90MJ+wlPfskqt
         GRTA==
X-Forwarded-Encrypted: i=1; AJvYcCWYjzOq1Ffgv61HbEEfgmMGPkr3JwO6w9D/zMA5O/8wa4pBtBnHy5a0+1OfBBWOMxnUAT4wDZXD+PrN@vger.kernel.org
X-Gm-Message-State: AOJu0YzsP3oVjG5dCxzNmhCGK50uw20fxhL9olDuhm73OUqhmx9Gullt
	9/1vwRStStn9O2BsxnB/eCZV6SQoPiIAn/ZwtQsPM4ddpcwS5NfHWnuEmaWfxQg=
X-Google-Smtp-Source: AGHT+IGrN/qZGm0mfTAWzCEsbfgNwzNhmA7amrnO1thp9dgYmf70eS9KgTP2FWcmMvJClPtnmU/B8Q==
X-Received: by 2002:a05:6870:d8d1:b0:27b:b2e0:6a5 with SMTP id 586e51a60fabf-29051af085amr9777384fac.3.1730183788869;
        Mon, 28 Oct 2024 23:36:28 -0700 (PDT)
Received: from localhost ([122.172.85.97])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72057931942sm6858961b3a.65.2024.10.28.23.36.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Oct 2024 23:36:28 -0700 (PDT)
Date: Tue, 29 Oct 2024 12:06:26 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: David Dai <davidai@google.com>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Saravana Kannan <saravanak@google.com>,
	Quentin Perret <qperret@google.com>,
	Masami Hiramatsu <mhiramat@google.com>,
	Will Deacon <will@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Vincent Guittot <vincent.guittot@linaro.org>,
	Marc Zyngier <maz@kernel.org>,
	Oliver Upton <oliver.upton@linux.dev>,
	Dietmar Eggemann <dietmar.eggemann@arm.com>,
	Pavan Kondeti <quic_pkondeti@quicinc.com>,
	Gupta Pankaj <pankaj.gupta@amd.com>, Mel Gorman <mgorman@suse.de>,
	kernel-team@android.com, linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7 0/2] Improve VM CPUfreq and task placement behavior
Message-ID: <20241029063626.haz6b77vbw6pp756@vireshk-i7>
References: <20240919000837.1004642-1-davidai@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240919000837.1004642-1-davidai@google.com>

On 18-09-24, 17:08, David Dai wrote:
> v6 -> v7:
> -Updated .exit and .remove function type from int to void to match
>  required types
> -Added Reviewed-by tag from Rob on dt-bindings patch
> -Dropped "depends on OF" as the driver doesn't depend on it

> David Dai (2):
>   dt-bindings: cpufreq: add virtual cpufreq device
>   cpufreq: add virtual-cpufreq driver
> 
>  .../cpufreq/qemu,virtual-cpufreq.yaml         |  48 +++
>  drivers/cpufreq/Kconfig                       |  14 +
>  drivers/cpufreq/Makefile                      |   1 +
>  drivers/cpufreq/virtual-cpufreq.c             | 333 ++++++++++++++++++
>  include/linux/arch_topology.h                 |   1 +
>  5 files changed, 397 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/cpufreq/qemu,virtual-cpufreq.yaml
>  create mode 100644 drivers/cpufreq/virtual-cpufreq.c

Applied for v6.13. Thanks.

-- 
viresh

