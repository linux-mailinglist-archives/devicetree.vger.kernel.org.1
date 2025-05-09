Return-Path: <devicetree+bounces-175703-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9418DAB1873
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 17:30:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 59BC4A01E52
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 15:29:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C17222E01E;
	Fri,  9 May 2025 15:30:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E859322D9F1
	for <devicetree@vger.kernel.org>; Fri,  9 May 2025 15:30:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746804605; cv=none; b=UpnXtaEwhf4oYa4vKPWnb53D3hIQE4bwk0BXfXDbqnUa/uubVYJ873JFRGpT4ataWiCx1EQGzRqCIjAJAhxLbqCjNEw/Gkx0yxuU0IUruqk6lC5dWEHYxuC4tBC3mKlenFuuhCBwlVgctFBcMgxqsEtYQ5mBj9kEtns1zMzf1Hs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746804605; c=relaxed/simple;
	bh=43hBNHVVROnSnMosJNMeWBMdFsCmClTQFFRCkn2HDQw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NXJga09iz+VGY9mnAKE0GS7m/3M2xZDnqbuVRRvJcSjFTor2w0izHp8c8jOU8P+kWSDLTtduxVvEBwfOBsRweec0JFsy4KyzzCWAhxSF+i7fTz4u/7yUpmpfSWH5B7aL70rnCjYRfUamfGf42hwypsrK1pIOCN9DXkyMH0YlAaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 203531595;
	Fri,  9 May 2025 08:29:50 -0700 (PDT)
Received: from bogus (e133711.arm.com [10.1.196.55])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E8D253F58B;
	Fri,  9 May 2025 08:29:59 -0700 (PDT)
Date: Fri, 9 May 2025 16:29:57 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: devicetree@vger.kernel.org, Leo Yan <leo.yan@arm.com>,
	linux-arm-kernel@lists.infradead.org,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Liviu Dudau <liviu.dudau@arm.com>
Subject: Re: [PATCH 1/3] arm64: dts: fvp: Add CPU idle states for Rev C model
Message-ID: <20250509-lurking-hidden-shellfish-cf2bbb@sudeepholla>
References: <20250508103225.354925-1-sudeep.holla@arm.com>
 <174679984875.3368325.1365758165371282064.robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <174679984875.3368325.1365758165371282064.robh@kernel.org>

On Fri, May 09, 2025 at 09:16:54AM -0500, Rob Herring (Arm) wrote:
> 
> On Thu, 08 May 2025 11:32:23 +0100, Sudeep Holla wrote:
> > Add CPU idle state definitions to the FVP Rev C device tree to enable
> > support for CPU lower power modes. This allows the system to properly
> > enter low power states during idle. It is disabled by default as it is
> > know to impact performance on the models.
> > 
> > Note that the power_state parameter(arm,psci-suspend-param) doesn't use
> > the Extended StateID format for compatibility reasons on FVP.
> > 
> > Tested on the FVP Rev C model with PSCI support enabled firmware.
> > 
> > Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> > ---
> >  arch/arm64/boot/dts/arm/fvp-base-revc.dts | 32 +++++++++++++++++++++++
> >  1 file changed, 32 insertions(+)
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
>  Base: tags/v6.15-rc1-1-g59529bbe642d (exact match)
> 
> If this is not the correct base, please add 'base-commit' tag
> (or use b4 which does this automatically)
> 
> New warnings running 'make CHECK_DTBS=y for arch/arm64/boot/dts/arm/' for 20250508103225.354925-1-sudeep.holla@arm.com:
> 
> arch/arm64/boot/dts/arm/fvp-base-revc.dtb: idle-states: entry-method:0: 'psci' was expected
> 	from schema $id: http://devicetree.org/schemas/cpu/idle-states.yaml#
> arch/arm64/boot/dts/arm/fvp-base-revc.dtb: timer@2a810000 (arm,armv7-timer-mem): #size-cells: 1 was expected
> 	from schema $id: http://devicetree.org/schemas/timer/arm,arch_timer_mmio.yaml#
>

Thanks for the report. Now fixed locally.

-- 
Regards,
Sudeep

