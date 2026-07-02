Return-Path: <devicetree+bounces-318967-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0QA9AvarRWraDgsAu9opvQ
	(envelope-from <devicetree+bounces-318967-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 02:08:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CDD46F28F3
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 02:08:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=IJhvGClO;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318967-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318967-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5C4B53032769
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 00:06:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7101208D0;
	Thu,  2 Jul 2026 00:06:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD806625;
	Thu,  2 Jul 2026 00:06:55 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782950816; cv=none; b=csdsXUPpkjD3leLrTnWOxolAYWfwgLMQag2CNEaPZomyQn5FomLf+RSCVcmwDyxRvWifsVY6Q48XRzH3uTmxXSi7ShR5+Yt+s7+JGIgU7ubHHSg2u8WN0kAYmNZRUyDeFEMJYK+JCU5W0NyRomtttUNLSaVQ/LN0xmDsfOxkTbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782950816; c=relaxed/simple;
	bh=MEItSaorEtVMVl4PfCke0T/QOq4so2OgQJE+iM4o/Jo=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=eZhqsmrBOBF44j7GTJ+J0xNs1nPOWKNPJlX9OH8c8pVAtHBU937EX+fcrdMBD0L/wduNHmX3hhwgqy21xp8epw8T5fwAbZ28wzpox6rJHp76gl4fEA2gxnP1YLbH8nGoUMiA4mL4V3T09vTD3+H65PkEsYkvUOWZdYmqqCcnduo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IJhvGClO; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 176C71F00A3A;
	Thu,  2 Jul 2026 00:06:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782950815;
	bh=mSSR/el782Jp7yT/vfA5wjZ9s2npmSxbMGUfKhRUwwE=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=IJhvGClOgfGEXGzLui6nyMxsWckdcy0PVz9Hru2kuza+1Fm3Lak8L3amk4BZReFq2
	 PATH288YIwdiJO7pktXa6d+3fTe3TynOm1zOjlDwTHI/mBP6/xxbqQyXFWjb2iwN/C
	 OcEZDkEtcyqnlApURA3508MfgABp4TGoZUyCk5GhOsx220O7RP6fgqbNPHb/TcmL7K
	 lTHZJJrDb9XZ5cbtaLq1AjHtwQVKQ5pmmkZHFpUDm0liRYpNKp6VUqXUhRmh4izFM0
	 tf2HAgqwbr4idOjG0DDweXc2Idhl4d73ijD65SK41I6dy6px821xR+qzH3sE6lc7Bw
	 1P2ghDWTN1GNA==
Date: Thu, 2 Jul 2026 01:06:50 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: "Erim, Salih" <salih.erim@amd.com>
Cc: andy@kernel.org, dlechner@baylibre.com, nuno.sa@analog.com,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 conall.ogriofa@amd.com, michal.simek@amd.com, linux@roeck-us.net,
 erimsalih@gmail.com, linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Andy Shevchenko <andriy.shevchenko@intel.com>
Subject: Re: [PATCH v11 3/5] iio: adc: versal-sysmon: add I2C driver
Message-ID: <20260702010650.50e5ee4a@jic23-huawei>
In-Reply-To: <bcbd202e-7d43-4f59-9ff3-59b564e4a3f4@amd.com>
References: <20260623014036.3865402-1-salih.erim@amd.com>
	<20260623014036.3865402-4-salih.erim@amd.com>
	<bcbd202e-7d43-4f59-9ff3-59b564e4a3f4@amd.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-318967-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:salih.erim@amd.com,m:andy@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:conall.ogriofa@amd.com,m:michal.simek@amd.com,m:linux@roeck-us.net,m:erimsalih@gmail.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andriy.shevchenko@intel.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,amd.com,roeck-us.net,gmail.com,vger.kernel.org,intel.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[jic23-huawei:mid,amd.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4CDD46F28F3

On Tue, 23 Jun 2026 12:33:33 +0100
"Erim, Salih" <salih.erim@amd.com> wrote:

> Addressing Sashiko findings on this patch:
> 
> - [High] Non-atomic I2C read transaction releases the bus lock,
>    making it vulnerable to bus interleaving.
> 
>    The SysMon I2C interface is typically on a dedicated bus with
>    no other devices. The current implementation works correctly
>    in all tested configurations. Switching to i2c_transfer() with
>    Repeated Start would match the TRM protocol diagram but would
>    require hardware testing on a board with I2C-accessible SysMon.
>    No change for now.
> 
To me this smells like a nice to have.  However, I agree with your
comment that it almost certainly doesn't matter.  Maybe one to add
to the backlog for next time any new features are being added to the driver.

