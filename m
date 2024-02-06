Return-Path: <devicetree+bounces-39032-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C3A8384B33A
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 12:15:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5684FB24FF3
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 11:15:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A348F130AD0;
	Tue,  6 Feb 2024 11:12:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37BBA12D148
	for <devicetree@vger.kernel.org>; Tue,  6 Feb 2024 11:12:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707217953; cv=none; b=OHDTop2KiDOcC4OBDM1PyHxZlQmAPDnZdHjkUEI2FPOOVjxFjZC8JbAUUS6XYSL6UhHrh2h+Wh2F+SRAOioTwjBbQh3xF6xirKnn2NS9HO51CteqY864zrBzzQTjCJtOv4Pm/FjfQm1BlhUcONnFuIT1l3o/7OgsoeQPuyciaxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707217953; c=relaxed/simple;
	bh=ZVUhNH60ajM8Wdo+7od/JX1Prx8ALe3SRy4YuoaryE0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kvK7YwS6xKDGHQT21z/9xS5nQb6ppup5+YOWQ1arGLo6DqWPY14MKg8YzwpkrN2Sc9VuYFFHn/1xcgVY6usSHsSrP84pl5AD8W6TNbbw35AixvvbjHmvG6Hfjyrk5QdmvNGXv8qcEO0/CNdjsP3Ry93Qs0FA6RO8ebba9z7v9H8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D5DCF1FB;
	Tue,  6 Feb 2024 03:13:12 -0800 (PST)
Received: from [10.57.10.153] (unknown [10.57.10.153])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 05B493F762;
	Tue,  6 Feb 2024 03:12:28 -0800 (PST)
Message-ID: <04d94b55-0991-40c1-b3a6-96a7e2a4020e@arm.com>
Date: Tue, 6 Feb 2024 11:12:27 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/5] perf/arm_cspmu: Add devicetree support
Content-Language: en-GB
To: Robin Murphy <robin.murphy@arm.com>, will@kernel.org
Cc: mark.rutland@arm.com, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, ilkka@os.amperecomputing.com,
 bwicaksono@nvidia.com, YWan@nvidia.com, rwiley@nvidia.com
References: <cover.1706718007.git.robin.murphy@arm.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
In-Reply-To: <cover.1706718007.git.robin.murphy@arm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 06/02/2024 10:27, Robin Murphy wrote:
> v2: https://lore.kernel.org/linux-arm-kernel/cover.1702571292.git.robin.murphy@arm.com/
> 
> Hi all,
> 
> Third time lucky... here's a hopefully-final spin to address the
> functional issues Besar pointed out, and give a little final polish to
> the binding (although I stand firm on teh point of a trivial example
> not being valuable :))
> 
> Cheers,
> Robin.
> 
> 
> Robin Murphy (5):
>    perf/arm_cspmu: Simplify initialisation
>    perf/arm_cspmu: Simplify attribute groups
>    perf/arm_cspmu: Simplify counter reset
>    dt-bindings/perf: Add Arm CoreSight PMU
>    perf/arm_cspmu: Add devicetree support
> 
>   .../bindings/perf/arm,coresight-pmu.yaml      |  39 +++++
>   drivers/perf/arm_cspmu/arm_cspmu.c            | 153 ++++++++++--------
>   drivers/perf/arm_cspmu/arm_cspmu.h            |   1 +
>   drivers/perf/arm_cspmu/nvidia_cspmu.c         |   6 -
>   4 files changed, 126 insertions(+), 73 deletions(-)
>   create mode 100644 Documentation/devicetree/bindings/perf/arm,coresight-pmu.yaml
> 

For the series:

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

