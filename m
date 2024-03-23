Return-Path: <devicetree+bounces-52652-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 99DBA887892
	for <lists+devicetree@lfdr.de>; Sat, 23 Mar 2024 13:20:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3964DB21137
	for <lists+devicetree@lfdr.de>; Sat, 23 Mar 2024 12:20:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03EDF168D0;
	Sat, 23 Mar 2024 12:20:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=jookia.org header.i=@jookia.org header.b="UrKTAt3K"
X-Original-To: devicetree@vger.kernel.org
Received: from out-188.mta0.migadu.com (out-188.mta0.migadu.com [91.218.175.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D729F17566
	for <devicetree@vger.kernel.org>; Sat, 23 Mar 2024 12:20:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.188
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711196435; cv=none; b=j/IMiA9WTvtB2RLFNmak8ECJLUQtWo80qhwQQabAi93UaFAzTnRQKrMJJr1e2WUenwR9/KX7w+0LDAcNGgxtXMRrpBSgBQBWvelB+oE1zc+hiDaWGMYVvZ2jGvQ4/gsjJ28//IJ2L9tzkirpCxpecwSHBK7fyNfdts+onfR1K7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711196435; c=relaxed/simple;
	bh=8FjguFMt13R91Ppez06SoRh9O0dIfTNtbsEcKq+9AC8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fYJVb04EBHJDx184lw99OJ12okWiOwM3V3YITCoD98V6tyzgDZNaQQhn1ShL3CuBMFdTImgjgaeAm5IOOZtyM0P/1ANUHpbFkP0EgfrSON+2K1nUuWikX4nHvUeKn0ncGIWTrRPxeNlRnOS3VSmSgVnGNnJ3dSM4uF+tZf23CDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=jookia.org; spf=none smtp.mailfrom=jookia.org; dkim=pass (2048-bit key) header.d=jookia.org header.i=@jookia.org header.b=UrKTAt3K; arc=none smtp.client-ip=91.218.175.188
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=jookia.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=jookia.org
Date: Sat, 23 Mar 2024 23:19:55 +1100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1711196429;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=B8NIRzI/4/CqXmIhWH0rI+ojPyyGu7EFl0iY/rXFsS4=;
	b=UrKTAt3K5l38lQWqnWfu37xVs3MfpzmMme1zHKMevX1FPJiZ3v911mXgPhGz0AyxZ1/rk4
	9fW4/SHiP3XPYn6asTB3RSRkkQ/EZjQDQfpZCSMwDlZxxHZhqcqGFPqqt1BzLC/h6EXXf/
	UVTDwWzFd/jwHnp2HvFbLrsUii+F9JWXvZan3vOSMF+tpFpEzt0L4dvccEx/7lSAW9CsSD
	+n3tdbRSOeOgcSv7wq13jFXAbauVRSayUaFANlcW10jbFUOoppzNhLBq2qfLRoYqOU2dUp
	p+FCR6rSgtQx08Bhrc9ws5YxVVDyjyxXfQ17UWgPED4vYDjJ1nw2t+pgMsk7bw==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: John Watts <contact@jookia.org>
To: Saravana Kannan <saravanak@google.com>
Cc: Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
	=?iso-8859-1?Q?Herv=E9?= Codina <herve.codina@bootlin.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>, kernel-team@android.com,
	Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] of: property: fw_devlink: Fix stupid bug in
 remote-endpoint parsing
Message-ID: <Zf7I65PiOR2wX1Uo@titan>
References: <20240224052436.3552333-1-saravanak@google.com>
 <ZfvN5jDrftG-YRG4@titan>
 <CAGETcx8+vw0Vr0NWzjOAvxAZ07M4U7BWPAgO9avCngW0-9e_kA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAGETcx8+vw0Vr0NWzjOAvxAZ07M4U7BWPAgO9avCngW0-9e_kA@mail.gmail.com>
X-Migadu-Flow: FLOW_OUT

Hello again,

On Fri, Mar 22, 2024 at 06:53:57PM -0700, Saravana Kannan wrote:
> Hmmm.... cycle detection should work here and not enforce probe
> ordering. I'd appreciate help with debugging that. Let me look at it
> on Monday. Can you enabled all the debug logs in drivers/base/core.c
> and tell me what cycle detection is telling about these nodes?

Hmm. It's not saying anything more than what I've already sent.

I think this is because /sound/multi isn't a device, it's just a
subnode used in audio-graph-card2.
Removing the multi { } section and using direct graph connections
'fixes' this.

I think this might be because usually in a graph each node containing
ports is a device, such as a display panel, a bridge, an LCD
controller. These kind of form a dependency chain.

In this case all the ports in multi act as a way to glue multiple
ports together for the audio-graph-card2.

Does that help?

> But the better fix would be to use the new "post-init-providers"
> property. See below.
> 
> >
> > / {
> >         ...
> >
> >
> >         test_codec {
> >                 compatible = "test-codec";
> >                 prefix = "Test codec";
> >                 #sound-dai-cells = <0>;
> 
> post-init-provider = <&multi>;
> 
> Right now there's a cyclic dependency between test_codec and multi and
> this tells the kernel that test codec needs to probe first.
> 
> Similar additions to the other nodes blocked on multi.
> 
> Thanks,
> Saravana

John.

