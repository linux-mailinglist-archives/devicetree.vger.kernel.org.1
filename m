Return-Path: <devicetree+bounces-55942-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 10DFE8971A8
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 15:53:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7CA6DB29E80
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 13:53:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B168148820;
	Wed,  3 Apr 2024 13:53:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBEEE146D65
	for <devicetree@vger.kernel.org>; Wed,  3 Apr 2024 13:53:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712152390; cv=none; b=C12zPeul7suYwnrUy0qyROZXxn7LnZ/hf0U770S7P8HsyTjN88yLldnlJGGV2geZ0w+bZQriWkMACK9QdYZRYv0icBIO3hohQ1WyBv/h5SoJppHy3eVo8/lMa3ujRsDuq9ZpzbqEFVSWB+IhCQnXAOvt0XXzHFsnAI2JI4DluIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712152390; c=relaxed/simple;
	bh=lZv6wjz7/coU+NiUUaA4YglOy0iajXrzLEopGCZwqi8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=S0EO5S8uybSdhjr1JdFGgJ9ot5NhnvTsCaDWyGwCGQquo0Ncj09A9sOxp18n9Qmq6HV6PlblmAvpSYLeIWr4VrAo2vPZTYzxx6asNKXHfqbmRvQ4UaZlsH7GrS8QqxHH81IJ49Q2fAKfzKj3PtS9Fh3I808/Wpxj7ZQJ/kdiBMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 06A921007;
	Wed,  3 Apr 2024 06:53:38 -0700 (PDT)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 17F233F7B4;
	Wed,  3 Apr 2024 06:53:05 -0700 (PDT)
Date: Wed, 3 Apr 2024 14:53:03 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Cc: Cristian Marussi <cristian.marussi@arm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: firmware: arm,scmi: Update examples for
 protocol@13
Message-ID: <Zg1fP57mixbKTjJf@bogus>
References: <20240403111106.1110940-1-ulf.hansson@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240403111106.1110940-1-ulf.hansson@linaro.org>

On Wed, Apr 03, 2024 at 01:11:06PM +0200, Ulf Hansson wrote:
> Recently we extended the binding for protocol@13 to allow it to be modelled
> as a generic performance domain. In a way to promote using the new binding,
> let's update the examples.
>

Does it make sense to keep one DVFS example with #clock-cells until we
mark it as deprecated ? Otherwise it may be confusing as the binding still
lists. Or leave some comment in the example or something, I am open for
suggestions.

Other than that,

Acked-by: Sudeep Holla <sudeep.holla@arm.com>

-- 
Regards,
Sudeep

