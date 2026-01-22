Return-Path: <devicetree+bounces-258345-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WKgDBvILcmksawAAu9opvQ
	(envelope-from <devicetree+bounces-258345-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 12:37:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id D44986619A
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 12:37:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 19297724757
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 11:27:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EECD3AE70B;
	Thu, 22 Jan 2026 11:26:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="i5l9oiSV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9FE2345CB0
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 11:26:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769081187; cv=none; b=NRUzWu6v5+yAAFXIfwT1RLAZMP4yZmK7NVa16fckLFZkWI5BHEVpq9vm7MUTdt//OGVnC45rK0oCGN2wqGIeZ7egS6wZvdbqeu7ERiEE0n7BwFfk8EtH6CtE4i2DMXvDb4Yt68iy86Dkkk2PTdtMbQuElkYKKS5QqJVnTqM+598=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769081187; c=relaxed/simple;
	bh=JytGphSqEQ7gh+AZYaduCJsbhvg8L3CjkR9WUIKG818=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dbgc93QYlQEq2Zgcmclp6eytIHr/WUvG5QxwNdjTTblYrQMh3rlq2JD8w51UVqEm7b90x/pNWp1TdPKSlWSILEUgUOtwsQZA87byJRAHvjWa2aYQQDtAMaJPxWKGMU8Bx0pB+4VOnJ5RyPVwksSW6l18iSoFqaM1CB18t5M/jTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=i5l9oiSV; arc=none smtp.client-ip=209.85.216.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pj1-f43.google.com with SMTP id 98e67ed59e1d1-34b75fba315so564366a91.3
        for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 03:26:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769081185; x=1769685985; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=o+UcNIPm8dyZnR8BXU0OMEYGl+DXyJ7iURZd+ps1GVU=;
        b=i5l9oiSVZ3pkV0GKe7BPzmedhsro3SAGJ8GIAql5nO3CAJBT3aV/YM7gotSNtwoCcM
         P3UxG2Y+4Kb3EZVQwaC4BsyfLFMiXaa/3So29TzIaQtySCSLE0M+hUkboVfCbFKtKoNT
         VDTDXupueBi78YctOQjqw4x5v7MoAeH1TGFq/S/8/LrL703uSx49KyYWL5Bc2BQ6SDw4
         6lCfax3HrpEsXXutguUn5YVGbTPRrEMSDSrBlW4isK05uyMy4EdkbCQyOQaj//dxZI/o
         Q6ysXTIP5T6RBZNJVXy3MyJSZN/CkSPkxGVAz8Ajqe0q5IaT9zxm9p9Rpchm4VIw1/zV
         BX4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769081185; x=1769685985;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=o+UcNIPm8dyZnR8BXU0OMEYGl+DXyJ7iURZd+ps1GVU=;
        b=nYNErckBst7BAk00q8jQdk2poKJeedDdPwxTBjMFUgNOVGytZmMPb35uLOPRr0xpw1
         +Zjv88HiujdU/NlDQjUsK2sTOVwTMAU5vxHNxEjNkfEIAZM8hX5kgYOHGWsQIRZqQwVS
         e3tVAUZI1au18xIOnT0fSN7crVvJRX036t4fYrm9kQSopRaMmAgYdiJAMlO6U2Z3Ablr
         ycGmzdm1RUdDX0Z+oz6pSuVr1idsJV097RBnP94J87uA2VqNt3gPDDRl6MSg0l9tvlyz
         5+KNiT6/gnoimaxniAwAP3gULVEsBypMAF4ktWUbM8VFI24oY7YSO68ffYm9mOOmwaaL
         AjsQ==
X-Forwarded-Encrypted: i=1; AJvYcCW2sBO81tabvHPtFQ28ia3DQNHMU0njXsF2GBPyZMI+8gC97pxKU277Ofk9Qgf3lBifMG/EDkIWRWqr@vger.kernel.org
X-Gm-Message-State: AOJu0YwwMT0nTtoHGgIT9mjAGe1onwfO9oftAZEpWGtfPkpYMFZqmsyX
	RDycBvH85+d88WXDO9RT4zxn03qPE7StBdCRH4USNYI1vXPU1xH6Jmy2sG/BsH4wFb0=
X-Gm-Gg: AZuq6aJ0vjEsIl6dNNx1Q/QyLPnDmk05dTqQno23oDC0z1zGTBJni87NN6G0HdwX1/j
	LovWu08YLDDeyEDLxjtgRm91uux48YRLO/hecF78rItlUKU5WkHdjOBwHFUHLewxOU10QRI8CKI
	tExQrNu/ssaPB46WWFQGBeViCM8IU2BMCb4IjJQ0RzaHS2ZCDPnTmCOLgpI7om5cDpNdUXxJnVR
	wj4hij0Lhe8THLuNrLv9PHP+wBDknzlPc0F5V9+0WIX7QrvPLUw+1BMSwGPQYs4+fBuP8PqAYB0
	1cqkQYUYI/dEY5P5Lplz4J5Ykmb6Jcz00NsctKkJajkeBl9stl6NybYDiKHPFuw5XRBWoAerymn
	PpKnxQOapCxxvQyy8Q46C7LNVePLcnEJIU2ppRRssC0r35oLP9oeKFJH+mGbIrnvdF7Cat0e53/
	SffDs+kpFR71U=
X-Received: by 2002:a17:90b:3ecc:b0:33b:dec9:d9aa with SMTP id 98e67ed59e1d1-35272fb7c36mr15941134a91.25.1769081184772;
        Thu, 22 Jan 2026 03:26:24 -0800 (PST)
Received: from localhost ([122.172.80.63])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c5edf32d82fsm17201003a12.19.2026.01.22.03.26.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jan 2026 03:26:24 -0800 (PST)
Date: Thu, 22 Jan 2026 16:56:21 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Dhruva Gole <d-gole@ti.com>
Cc: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
	Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Kendall Willis <k-willis@ti.com>, Bryan Brattlof <bb@ti.com>
Subject: Re: [PATCH] arm64: dts: ti: k3-am62l: support cpufreq
Message-ID: <dys7x6zsaofct4ozb4unbojc22devxiz5qebdb7m3b7kxx6nmb@j5iaqv7yuptn>
References: <20260122-am62l-dt-cpufreq-v1-1-fabcc15e25fa@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260122-am62l-dt-cpufreq-v1-1-fabcc15e25fa@ti.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258345-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
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
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ti.com:email,linaro.org:dkim,ams.mirrors.kernel.org:helo,ams.mirrors.kernel.org:rdns]
X-Rspamd-Queue-Id: D44986619A
X-Rspamd-Action: no action

On 22-01-26, 16:19, Dhruva Gole wrote:
> Enable CPUFreq support for AM62L SoC by adding the relevant OPP efuse table
> syscon to k3-am62l-wakeup.dtsi for speed grade detection.
> 
> Add the operating-points-v2 table with CPU frequency steps from 200MHz to
> 1.25GHz to k3-am62l3.dtsi
> 
> Configure CPU clocks to reference the SCMI clock controller for frequency
> scaling
> 
> This enables proper CPU frequency scaling capabilities for the AM62L SoC
> using the ARM SCMI protocol to interact with the power management firmware.
> 
> Signed-off-by: Dhruva Gole <d-gole@ti.com>
> ---
> The driver changes were merged previously [0], and so the DT patch
> is now being posted seperately. 

This should still be marked V4 with all previous version history.
(Don't resend just for that now).

-- 
viresh

