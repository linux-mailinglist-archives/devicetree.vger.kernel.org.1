Return-Path: <devicetree+bounces-297695-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sECRLXzvBWpWdgIAu9opvQ
	(envelope-from <devicetree+bounces-297695-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 17:51:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BBDC95444AA
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 17:51:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 79A9C3006005
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 15:47:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 941671DEFE8;
	Thu, 14 May 2026 15:47:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NyARr4/S"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 702153F412D;
	Thu, 14 May 2026 15:47:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778773675; cv=none; b=d7WOSPMaRzCq/4MGDck9YeAdrv6nmtMLlaBmDhvyJ1xoYCdVO51i7KiGcA70hV+fhv8Jr4aj8O+W3XqgYp3Lp3M2kISu4hFi04EG26tvcuLtBN2YTrKncE53mV8n2xACkBGIkTf/A39qW97jv70Klu13M70gKhy8URnO49kk+NM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778773675; c=relaxed/simple;
	bh=hakuzLCAWj8yoot5OzqP5fmDkWpL+zmv18POZOyqyYw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NgPYv3ewMvGfjIaASje9CoHeLFmTIDg2uvdaWer1Clu+WqaqredHoSIO45Q+eIGFt76jmZdqGaTHtV8I6FMTvQkH4NRZ3GPTxCSRFBm0sYXiORyzROD2BEwI3uuCfwCc7qi3ya5DeHqA4eIbwAvBmkAMvmqOUNqh33XF/LtBbsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NyARr4/S; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D0EB1C2BCB3;
	Thu, 14 May 2026 15:47:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778773675;
	bh=hakuzLCAWj8yoot5OzqP5fmDkWpL+zmv18POZOyqyYw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NyARr4/SV4uQF004gXSZRXgzzsq/pYYXjhDKE/YKS20QQazeXJwy7WFZMZ90gQPWn
	 VpApF+51GE2AdfskKHNIz174qCwfk0DdjQR/e/sHipziqKeXkkOC8dcygr+FQjBW40
	 Zi0Zw+tBYwuvYdQ7Hj7X712GSv/9wM/mX/pR6VxXbzqC77TDORrD8TfFsDBV9BJE5E
	 C+rglsrnxiLNhm/hnk60Y6qQ9I/otV92dRhRi+zW8gYqm9/1Y+BOeUxH13HXWUziOT
	 c/VQimfrLR96I2ukXbVyAmhNDkXtNeMEDePF0k/jqR1bvk9l0Q+3bMkrWgIsjahtpq
	 Kc8Akp6K4RDSg==
Date: Thu, 14 May 2026 10:47:50 -0500
From: Rob Herring <robh@kernel.org>
To: sashiko-reviews@lists.linux.dev
Cc: Roman Vivchar via B4 Relay <devnull+rva333.protonmail.com@kernel.org>,
	krzk+dt@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
Subject: Re: [PATCH v2 04/16] dt-bindings: mfd: mediatek: mt6397: add mt6323
 PMIC thermal
Message-ID: <20260514154750.GA740881-robh@kernel.org>
References: <20260512-mt6323-v2-4-3efcba579e88@protonmail.com>
 <20260513050008.8C829C2BCB7@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260513050008.8C829C2BCB7@smtp.kernel.org>
X-Rspamd-Queue-Id: BBDC95444AA
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-297695-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,rva333.protonmail.com,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[protonmail.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Action: no action

On Wed, May 13, 2026 at 05:00:07AM +0000, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 2 potential issue(s) to consider:
> - [Medium] The `#thermal-sensor-cells` property is constrained to 1, but the MT6323 hardware only possesses a single thermal sensor, violating DT ABI design principles.
> - [Low] The device tree example is missing the `adc` node and its corresponding `mt6323_adc` label, which is referenced by the new `thermal` node.
> --
> 
> commit 5d14cb32b8298f2c8dd1f6c1a6921b9e3942bf24
> Author: Roman Vivchar <rva333@protonmail.com>
> 
> dt-bindings: mfd: mediatek: mt6397: add mt6323 PMIC thermal
> 
> This commit adds devicetree binding documentation for the MediaTek mt6323
> thermal monitoring hardware, which reads temperature via an AUXADC channel.
> It configures #thermal-sensor-cells to 1 and includes a thermal node in
> the example block.
> 
> > While mt6323 exposes only a single thermal sensor, newer PMICs like
> > mt6358 provide more than one sensor. Therefore define #thermal-sensor-cells
> > as 1 to avoid breaking devicetree ABI in the future.
> 
> Since the mt6323 hardware only possesses a single thermal sensor, shouldn't
> #thermal-sensor-cells be constrained to 0?
> 
> Future hardware variants like the mt6358 will use different compatible
> strings, which can then define their own #thermal-sensor-cells: const: 1
> constraint without affecting the mt6323 ABI.
> 
> Setting it to 1 here forces a dummy cell argument on single-sensor mt6323
> devices, misrepresenting the actual hardware.

No, that's fine.

> 
> > diff --git a/Documentation/devicetree/bindings/mfd/mediatek,mt6397.yaml b/Documentation/devicetree/bindings/mfd/mediatek,mt6397.yaml
> > index beaa67bf0df2c..2c826737189e7 100644
> > --- a/Documentation/devicetree/bindings/mfd/mediatek,mt6397.yaml
> > +++ b/Documentation/devicetree/bindings/mfd/mediatek,mt6397.yaml
> [ ... ]
> > @@ -511,6 +547,14 @@ examples:
> >          rtc {
> >              compatible = "mediatek,mt6323-rtc";
> >          };
> > +
> > +        thermal {
> > +          compatible = "mediatek,mt6323-thermal";
> > +          nvmem-cells = <&mt6323_thermal_calibration_data>;
> > +
> > +          io-channels = <&mt6323_adc MT6323_AUXADC_CHIP_TEMP>;
> 
> Does the mt6323_adc label exist in this example?
> 
> Looking through the example block, the adc sub-node and its corresponding
> mt6323_adc label do not seem to be defined. Will this cause dtc to fail with
> a reference to non-existent node or label error during dt_binding_check?

Annoyingly, sashiko seems to consistently get this comment wrong.

Rob

