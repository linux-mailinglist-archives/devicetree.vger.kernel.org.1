Return-Path: <devicetree+bounces-176391-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C200AB3CFD
	for <lists+devicetree@lfdr.de>; Mon, 12 May 2025 18:08:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7F10017E1C9
	for <lists+devicetree@lfdr.de>; Mon, 12 May 2025 16:08:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E23D248F53;
	Mon, 12 May 2025 16:08:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A0152472BD
	for <devicetree@vger.kernel.org>; Mon, 12 May 2025 16:08:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747066088; cv=none; b=PNE2LwNBTmAnvWe2CZKTzz9QW+p5CsmRTvxgE0rn2kbJDK54KIBSHPk8lY86kF3Dtx1xpm1FbxCL9vTS0YlyG2vHplOa/t3Tn5iQi46qfrNoIxh3ILr3l6bqakwHUKWAkl5xPTkP+EZTWDmMVdRQ4G0LAb1XbEHiVzxpKrjENtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747066088; c=relaxed/simple;
	bh=/UwMQqFze29COueMVQ3xBP+qv/ndzMDhsAqORKexDEc=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=pp1oMRRZcjkRI2gRZ+X7HX9QisLngbjr2/LbgS9FoBkoFIaWBwYA2Ek1vXOxdgwHd2b2RX4KWR/TUGp/8DHIkMCK9z2EzPRzP/tz9HA9JTHg0wCTFAYbe/VgSgQv93N6a5A3KIAW7IMsOacUMPJkNQf+eJtr/QBTKbA+7cX02LM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B2D4114BF;
	Mon, 12 May 2025 09:07:54 -0700 (PDT)
Received: from [10.57.45.206] (unknown [10.57.45.206])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id C3B543F63F;
	Mon, 12 May 2025 09:08:04 -0700 (PDT)
Message-ID: <77f7711d-f8e1-4c0c-af29-cdf4f4726683@arm.com>
Date: Mon, 12 May 2025 17:08:03 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: fvp: Add ETE and TRBE nodes for Rev C
 model
Content-Language: en-GB
To: Leo Yan <leo.yan@arm.com>, Liviu Dudau <liviu.dudau@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>, Rob Herring <robh@kernel.org>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
References: <20250512151149.13111-1-leo.yan@arm.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
In-Reply-To: <20250512151149.13111-1-leo.yan@arm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/05/2025 16:11, Leo Yan wrote:
> The FVP Rev C model includes CoreSight ETE and TRBE support.  These
> features can be enabled by specifying parameters when launching the
> model:
> 
>    -C cluster0.has_ete: 1
>    -C cluster1.has_ete: 1
>    -C cluster0.has_trbe: 1
>    -C cluster1.has_trbe: 1
> 
> This change adds device tree bindings for the ETE and TRBE nodes.  They
> are disabled by default to prevent kernel warnings from failed driver
> probes, as the model does not enable the features unless explicitly
> specified.
> 
> Signed-off-by: Leo Yan <leo.yan@arm.com>

Acked-by: Suzuki K Poulose <suzuki.poulose@arm.com>

