Return-Path: <devicetree+bounces-317250-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id vK01IuO4QmrLAAoAu9opvQ
	(envelope-from <devicetree+bounces-317250-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 20:26:43 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 679C16DE075
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 20:26:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=bEc+Wk7y;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317250-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317250-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3A3F13000B86
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 18:26:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 493343839BB;
	Mon, 29 Jun 2026 18:26:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C5AB2D0C7E;
	Mon, 29 Jun 2026 18:26:37 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782757598; cv=none; b=lb+FtrQ+dc22XU3bi7gM/W1eSUGDZ1tyQf+D2K92G19eZKDCXF9VXxu6uF9A5OifiH45Rgnd9sAotQRA5YG485w4X5JDB1hWZ+B1E2Ovorb6/wxRy1/BOiQSIr2+BUxcyl1sChGVMqMX7FEq/qu/6Z37bYNTdJFYwbZ2FM0yEw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782757598; c=relaxed/simple;
	bh=7kWvP29BCrpr9mVTmNwk7CuOjuoKbgEfh7sEUZRlSmM=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=qreI2cGITaTBCpFCfvr9kzJ1ftTzkMFRzzyYTrMoBHHfvH3WiAhGP5su2ppzoV2av+4ypNwON6/T3/kVXwRf0HszasvvIV+fLZ8me0jhP2HivU/OuurZgP/0VLUu02tC4sAndbu3ZrzRtOwupULNVZt8kHp0nx3fj5jRsQXhZNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bEc+Wk7y; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 344A21F000E9;
	Mon, 29 Jun 2026 18:26:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782757597;
	bh=uEi8AJcYIpDVSytigTu4j+k6O9pdV6mtz9pqsyI+NtQ=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=bEc+Wk7yr/VvyOJKXmvAz3XnVrfI73ZxBWW7PIBVlh1ElQTk1TbTvp9DBVt/fHRag
	 gurZD67NFJsy1LsqzztU25941APSu/62y1tmxQqn8HrEOzDGB1rBk7i/LmbQo72J51
	 oWAWgqsd6P3IRsUp8eipikvt29Y7cL7UBHGO8KdxQ7CffMup5sLxXOAvZCH+eB9JMy
	 AqcUh4q0bsTjRRkDRlPIYV0YU19CiOGCKvu+3Ri97XaDVShFI08fqG7XX4PH0lMXMU
	 aPEV4EQn8khUyGqsE6LrL/6NsyWRbuf1rhsX+ymrui/F8HJSu56RUMxcZ4YqIvr2HL
	 94O5EuutOjSTA==
Date: Mon, 29 Jun 2026 19:26:30 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Kim Seer Paller <kimseer.paller@analog.com>
Cc: David Lechner <dlechner@baylibre.com>, Nuno =?UTF-8?B?U8Oh?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>, Michael Hennerich
 <Michael.Hennerich@analog.com>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 <linux-iio@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux@analog.com>, <devicetree@vger.kernel.org>
Subject: Re: [PATCH v3 4/4] iio: dac: ad3530r: Add support for
 AD3532R/AD3532
Message-ID: <20260629192630.21ae81c4@jic23-huawei>
In-Reply-To: <20260629-iio-ad3532r-support-v3-4-f6e4f4abebbe@analog.com>
References: <20260629-iio-ad3532r-support-v3-0-f6e4f4abebbe@analog.com>
	<20260629-iio-ad3532r-support-v3-4-f6e4f4abebbe@analog.com>
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
X-Spamd-Result: default: False [-4.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:kimseer.paller@analog.com,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:Michael.Hennerich@analog.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-iio@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux@analog.com,m:devicetree@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-317250-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,analog.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 679C16DE075

On Mon, 29 Jun 2026 16:31:07 +0800
Kim Seer Paller <kimseer.paller@analog.com> wrote:

> The AD3532R/AD3532 is a 16-channel, 16-bit voltage output DAC with a
> dual-bank register architecture (bank 0 at 0x1000 for channels 0-7,
> bank 1 at 0x3000 for channels 8-15). It shares similar functionality
> with AD3530R (channel configuration, LDAC triggering, powerdown control),
> the main difference being the register address map due to the dual-bank
> architecture, handled by table-driven helpers.
> 
> Add AD3532R-specific register definitions, channel specs, per-bank
> register arrays, a dedicated ad3532r_set_dac_powerdown(), and per-chip
> regmap_config to limit debugfs-exposed register space to each variant's
> actual address range.
The change to add the ability to provide different regmap configs
would ideally have been a precursor patch (a noop easy to review one).

Then this patch would have been just adding the new device support,
not a small refactor as well.

Otherwise, I didn't see anything to add to what Andy has called out

Thanks

Jonathan


