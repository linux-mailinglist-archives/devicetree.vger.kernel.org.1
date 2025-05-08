Return-Path: <devicetree+bounces-175172-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C512AAFFFB
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 18:13:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1F63750464F
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 16:13:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CF9927CCE7;
	Thu,  8 May 2025 16:13:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1263A27CCDA
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 16:13:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746720788; cv=none; b=kPpW+Xa5xlCrMZrP6jvxugbvF6+tDG/A9fE7pnPbdXtbs5TXNJ27FbOJYFs28Q7iR60t/RNLOSXp6fs9rQ6C6KviGx+Dwp9PQQeZ3duju48t3TOMfpfeCoD6eYNW7qXyKN28TSvMzz7eJizpUvnJJMM/0z4rwrx8vzfVMKNSBaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746720788; c=relaxed/simple;
	bh=QFSrTqArhin+X39bawaypD5Wpyv2uzvz7pXq6Vd2BDE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dNIDG1RLWinLKOFPPO8yNAbo9dDHzU0uKztlWsKGxLXCZKxJPA3LEzIZH2fpKlAVQ836Il6Fm0B4ISoBlmnLOifKR9dujRnq3PMoFeajPLqUSfrYu+eYiaVz9aZMBtQ9wdv0FWoZeGV1sChSlUOGm7QaSM1Hba47sXD+hfs0+GE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D65091E2F;
	Thu,  8 May 2025 09:12:54 -0700 (PDT)
Received: from bogus (e133711.arm.com [10.1.196.55])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 382533F5A1;
	Thu,  8 May 2025 09:13:04 -0700 (PDT)
Date: Thu, 8 May 2025 17:13:01 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Leo Yan <leo.yan@arm.com>
Cc: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Liviu Dudau <liviu.dudau@arm.com>
Subject: Re: [PATCH 1/3] arm64: dts: fvp: Add CPU idle states for Rev C model
Message-ID: <20250508-gregarious-marvellous-axolotl-b3fbe7@sudeepholla>
References: <20250508103225.354925-1-sudeep.holla@arm.com>
 <20250508160920.GF177796@e132581.arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250508160920.GF177796@e132581.arm.com>

On Thu, May 08, 2025 at 05:09:20PM +0100, Leo Yan wrote:
> Hi Sudeep,
> 
> On Thu, May 08, 2025 at 11:32:23AM +0100, Sudeep Holla wrote:
> > Add CPU idle state definitions to the FVP Rev C device tree to enable
> > support for CPU lower power modes. This allows the system to properly
> > enter low power states during idle. It is disabled by default as it is
> > know to impact performance on the models.
> > 
> > Note that the power_state parameter(arm,psci-suspend-param) doesn't use
> > the Extended StateID format for compatibility reasons on FVP.
> > 
> > Tested on the FVP Rev C model with PSCI support enabled firmware.
> 
> I verified this series and confirmed the CPUIdle states work well (I
> manually removed the status = "disabled" in idle state nodes).
> 
> Tested-by: Leo Yan <leo.yan@arm.com>
> 
> Just a nitpick, we should firstly add the timer node and then add the
> idle state nodes, as CPUIdle is dependent on broadcast timer.
> 
> As the idle states are disabled by default, current patch ordering
> would be fine as well.
>

Good point, I will reverse the order when applying. Thanks for the testing.

-- 
Regards,
Sudeep

