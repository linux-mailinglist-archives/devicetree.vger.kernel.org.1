Return-Path: <devicetree+bounces-296494-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wAz9IVCcA2qF8AEAu9opvQ
	(envelope-from <devicetree+bounces-296494-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 23:32:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E1F7352A511
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 23:31:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E05D93004611
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 21:29:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2CBD256C6C;
	Tue, 12 May 2026 21:29:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Em7y9gU7"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9047E26C39E
	for <devicetree@vger.kernel.org>; Tue, 12 May 2026 21:29:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778621355; cv=none; b=pcHDX+DJZo8DaU+dU0gUymKrDal1s0tJ5Qsy0I2P1U3o8uZKjM43s+UHy/cSKq1IgAcO+fMvQ+Q17aZNgRffJW/INDmHc9U2KjDtQwRUDc0n8FL2b+Jx9Ki0kskW5KVrZxXtq/50UOkzOWXjVE04E14XsbDh6ip9mUOcfaUCdr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778621355; c=relaxed/simple;
	bh=Uv7Xo9qwihUD1rxgEBpYURZAat5atWHbjBsan2Jr5tw=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=FO9Tujq7ksXMeL8oeSmLx0jl4jst9Kz072Xqf40lSM2Rij8lqBiJFa7/K/FEDDanJRgr5/3YTNVfwAHnsLytdtMOOzJPVGeNAtv0SbCRPZQP8kzhsQLLAjXd8PW8G4ML46UBhvVsw4loNpb8j47pzm4oremkujbtRFDHQuSS03I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Em7y9gU7; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 05A34C2BCB0;
	Tue, 12 May 2026 21:29:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778621355;
	bh=Uv7Xo9qwihUD1rxgEBpYURZAat5atWHbjBsan2Jr5tw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=Em7y9gU7bOXnFOoW6hFuKDkid1ZHZXB9tVZKO1IC5yR/HJX7ii1SoiNek4ayET6Jc
	 kP2I2cOY8YvpwWXqJAclU6KWcm0FugRT6ckF58G/ZUNASSUD45SlfYxsISWQPkM7tJ
	 xy+o3CqBeECRsSN+lt1nuTAYoX91LWkSpajo3+5c3WLaPjt9f5ZK8hFfbfiELF0tMS
	 zP0o0vYtl5VXqJ9aycua1IvBmY9EUu89NZCJcrswfD5MiOPEXISXyKKcJXreiWZebq
	 uy65aNT+H5+UJ676KGD0haEgO8cHeOvkMluwWMyhdKVWcK+1y1M3oO5mdAQQW/BitQ
	 pEldBNNXCzuDw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v10 6/6] docs: iio: adc: ad4691: add driver
 documentation
Reply-To: sashiko@lists.linux.dev
To: "Radu Sabau via B4 Relay" <devnull+radu.sabau.analog.com@kernel.org>
Cc: robh@kernel.org, devicetree@vger.kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260511-ad4692-multichannel-sar-adc-driver-v10-6-e1fbb1744e38@analog.com>
References: <20260511-ad4692-multichannel-sar-adc-driver-v10-6-e1fbb1744e38@analog.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 12 May 2026 21:29:14 +0000
Message-Id: <20260512212915.05A34C2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: E1F7352A511
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,smtp.kernel.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,lists.linux.dev:replyto,analog.com:email];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-296494-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,radu.sabau.analog.com,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The commit message claims to include documentation for the 'buff=
er data format', but this information is completely missing from the added =
RST file.
--

commit bf768cbe74081c6f8c0f23dda3ab5e9fc4930fd2
Author: Radu Sabau <radu.sabau@analog.com>

docs: iio: adc: ad4691: add driver documentation

This commit adds reStructuredText documentation for the Analog Devices
AD4691 family of multichannel SAR ADCs. It covers supported devices, IIO
channels, operating modes, and other hardware features.

> Add RST documentation for the AD4691 family ADC driver covering
> supported devices, IIO channels, operating modes, oversampling,
> reference voltage, LDO supply, reset, GP pins, SPI offload support,
> and buffer data format.

The commit message lists "buffer data format" as one of the topics covered
by the new documentation. Was this section accidentally left out of the
patch?

Looking through the added Documentation/iio/ad4691.rst file, there does
not appear to be any section or explanation detailing the buffer data forma=
t.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260511-ad4692-mul=
tichannel-sar-adc-driver-v10-0-e1fbb1744e38@analog.com?part=3D6

