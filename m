Return-Path: <devicetree+bounces-254921-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4942BD1DB68
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 10:51:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 73A6B300349E
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 09:51:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5121036B042;
	Wed, 14 Jan 2026 09:51:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A06761A08BC;
	Wed, 14 Jan 2026 09:50:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768384261; cv=none; b=YfVNvRWNMUZAhgL14AjYRgwZv9Z3aLfm/5iGJFpip0Q3A8EVEvAyU19547R96Qwxrus4sUKNeRMMVRg1gsAv8NDJ13weIioxRXnokG2+izihG+ofMdhf+L2bBo0fs9XJqr0eyJMBfr6CGeEN16sskKwo1IIgdQf6gZ8iEbNsN0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768384261; c=relaxed/simple;
	bh=8bz8v8J/GAtDFAfdXJFHi4n1w5FkPw50QP793Sj/mpE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=K3ozAiWneFesBi6yZ1mOJ3TtnpedR/aQQ0oRJ7imN3G5qJosuVAGqItM+Mc1yxLx8YcbBVdO6o83JZgrXN4b9IPFYgCwNi1bPuvi1rRBaNuASsr2AjlbQ4dk+br0bjE1RrkNUIXART3XSzFYGQCcJQSIJ4Z42wx7RS8gA7/Tq/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=foss.arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D8EE9339;
	Wed, 14 Jan 2026 01:50:51 -0800 (PST)
Received: from bogus (e133711.arm.com [10.1.197.51])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 56CEE3F694;
	Wed, 14 Jan 2026 01:50:57 -0800 (PST)
Date: Wed, 14 Jan 2026 09:50:55 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Saravana Kannan <saravanak@kernel.org>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Andy Gross <andy.gross@linaro.org>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] of: platform: Use default match table for /firmware
Message-ID: <aWdm_xNPEhO_UvzV@bogus>
References: <20260114015158.692170-2-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260114015158.692170-2-robh@kernel.org>

On Tue, Jan 13, 2026 at 07:51:58PM -0600, Rob Herring (Arm) wrote:
> Calling of_platform_populate() without a match table will only populate
> the immediate child nodes under /firmware. This is usually fine, but in
> the case of something like a "simple-mfd" node such as
> "raspberrypi,bcm2835-firmware", those child nodes will not be populated.
> And subsequent calls won't work either because the /firmware node is
> marked as processed already.
> 
> Switch the call to of_platform_default_populate() to solve this problem.
> It should be a nop for existing cases.
>

Thanks, had not thought of child nodes for sure at that time.

Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>

-- 
Regards,
Sudeep

