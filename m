Return-Path: <devicetree+bounces-116469-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E12A9B300D
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 13:23:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 027402827C4
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 12:23:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0EFD1D7E3E;
	Mon, 28 Oct 2024 12:23:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A3DD1922DD;
	Mon, 28 Oct 2024 12:23:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730118182; cv=none; b=RygrKmL+gtv2ouEhPki4VKbwvsmwbhhznvSPY/qkHNE85fxNg1NfXAV6+7rmrvYaGY3poBMugfDfcsQagzxlUUsLItau9dbmyhYfLil+byzZLuUvJVy73lPmaDCRt0+MHnd0JakT/roxmKdt1xYevIt75B398x8ga4pWUu9FkXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730118182; c=relaxed/simple;
	bh=aTCttCQyWU7h26tjaP5swvu62Isc7fQ5Wy+v6hYZyHw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=U7dJ6obr/QUf4byM7D7DMMdyyEKnlx9/u6A6M7nw5ZDGZwr8qIfBaMtyc1BtN2T8s/VHmzYXPPS+bAFyBB+lLqvmnsKnS/rHlbQATxv7bFFuve26A7L4ZWzdmRB/2zHPGIjlaUl4iic/7MUZ/4X/H+Odpu/8rv/TJtfC/p806C4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BB68213D5;
	Mon, 28 Oct 2024 05:23:29 -0700 (PDT)
Received: from bogus (e133711.arm.com [10.1.196.55])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5FA963F73B;
	Mon, 28 Oct 2024 05:22:57 -0700 (PDT)
Date: Mon, 28 Oct 2024 12:22:54 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Cristian Marussi <cristian.marussi@arm.com>
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	arm-scmi@vger.kernel.org, james.quinlan@broadcom.com,
	f.fainelli@gmail.com, vincent.guittot@linaro.org,
	etienne.carriere@st.com, peng.fan@oss.nxp.com, michal.simek@amd.com,
	quic_sibis@quicinc.com, quic_nkela@quicinc.com,
	dan.carpenter@linaro.org, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	Sudeep Holla <sudeep.holla@arm.com>, Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH v3 6/7] dt-bindings: firmware: arm,scmi: Add missing
 vendor string
Message-ID: <Zx-CHlAb61FWdzkA@bogus>
References: <20241028120151.1301177-1-cristian.marussi@arm.com>
 <20241028120151.1301177-7-cristian.marussi@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241028120151.1301177-7-cristian.marussi@arm.com>

On Mon, Oct 28, 2024 at 12:01:50PM +0000, Cristian Marussi wrote:
> Recently introduced max-rx-timeout-ms optionao property is missing a
> vendor prefix.
>
> Add the vendor prefix from the original committer.
>

It should be "arm," not "nxp," just because NXP happens to introduce that.
It just highlight that the property is X vendor specific and here it is
associated with SCMI and specifically Arm SCMI, so "arm,". If for some
reason nxp or any other vendor overrides this definition and need to add
additional property then they can add their own vendor name into that
property.

If there are no objections, I can fix it up when applying.

> Fixes: 3a5e6ab06eab ("dt-bindings: firmware: arm,scmi: Introduce property max-rx-timeout-ms")
> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
> ---
> Note that this fixes a commit that has been merged in v6.12-rc1...so it
> should not present any backward compatibility issue.
> ---
> Cc: Rob Herring <robh@kernel.org>
> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: devicetree@vger.kernel.org
> Cc: Peng Fan <peng.fan@nxp.com>
> ---
>  Documentation/devicetree/bindings/firmware/arm,scmi.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/firmware/arm,scmi.yaml b/Documentation/devicetree/bindings/firmware/arm,scmi.yaml
> index 9d6e1147f9e9..e331da4d606b 100644
> --- a/Documentation/devicetree/bindings/firmware/arm,scmi.yaml
> +++ b/Documentation/devicetree/bindings/firmware/arm,scmi.yaml
> @@ -124,7 +124,7 @@ properties:
>        atomic mode of operation, even if requested.
>      default: 0
>  
> -  max-rx-timeout-ms:
> +  nxp,max-rx-timeout-ms:
>      description:
>        An optional time value, expressed in milliseconds, representing the
>        transport maximum timeout value for the receive channel. The value should
> -- 
> 2.47.0
> 

--
Regards,
Sudeep

