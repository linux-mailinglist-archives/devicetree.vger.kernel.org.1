Return-Path: <devicetree+bounces-132922-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F0439F8BD6
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 06:19:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 20CD8188AFAA
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 05:19:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6EFBB81AC8;
	Fri, 20 Dec 2024 05:19:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gQ6isGpR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB57425765
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 05:19:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734671982; cv=none; b=nOEQDed7AMtMJpTkUk7heRXJMCbK+PYTetP5WF93zjNL0eWqBvXa1px6Ptt511lIyO6preEAW1hrrr5xo3PEpmIGUy3Wj/rq4JlxtdaDzV0e7PdZCOqeVIrFVPBHdT8Z6U4y1ydV3x5c603HK/C+k7ufooC0eNjg/jAYgVU9MyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734671982; c=relaxed/simple;
	bh=e54aETtzKU0bJh4FKXcbmgqTYchVu+DCLAOii7IkhIg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TMJ2ynLbbfbk0PQWzkAx848OPpP+y4sLpUko/bs+AOSWC2+DjM/t8f8nCm5XXJHD0874PpdvcxP/iTToVo3WUjjJkXIABq5dhlXm8egimq9qEw8+qIEAxyumIwQjkDBObOSkUrHak4t2ym30oRDRrpaAwZNX8+SsnViLUdf+1go=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gQ6isGpR; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-725f2f79ed9so1270035b3a.2
        for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 21:19:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734671980; x=1735276780; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=3ldz2OYNNzJdiTSApNt6V8tKr1UZg1Bi0CEsnq5FrJM=;
        b=gQ6isGpRmwIlZvX9t7QC+jW+A5RdljsY9VCu4BxI6MRsqpOEvIjdoX0/YMudqgPr3S
         m4TfirlUtRmGW/0Fd8Iqnfzs+Kb4l98bOmQJz4mkjL7o7NDBKaAYnF4lk46BO+LgAywV
         aPEikqhX+EDfANRKF+YpWuV50V4vmuju+nN4pqEIj5ibgTmiEEc2RSwxwUTRfDmGo3LU
         qaS6ks9JzFwP6gS9jHVY2MAOvAbOaw3U6+0TKANIQW931XpyN//euUIofN9UvzU9N9Ny
         JfVqSdDzjKXygQO1470o9TzYP36OFpe2L5RFc6rif8ELV6fJadx7B0wOmbf1ujufv9tA
         h7bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734671980; x=1735276780;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3ldz2OYNNzJdiTSApNt6V8tKr1UZg1Bi0CEsnq5FrJM=;
        b=Km9YVYkZUo1F+q/8CWQ9dndjvbhMZx2woVAxFJ8OrI+2M/rlD14uBhVDMWmnk0dz4b
         vCc+DsUsQfXIkvR+EtT9ULQ1doihrHZsdQzJcuGwtfscXAFZ0lpUX8ZQ+rtmFUXWa8dL
         6ggb9KqsnIEu7VcaIlp/kO00XMuIykc7zBHTv2W1Ed/lYm3f1X7yjfq1JGqAHQudIx8M
         gzhVqkX1Ntxh58lowZVH9EGYi6jFwEPOBHrhXDOhvCx8asSTqJc9Y7A5r0zDJYLkc3pZ
         zREfDEM7a0SK0e8GaEpSdC44mbxJfU8Aw3RmlzoW7MK+2c7MI9Ph18u33Bb7Gzylgrcp
         /Bjw==
X-Forwarded-Encrypted: i=1; AJvYcCUSroxUcMXpiVNTAHbE1MeL+2tODd6KXgSgNifBlzo8FsqEFZn+lpHbFzyun3PlXXmesjLSQZDN95Kg@vger.kernel.org
X-Gm-Message-State: AOJu0YzbYNqyUU5GdttGDYpIJJgoiV08kqGWz1ujiEZMSPhO8TON2Qgq
	eXMUz1zzwnB1fmIWw6JPoBatSWyKbJ/3281zWPjVLF+yh2OqrmAKBV0gAgnOkGQ=
X-Gm-Gg: ASbGnctRT3u0UW55iD41YTUEa5PGPee5/eL+EwRrll0wB17lShe6jv2L9qPsjPOKMfG
	Dm6HHN+7RLGP1i7yz5PFHBaEV/egs02U6AeIt08IWef0A+K43KaLXlJbnF3iU/2dOR437ZQjqRE
	QLEG6z2JVGoHoGwM/CZWpLJr4SO1YN+AN70j9nbjzvZagbk6A5CDXF/LbePZ1lsi2BpWmDS8e1v
	6jnQD6MS0+Da4bussxpymjui3YC4iKX0AtSGamCNUrGTBr2hjeUoGKNDMc=
X-Google-Smtp-Source: AGHT+IFMsOL2P9eXpfo9vzACUXZ9LwC+O82OrlKh1udvUcRtJDTnWmllWwbry/KmoxqbdXKEqnl/4g==
X-Received: by 2002:a05:6a20:258c:b0:1e1:a693:d623 with SMTP id adf61e73a8af0-1e5e04994fcmr3156113637.25.1734671980199;
        Thu, 19 Dec 2024 21:19:40 -0800 (PST)
Received: from localhost ([122.172.83.132])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-842aba73267sm2074168a12.13.2024.12.19.21.19.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Dec 2024 21:19:39 -0800 (PST)
Date: Fri, 20 Dec 2024 10:49:37 +0530
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
Message-ID: <20241220051937.fbfbbvtd3yzu54kv@vireshk-i7>
References: <20241206211145.2823-1-ansuelsmth@gmail.com>
 <20241206211145.2823-2-ansuelsmth@gmail.com>
 <CAPDyKFovtfR7BiXBfH-79Cyf1=rd-kmOoEnEdMArjGUxSks-Aw@mail.gmail.com>
 <20241213040001.jaqeuxyuhcc73ihg@vireshk-i7>
 <675cb6b2.050a0220.149877.5bab@mx.google.com>
 <CAPDyKFq7c607_NtiEF=4HinL5HABv7+fW9EGi1xfwpOpUPO6Bg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAPDyKFq7c607_NtiEF=4HinL5HABv7+fW9EGi1xfwpOpUPO6Bg@mail.gmail.com>

On 19-12-24, 16:23, Ulf Hansson wrote:
> The power-domain provider driver should use the compatible
> "airoha,en7581-cpufreq". This driver should be responsible for
> registering the genpd and the clock.
> 
> Potentially, the power-domain provider driver could also register the
> "cpufreq-dt" platform-device. To make this work, we also need to
> extend the cpufreq-dt driver (maybe extend its platform-data too?) to
> be capable of attaching the corresponding cpu-devices to their
> power(perf)-domains. For the moment, this isn't supported, but I think
> it would be nice if it could. Another option, would be to use an
> additional separate name-based cpufreq-driver, as in the
> qcom-cpufreq-nvmem.c, that then becomes responsible for registering
> the cpufreq-dt device.
> 
> Viresh, do you have a better approach in mind?

I am fine with any part of the kernel creating the cpufreq-dt device.. That
doesn't need to be in the cpufreq directory.

-- 
viresh

