Return-Path: <devicetree+bounces-301349-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WAt/Dq0tD2oiHgYAu9opvQ
	(envelope-from <devicetree+bounces-301349-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 18:07:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A45495A8E27
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 18:07:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0668D3305228
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 14:36:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C7014014A0;
	Thu, 21 May 2026 14:32:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="lSMj5lBX";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="kaHE5VX3"
X-Original-To: devicetree@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E70E63E171C;
	Thu, 21 May 2026 14:32:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.142.43.55
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779373963; cv=none; b=MQNVCFrd075LWhSG4AsUcmD25SwiRkCwWp/M2stnfg/ME3bYSti3iBAWDvMrGc2fntLf5HW8vhLS5u7v2In2Ch6AauzAaARk4fuXtWQsuASpdk3Hp7LpLmK8tQNRygnNk5cdrmgRbNMPQgFdePquPS13vhl7RijtfeG5m47U+3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779373963; c=relaxed/simple;
	bh=lcLm5shxn7oNMITQENSHFP+DlvwOnmQLMezoIM28jdI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EUMQS2YaLWfmXLbyNyz9Lwak4NQfFmTPPP9ot0yO0jZx1M5P6iVnArwNVdf3BFr8XomeMieg+Pmce1Eo6LuK+Xrr9gNBYWeWU9sjEf27Cke6N20CVsQCozhYr3J1467kLJSP2CTQRJ8/ca2CGpFbm/9/qsFo1bLTFGYxRM+nGWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de; spf=pass smtp.mailfrom=linutronix.de; dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=lSMj5lBX; dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=kaHE5VX3; arc=none smtp.client-ip=193.142.43.55
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linutronix.de
Date: Thu, 21 May 2026 16:32:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1779373960;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=hVPrZCD+coHGpNa0YIBuPsQX/qkRW6hAr9QMIdvd5Xw=;
	b=lSMj5lBXBIp3M8gIdnnq/1uQEZ0Mf52/hkfA9o4DW3umiPSjka+xZh5gb8SboPn6x6Lkf6
	x2fEqaApnRcLJ+p0hqdnFQq8TgsI3xg+vFm6TRGfCm7NrTFBhqvHF1DxA7QhYuigoTm0pC
	bYrrNbnDY0fwcMwZroDEC/ScwqTl9PEdAd1YecWdleM6otntMxTUCw7J3jggKM3hQvzpQ6
	b7zAfYqZuegxpMbMA2+3B6zoIJa499KeP9bmgBCHPam+rnzvkpb8YXWyCsvIo5uaCkOfJH
	1QuzGkQzfHQUcRoiNU1BXQCjlZ14IIEkFlH5Kojr+iVqBXG9DL30pPRh05kHKw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1779373960;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=hVPrZCD+coHGpNa0YIBuPsQX/qkRW6hAr9QMIdvd5Xw=;
	b=kaHE5VX3I6PELgMgGQXQb65vmYnq1tflZkIqVHQ+vQe7t4TMdg7qjYQvuQBJKGVYZk21+L
	d4kfp1ZaLZeijtDg==
From: Thomas =?utf-8?Q?Wei=C3=9Fschuh?= <thomas.weissschuh@linutronix.de>
To: Gregor Herburger <gregor.herburger@linutronix.de>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Florian Fainelli <florian.fainelli@broadcom.com>, Ray Jui <rjui@broadcom.com>, 
	Scott Branden <sbranden@broadcom.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, Eric Anholt <eric@anholt.net>, Stefan Wahren <wahrenst@gmx.net>, 
	Srinivas Kandagatla <srini@kernel.org>, Kees Cook <kees@kernel.org>, 
	"Gustavo A. R. Silva" <gustavoars@kernel.org>, devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org
Subject: Re: [PATCH v5 2/8] nvmem: core: Enforce stride and alignment checks
 for nvmem_device functions
Message-ID: <20260521163223-0b54b648-5272-43ad-a837-cc5364484b6a@linutronix.de>
References: <20260520-rpi-otp-driver-v5-0-b26e5908eeac@linutronix.de>
 <20260520-rpi-otp-driver-v5-2-b26e5908eeac@linutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260520-rpi-otp-driver-v5-2-b26e5908eeac@linutronix.de>
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linutronix.de,none];
	R_DKIM_ALLOW(-0.20)[linutronix.de:s=2020,linutronix.de:s=2020e];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-301349-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,broadcom.com,anholt.net,gmx.net,vger.kernel.org,lists.infradead.org];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[thomas.weissschuh@linutronix.de,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linutronix.de:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,linutronix.de:email,linutronix.de:mid,linutronix.de:dkim]
X-Rspamd-Queue-Id: A45495A8E27
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, May 20, 2026 at 04:27:54PM +0200, Gregor Herburger wrote:
> The stride and word_size attributes in the nvmem_config struct are
> currently only used when reading/writing through sysfs functions
> bin_attr_nvmem_read/bin_attr_nvmem_write and in the nvmem_cell api.
> Reads and writes with nvmem_device_write/nvmem_device_read still allow
> unaligned access.
> 
> Add a check to these functions to enforce word_size and stride_length
> aligned reads and writes.
> 
> Signed-off-by: Gregor Herburger <gregor.herburger@linutronix.de>

Reviewed-by: Thomas Weiﬂschuh <thomas.weissschuh@linutronix.de>

> ---
>  drivers/nvmem/core.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)

(...)

