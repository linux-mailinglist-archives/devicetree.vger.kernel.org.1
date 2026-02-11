Return-Path: <devicetree+bounces-264862-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kJ9sHVf/jGn4wgAAu9opvQ
	(envelope-from <devicetree+bounces-264862-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 23:14:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C8451280B7
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 23:14:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6AF4F3004DEA
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 22:14:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8DE233A9DE;
	Wed, 11 Feb 2026 22:14:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mailbox.org header.i=@mailbox.org header.b="gUb4S3Oj"
X-Original-To: devicetree@vger.kernel.org
Received: from mout-p-103.mailbox.org (mout-p-103.mailbox.org [80.241.56.161])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F8812E8E09;
	Wed, 11 Feb 2026 22:14:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=80.241.56.161
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770848082; cv=none; b=elIBec40Mqyt0t7sMx2+gcPw+cosAqCQjd84JbTNBOhBqKg3OceeNYaf9y6128+WnuehFM05C5Zex4kAie6QNGT28ceZtDaiy1g9Za8/36B2ud0mJZmtERp2pqC3/1x4ytegYZMwKJTUkiJSWe3jwdOMBnDf5S1IEJ/DczApqDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770848082; c=relaxed/simple;
	bh=eRJfzvCkRi7fxO9sNWFGwt0WmfaOMjVhsfO21ejuzwg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=T0OCyMVp+iZYBTTo5sIYFLMeq3QjnCfoQsBwXiIVw/ky/HO8JiwWdZABKZUfVEbnP9BMBVM/8qwuNz9gJwV/sH5lJ4baiEzlo/y+dilDkWxzGTeYfI8lPdVk2ZXcWLCe0yeH/rxk+1B31jaOp6Lya4QgxvwN95ZL9DI3/a0PbrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=mailbox.org; spf=pass smtp.mailfrom=mailbox.org; dkim=pass (2048-bit key) header.d=mailbox.org header.i=@mailbox.org header.b=gUb4S3Oj; arc=none smtp.client-ip=80.241.56.161
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=mailbox.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mailbox.org
Received: from smtp1.mailbox.org (smtp1.mailbox.org [IPv6:2001:67c:2050:b231:465::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-103.mailbox.org (Postfix) with ESMTPS id 4fBCQc0L2pz9srf;
	Wed, 11 Feb 2026 23:14:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1770848072;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=eRJfzvCkRi7fxO9sNWFGwt0WmfaOMjVhsfO21ejuzwg=;
	b=gUb4S3OjiL5a5pV0zlrxIRnjxSc7rF48b0TjJOwZHBQUVGYNOqiZrXogwwFQ2XqsbIRyjI
	PHc1Oc4z3OoHi9QK+14xjkN77KyqEKBuwUdcYX3Y+um8M8d67MwDZlPM2Zjvi9xElb3r2u
	1dNgK3IwNgqCeYkp4jAS85Y4TBBaJX7tBA7+QLIbTvmcqOCFP4JaLfvJyswqP8+6iZK07h
	IFgM+j0N+HPYEyYDMg0kl8TmowA5LVE4yzYJSub+0TKcyJ6shxlIlwrHKAD12p/Yzqol+B
	7CZaPfkgU7ZDH+FsACSWpxry8ioVr43QH0opkBV9dCEgwRRqK7cM2SiMwatRIQ==
Message-ID: <bf7d38f4-9411-475c-80f0-1afcb99014f3@mailbox.org>
Date: Wed, 11 Feb 2026 23:14:28 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH 1/1] dt-bindings: input: ti,ads7843: allow spi-cpol
 property
To: Frank Li <Frank.Li@nxp.com>, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Alexander Stein <alexander.stein@ew.tq-group.com>,
 Marek Vasut <marex@denx.de>,
 "open list:INPUT (KEYBOARD, MOUSE, JOYSTICK, TOUCHSCREEN)..."
 <linux-input@vger.kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>
Cc: imx@lists.linux.dev
References: <20260211214409.3696442-1-Frank.Li@nxp.com>
Content-Language: en-US
From: Marek Vasut <marek.vasut@mailbox.org>
In-Reply-To: <20260211214409.3696442-1-Frank.Li@nxp.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-MBO-RS-ID: f13f7c9e9bf4074e251
X-MBO-RS-META: mhaq1ndkjb846xfbx9copkpbwkp8f4mn
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[mailbox.org,reject];
	R_DKIM_ALLOW(-0.20)[mailbox.org:s=mail20150812];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264862-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[nxp.com,gmail.com,kernel.org,ew.tq-group.com,denx.de,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[marek.vasut@mailbox.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[mailbox.org:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,mailbox.org:mid,mailbox.org:dkim]
X-Rspamd-Queue-Id: 1C8451280B7
X-Rspamd-Action: no action

On 2/11/26 10:44 PM, Frank Li wrote:
> Allow spi-cpol property for ti,ads7843.
... because ... why is this change valid ?

This information should be explained in the commit message.

