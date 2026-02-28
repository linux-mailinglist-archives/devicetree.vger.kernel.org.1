Return-Path: <devicetree+bounces-269545-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0LqVOQXdomn17AQAu9opvQ
	(envelope-from <devicetree+bounces-269545-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 13:18:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4309F1C2E98
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 13:18:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8E52C3062233
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 12:18:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D2C342B75E;
	Sat, 28 Feb 2026 12:18:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cPhuStHl"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDC63292B2E;
	Sat, 28 Feb 2026 12:18:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772281090; cv=none; b=iXYcyTmcjRjVJGqgxsAviKvA9BQWiH7cQV8bVSoNwVMmWBEXlSv2/kjauzT3i32zT6/oD07dWe8RRQOmUaw/TKexozp0TeFesB8SRSXcPKR+oitPaMcMLfbh5nDMKMvy9BJ8qIDEcUSUEW+FHeQiXf5TCZVQnK3e0YDPGnWEDbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772281090; c=relaxed/simple;
	bh=btO/35fh6342fKn+LsRICf7YhIHDNsiednytwNkvtuI=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=hoS1SSyxGQPH1g9gQh/U60qtJGR/x8XLj1wvt/M+kg5pTky81eapiK+BYWWPK6mxsBh9YjcMRP4j1R1BDGJNnZ7gnmCI9o78b0N5VroEKqr0ol1MLk5XFAYvn61YdHVoxD55ixhU0GZ1mx1i1R6RKZr018w8r4vHonRXjK24vco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cPhuStHl; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1DF65C116D0;
	Sat, 28 Feb 2026 12:18:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772281089;
	bh=btO/35fh6342fKn+LsRICf7YhIHDNsiednytwNkvtuI=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=cPhuStHlH8clhOd8kLe2GFjcsv902Z9dLVeokOlAIdJmW3STWrLonMRQH6viCSg3Z
	 OyxAuEI4vmg7EbnChznIN4LiWn47U+QsrONZ6+C6AAppomNGUWHski3ghq+0Py7c7E
	 8ktxrW+DQig0ObtiGECm/QVAvEteXbR/Uh/Ci8TFxHjSVkoMhnSP0K0sR7rib68uC7
	 JsmyWl3ysym3s9MsIFyGc7vycjGtsIUOLNH5H8sPvFITOc9Ua+Y0lQx44tBHnh47Bl
	 WMwlJn/Ooeon06DEZG9+KPcF89KjnHu+krvqAB1uldmHsPHHi2EosXestzmQx2mfic
	 cH6Hq05Zk6MvQ==
Date: Sat, 28 Feb 2026 12:18:00 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: David Lechner <dlechner@baylibre.com>
Cc: John Erasmus Mari Geronimo <johnerasmusmari.geronimo@analog.com>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Lars-Peter Clausen <lars@metafoo.de>, Michael
 Hennerich <Michael.Hennerich@analog.com>, Nuno =?UTF-8?B?U8Oh?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: iio: temperature: add ADI MAX30210
Message-ID: <20260228121800.2b137667@jic23-huawei>
In-Reply-To: <8ff054f9-c22a-4108-8a9b-6ddb49e18dcc@baylibre.com>
References: <20260226163041.169786-1-johnerasmusmari.geronimo@analog.com>
	<20260226163041.169786-2-johnerasmusmari.geronimo@analog.com>
	<8ff054f9-c22a-4108-8a9b-6ddb49e18dcc@baylibre.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269545-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,baylibre.com:email]
X-Rspamd-Queue-Id: 4309F1C2E98
X-Rspamd-Action: no action

On Thu, 26 Feb 2026 12:33:38 -0600
David Lechner <dlechner@baylibre.com> wrote:

> When there is more than one patch in a series, please include a cover letter.
Looks like different patches got different CC lists.

For a small series like this just +CC the same folk on all emails
including the cover letter that David didn't get

Thanks,

Jonathan

