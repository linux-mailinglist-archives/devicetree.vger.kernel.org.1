Return-Path: <devicetree+bounces-2608-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D2FAF7ABADE
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 23:06:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 8D63B2815BA
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 21:06:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46E1347363;
	Fri, 22 Sep 2023 21:06:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36A59323E
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 21:06:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C0E40C433C8;
	Fri, 22 Sep 2023 21:06:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695416793;
	bh=oeSNGT5vCeLS0tK5r0KuFqwwS5mmgSj+Xv6+izXXJKY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eLt6MevgEBW3Z4+5Z8SmfiOWQovihSSaExBMeCLCIYBRWnlFSXQ5ShsVRjWDnK2hg
	 KuXc1TrMJAuofUqH7yW/NtIsN1z7C1m9SThRO3JHYN+9QBoITy5V+wFxvYLRsI2bDy
	 A8E+Lc4xe99m0HAYGVfrIvB71Ug+EiTj5j75YSX4RKFvU5p4iqnADSm6+2Sgek6tf3
	 e0ibQy0x4lUEuh7S7pIqA9jPgmwXL37y9cMSSpwkJHugxoP+MXQLsiabF87rsn0Lgk
	 z9qhVH/tM7x3hTcocBZso/tSXc53NLZ3/x5nR7iEcsOw4E0NTLpIHLEa1G7bZVgHmy
	 m0HonfAwQBSKQ==
Received: (nullmailer pid 3599452 invoked by uid 1000);
	Fri, 22 Sep 2023 21:06:31 -0000
Date: Fri, 22 Sep 2023 16:06:31 -0500
From: Rob Herring <robh@kernel.org>
To: Jon Hunter <jonathanh@nvidia.com>
Cc: Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>, linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, Ninad Malwade <nmalwade@nvidia.com>
Subject: Re: [PATCH V3 2/4] dt-bindings: hwmon: ina3221: Add
 ti,summation-disable
Message-ID: <20230922210631.GA3569506-robh@kernel.org>
References: <20230921130818.21247-1-jonathanh@nvidia.com>
 <20230921130818.21247-3-jonathanh@nvidia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230921130818.21247-3-jonathanh@nvidia.com>

On Thu, Sep 21, 2023 at 02:08:16PM +0100, Jon Hunter wrote:
> The INA3221 has a critical alert pin that can be controlled by the
> summation control function. This function adds the single
> shunt-voltage conversions for the desired channels in order to
> compare the combined sum to the programmed limit. The Shunt-Voltage
> Sum Limit register contains the programmed value that is compared
> to the value in the Shunt-Voltage Sum register in order to
> determine if the total summed limit is exceeded. If the
> shunt-voltage sum limit value is exceeded, the critical alert pin
> pulls low.
> 
> For the summation limit to have a meaningful value, it is necessary
> to use the same shunt-resistor value on all included channels. Add a new
> vendor specific property, 'ti,summation-disable', to allow specific
> channels to be excluded from the summation control function if the shunt
> resistor is different to other channels or the channel should not be
> considered for triggering the critical alert pin.

You are adding this feature to the driver, but requiring a new property 
to disable it. So what happens with an existing user (old DT) and a 
kernel with the new feature?

Rob

