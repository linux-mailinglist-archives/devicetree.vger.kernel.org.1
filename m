Return-Path: <devicetree+bounces-276996-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eGZEFGpcumnFUgIAu9opvQ
	(envelope-from <devicetree+bounces-276996-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 09:03:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E0A612B76C9
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 09:03:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CD0C33056B65
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 08:00:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A947375AAC;
	Wed, 18 Mar 2026 08:00:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FRtrdj17"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51BA82153EA;
	Wed, 18 Mar 2026 08:00:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773820837; cv=none; b=ThOMv6K0g2f/soLWdGsty6cbdJ6RbvZlTV1guGW0+rE++NE9iX7A14p3ZvbuP+w78zOUx9KwgtfRT0DXejs8R4fFMJ3THAFZ/XMKDVPvFxdnT/tszBppDFQ/TQj9MTGgr/ny4rJHS0khZwYBpR1gSchawv4ScYHRd45MzajOKMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773820837; c=relaxed/simple;
	bh=JcYUVdQClTfAto/aY5CwUWdQ3GX10YbnZOm9buLexog=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DVBErReMjS2lui0VlI1pM9DCdE/zoA7Hd5+wu3e4rnZ0UqPXtldZacWzpIBJQsoObMVXM32v2chRvrjRA447/HVOo21ybZs4F8VNy4itQdIu3yHog1TbSVYv9C8L6pJ/ybdeNj/0rj8v8boOh6vTiAs6gwqfUWBcuuR9NbPcAIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FRtrdj17; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 562BDC19421;
	Wed, 18 Mar 2026 08:00:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773820836;
	bh=JcYUVdQClTfAto/aY5CwUWdQ3GX10YbnZOm9buLexog=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FRtrdj17e5PnFocx4e8uTwccB5PYZJnN2Hrghz3EhlFXphiSE/gk5h8yheDrnkFcm
	 0GqXxk6uQR3SFM64fo3FLs8iHz0ytpD5c4h/q/ZnqQSKfc/yIgLmxU247AHQYaIrdc
	 CItWLx0eWaXIXqLFLbeDMOEDfiZERZQOUMeOzAPy/OsKk5eqw/ckKtqMYEZkn7SRxL
	 VzW/ptiOE2mJ3hLr1Ohm2vYgyq/h6B+gZST1VqooMasZa1TxQwdIwfz6cl0yg5pvKC
	 oji6EO1jNayiZGfCfuKVTX+q2FIoSOAOdp5B/XV5jJArW5tSLtzrc1zBJ6TzNipcge
	 gZ9qDWeSJ4iwg==
Date: Wed, 18 Mar 2026 09:00:34 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Andre Przywara <andre.przywara@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Sudeep Holla <sudeep.holla@kernel.org>, 
	Salman Nabi <salman.nabi@arm.com>, Vedashree Vidwans <vvidwans@nvidia.com>, 
	Trilok Soni <trilokkumar.soni@oss.qualcomm.com>, Nirmoy Das <nirmoyd@nvidia.com>, vsethi@nvidia.com, 
	vwadekar@nvidia.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 0/8] Arm Live Firmware Activation (LFA) support
Message-ID: <20260318-courageous-omniscient-fulmar-23abc4@quoll>
References: <20260317103336.1273582-1-andre.przywara@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260317103336.1273582-1-andre.przywara@arm.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276996-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E0A612B76C9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 17, 2026 at 11:33:26AM +0100, Andre Przywara wrote:
> Changelog v1 .. v2:
> - restrict build to arm64 (the LFA spec only supports AArch64)
> - rename and extend central data structure to fw_image
> - use separate GPR register sets for some SMC calls
> - provide wrapper for error messages to prevent out-of-bound access
> - return GUID in the "name" sysfs file when image is unknown
> - fix wrong attribute in pending version number show function
> - add missing include files and order them properly
> - fix memory leaks in error cleanup paths
> - handle lifetime using embedded kobjects and a kset
> - drop global lfa_lock, use kset list lock and kobject refcount instead
> - add DT binding documentation
> - add timeout and watchdog re-arming (contributed by Veda)
> - relax timeout period and do not block while waiting
> - register ACPI notification (contributed by Veda) and DT interrupt 
> - refactor ACPI notification code to allow sharing with DT code
> - use faux device instead of platform driver
> - add auto_activate file to control automatic activation
> - introduce rwsem mutex to prevent using stale sequence ID
> - use labels and goto instead of infinite loop when retrying activation
> - initialise workqueue only once (thanks to Nirmoy)
> - various cleanups on reported messages and code formatting
> - rebase on top of v7.0-rc1
> 
> Changelog RFC .. v1:

Please start using b4 for developing patches. RFC is v1. RFCv2 is v2.
Whatever next is always + 1. Otherwise please share how v1 and RFC can be
easily compared with b4 diff...

> - Updated SMCCC version 1.1 to 1.2 per the LFA specification requirement.
> - Changed "image_props" array to a linked list to support the dynamic

Best regards,
Krzysztof


