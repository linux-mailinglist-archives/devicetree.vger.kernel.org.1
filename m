Return-Path: <devicetree+bounces-250956-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 82141CED375
	for <lists+devicetree@lfdr.de>; Thu, 01 Jan 2026 18:15:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 859123004C94
	for <lists+devicetree@lfdr.de>; Thu,  1 Jan 2026 17:15:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4FE01A9FA7;
	Thu,  1 Jan 2026 17:15:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E1CF212554;
	Thu,  1 Jan 2026 17:15:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767287720; cv=none; b=Oa1kku1LKXtkPX4Z4Xfbf0XjV/7KJGo2RRWUi9oy4RSuHyrjVZkPUxuSNP/urV9lBLP58/qicYn6eaeKLaw/krEz/eahlyea7QqKu7CFqUxnwTMfWgwnqCmBrRBuBz1ZeGESixIscYpwCWCi5kuSPBYgb3+eUFnxZBEf/I8oEgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767287720; c=relaxed/simple;
	bh=gY4j4bL/36z4p012EhfyNfYK38XMSrm/PWyy/QA5w3I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=miSBjwHoSyP8MfEdpnYZPvKfBfFal5v64BH9eK+ovuK7RQVe23VwPiQhW20SF3iXyss7vpVblyemuBFZ3nsd7fIUDViXoX3MVx5bg+G23l1EoLTybfCQQaBQfspbkIJuXDNJmVAIJqOi4QJth49iecPri4OEG4nMTPbMRRQaCt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=foss.arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EC9D8497;
	Thu,  1 Jan 2026 09:15:03 -0800 (PST)
Received: from bogus (unknown [10.57.45.151])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5E8063F694;
	Thu,  1 Jan 2026 09:15:08 -0800 (PST)
Date: Thu, 1 Jan 2026 17:15:05 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Linus Walleij <linusw@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Liviu Dudau <liviu.dudau@arm.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: arm: Use lowercase hex
Message-ID: <aVarmf5rlHWzNZ0Q@bogus>
References: <20251223152457.155392-3-krzysztof.kozlowski@oss.qualcomm.com>
 <20251223152457.155392-4-krzysztof.kozlowski@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251223152457.155392-4-krzysztof.kozlowski@oss.qualcomm.com>

On Tue, Dec 23, 2025 at 04:24:59PM +0100, Krzysztof Kozlowski wrote:
> The DTS code coding style expects lowercase hex for values and unit
> addresses.
> 

s/arm64/ARM in $subject would be ideal.

Anyways,

Acked-by: Sudeep Holla <sudeep.holla@arm.com>

Linus,

I assume you will send it to arm-soc. Please shout if you want be to act
on this.

-- 
Regards,
Sudeep

