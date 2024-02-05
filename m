Return-Path: <devicetree+bounces-38509-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 47B72849581
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 09:38:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C4B671F24845
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 08:38:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23390111BA;
	Mon,  5 Feb 2024 08:38:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="T+cXlPZd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A1A711713
	for <devicetree@vger.kernel.org>; Mon,  5 Feb 2024 08:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707122315; cv=none; b=ut5mUVHIWuXHWEv2IGRRZW4Pfah3jxrJRaDxOgy+m2ZnfC+UmyyZ/Z+Ca/rXwz5gr0EC5mzRC0j3vtzk23p/U8AoNC75vIuYvMSXsyBPTvcorE/9JDNeoPm6yNCFS51tuxjYB+YqWMjvg86TX27c3t012kZoyYXeb8D7cegvmvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707122315; c=relaxed/simple;
	bh=3LmgSibEXomUKPO63HkaRhVDpYnceZtyNFTYsQfKJns=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CC+W9ZJOICwkxl8sbEwx4yQWBIDP4fkhv75XL18+lfKmK84DMHBDwbs7D0YP2qN/V8NlMIOHtCT/v6ZZQ1yCffwKGFNNKS4yBYd7XRif7uikPNAY/hiS9vTKCakPX9aHiindg01lqIA1BIK+njhsjJHL05YCkh4GYFnqSyB9T0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=T+cXlPZd; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-1d932f6ccfaso30541555ad.1
        for <devicetree@vger.kernel.org>; Mon, 05 Feb 2024 00:38:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707122313; x=1707727113; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=TzUq0QU1iLhov+1WYKZ5iVgod62Dx1DjglJhN8m0PAE=;
        b=T+cXlPZd367U7+rLzfZlkoCBnSkX3j5R/RrgiVeGJgG8C/w43zhoKETYv2aOSPbpUR
         fuAkSK0nhpc/tSA92w9+qQGCuWmNY4xelwxxrIZl8Y1BJiv/FySG3xd+bC0MQTDlKPo5
         4a3hUMeIwAbNOWggeBW3n58+kYi/xC/31yZPY1gfpomSKtYvg/sSFSIIkqgBw5OXlvqj
         FKdl3UUJ0Qudk3KRplXnnUMvMziSrF9/NwWq6FmgyyY1f949Zt2VVRPrhCLit6N5ld1s
         EWqigldIcCxBQ0r3vMFER8gnHFvQet6b0Zc4wLBT1izPvYis0jbJB5y/7snL7h+LjA8T
         mS1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707122313; x=1707727113;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TzUq0QU1iLhov+1WYKZ5iVgod62Dx1DjglJhN8m0PAE=;
        b=ZEdfEcP+i6lvZK1Mj0E7AuGJgpK2Yda+rmt88O3D/cUwkYwXJL/xeoW4o1DWOwZA5p
         up6PvCZtgCAn8WjOb+zbia7N9NnQU838aSU/je75eCz+zopFOpDi8yNYSVFG2DNTJMTA
         28WL5uNOG7KY6/8HcC6eHAidM0pfxJC6gmZDZFPK6F7zyKmaTBKwNUBuvP7nVyaPqZSx
         SmsAzrR0q0g2VGIUR0B16HufbqIjb3c8FeFZmh6vZZA1RLnhiw8osKMBw2V1VIhtPvEJ
         /GnrQcN9/1cyK6dTEnFuf7qUqPWb2HD8uD+NmQFjmuPATBgb03EduQFc8acbibL7qtLm
         JTGg==
X-Gm-Message-State: AOJu0YyTv7A17vtV/UnjNq+vgcUC8Zwx+j8pedFVkPMjjV/5rTGFyN4V
	ILs12cL+2qfDb9BoG+sioIG9vIUNnv1jNrtzUUuSwmyA0mA8jxIY5BU9FPQ154Q=
