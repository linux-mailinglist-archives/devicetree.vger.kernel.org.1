Return-Path: <devicetree+bounces-257743-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +C57HCZycGktYAAAu9opvQ
	(envelope-from <devicetree+bounces-257743-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 07:28:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 15F18520E3
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 07:28:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 960B84A0CC0
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 06:28:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0F0043E9C3;
	Wed, 21 Jan 2026 06:28:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sw6Umv+Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B3BF439007
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 06:28:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768976908; cv=none; b=t1LCsgIgtts+MW2RCGF/kqLPIC04oOLu7jB5mLTjfyXzXqJbE0lZId9JO+OKDWqhLFe8k4U4dJjeflxWVMlHS3e4Pv16rR5MQ4yuWPKQUL68Lx9kLx1Didf0+oZSoi8uAXeYJjuY6QI0Z1vo44iAjYdjiFN2woIZPMaad+JmGNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768976908; c=relaxed/simple;
	bh=/mW7n+d/XrmZ+5y3MRLhUS4CokY126T3uBS0BXYSOS8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RARFNBEK24O8SgO8JIs2FVx8fl/YldlCAmOyO3iBoCnmpHuYmJXRWUKbArdAwfg3Q7hfC8wfObe/JhNdL4yLbV9rkdACfdnBesllb/7ME6y39nwkBm1znsOEK9CcnO7hZw240hGbd/ym6oOq7JzZ8z3jfD149RsC43GgFYEqVnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sw6Umv+Z; arc=none smtp.client-ip=209.85.215.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pg1-f181.google.com with SMTP id 41be03b00d2f7-b6ce6d1d3dcso2303510a12.3
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 22:28:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768976907; x=1769581707; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=S9uWl3rdprKmYKIlm9cQ5xrT6yJK0T/GUFytUde5C6o=;
        b=sw6Umv+ZvxpCWWPCAnZUjwQrx6Lp6swDCaCYwr2281hEYT4mCN4G/3tmqsM5CIZMnM
         sC2Z0gSUHInPKQSYLPaFeiC1U/+OuIupVQND07LhxtmP2MEAfIYqT0Ky7s1fyst3wPK5
         jusQkJrzLy3CDZ58bxW7d5jCGQI9mjFH9w4SR5U8fVSeTBCIG4cL1hfy4EoV/lNZs7Vk
         wvsbp8Ykcb530cJTnL2qr5G1tzad+x7bgAU/qcix7yo8AqgYXRsuUSZcNCys/FjbFT7N
         PMWdI9mrzOt2LXkc8f8OqC47OWI6B2PPgOGyn4AlbGPNMCzZmdyGaQR66RdUQLLwntGK
         ekbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768976907; x=1769581707;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=S9uWl3rdprKmYKIlm9cQ5xrT6yJK0T/GUFytUde5C6o=;
        b=pQT5uhrfO6PHjFV8VxHrQHWHfAeHMLt50kiEZbvkbs6PlKQ2Soxgy5LFJxCur2ucYC
         dWnxOBKdKHKa8QsYkHMQjgykyphGuSe6BSkshrUCVNo6MhtQkMKWSKYGpbZl7mXXj8FY
         EAa9pRGFMbyNPCibkBNEUTpdECFyJC7un0YIU7Fl0QsycPefcyuALbq2kOt2cqimY3OK
         BXryN6V5eVQW7KxqR5QOjlOC0JPnuMSOqRIliJ5E2CoR1MmfFsVcnQBq3J4o4fMIG30z
         4avKmTL9wE50W7a/6WWO0lR6HbdRJBpIzEOcDx8BgRhNeczAl01SrP7/HQxEvdZfS5tG
         MBZA==
X-Forwarded-Encrypted: i=1; AJvYcCXVbk+z3afXkvYUfr+5msHWNuEILtgfAPpbsiXsR2vN6+Zyy/0SdWeItbZtkWUv2w4C2A53FNulKuqk@vger.kernel.org
X-Gm-Message-State: AOJu0Yzxzmu8UUkZfkqq5gK18pCNl7SogpMKiKHJY88U2Ljk8ZKy1WQR
	VtATQUfUuPsSQ8wjqK0m7VZEiuWlbMvdLmq3M5Z7CbgmmUaJmA6UaU0/7MeH/rkKhBM=
X-Gm-Gg: AZuq6aIhJyn+fPVQ4f4Em6OfB5bgtxqop+ffqDzqEVtEEVaYEvEuP1NLq2hEuJaclS4
	t3kcKMXlKzw/VN8u5xllPo9TPCibnAsx6dm9Gmb6z9mnSzSQQYmqhEUPhaXBevE4JlqC0SfMwry
	16OyxlceUo7Kx87rYzM7acy5VQDtQb3duSl4zxhKNsWmqerGf2R3zyoijcO/4g2y5uOhdMPA1pp
	DSbDglM3x+CK1PK0DF6au/O4SxJpI0Dad2KIeP4X9gfeyZeTCKlM5nrS3DOHBVuGNRzn0c9aAIf
	2x1x4He0pnAMWWiX/k1SwbnxUuV3U5l3ymJjwsS+k4zwtRIr4oZHI4u1quk5YLgI+svslQ9BocV
	CaRBA3lr0aKkx8XxmNuUaNmOIsIM95QYOseT8yLw9k2WFdLDn/DpELG5o+MUnczlE9GuMbE7E7q
	bH1OGAEL+q33I=
X-Received: by 2002:a17:90b:1e09:b0:34a:a1c1:90a0 with SMTP id 98e67ed59e1d1-35272fbe02amr13383022a91.28.1768976906418;
        Tue, 20 Jan 2026 22:28:26 -0800 (PST)
Received: from localhost ([122.172.80.63])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-352c403b7e4sm3875019a91.6.2026.01.20.22.28.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 22:28:25 -0800 (PST)
Date: Wed, 21 Jan 2026 11:58:23 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Dhruva Gole <d-gole@ti.com>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, Nishanth Menon <nm@ti.com>, 
	Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Kendall Willis <k-willis@ti.com>, Sebin Francis <sebin.francis@ti.com>, Bryan Brattlof <bb@ti.com>, 
	linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 0/3] cpufreq: ti: Add support for AM62L3 SoC
Message-ID: <yjpk2duxzham3ky7bvsu3majkjlypkvnc23dsxenfx4ykejpcp@uuohmp63qhwk>
References: <20260120-am62l-cpufreq-v3-0-8c69b80168a3@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260120-am62l-cpufreq-v3-0-8c69b80168a3@ti.com>
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-257743-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[linaro.org,none];
	DKIM_TRACE(0.00)[linaro.org:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[viresh.kumar@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo,ti.com:email]
X-Rspamd-Queue-Id: 15F18520E3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 20-01-26, 17:17, Dhruva Gole wrote:
> Hello,
> 
> This series adds CPU frequency scaling support for the TI AM62L3 SoC.
> 
> The AM62L3 is a low-power, low-cost SoC from Texas Instruments. This
> series enables cpufreq support by:
> 1. Adding the SoC to the cpufreq-dt-platdev blocklist to prevent the generic driver from probing.
> 2. Extending the ti-cpufreq driver to support AM62L3 speed grading by reading the efuse.
> 3. Updating the device tree with the necessary operating points and clock configurations.
> 
> Tested on AM62L3 EVM [1]
> 
> [1] https://gist.github.com/DhruvaG2000/6dcceb80cf7bbd1e624ec210532538cb
> 
> Signed-off-by: Dhruva Gole <d-gole@ti.com>

I should be applying only patch 1 and 3 ?

-- 
viresh

