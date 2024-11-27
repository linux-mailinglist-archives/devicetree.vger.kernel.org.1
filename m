Return-Path: <devicetree+bounces-125163-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CCA2E9DAF14
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 22:49:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7D5FF16670D
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 21:48:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F11411FF7DD;
	Wed, 27 Nov 2024 21:48:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98980F9DD;
	Wed, 27 Nov 2024 21:48:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=63.228.1.57
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732744138; cv=none; b=ZhVK3usFOYD5TySkIfXJpon3exmvRRTaBxg2gJvz1ASymOpurxOUcBZgmVsnxEW/cTM81J9judQcV/QOpCoglSENcg7PhtpnGY8nQXhZHNT7eB4D/ceAQim+puHTNaiHmrS+LC2WOqx/v/n1I4DnXcvd5oddfsLTjfsAsKRN8TA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732744138; c=relaxed/simple;
	bh=U1EnJulPB6aPYUGrhzsRjVxvpNe3kRKSZ6uIfau88bU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Mime-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Xu+fHvi3i5zxDHyQjic3lA9dw/APDj/JCNWk5ip1gqHcsS3WdkSUoX3TRhNVYXIG7qN5HYtscNvoLW3uC8TdhKYTG4fm09eFLZ+561KzQEbKuhQaIW/0OG5RNmYSChW5pHngiM2vCuQjYcuR0x5Wy7gJ9pWQ8x63CaeKuu6nWsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=kernel.crashing.org; spf=pass smtp.mailfrom=kernel.crashing.org; arc=none smtp.client-ip=63.228.1.57
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=kernel.crashing.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=kernel.crashing.org
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 4ARLgWel027899;
	Wed, 27 Nov 2024 15:42:33 -0600
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id 4ARLgW3R027898;
	Wed, 27 Nov 2024 15:42:32 -0600
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Wed, 27 Nov 2024 15:42:32 -0600
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Michael Ellerman <mpe@ellerman.id.au>
Cc: "Rob Herring (Arm)" <robh@kernel.org>,
        Saravana Kannan <saravanak@google.com>, linuxppc-dev@lists.ozlabs.org,
        Conor Dooley <conor@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] of: WARN on deprecated #address-cells/#size-cells handling
Message-ID: <20241127214232.GQ29862@gate.crashing.org>
References: <20241106171028.3830266-1-robh@kernel.org> <87jzdfcm3l.fsf@mpe.ellerman.id.au> <87plmi7jjz.fsf@mpe.ellerman.id.au>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87plmi7jjz.fsf@mpe.ellerman.id.au>
User-Agent: Mutt/1.4.2.3i

On Tue, Nov 26, 2024 at 02:36:32PM +1100, Michael Ellerman wrote:
> Michael Ellerman <mpe@ellerman.id.au> writes:
> > "Rob Herring (Arm)" <robh@kernel.org> writes:
> >> While OpenFirmware originally allowed walking parent nodes and default
> >> root values for #address-cells and #size-cells, FDT has long required
> >> explicit values. It's been a warning in dtc for the root node since the
> >> beginning (2005) and for any parent node since 2007. Of course, not all
> >> FDT uses dtc, but that should be the majority by far. The various
> >> extracted OF devicetrees I have dating back to the 1990s (various
> >> PowerMac, OLPC, PASemi Nemo) all have explicit root node properties.
> >
> > I have various old device trees that have been given to me over the
> > years, and as far as I can tell they all have these properties (some of
> > them are partial trees so it's hard to be 100% sure).
> >
> > So LGTM.
> 
> Turns out I was wrong.
> 
> The warning about #size-cells hits on some powermacs, possible fixup
> patch here:
> 
>   https://lore.kernel.org/linuxppc-dev/20241126025710.591683-1-mpe@ellerman.id.au/

The Open Firmware specification is extremely clear that a "missing"
"#size-cells" property means this bus has the default value of 1.

https://www.openfirmware.info/data/docs/of1275.pdf (page 186).

DTC or FDT might want to do things differently, but expecting decades
older stuff to conform to its ill-conceived unnecessarily super wordy
stuff is, well, not a plan that is likely to work very well :-)


Segher

