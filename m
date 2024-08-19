Return-Path: <devicetree+bounces-94848-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F49B956EC3
	for <lists+devicetree@lfdr.de>; Mon, 19 Aug 2024 17:32:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B86EE1F210BA
	for <lists+devicetree@lfdr.de>; Mon, 19 Aug 2024 15:32:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA128381AF;
	Mon, 19 Aug 2024 15:32:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MgiuLSw7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com [209.85.215.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 508F5225D6
	for <devicetree@vger.kernel.org>; Mon, 19 Aug 2024 15:32:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724081550; cv=none; b=OSd2Zc0VwEldSRXJB1XgjBceHIjjum4R7VZM/GSM1SluS8g4dr1D9/Kl3CAhebAQbR1shnLspQ62zK80gjRjQjxxioUEcL73HebxlkhSqPWPe7Qa8tPlxaoW8fTrrX0Jo/VJ+v3Qof+nXDuVOYz3C5yrYvUig3v6GSYcUuHdMDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724081550; c=relaxed/simple;
	bh=TshzH/F6+9AuZomJq6Z5FtzoH4xUoIKIMXpyuwuCPqQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iVxYar0qgnyZbhnO3IQMrkb/1zaXb76Kv9Orr0Jxte9Sm3Js5o8ZR/LWtWDI7R6MiMCv9nlIwvo+9twVAXIN2SI03Pl/+0oD7xPnABamzjjuYimuL3drCZaznGDa9wJP4CLczg32/fYDfDPBwRPmti9QYXySA6IBqHxh4htCptM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MgiuLSw7; arc=none smtp.client-ip=209.85.215.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pg1-f171.google.com with SMTP id 41be03b00d2f7-7c3e1081804so2886894a12.3
        for <devicetree@vger.kernel.org>; Mon, 19 Aug 2024 08:32:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724081548; x=1724686348; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=xwNCdzYfm502YO+gdgho2F7EWViMhewsDliJcvxl3mY=;
        b=MgiuLSw7ybnfFb8NMJFa4S4rX5d1WTDuqk4GPANjJ8svcPe02qEx2vzLyLgZ0wUWZU
         9YJK/idbYa6QAUivLPB5OQRGuMVAw70Nxgs2cSAG3RwCP9HSJK1qcitnxg7Lwmgd2Pvd
         OWjEhjK6ktXGh1b/JDmc8SgobJb/AaIwnxakjsbHcXtN33hpnGlvnjvjqn2GVltYm0Y5
         48mw17bpC0PZUH05uLrDK0KUBIV4ysRDoiJzp+Et4UKf5TN+szpzC63do12eZB5GAIF3
         sGKjcQjGfhLy4xtpNvZKVS26Tpn57C0yKHkAqSGo2FMtWaFnpaHnTNlrxmqlPqza1KYr
         AN/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724081548; x=1724686348;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xwNCdzYfm502YO+gdgho2F7EWViMhewsDliJcvxl3mY=;
        b=HhgpH0Xz3IOmCuIqKs8LBDW0xXJWI5xWPQsGYArYweTAV8Bwn4MoKb5BS9H/ivCHYh
         G2lffgybftOTgUzjSSX7mwg4/78/92Z3Nqv0X+Qc3oiKCSl3QHKKpnXAjGKR/QnK9m8i
         2pbiF6cPaqNY1Id6V5MV/fRo+WJzk/ke1HrX+fXs01qwTAmFbN+LJupLG+ExlAhP4erU
         ftMNZcu0XtNBUO/ZjGPQ8g54/JPaLdd43ReKaV/YeVUco1to2SN+tOHHz7d+RmgpDbVV
         u5lgvHAoezXqrCQcwQRANlpZUMzgNziyC0u0aV2BTKEjblYicN3G6JcfERSSTkoJiHEm
         Ongw==
X-Forwarded-Encrypted: i=1; AJvYcCVblVkzfpAJW7+tOHLhfDulApIT0g2Wb+TukBNgE6ZN9h9TlsGgP1An10Sck83ryEJb1sYOLknFLHi0amB6g9xvNptQfBs9mjINQQ==
X-Gm-Message-State: AOJu0YwJ9DVUPzBgMzIUrUsdHySSs0tMAs6blZaM/4w0crJODP2Mx7II
	LNXb+uJFEroihdHvvVyGjPTWT1f7QHgmtV8vgyoOmzJD1m7Be9p3dhM8XXn5f2Y=
X-Google-Smtp-Source: AGHT+IE/XR0ngoLW1xfBcf6BCEcckpp4YsYG2yv409hGZPpf7SP8xRVmb1yZCKcoWtCTUsOyfjciOg==
X-Received: by 2002:a17:90a:f68d:b0:2ca:4a6f:1dd with SMTP id 98e67ed59e1d1-2d3e0e41f2emr9178712a91.41.1724081548587;
        Mon, 19 Aug 2024 08:32:28 -0700 (PDT)
Received: from p14s ([2604:3d09:148c:c800:903:55bf:2534:1807])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2d3e2330f26sm7379940a91.0.2024.08.19.08.32.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Aug 2024 08:32:28 -0700 (PDT)
Date: Mon, 19 Aug 2024 09:32:25 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Vignesh Raghavendra <vigneshr@ti.com>
Cc: Andrew Davis <afd@ti.com>, Bjorn Andersson <andersson@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Nishanth Menon <nm@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Hari Nagalla <hnagalla@ti.com>, linux-remoteproc@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v11 3/9] remoteproc: k3-m4: Add a remoteproc driver for
 M4F subsystem
