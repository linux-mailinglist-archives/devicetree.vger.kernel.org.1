Return-Path: <devicetree+bounces-269722-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eLeqIHc+pGkMbAUAu9opvQ
	(envelope-from <devicetree+bounces-269722-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 01 Mar 2026 14:26:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D7B881CFEE8
	for <lists+devicetree@lfdr.de>; Sun, 01 Mar 2026 14:26:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BD401300EA82
	for <lists+devicetree@lfdr.de>; Sun,  1 Mar 2026 13:26:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C585832AABE;
	Sun,  1 Mar 2026 13:26:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MwDcW5w5"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1C78327C08;
	Sun,  1 Mar 2026 13:26:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772371571; cv=none; b=akRkoq5soeE6ScXZem2Nrm0Ppn5RirrXFiw08rPbKhVHzX+sb0dCVhrMxqU4FJiAhLTc7vUWY9JMd9W/OOGuXJ3ZIRD6rwKtX6LmdPDbs7xoyZQ79dHvmimWqK+u0zsExZLmP9GLfysspwHJwGH6vD7Q8Gq/f7+pa574ZrJ/3+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772371571; c=relaxed/simple;
	bh=sadg1CL0KqidUcmrJdU0pSgJnB+VvSbP2Ygu0rOYl58=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=mmXoaW5fBleLk9LQWLboFJiOk9j6+XdQdO26JI0CW/nsSvAjwI0es6tQyuc3SfuOvuZ8Borhdl/eAW37V4JxgmHTA9JMQgSfJMc3T3yWgP2jZ+A1mvXKnM1wSUcN4n4GA5ZyLq+wJuAZy3C4DqrEfCnHJTkZXnH4ewU8wWvKbVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MwDcW5w5; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 66035C116C6;
	Sun,  1 Mar 2026 13:26:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772371571;
	bh=sadg1CL0KqidUcmrJdU0pSgJnB+VvSbP2Ygu0rOYl58=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=MwDcW5w5JX6Xp5HX0l6MUSJXEAhkVbWuV4hq2iKnzgKt+MbRrYW+VSwP6YlTZ0xic
	 7429CfMz7Ovaty8Kd8OP5xQiCDRpE2ASUFbe7Vh7dVrrjiF53umxskXdoZ26ithpMm
	 ZMC+2bsMlQ9fZzcIqYldSYHzBAXUHmcq/j5mRJOg/VOA229aJnmKkfhuya9TZocj31
	 fnnpseRGWNSZbFoMJCLSYqZ9UPZwZz0R3NvRk8IS1IcOAeasUrCISqdBbuNcks87wC
	 8Q/92UY8YwxbjalmY3r9RbyxAAx+XJRBMD8XyUkIP4pl2hoZh7bhHs8HZvDUpjSr7p
	 zYIszbO51C5sQ==
Date: Sun, 1 Mar 2026 13:26:00 +0000
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
Subject: Re: [PATCH RFC 5/8] iio: frequency: ad9910: add digital ramp
 generator support
Message-ID: <20260301132600.487a3a7e@jic23-huawei>
In-Reply-To: <20260220-ad9910-iio-driver-v1-5-3b264aa48a10@analog.com>
References: <20260220-ad9910-iio-driver-v1-0-3b264aa48a10@analog.com>
	<20260220-ad9910-iio-driver-v1-5-3b264aa48a10@analog.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269722-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[analog.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D7B881CFEE8
X-Rspamd-Action: no action

On Fri, 20 Feb 2026 16:46:09 +0000
Rodrigo Alencar via B4 Relay <devnull+rodrigo.alencar.analog.com@kernel.org> wrote:

> From: Rodrigo Alencar <rodrigo.alencar@analog.com>
> 
> Add DRG channel with destination selection (frequency, phase, or
> amplitude), operating mode control, configurable upper/lower limits,
> increment/decrement step sizes, and step rate settings for the digital
> ramp generator.
> 
> Signed-off-by: Rodrigo Alencar <rodrigo.alencar@analog.com>
There is a lot of custom ABI in here. All that needs description in
Documentation/ABI/testing before we an consider it properly.

