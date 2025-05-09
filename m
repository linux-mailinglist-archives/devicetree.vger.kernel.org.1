Return-Path: <devicetree+bounces-175700-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D9904AB1869
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 17:28:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1EB1F1C435C2
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 15:28:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F20D222595;
	Fri,  9 May 2025 15:28:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0923F29A0
	for <devicetree@vger.kernel.org>; Fri,  9 May 2025 15:28:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746804489; cv=none; b=NoE7QMKHsqC5lLiwC3e6Z0TZcnNIg2nP430FndcpeP7cTYlCJUbEI6PHOUi1poOuMKanZO/YJm5TJDzZz6w65anq0A/Wels8VJz2BqVw2hJ1xqdwbPZWIo/xbFj/HCoIIND5oX7LFBiTKy9nFccp77E/nDkv7oa2TpySu4GV2HE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746804489; c=relaxed/simple;
	bh=IbvKty1/39etRrzCff2L8CuKePzb5E+35Y87v9/3b+s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=X6kz0S8a7VfB8ssd4NB63UgguK/0FLrg1MBTqiFWQg022ko3XwM/Ud0h0tBouAclB4DzSUnDww/7/fiX9m+5rsLB7c2mUtVLT535u5L0qlETKDgo8+dJVcvHJyvq6n2WMwhwdaPKZaS49T+WKwwgZTk5Jfu8RcNP8UXyvEem9r4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 676451595;
	Fri,  9 May 2025 08:27:54 -0700 (PDT)
Received: from bogus (e133711.arm.com [10.1.196.55])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3CC293F58B;
	Fri,  9 May 2025 08:28:04 -0700 (PDT)
Date: Fri, 9 May 2025 16:28:01 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Leo Yan <leo.yan@arm.com>
Cc: "Rob Herring (Arm)" <robh@kernel.org>,
	Liviu Dudau <liviu.dudau@arm.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: fvp: Add ETE and TRBE nodes for Rev C model
Message-ID: <20250509-pastoral-mighty-zebra-a1e63d@sudeepholla>
References: <20250508161907.1152054-1-leo.yan@arm.com>
 <174679984987.3368571.16872352739655196662.robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <174679984987.3368571.16872352739655196662.robh@kernel.org>

On Fri, May 09, 2025 at 09:17:00AM -0500, Rob Herring (Arm) wrote:
> 
> On Thu, 08 May 2025 17:19:07 +0100, Leo Yan wrote:
> > The FVP Rev C model includes CoreSight ETE and TRBE support.  These
> > features can be enabled by specifying parameters when launching the
> > model:
> > 
> >   -C cluster0.has_ete: 1
> >   -C cluster1.has_ete: 1
> >   -C cluster0.has_trbe: 1
> >   -C cluster1.has_trbe: 1
> > 
> > This change adds device tree bindings for the ETE and TRBE nodes.  They
> > are disabled by default to prevent kernel warnings from failed driver
> > probes, as the model does not enable the features unless explicitly
> > specified.
> > 
> > Signed-off-by: Leo Yan <leo.yan@arm.com>
> > ---
> >  arch/arm64/boot/dts/arm/fvp-base-revc.dts | 62 +++++++++++++++++++++++
> >  1 file changed, 62 insertions(+)
> > 
> 
> 
> My bot found new DTB warnings on the .dts files added or changed in this
> series.
> 
> Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
> are fixed by another series. Ultimately, it is up to the platform
> maintainer whether these warnings are acceptable or not. No need to reply
> unless the platform maintainer has comments.
> 
> If you already ran DT checks and didn't see these error(s), then
> make sure dt-schema is up to date:
> 
>   pip3 install dtschema --upgrade
> 
> 
> This patch series was applied (using b4) to base:
>  Base: attempting to guess base-commit...
>  Base: failed to guess base
> 
> If this is not the correct base, please add 'base-commit' tag
> (or use b4 which does this automatically)
> 
> New warnings running 'make CHECK_DTBS=y for arch/arm64/boot/dts/arm/' for 20250508161907.1152054-1-leo.yan@arm.com:
> 
> arch/arm64/boot/dts/arm/fvp-base-revc.dtb: ete0 (arm,embedded-trace-extension): 'arm,coresight-loses-context-with-cpu' does not match any of the regexes: '^pinctrl-[0-9]+$'
> 	from schema $id: http://devicetree.org/schemas/arm/arm,embedded-trace-extension.yaml#
> arch/arm64/boot/dts/arm/fvp-base-revc.dtb: ete0 (arm,embedded-trace-extension): $nodename:0: 'ete0' does not match '^ete(-[0-9]+)?$'
> 	from schema $id: http://devicetree.org/schemas/arm/arm,embedded-trace-extension.yaml#
> arch/arm64/boot/dts/arm/fvp-base-revc.dtb: ete1 (arm,embedded-trace-extension): 'arm,coresight-loses-context-with-cpu' does not match any of the regexes: '^pinctrl-[0-9]+$'

arm,coresight-loses-context-with-cpu is not defined in the
arm,embedded-trace-extension bindings though the driver is shared with
arm,coresight-etm. It needs to be defined in the schema to avoid this
warnings.

-- 
Regards,
Sudeep

