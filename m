Return-Path: <devicetree+bounces-269723-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0LwkMNc/pGlPbAUAu9opvQ
	(envelope-from <devicetree+bounces-269723-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 01 Mar 2026 14:32:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id F125E1CFF50
	for <lists+devicetree@lfdr.de>; Sun, 01 Mar 2026 14:32:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DB4A33014C42
	for <lists+devicetree@lfdr.de>; Sun,  1 Mar 2026 13:32:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E8CB2EBB90;
	Sun,  1 Mar 2026 13:32:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="njQz2P/o"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27C29175A61;
	Sun,  1 Mar 2026 13:32:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772371924; cv=none; b=TUTlFh4P/AQvVhR0IqGMgcJKqQMc31Dd0jNaWwKfH9yTkS4/D+TJxNQiVoqaa08FLPrJNDmCAwCgrarSsjcpwCGzCzseSCoyYWa/CEi8LcA9mguUtLru7Vhq+FR6ze/q0yzfCuhn4xh1nZYf5Dz1uE1eILDKPNfWGvLmenVbh+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772371924; c=relaxed/simple;
	bh=X8QTRNFsTARTX9KIgmV9vrlkUQfdCvHl5sYLb/tYY5M=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ruMoh1pFALArZqa4IZnWN9F35uvfys4PX4sCzqR8TebvgcyAf0cCfopjWR9JcR5DP9UJvrczhLvBuCH5KaBu+GaJnzvcCafc656q/sIYu+TBmhJr9a4LSimuif2rJ9+DJ2xlXw0vY1hrUSnNqX+STObt5viKPq7O9YwnZOdmU/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=njQz2P/o; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C1A8DC116C6;
	Sun,  1 Mar 2026 13:31:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772371923;
	bh=X8QTRNFsTARTX9KIgmV9vrlkUQfdCvHl5sYLb/tYY5M=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=njQz2P/o7rnb4jFiJbdNWJcWMZm2UhRtlQxaCYPQkxXfLsDxVhASm+zSNnaVu0U85
	 FVjcMaVQJ4UDfdgjjZm/5JT6bDXfEdvVjHR+c5dnocicfUJHSvJQeoTfw9o3IGWCzN
	 nX9aZvFztUsKaV2cqJTycVDfWrG7CNRyhZgR96iOOoYeHqMslszTlptPUgNlaUwS9a
	 UkJaGPwxzGTd0qvu8FjUhBqkBwbEIqiqvC/0Zwszt+geb2TDbR5HI4+ekq06v0LoWC
	 oMukf6VWi5JfPhIIBHEb/o5XtOTH6mLHPrWE3lLfH1NbZTqto5QjIEvSIFh6azJzHb
	 XMBHmgwn4md0A==
Date: Sun, 1 Mar 2026 13:31:53 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Rodrigo Alencar via B4 Relay
 <devnull+rodrigo.alencar.analog.com@kernel.org>
Cc: rodrigo.alencar@analog.com, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Lars-Peter
 Clausen <lars@metafoo.de>, Michael Hennerich
 <Michael.Hennerich@analog.com>, David Lechner <dlechner@baylibre.com>, Andy
 Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Philipp
 Zabel <p.zabel@pengutronix.de>
Subject: Re: [PATCH RFC 6/8] iio: frequency: ad9910: add RAM mode support
Message-ID: <20260301133153.7f2f8501@jic23-huawei>
In-Reply-To: <20260220-ad9910-iio-driver-v1-6-3b264aa48a10@analog.com>
References: <20260220-ad9910-iio-driver-v1-0-3b264aa48a10@analog.com>
	<20260220-ad9910-iio-driver-v1-6-3b264aa48a10@analog.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
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
	TAGGED_FROM(0.00)[bounces-269723-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,rodrigo.alencar.analog.com,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,analog.com:email]
X-Rspamd-Queue-Id: F125E1CFF50
X-Rspamd-Action: no action

On Fri, 20 Feb 2026 16:46:10 +0000
Rodrigo Alencar via B4 Relay <devnull+rodrigo.alencar.analog.com@kernel.org> wrote:

> From: Rodrigo Alencar <rodrigo.alencar@analog.com>
> 
> Add RAM channel with support for profile-based control. This includes:
> - RAM data loading via binary sysfs attribute (ram_data);

I'm not sure that's a long term viable path.  We either need
to figure out how to do it as firmware file load, or via an output buffer.

Firmware load would probably be too static and I'm not sure quite
how we map these to IIO output buffers.

> - Per-profile RAM configuration (start/end address, step rate, operating
>   mode, dwell control);
> - RAM destination control (frequency, phase, amplitude, polar);
> - RAM operating modes (direct switch, ramp up, bidirectional ramp,
>   continuous bidirectional, continuous recirculate);
> - Profile switching for RAM playback;
> - Sampling frequency control via profile step rate;
> - ram_en-aware read/write paths that redirect single tone
>   frequency/phase/amplitude access through reg_profile cache when RAM is
>   active;
> 
> When RAM is enabled, the DDS core parameters (frequency, phase, amplitude)
> for the single tone channel are sourced from a shadow register cache
> (reg_profile[]) since the profile registers are repurposed for RAM control.
> 
> Signed-off-by: Rodrigo Alencar <rodrigo.alencar@analog.com>
> ---



