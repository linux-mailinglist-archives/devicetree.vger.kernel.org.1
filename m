Return-Path: <devicetree+bounces-79610-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 59E14915FD7
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 09:18:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0AB1E2833F4
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 07:18:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB3FB1465B7;
	Tue, 25 Jun 2024 07:18:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aPKVLKOd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com [209.85.210.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47C3673463
	for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 07:18:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719299918; cv=none; b=Ltl6Y6w1PDeiK0gqCmXnRNYMhW6TJIGFu+IqhltUwZ/bRyP1FGIzBJkZzEOPw6xrDdwSbvkJLwvyV/6/EZMrhOFaQ0t8IovIVKFpdjiZZhpdzCPNPwtVH4DMzo8WqMhut5rrstsdKdSJWXAho+n6aZzpFKqUWXcul1yhYAptaD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719299918; c=relaxed/simple;
	bh=Q9aaqWkdpjzN6oNKqxXIk1Upl4PEiadLzSNkI7yVFv8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=i8LUd/4uQscHIb5IyB+u6NQjcQJRP4ctMTQ7o6wP9kS+ISqpwegteZFZhCOMa7BxxEr2LvCVNOXP5C0u2NfDC6rpcMDhRnHTikMVtZtGOFKb0KWP1fGiwgbqLoNmQ1WDwHGpvktuBMKpYs6gO1v5i576X9xVWbV+Q7inY/f6vis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aPKVLKOd; arc=none smtp.client-ip=209.85.210.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ot1-f41.google.com with SMTP id 46e09a7af769-6f9a4f9923aso2881095a34.0
        for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 00:18:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719299916; x=1719904716; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=hHh/S8cNaHU04bGjGURJd/BeCLnI4R/2BlT6C5Hhde4=;
        b=aPKVLKOd6KN1LKnfUe7+kmSgBOvDGk7L6DLJaL2aTbKHu94m6xdTSsKkg/fBqDmqua
         uMS0QDm1zghPpfP0ryFZvQmlGB5zSmvw2J6OlEizCFsSLf2M1WZsq9VUJTb7bk0hH3XF
         cUFRLV8oW0dEArmW4h5C235JDIsV3RdgnUeyxSpPyfqh+f9rzhzv5yAo/E2uz9KU1fp+
         nc6UtCbNiQ8ys1onRSFi5N3UOGJXuCEMdztBdwTEdux4IgKpnuesoHPBbdrxO/i9awR1
         BFc9k0+TSDguRYXPvs5iHbAmBVu3w7ENqcj+7vhTaU4SpZwTym8cm0IvvftIbJl3r6i4
         M5bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719299916; x=1719904716;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hHh/S8cNaHU04bGjGURJd/BeCLnI4R/2BlT6C5Hhde4=;
        b=skgNFGvUbl1BQROxEzUKkOf2Ewq80lyr0CfFINB3fdUxbMfTFnbf0d8WPWzC9MRPly
         58ecnatqkjjabEx+RMYbT6T4jDWlhR+b21uwsUb47rn8av7LMJ7lbnIoGc5j9lCVxrE7
         MWqxLxVeuGplPpY6MLynx/bcez+XtCfCOw+A/XzZqdhcJn5w0j+gSU3tTVUOghLT5kaF
         rMp4oPopIimdawy6e7XkwOBv/n9igA1s8o+CO69tEHQoQLNYfbQvfAhH9OT0GOe/0V7u
         ErriX9BfazjG6gfNFF5r03m+EGK9BeZafQ0TiDISrz1RGKbKzYWRcwNf1tZq9+TBB20s
         H0Ww==
X-Forwarded-Encrypted: i=1; AJvYcCVjBaXYH/8zk1fwRdBFgKqR/nDtFdfgVBbx+gh3ec4qIcuKG2y8/KBMv8Vya7BKol5ON0ED6IvA3w5TcrMDtS78uCiu7xfEPMGA6w==
X-Gm-Message-State: AOJu0YwH0EQUuca2oNzXfLlHn1p63vjw92VS89VbTPVixa9LvTnm3gvi
	SkLdGC1fmrCF9K7xQOKD0sgY77Q8uO7qcTHTmaMFubeSyqaWkj6V9xJM/IHMTfY=
X-Google-Smtp-Source: AGHT+IFJP2Y5fe1lv0CnAImMG19RMAXOmGCb/Qw0VT9HgcFIG6KLeaCD3KKMlw7qfAX/uV1m95oM9Q==
X-Received: by 2002:a05:6870:638c:b0:259:89a5:440d with SMTP id 586e51a60fabf-25cfce010dcmr7970832fac.15.1719299916103;
        Tue, 25 Jun 2024 00:18:36 -0700 (PDT)
Received: from localhost ([122.172.82.13])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7069b36b540sm520256b3a.66.2024.06.25.00.18.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jun 2024 00:18:35 -0700 (PDT)
Date: Tue, 25 Jun 2024 12:48:33 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Bryan Brattlof <bb@ti.com>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>, Vibhore Vardhan <vibhore@ti.com>,
	linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	Dhruva Gole <d-gole@ti.com>
Subject: Re: [PATCH v3 0/5] Update OPP table and add entries for AM62Ax &
 AM62Px SoCs
Message-ID: <20240625071833.lbtkcu6ubcxsyts2@vireshk-i7>
References: <20240621-ti-opp-updates-v3-0-d857be6dac8b@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240621-ti-opp-updates-v3-0-d857be6dac8b@ti.com>

On 21-06-24, 11:39, Bryan Brattlof wrote:
> Hello Everyone
> 
> This series starts off the process of updating the OPP decoding tables 
> to align with the new speed grade schemes for TI's AM62Ax and AM62Px SoC 
> families.
> 
> Following this update is the updated binding and the OPPv2 entries we 
> will be using for the SoC including the 1.4GHz frequency for our 
> reference boards when the VDD_CORE allows.

> Bryan Brattlof (5):
>       cpufreq: ti: update OPP table for AM62Ax SoCs
>       cpufreq: ti: update OPP table for AM62Px SoCs

Applied above patches. Thanks.

-- 
viresh