Message-ID: <ZsNlic5EbQP2BdFB@p14s>
References: <20240802152109.137243-1-afd@ti.com>
 <20240802152109.137243-4-afd@ti.com>
 <Zr4w8Vj0mVo5sBsJ@p14s>
 <Zr9j5HBjRqqRIoaD@p14s>
 <e5140426-7e69-41b0-858f-16f83eed871a@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e5140426-7e69-41b0-858f-16f83eed871a@ti.com>

Hey Vignesh.

On Mon, Aug 19, 2024 at 02:02:31PM +0530, Vignesh Raghavendra wrote:
> [...]
> 
> Hi Mathieu
> 
> On 16/08/24 20:06, Mathieu Poirier wrote:
> >>> +/*
> >>> + * Attach to a running M4 remote processor (IPC-only mode)
> >>> + *
> >>> + * The remote processor is already booted, so there is no need to issue any
> >>> + * TI-SCI commands to boot the M4 core. This callback is used only in IPC-only
> >>> + * mode.
> >>> + */
> >>> +static int k3_m4_rproc_attach(struct rproc *rproc)
> >>> +{
> >>> +	struct k3_m4_rproc *kproc = rproc->priv;
> >>> +	int ret;
> >>> +
> >>> +	ret = k3_m4_rproc_ping_mbox(kproc);
> >>> +	if (ret)
> >>> +		return ret;
> >>> +
> >>> +	return 0;
> >>> +}
> >>> +
> >>> +/*
> >>> + * Detach from a running M4 remote processor (IPC-only mode)
> >>> + *
> >>> + * This rproc detach callback performs the opposite operation to attach
> >>> + * callback, the M4 core is not stopped and will be left to continue to
> >>> + * run its booted firmware. This callback is invoked only in IPC-only mode.
> >>> + */
> >>> +static int k3_m4_rproc_detach(struct rproc *rproc)
> >>> +{
> >>> +	return 0;
> >>> +}
> >> Please remove.
> > Forget this comment since it would cause an error in __rproc_detach().  
> > 
> >> Other than the above I'm good with this driver.  That said I can't move forward
> >> without a nod from the DT crew.  I also noticed a fair amount of code
> >> duplication with the k3_r5 and k3_dsp drivers.  Dealing with that should not be
> >> part of the current work but will need to be done before another k3 driver can
> >> be merged.
> >>
> 
> > The above still apply though.
> 
> Me or Nishanth will pick up the SoC DT patches via TI SoC tree, once the
> driver patches are merged. Feel free to ignore those but queue
> dt-bindings (already has DT maintainers ack) and driver patches via
> rproc tree.
> 

Can you provide a link where the DT maintainers have acknowledged the bindings?

> 
> -- 
> Regards
> Vignesh

