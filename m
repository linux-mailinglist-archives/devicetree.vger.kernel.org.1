Return-Path: <devicetree+bounces-138293-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 50AE0A0C5D8
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 00:46:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 449B27A3394
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 23:46:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3317D1F9F46;
	Mon, 13 Jan 2025 23:46:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ml61tHH4"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08F86160884;
	Mon, 13 Jan 2025 23:46:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736812005; cv=none; b=ioOXho35gYmYtJFVdTrNP9Y9yRClg8GywlN2/L407j82TkzsCYFbW6MEcnsp8EQcL91mSRe2P0ydbQERGDEvpwLm/W55hi4JNc1WSMNBG3PayAn1iUZ2sFhIqMLptQBT9cx6nXu2ejJx9RYFc0n47nO8xrEUSma4/IceaMAOSJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736812005; c=relaxed/simple;
	bh=ZVfGmTVMAMtEKv11q6YfGOJozt9ZTCJmNExpU3bYz4U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tVayhe/2u0ahdIUjfXkxSafQ/LtWstNsZfTViBbj/sBaoT5dB85MBdSGfjV8zORZ0kQ1+UaklignOgr+6mpd4nxXmK0y4Fy2BkT9x3mCvdUCK2qRSNKdRnvz7tdfjjCsPetuXTlkV9THnWcKXtvVRKeFeb/W9bYI/Hhcl7zZ3f0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ml61tHH4; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6C97FC4CED6;
	Mon, 13 Jan 2025 23:46:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736812004;
	bh=ZVfGmTVMAMtEKv11q6YfGOJozt9ZTCJmNExpU3bYz4U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ml61tHH4JG+opIaKy29bskg15jQyGQ7nMBt+sL+6uh5xQropvge37IJ4rH/sTRfyS
	 RbmILOs3jjtYi4KdpGINZ1ZfWPamXpM5I8bJLQCV5FW69SVN1Aa84REAT8pV257z1i
	 d/VwL3VzS1/rWWkTul0DxZPN/mavm6yrf0HvuNmv8YDARk6AUb9XB6pRMR0sOzXYoU
	 ljaZpO5Jhr5xj5M9oO9QGEM26jFnCAXZQZH7/YOyxxogsqzA6gSmThfe95JXXvmFH/
	 ODuWjs30pCSSCLKCkoxIwOeEaTbRd3bQ1cpX4DxqLp7mmbOWKGnpuePdSe54S0WRNM
	 Sab4s82ZRNmeA==
Date: Mon, 13 Jan 2025 17:46:43 -0600
From: Rob Herring <robh@kernel.org>
To: Zijun Hu <zijun_hu@icloud.com>
Cc: Saravana Kannan <saravanak@google.com>,
	Maxime Ripard <mripard@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>,
	Grant Likely <grant.likely@secretlab.ca>,
	Marc Zyngier <maz@kernel.org>,
	Andreas Herrmann <andreas.herrmann@calxeda.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mike Rapoport <rppt@kernel.org>,
	Oreoluwa Babatunde <quic_obabatun@quicinc.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Zijun Hu <quic_zijuhu@quicinc.com>
Subject: Re: [PATCH v4 14/14] of: Improve __of_add_property_sysfs()
 readability
Message-ID: <20250113234643.GA3631169-robh@kernel.org>
References: <20250109-of_core_fix-v4-0-db8a72415b8c@quicinc.com>
 <20250109-of_core_fix-v4-14-db8a72415b8c@quicinc.com>
 <20250110204154.GA3529721-robh@kernel.org>
 <954725b5-5d53-4bd0-9a06-61ac1aa35dfe@icloud.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <954725b5-5d53-4bd0-9a06-61ac1aa35dfe@icloud.com>

On Mon, Jan 13, 2025 at 11:00:12PM +0800, Zijun Hu wrote:
> On 2025/1/11 04:41, Rob Herring wrote:
> >> From: Zijun Hu <quic_zijuhu@quicinc.com>
> >>
> >> __of_add_property_sysfs() hard codes string "security-" length as 9, but
> >> that is not obvious for readers.
> >>
> >> Improve its readability by using strlen().
> > Does the compiler optimize the strlen call away? Maybe, maybe not. If 
> > not, that's N calls to strlen() where N is the number of properties in 
> > your DT. That's in the 1000s easily.
> > 
> > Do you really want to go test enough compiler versions we support to 
> > feel confident this is optimized away. I don't.
> 
> i understand your concern about performance.
> 
> what about below solution ?

See 72921427d46b ("string.h: Add str_has_prefix() helper function"). 

Though we already had strstarts(), but that lacks __always_inline which 
seems is important for eliminating the strlen(). Also, since that 
commit, clang has become more common and need to make sure the same 
optimization happens on it.

> 
>  int __of_add_property_sysfs(struct device_node *np, struct property *pp)
>  {
> +#define SECURITY_PREFIX "security-"
>         int rc;
> 
>         /* Important: Don't leak passwords */
> -       bool secure = strncmp(pp->name, "security-", 9) == 0;
> +       bool secure = strncmp(pp->name, SECURITY_PREFIX,
> sizeof(SECURITY_PREFIX) - 1) == 0;
> 
>         if (!IS_ENABLED(CONFIG_SYSFS))
>                 return 0;
> 
> 
> 

