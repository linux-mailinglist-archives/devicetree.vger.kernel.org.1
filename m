Return-Path: <devicetree+bounces-133048-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CC18D9F917D
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 12:39:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 374FF163B92
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 11:39:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53B4A1C07D8;
	Fri, 20 Dec 2024 11:39:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F70A182B4;
	Fri, 20 Dec 2024 11:39:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734694793; cv=none; b=TSc0snIP+mQ7gH83/x3jazQdUVCWGs1SN03NPW/2w4IqN3lCfKbzHRzc06AyP7RP7YwrGAihgMzCnrsJ40eVFNCFbO+NGmNshHzMzJj3RtNIyr8hpc+rGGjllhwMcmtd/qiXe1ubtmrk5t3C09XGY+jV2MRizxscf60A3XU7fuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734694793; c=relaxed/simple;
	bh=rbD9MDSfwH2QSRLOsRxhlY+2MRwY+0j6TrtDMpkD2gg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=V5hlGIBkkw4RTffPlijREWoriVAM+Xze0IoqUB6KNkbYxxEovj7ET5mg894Je8LTt8CpkhgVZOq1F5B484AazYNJHFG8wIb67ym7DzYB61IjPK03ZsmkIg3SoZHA1aglxlG7tjnLrpTmmudihPPV6QUM5icqZ0l7I2GoZbmayK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C670F1480;
	Fri, 20 Dec 2024 03:40:18 -0800 (PST)
Received: from bogus (e133711.arm.com [10.1.196.55])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AEE4F3F58B;
	Fri, 20 Dec 2024 03:39:48 -0800 (PST)
Date: Fri, 20 Dec 2024 11:39:46 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Elliot Berman <quic_eberman@quicinc.com>,
	Sudeep Holla <sudeep.holla@arm.com>,
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
Message-ID: <Z2VXgkJ4x5TJTKJ_@bogus>
References: <20241028-topic-cpu_suspend_s2ram-v1-0-9fdd9a04b75c@oss.qualcomm.com>
 <20241113165329590-0800.eberman@hu-eberman-lv.qualcomm.com>
 <e4509104-c809-4d45-bdbb-a2d754a816db@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e4509104-c809-4d45-bdbb-a2d754a816db@oss.qualcomm.com>

On Thu, Dec 19, 2024 at 08:26:51PM +0100, Konrad Dybcio wrote:
> On 14.11.2024 2:10 AM, Elliot Berman wrote:
>
> > I'm not sure why you'd like to support s2ram. Is it *only* that you'd
> > like to be able to set pm_set_supend/resume_via_firmware()? I hope this
> > doesn't sound silly: what if you register a platform_s2idle_ops for the
> > relevant SoCs which calls pm_set_suspend/resume_via_firwmare()?
>
> S2RAM is what you get after entering a certain state, but currently
> it's presented as just another (s2idle) idle state.
>

Just to be clear, I assume you mean CPU_SUSPEND idle state. There is
no special or different s2idle idle states IIUC.

> That means some hardware that may need to be reinitialized, isn't as
> Linux has no clue it might have lost power.
>

Interesting, so this means firmware doesn't automatically save and restore
states yet exposes it as CPU_SUSPEND idle state.

> One of such cases is the PCIe block, with storage drivers specifically
> looking for pm_suspend_via_firmware, but that's unfortunately not the
> whole list.
>

Well I can now imagine and I understand what's wrong here. An idle state
is exposed to OS with an expectation that OS saves and restores certain
state. Unless you tie it some other power domains that theses devices
share, it is hard for OS to know the state is being lost and it needs
to save and restore them. It is simple wrong to assume that OS needs
to take care of them even though the power domain hierarchy doesn't
represent this dependency to enter such a state. cpuidle-psci-domain.c
takes care of this IIUC. Ulf can provide details if you are interested.

--
Regards,
Sudeep

