Return-Path: <devicetree+bounces-278563-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ePZQDut9vmm8QwMAu9opvQ
	(envelope-from <devicetree+bounces-278563-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 21 Mar 2026 12:15:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A6CCE2E4FE2
	for <lists+devicetree@lfdr.de>; Sat, 21 Mar 2026 12:15:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DAD34300B9D8
	for <lists+devicetree@lfdr.de>; Sat, 21 Mar 2026 11:13:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A5C930C602;
	Sat, 21 Mar 2026 11:13:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EKfebOYv"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2796763B9;
	Sat, 21 Mar 2026 11:13:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774091630; cv=none; b=aOm/gbH6eAPmpbTjslor/f2gPRC6LczkDOTtMmkCJG6VOz3W3huPdwTHvB9LFv+mkjM39zBSc2NAMSYVJfuf12rWPzBMwy3aosRApFJEiOdI/Fg+YU19+V34S8VxbNrOh9PnWq7tSduT7QRHw3YFI+dfPRJ5TKhUFEFQREVFJNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774091630; c=relaxed/simple;
	bh=53V1pIvWmB6t0KYEz8odqeK8jbi64ra6rOegoksrkU4=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=mXhEibsFHEQY6+X2QBH37DcpIUwdXyIYqLhaN/35oX7qqcGMN+wsfAla9hCl97SrESqbZw4PX8Mu71zkijHr8gxDg+OHVH2GXFwbrOF1KKXcNCUSGaIezN7uYFp9G4QKBDlF0AE3hn9YVrOLksSgczCL0/6PROmz4cPYKAH4YEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EKfebOYv; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 61B73C19421;
	Sat, 21 Mar 2026 11:13:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774091629;
	bh=53V1pIvWmB6t0KYEz8odqeK8jbi64ra6rOegoksrkU4=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=EKfebOYvcrrZI5iAWbIh9jxzfnduopvCjEKX5YHfMxBAIqgwkhcikR6fwJnz+Pf1F
	 6D/LTc0L3ghMoDhHX4G1obQWuHvKZt3/p7pxJrSDJqZA2xGzNxcATRzE/2mplVblfP
	 nZUkeutRHfTQL2AOaPfeeOz9UG502dbWhuGq0GLxSV1rCfzN/dgQbmH6U4iGFBA2Q0
	 h8A1TFV0RKqemKO1/S01tf/gGANyzSpn8NbE3JkN5BTowQNmjK/b1OBKUBg32nf6CC
	 dkM57+9kLo8hNnC5m5hvEFBFLpyR21nvwuH/BMpfzC+gyIuH/YBGZkkbcw3jtnzMLz
	 JfAbams/Haskw==
Date: Sat, 21 Mar 2026 11:13:39 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Antoniu Miclaus <antoniu.miclaus@analog.com>
Cc: Michael Hennerich <michael.hennerich@analog.com>, Marcelo Schmitt
 <marcelo.schmitt@analog.com>, Nuno =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>,
 Lars-Peter Clausen <lars@metafoo.de>, David Lechner
 <dlechner@baylibre.com>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Petre Rodan
 <petre.rodan@subdimension.ro>, Jorge Marques <jorge.marques@analog.com>,
 <linux-iio@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v4 1/4] iio: accel: adxl372: introduce chip_info
 structure
Message-ID: <20260321111339.0704b83c@jic23-huawei>
In-Reply-To: <20260321100729.2440-2-antoniu.miclaus@analog.com>
References: <20260321100729.2440-1-antoniu.miclaus@analog.com>
	<20260321100729.2440-2-antoniu.miclaus@analog.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.51; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-278563-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,analog.com:email]
X-Rspamd-Queue-Id: A6CCE2E4FE2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sat, 21 Mar 2026 12:04:56 +0200
Antoniu Miclaus <antoniu.miclaus@analog.com> wrote:

> Introduce a chip_info structure to parameterize device-specific
> properties such as ODR/bandwidth frequency tables, activity/inactivity
> timer scale factors, and the maximum ODR value. This refactors the
> driver to use chip_info lookups instead of hardcoded values, preparing
> the driver to support multiple device variants.
> 
> The sampling_frequency and filter_low_pass_3db_frequency available
> attributes are switched from custom sysfs callbacks to read_avail()
> based handling via info_mask_shared_by_type_available. This enforces
> consistent formatting through the IIO framework and makes the values
> accessible to in-kernel consumers.

I'd slightly have preferred that as a precursor patch, but never mind
it's not too bad in here.  So this is more of a comment for 'next
time' than anything to bother fixing for this series.

> 
> The SPI/I2C probe functions are updated to pass a chip_info pointer
> instead of a device name string.
> 
> No functional change intended.
> 
> Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>

