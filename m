Return-Path: <devicetree+bounces-277002-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QPtvGF5eumnFUgIAu9opvQ
	(envelope-from <devicetree+bounces-277002-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 09:12:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CD9F02B79AA
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 09:12:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9D72F310261A
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 08:05:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50FDA3783C9;
	Wed, 18 Mar 2026 08:04:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CCeIFrcI"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF0E1D618A;
	Wed, 18 Mar 2026 08:04:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773821090; cv=none; b=CmLmyEZiRvyL2K/7RkutQ3dheeL4WunnFEc+Jma8hPtUj3GdZnpJcQ5dbFJrTyeIVXpUkV3KP8bzd/wlojrZJJZ4HIECJtN0HwQfrEGGrHdGZEFXch/hfTI9DyIVUKbBSw0JAXooQd93fPDH8pgAv6ItR+hHavPNc3y/3Zun3PQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773821090; c=relaxed/simple;
	bh=BNZJqxIClI2fBSgwO/46dhcMM92h1ibxW4eJAJnSv/8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mIt0HFLhzI6mxaeiQ7OVFFjIyODrYxH1BoLQwZ3tKOzKXf3kf7ZTkmtL4aFAg3APVaOVX+87vxDvplnfZ1jIgjMyy6GQ6dBBckUM/rFRMltGpQUgKlkKIKdBTJdmoC3pa3qXNtUEvvNPGSrLaUC95K1THVCNANCvrKIzcgBOfeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CCeIFrcI; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 38D28C19421;
	Wed, 18 Mar 2026 08:04:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773821089;
	bh=BNZJqxIClI2fBSgwO/46dhcMM92h1ibxW4eJAJnSv/8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CCeIFrcIMvvnfLj/xzXoG6ODnyEEEx7oJAGP5mPwBs/f4rQ1qJyDkUi9u4A4htdgn
	 I68ejqvMuYjKtH+UfY2/LOJx1D3Ik9GvSjoYY2pOzJFEcZhFGqR+NdczRbMIez12bc
	 /kskYnARtN0AiwtWP4hRaB0lEA0FARdMo88ouEKdtgBccapPyPvZfcFztCe4PFdZ9f
	 yBrvNDh3ikBIuWPf6gHbFYbgXaLe9zeWrGaUmTwlss4U6TXEkjPzL6YWclNkVwV6Md
	 yil6ZCmTkPp2cG3Ru6YTn14W0obcU320pxBkUHPV9nsC0Fchuc0HxfBn/mymuoqeBX
	 6Z/WcIxA2ZmDg==
Date: Wed, 18 Mar 2026 09:04:47 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Andre Przywara <andre.przywara@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Sudeep Holla <sudeep.holla@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Salman Nabi <salman.nabi@arm.com>, 
	Vedashree Vidwans <vvidwans@nvidia.com>, Trilok Soni <trilokkumar.soni@oss.qualcomm.com>, 
	Nirmoy Das <nirmoyd@nvidia.com>, vsethi@nvidia.com, vwadekar@nvidia.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/8] dt-bindings: arm: Add Live Firmware Activation
 binding
Message-ID: <20260318-inventive-tortoise-of-romance-c7ceba@quoll>
References: <20260317103336.1273582-1-andre.przywara@arm.com>
 <20260317103336.1273582-2-andre.przywara@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260317103336.1273582-2-andre.przywara@arm.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277002-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[arm.com:email,arm.com:url,bootlin.com:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,devicetree-specification.readthedocs.io:url,devicetree.org:url]
X-Rspamd-Queue-Id: CD9F02B79AA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 17, 2026 at 11:33:27AM +0100, Andre Przywara wrote:
> The Arm Live Firmware Activation spec [1] describes updating firmware

A nit, subject: drop second/last, redundant "binding". The
"dt-bindings" prefix is already stating that these are bindings.
See also:
https://elixir.bootlin.com/linux/v6.17-rc3/source/Documentation/devicetree/bindings/submitting-patches.rst#L18

> images during runtime, without requiring a reboot. Update images might
> be deployed out-of-band, for instance via a BMC, in this case the OS
> needs to be notified about the availability of a new image.
> 
> This binding describes an interrupt that could be triggered by the

Describe hardware/firmware, not the binding.

> platform, to notify about any changes.
> 
> [1] https://developer.arm.com/documentation/den0147/latest/
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  .../devicetree/bindings/arm/arm,lfa.yaml      | 45 +++++++++++++++++++
>  1 file changed, 45 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/arm/arm,lfa.yaml
> 
> diff --git a/Documentation/devicetree/bindings/arm/arm,lfa.yaml b/Documentation/devicetree/bindings/arm/arm,lfa.yaml
> new file mode 100644
> index 000000000000..92f0564fd672
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/arm,lfa.yaml
> @@ -0,0 +1,45 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/arm/arm,lfa.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Arm Live Firmware Activation (LFA)
> +
> +maintainers:
> +  - Andre Przywara <andre.przywara@arm.com>
> +  - Sudeep Holla <sudeep.holla@arm.com>
> +
> +description:
> +  The Arm Live Firmware Activation (LFA) specification [1] describes a
> +  firmware interface to activate an updated firmware at runtime, without
> +  requiring a reboot. Updates might be supplied out-of-band, for instance
> +  via a BMC, in which case the platform needs to notify an OS about pending
> +  image updates.
> +  [1] https://developer.arm.com/documentation/den0147/latest/
> +
> +properties:
> +  compatible:
> +    const: arm,lfa

Does specification has a version? Does it support version discovery?

> +
> +  interrupts:
> +    maxItems: 1
> +    description: notification interrupt for changed firmware image status
> +
> +required:
> +  - compatible
> +  - interrupts
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +    firmware {
> +        arm-lfa {

Node names should be generic. See also an explanation and list of
examples (not exhaustive) in DT specification:
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation
If you cannot find a name matching your device, please check in kernel
sources for similar cases or you can grow the spec (via pull request to
DT spec repo).

arm-lfa is specific, so this could be as "fota" or "firmware-update"

Best regards,
Krzysztof