X-Google-Smtp-Source: AGHT+IFlHMcwipPv/5fS9RA0N7CHAoHC9ENOUI7UQ64mLeAdNBX232vnbn/8H284Q02YLTeeS+jlhw==
X-Received: by 2002:a17:902:e5c7:b0:1d9:7a7a:3d01 with SMTP id u7-20020a170902e5c700b001d97a7a3d01mr7580530plf.23.1707122312801;
        Mon, 05 Feb 2024 00:38:32 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCXfI2w+6dUAdaog5bJtoPlJM3p3ukBSikiWgzTm8BAqW0h7zGRqU7hx3UCGq7cTibBB8HARSP/XisA0uN+w9+FqdvqdeHJcVO0mfGc7ziQoQyXOZ7grsTx10xaypoxwpyExjkSzrysipLtwsKTy/DbFHWb/pjQ/VaDQNP54POfBXXfc50N8c0dSeCQnnZDV1rQl/GwCcqymS4cy0e+KMRoATbWVS7VNFUoxcTxHrbbl/iJAtaQsCjIaisPJnVzlyGemCHDWDX+U0bniwkNxCWC6gkHYWuSZyKtEMLtsXupZnvMhqwFiXpzivjLHsAd9eAj71NRm/mAc32aaParxZPwNgj6b36hqk6Rd+MaDSLQtzEAjoChdChpKMUkafF8b+2Kd6vQ85HUy8XN6hBQMWrEH9hLIUeY9osriah/T3E2rh5eyHYWHezWPu9gpgkmMdbR3ZteEpUbi3l3AIe4XCcCdNLQgS2msiz/gCyf1/ugvQQLXJHzcA9h/mlNPxgdIzNNUqfRPV1a1hQ46+WgKwIskB+QDnn047Ob6XWdb1Y7zgHlFQU7xr/ipwWjZzunXXHEX2S8lZFGOXlWpI1F/cWzUXZAnprTHQ5/nNf6MUd97ty8YnKrrEpD8adDaa0Z8eps8kNajrf8F46HOl2qu05YBjty2nRwOK4Pm5BIh/OQJAKYudC5xAor0TzHqgedJpd1c66sWfdshOdQ=
Received: from localhost ([122.172.83.95])
        by smtp.gmail.com with ESMTPSA id mm4-20020a1709030a0400b001d60a70809bsm5782825plb.168.2024.02.05.00.38.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Feb 2024 00:38:32 -0800 (PST)
Date: Mon, 5 Feb 2024 14:08:30 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Rob Herring <robh@kernel.org>
Cc: Saravana Kannan <saravanak@google.com>, David Dai <davidai@google.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sudeep Holla <sudeep.holla@arm.com>,
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
Subject: Re: [PATCH v5 1/2] dt-bindings: cpufreq: add virtual cpufreq device
Message-ID: <20240205083830.4werub5e76kudjq4@vireshk-i7>
References: <20240127004321.1902477-1-davidai@google.com>
 <20240127004321.1902477-2-davidai@google.com>
 <20240131170608.GA1441369-robh@kernel.org>
 <CAGETcx8S0oS67oMZsPKk6_MGAtygoHEf_LN1gbcNDEBqRJ4PPg@mail.gmail.com>
 <20240202155352.GA37864-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240202155352.GA37864-robh@kernel.org>

On 02-02-24, 09:53, Rob Herring wrote:
> On Wed, Jan 31, 2024 at 10:23:03AM -0800, Saravana Kannan wrote:
> > We also need the OPP tables to indicate which CPUs are part of the
> > same cluster, etc. Don't want to invent a new "protocol" and just use
> > existing DT bindings.
> 
> Topology binding is for that.

This one, right ?

Documentation/devicetree/bindings/dvfs/performance-domain.yaml

> You need per CPU Fmax, sure. But all the frequencies? I don't follow why 
> you don't just have a max available capacity and then request the 
> desired capacity. Then the host maps that to an underlying OPP. Why have 
> an intermediate set of fake frequencies?

+1

> As these are normalized, I guess you are normalizing for capacity as 
> well? Or you are using "capacity-dmips-mhz"? 
> 
> I'm also lost how this would work when you migrate and the underlying 
> CPU changes. The DT is fixed.
> 
> > > Also, we have "opp-level" for opaque values that aren't Hz.
> > 
> > Still want to keep it Hz to be compatible with arch_freq_scale and
> > when virtualized CPU perf counters are available.

These are all specific to a driver only, that can be handled easily I guess. I
don't see a value to using Hz for this to be honest.

-- 
viresh

