Return-Path: <devicetree+bounces-270280-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eGljLkhfpmlVOwAAu9opvQ
	(envelope-from <devicetree+bounces-270280-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 05:10:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id C11061E8A36
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 05:10:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id BE9D4300B2B5
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 04:10:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C42F382281;
	Tue,  3 Mar 2026 04:10:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GbqGTGDr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 776A237DE98
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 04:10:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772511041; cv=none; b=k31xRvvyz5WTnhBqis8QOs7LdvsFuTtm8Z+iGA9O58Fz8yqWOJ/NSXV4ZWkMmfnYK0VPsCXdhxsuBhIG+C6vsH/WESaTbM92bQILPcuvEZ1txmfvbo3dnaquPOqEHYxS+sfkMU1Pyqr4MIrMuvv9h8sFgVQq2R6Hv5G5auWz9o0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772511041; c=relaxed/simple;
	bh=ycEUqxu2VC/LIBrKv1r/HjXANBQeoGPsrUfYyYj7B8o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EgEsxHcZd8b8NT2LCKUjxt0/IQDCcEwzVNFK3xztVsUb6vgdv56Fw5fz2eTHANYdWkRzt/uLodwMZ0vpVIrKHj6+4Pj+tSm6Pxa7P8rOTkrwgRYVfWHXNq4UEHGk2X/HtCudV0HR6UZIbxSz1fXk2ex2UISlR5LgIlWR1LKVeTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GbqGTGDr; arc=none smtp.client-ip=209.85.216.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pj1-f41.google.com with SMTP id 98e67ed59e1d1-35995cb33a8so766749a91.0
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 20:10:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772511040; x=1773115840; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Wm/wTJAYni/bfoPe16quMxTzhtynqt7x0YSgPTMXEuI=;
        b=GbqGTGDrJdKKyBtONZhgh77o7JV46u/xOx/xknH0DtTzlqdxpa02HewHeF6tkw7dxE
         CgSWUZ8LvDfHY3oyflv4a+XBKHSjJ7pA6HZPZ2hvHTvZQ77o9u6K9vmZ0PZdiGPd3WIP
         WIEfSXgTVznBTdtVp4ydMj2SPFv63fesPQxlBPu4q0ZmWKQ5qz5apB4S4jYjayxbwv3W
         9yQ/TeUp0q+1k6ZBNAc9YMUmVYdAFCImPSgzBAbeRTmW0rJKg1Xf1LFMTbX2OwU2f2wl
         cz4uhWuJ1kkOWd3ZJPsAC3N+iMrPd9lxr/xMziRephxiId4EgZd18XuLBZAoSCOyZ1SL
         j5Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772511040; x=1773115840;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Wm/wTJAYni/bfoPe16quMxTzhtynqt7x0YSgPTMXEuI=;
        b=rJrCaIBGXX5MN9STF2mZW2JOKdwfzqlWExkMXkBt/d1/4gHnH5EeiCrXNIegeK0yMC
         Kxoz0bm+HbHcCWVq6/exUl1lz9D1i+Q96/RqW3IdWAzAk+1+vXsmsUPGsqUDawyipQ5E
         gwXKZOOttezir51tD/dUP8NwVDXHfkr4/BqOH1X8dHEB04Ie2kmDZLIfo5hvpWyX5VT5
         1HQV0bczelc9VH3ktCyAHAcjFzla6m83Vs7UxZbx5UyywSRt1ZjHDKCUnGQCL4uTVRRL
         y5tQ00Oo20zIT6+C8yMXTxLp4vsyPt4rp/s1sxLeco5XqznUnzB36MSf4swGQcB5VPV/
         H2Zg==
X-Forwarded-Encrypted: i=1; AJvYcCUNGoiv/4nQfRgteUHcH1xI2aCAqVGidfO9G07gTQWHa1HZ60QyqiIhWS/VQHsg9xbXXbdz7v7t7O/6@vger.kernel.org
X-Gm-Message-State: AOJu0YyRP8nrzwv8XkFiqeKaxsMDa7FVd4iUN7AUlJZCotXsf+lZNhPe
	HmPda02ZHqNkexZ1yvLs+PS2hhCQQtq4ZpmamJna8ZGJ4rxF3pJcf21Ft0YXSHDP64M=
X-Gm-Gg: ATEYQzzdLknDGHOdDRWxJoBeW2m/0pYwCzNblawj3Qxle5gI2R/gZykqfzDWQOQRQp0
	Dtqu8C7ZPWvuzWNhg7wIqlguMDivnEjXP/ozyOdbeEfmixfmUucdzjDNAzFV8llE7s2UYupaQuO
	Ta2Gch9zn+/ZfJHIdHHJ9xdMz9LqyUKS8jZ9Wgxhbg6zW7I5RFKRtBgzn2hTLYW8JRKeoqMm3nY
	OFKPyV5AshcDk4eKLOn00OM2yiHq7t99AbbVdr5Qta6+NpOQfCH1Lab08DZNcHi4WtS7jeSVRym
	AlJM3M9wIkOn2EUAxW5PdT2y3Bh+j4jOYdNsZYVbNxjv+XZZYDQwateq5n0snHKBFWnhMChSP2f
	25ovSjjDuvgY56z+37o+iBpyE5PxaCOe8ZWHPrWdHIraR5N+wwWnRe983sH4Z0k7gVP1Q/av3hD
	TXZp5z6efVaYA6NiOlU88bkwxm
X-Received: by 2002:a17:90b:3fc4:b0:359:901a:4b04 with SMTP id 98e67ed59e1d1-3599cee8ec6mr697357a91.14.1772511039563;
        Mon, 02 Mar 2026 20:10:39 -0800 (PST)
Received: from localhost ([122.172.81.200])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3599c4c0787sm895192a91.15.2026.03.02.20.10.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 20:10:38 -0800 (PST)
Date: Tue, 3 Mar 2026 09:40:36 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: cpufreq: qcom-hw: document Eliza cpufreq
 hardware
Message-ID: <3up7phdh5lywcvdmzwe7e2q4sqhpeea3lre5373d2ayanimjk5@5trdeshj6q57>
References: <20260223-eliza-bindings-cpufreq-v1-1-421f8e1e2805@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260223-eliza-bindings-cpufreq-v1-1-421f8e1e2805@oss.qualcomm.com>
X-Rspamd-Queue-Id: C11061E8A36
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270280-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[viresh.kumar@linaro.org,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:dkim,qualcomm.com:email,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Action: no action

On 23-02-26, 10:50, Abel Vesa wrote:
> Document the cpufreq hardware on the Eliza SoC.
> 
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml b/Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml
> index 22eeaef14f55..98eb36bff172 100644
> --- a/Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml
> +++ b/Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml
> @@ -35,6 +35,7 @@ properties:
>        - description: v2 of CPUFREQ HW (EPSS)
>          items:
>            - enum:
> +              - qcom,eliza-cpufreq-epss
>                - qcom,milos-cpufreq-epss
>                - qcom,qcs8300-cpufreq-epss
>                - qcom,qdu1000-cpufreq-epss

Applied. Thanks.

-- 
viresh

