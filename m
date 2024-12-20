Return-Path: <devicetree+bounces-133111-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 42D4D9F93EA
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 15:06:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 19686189C161
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 13:59:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B025215764;
	Fri, 20 Dec 2024 13:59:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1A661C4A1C;
	Fri, 20 Dec 2024 13:59:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734703143; cv=none; b=T24ZoywZa+n3aIJAnXUTdfcGmbto/CZIM/12cvHKIEM5+Q3cB9c8q7f5PpzfsqFJdUIu1S6j72dIaAMXVOjbkuT9Ex26KIvh7FbqRJXCUxDONRLA/fLyxSQk4sUG24X07/u+/a5nJbYeZzc8GpbtYbT0gC6KUghIj5rcoJK3TDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734703143; c=relaxed/simple;
	bh=wwy9iieJhFkaxNxipZ+EU3eTo1Fdkhc8eYK0ryVP+qI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=t5hAXOOIlXUwQOq7L4+NIvhZvpxwpRKsFPQieHl2wH32XnI2/Z1UmDF00z+rp/23XPwCNQjPhs/HEaPh/zqhYRXSOtEKM2tyu7hwP5ahq5+OhLTdRmhybQ4PIBFCYP3qVOc7TSjW+m5sfjzUlKfbyB+O7Xw6w4EZoiDwXgNBOfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 41DAC1480;
	Fri, 20 Dec 2024 05:59:29 -0800 (PST)
Received: from bogus (e133711.arm.com [10.1.196.55])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8F88A3F720;
	Fri, 20 Dec 2024 05:58:59 -0800 (PST)
Date: Fri, 20 Dec 2024 13:58:57 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Elliot Berman <quic_eberman@quicinc.com>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
Subject: Re: [PATCH 0/3] Allow specifying an S2RAM sleep on
 pre-SYSTEM_SUSPEND PSCI impls
Message-ID: <Z2V4IblZNgnS4T2Z@bogus>
References: <20241028-topic-cpu_suspend_s2ram-v1-0-9fdd9a04b75c@oss.qualcomm.com>
 <20241113165329590-0800.eberman@hu-eberman-lv.qualcomm.com>
 <e4509104-c809-4d45-bdbb-a2d754a816db@oss.qualcomm.com>
 <Z2VXgkJ4x5TJTKJ_@bogus>
 <765bb1c8-31de-4aec-b8ef-f141a3e25c56@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <765bb1c8-31de-4aec-b8ef-f141a3e25c56@oss.qualcomm.com>

On Fri, Dec 20, 2024 at 01:42:04PM +0100, Konrad Dybcio wrote:
> On 20.12.2024 12:39 PM, Sudeep Holla wrote:
> > On Thu, Dec 19, 2024 at 08:26:51PM +0100, Konrad Dybcio wrote:
> >> On 14.11.2024 2:10 AM, Elliot Berman wrote:
> >>
> >>> I'm not sure why you'd like to support s2ram. Is it *only* that you'd
> >>> like to be able to set pm_set_supend/resume_via_firmware()? I hope this
> >>> doesn't sound silly: what if you register a platform_s2idle_ops for the
> >>> relevant SoCs which calls pm_set_suspend/resume_via_firwmare()?
> >>
> >> S2RAM is what you get after entering a certain state, but currently
> >> it's presented as just another (s2idle) idle state.
> >>
> >
> > Just to be clear, I assume you mean CPU_SUSPEND idle state. There is
> > no special or different s2idle idle states IIUC.
>
> Yeah, right.
>
> >> That means some hardware that may need to be reinitialized, isn't as
> >> Linux has no clue it might have lost power.
> >>
> >
> > Interesting, so this means firmware doesn't automatically save and restore
> > states yet exposes it as CPU_SUSPEND idle state.
>
> Reading the spec, I'm pretty sure PSCI calls should only mess with the
> power state of the cores, core-adjacent peripherals and GIC.
>
> Reading section 5.20.1 (SYSTEM_SUSPEND / Intended use) I think it says
> mostly what I'm trying to convey:
>
>
> "In a typical implementation, the semantics are equivalent to a
> CPU_SUSPEND to the deepest low-power state. However, it is possible that
> an implementation might reserve a deeper state for SYSTEM_SUSPEND than
> those used with CPU_SUSPEND."
>

Yes these text help to understand the interface easily. If they were same,
do you think we would have defined 2 different interfaces.

--
Regards,
Sudeep

