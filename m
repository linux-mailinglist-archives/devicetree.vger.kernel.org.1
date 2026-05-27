Return-Path: <devicetree+bounces-303532-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yHsSNm8uF2rd7wcAu9opvQ
	(envelope-from <devicetree+bounces-303532-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 19:48:31 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D4DF5E87FD
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 19:48:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BAC443035AAE
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 17:46:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7902F30DD2F;
	Wed, 27 May 2026 17:45:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g16fTDp/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63834233134;
	Wed, 27 May 2026 17:45:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779903959; cv=none; b=HqBtYdtEN5qBUqaBHBp1yrjav8bky8LqKxaiTeTZjmac+7j/GFFqfjKoyD00REublZ0Sp79Dsm9SIRjiBX0ZDn9PNoa78icY7MLAau1/EMiv1WnVpKAPjXeXFL5kcKhO/l4X1FhFTL7xC2VR2tV6tPjcAsjR1OZys64ELUz6oTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779903959; c=relaxed/simple;
	bh=kW2GV/b5NZjsqiy3GlPHU1+MW1A2kIhqw/onYUwVI9A=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=T3D70+8zxnDNqldaz5zKHPQxNgVLUoSNKUoTmS8qP+sX4jHBmwp6lQMS4usIonNODUeWTRHpWnVm8yqQ/loYxSJO7b8ARqP1+gK7g+GL6dhXKByrqPMCYy07DW4Z696BuBNQMtiVfAKH5G8vEw9zA3iy2BmXUiorS7rQUArtCSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g16fTDp/; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CF54B1F000E9;
	Wed, 27 May 2026 17:45:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779903958;
	bh=kueav2AK+YI5/JxwOHVUz7d67vwdRrfDl14zgf0rsds=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=g16fTDp/gZyk6fL8wNB/Hy/1aGT+aZH+xMg7nqZCFRKvM38fEvVoVHkZahXoBnlaI
	 93MXMUfJvULsZUURFsPAx0syCM35CR5ByP5gy6DN2LrD6kLZn4hJl+ymM9Dp0gctkl
	 byLzajbnJEVtzKqLwQBaRSVORnx/5DfFVvtGAYl/UBErQnwNMM+3yzZCXQdbVPlXsZ
	 IZpDav2qS51n6W99NgDU/3+V/Bb+vLa5RWLDKW/0myaVWlCVhgVy8eWadDJH7ME2bu
	 jz2IIaXNJDVkKFVpIoSquhuSf8XqIdU1Z+b1CEeQ7I7Vak4L//Yg6mazNDMmpCHkVJ
	 ucrlzyM9Atatg==
Date: Wed, 27 May 2026 18:45:44 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Piyush Patle <piyushpatle228@gmail.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, ak@it-klinger.de, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, andy@kernel.org,
 nuno.sa@analog.com, dlechner@baylibre.com
Subject: Re: [PATCH v10 00/11] iio: adc: Add support for AVIA HX710B ADC
Message-ID: <20260527184544.13fb3a9a@jic23-huawei>
In-Reply-To: <20260525105127.180156-1-piyushpatle228@gmail.com>
References: <20260525105127.180156-1-piyushpatle228@gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
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
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-303532-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 3D4DF5E87FD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, 25 May 2026 16:21:16 +0530
Piyush Patle <piyushpatle228@gmail.com> wrote:

> The HX710B is a 24-bit ADC from AVIA Semiconductor, related to the
> HX711 already supported in this driver.  Unlike the HX711 (which has
> selectable gain and two input channels), the HX710B has a fixed gain
> of 128 and two operating modes selected by the trailing PD_SCK pulse
> count after each conversion:
> 
>   25 pulses (1 trailing): differential input at 10 SPS
>   26 pulses (2 trailing): DVDD-AVDD supply monitor at 40 SPS
>   27 pulses (3 trailing): differential input at 40 SPS
> 
> This series first extends the existing HX711 binding and driver with
> preparatory refactoring, then adds HX710B support on top.
> 
> The differential input is exposed as a single IIO channel with
> IIO_CHAN_INFO_SAMP_FREQ, allowing userspace to select 10 or 40 SPS
> without needing two separate channels for the same physical input.
> The supply monitor is a second channel at fixed 40 SPS.
> 
> Patches 01/11, 02/11, 03/11, and 05/11 have already been applied to
> the iio.git testing branch.  They are re-included here so the series
> applies cleanly as a unit.

FWIW I took a look at Sashiko's feedback and other than patch descriptions
and the dt-binding dicussion that is ongoing they were either
- wrong, though that sometimes was for subtle reasons - like the fact we
  can't just guess the device if the driver is forced to bind.  We should
  fail in that case.
- pre existing issues.  If you have time to look at those, then great
  but I'm not going to insist on that.

Jonathan

