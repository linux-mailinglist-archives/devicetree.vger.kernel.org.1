Return-Path: <devicetree+bounces-318968-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ol4SKhSsRWrfDgsAu9opvQ
	(envelope-from <devicetree+bounces-318968-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 02:08:52 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F2EC06F2905
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 02:08:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=iqSQWqrA;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318968-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-318968-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DF98C304E6EF
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 00:07:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07E0C2BD02;
	Thu,  2 Jul 2026 00:07:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5331625;
	Thu,  2 Jul 2026 00:07:57 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782950878; cv=none; b=rSCbbYbFoUpQ1Pp+CAg7RaeEgFBgyzkhrwlDCUfodi3HOoAWOH3L4hkAOW32uiJtsWC/xYPJbEDaAgkT513nebrzFCt1cknGr2+PB6+kgKSbZ4GEk/Jr6mWSFqfmDsD0GIb4nOYg1bJ+KOkYssStlu00a4P1068h3B892yZCCZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782950878; c=relaxed/simple;
	bh=bzxdzUIS5NV6E9ULD5j6j263CwKQY3bOG6VVfIV1MxE=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=CAnf6Gd6mVEVKWS4QkQmT3nLDH59G1XFxycsz+oJaPh50sY4lFF7cv0xvGoiLi9BNQkJKZsqxcgGApdOpj8XeLuAwnXmqYQ804fEeW2RiG3ctDcdrU+9fziviO4awg5ZSMjzVmCQSqEiV5NUPo0cHSYOilTIIuMu/jL00UTh9/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iqSQWqrA; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 84CD21F000E9;
	Thu,  2 Jul 2026 00:07:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782950877;
	bh=USZvbHL/5lmXp/Rgdix7obUtc+zRhWFoC46JUXvjxEs=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=iqSQWqrAeCMsMASgWXdtxARlmJLI2pDpwhkEGxVE/absAHGMAMee/90yLXywmXNhv
	 feNappUwQMwPf5QBfPFT7fKDtkaaGR2ZD3bSKdd52DyyuNxmr8LFApv/NjQbg7oMnl
	 kzl0+Cssz5sGXAnqsVN8PFghYxQk/rD1ONM1YAivCSq27VjE8OJXetL6UetJUTPEcU
	 Dway0nT0ZS7K7uaRajSa/2M5wfpwMiBoYKg95DwG3VwV3jMDn2zmFC/8lg8ff461VB
	 kIt0MOAfHfSS7szNo46aaWig6Wt5JCK6gtWYi6jpi1FJo/uOqzfxTA3m0dwotXwk0C
	 SNdzRlcfK5yFw==
Date: Thu, 2 Jul 2026 01:07:50 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Salih Erim <salih.erim@amd.com>
Cc: <andy@kernel.org>, <dlechner@baylibre.com>, <nuno.sa@analog.com>,
 <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
 <conall.ogriofa@amd.com>, <michal.simek@amd.com>,
 <sai.krishna.potthuri@amd.com>, <linux@roeck-us.net>,
 <erimsalih@gmail.com>, <git@amd.com>, <linux-iio@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v12 0/5] iio: adc: add Versal SysMon driver
Message-ID: <20260702010750.5156f461@jic23-huawei>
In-Reply-To: <20260624143722.4047649-1-salih.erim@amd.com>
References: <20260624143722.4047649-1-salih.erim@amd.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-318968-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:salih.erim@amd.com,m:andy@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:conall.ogriofa@amd.com,m:michal.simek@amd.com,m:sai.krishna.potthuri@amd.com,m:linux@roeck-us.net,m:erimsalih@gmail.com,m:git@amd.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,amd.com,roeck-us.net,gmail.com,vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[jic23-huawei:mid,amd.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F2EC06F2905

On Wed, 24 Jun 2026 15:37:17 +0100
Salih Erim <salih.erim@amd.com> wrote:

> This series adds a new IIO driver for the AMD/Xilinx Versal System
> Monitor (SysMon), providing on-chip voltage and temperature monitoring.
> 
> The Versal SysMon measures up to 160 supply voltages and reads up to
> 64 temperature satellites distributed across the SoC. The hardware
> also provides aggregated device temperature registers: the current
> max and min across all active satellites, and peak/trough values
> recorded since last hardware reset. The device can be accessed via
> memory-mapped I/O or via an I2C interface.
> 
> The driver is split into a bus-agnostic core module using the regmap
> API, an MMIO platform driver, and an I2C driver. This allows the
> same IIO logic to be shared across different bus transports.
> 
> Note: Sai Krishna Potthuri is added as co-maintainer and will be
> actively taking over the upstream maintenance of this driver going
> forward. Please direct any future review feedback to him.

Series applied to the testing branch of iio.git.

Thanks,

Jonathan

