Return-Path: <devicetree+bounces-175170-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D7CC0AAFFF1
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 18:09:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 390061C0059C
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 16:09:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17B8727B4E2;
	Thu,  8 May 2025 16:09:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A603827B4E1
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 16:09:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746720567; cv=none; b=hQGE6KxKsGSlSdmjnShBJmoF48VFdBFo6vAWCGQuuB/PWrdQwqsecf/DKQSdc3P2lN0RrFhdQG+FIXS5PUu32I2KgDrir0r/Z+6EcvWT9rBTVCbVXH8CL2g7IvLASWCocCQitYIBrp/aMypqk6ihyt73Mk2umem7ElAysv7W3ww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746720567; c=relaxed/simple;
	bh=lWMDbK2yLOmXOA5+Q0+lTpEaZQta2MLZBK8bUw8tcCg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rj2bXi2aHzdnidRbxVP9SAqkCzEwn3pzUaRjKnGFm3+/R/rpsXUnoebyjmRUxPj/H70NTKu0k9/lE6VF6uS9qZIsr2wJUDZdIlFqMA/9D68xVyNJdCeBC0/bLk1yZUxwfaQFrw+jSaZmnJ0f681CGxQJdOIh0h9HAsZS2NaYr2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CCC3D1E2F;
	Thu,  8 May 2025 09:09:14 -0700 (PDT)
Received: from localhost (e132581.arm.com [10.1.196.87])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E5A973F5A1;
	Thu,  8 May 2025 09:09:24 -0700 (PDT)
Date: Thu, 8 May 2025 17:09:20 +0100
From: Leo Yan <leo.yan@arm.com>
To: Sudeep Holla <sudeep.holla@arm.com>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Liviu Dudau <liviu.dudau@arm.com>
Subject: Re: [PATCH 1/3] arm64: dts: fvp: Add CPU idle states for Rev C model
Message-ID: <20250508160920.GF177796@e132581.arm.com>
References: <20250508103225.354925-1-sudeep.holla@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250508103225.354925-1-sudeep.holla@arm.com>

Hi Sudeep,

On Thu, May 08, 2025 at 11:32:23AM +0100, Sudeep Holla wrote:
> Add CPU idle state definitions to the FVP Rev C device tree to enable
> support for CPU lower power modes. This allows the system to properly
> enter low power states during idle. It is disabled by default as it is
> know to impact performance on the models.
> 
> Note that the power_state parameter(arm,psci-suspend-param) doesn't use
> the Extended StateID format for compatibility reasons on FVP.
> 
> Tested on the FVP Rev C model with PSCI support enabled firmware.

I verified this series and confirmed the CPUIdle states work well (I
manually removed the status = "disabled" in idle state nodes).

Tested-by: Leo Yan <leo.yan@arm.com>

Just a nitpick, we should firstly add the timer node and then add the
idle state nodes, as CPUIdle is dependent on broadcast timer.

As the idle states are disabled by default, current patch ordering
would be fine as well.

Thanks,
Leo

