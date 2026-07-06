Return-Path: <devicetree+bounces-320806-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id zQMZLN4QS2ofLgEAu9opvQ
	(envelope-from <devicetree+bounces-320806-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 04:20:14 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3339770C13E
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 04:20:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="lrvm47l/";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320806-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-320806-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 94B263007F7D
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 02:20:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2858D37C923;
	Mon,  6 Jul 2026 02:20:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E092937BE7E;
	Mon,  6 Jul 2026 02:20:06 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783304408; cv=none; b=FWQOOnJmWSovDzCc5vPTsPkZmNgk2Yem9bbMOOaAUlx1Khkqpm4AP8H49nic11LLcpc5ytESSDHE6ocDPy4OVyStSo46ePDzjuat+t2bVOfBhFg8tb2J3n1boZb8Ldx69Dh2rqL45BaLAe7wPjT+KP0jc8WJ2SNhBKkxwNy8CTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783304408; c=relaxed/simple;
	bh=kAfT/P4rKr5P1R3y6O8Hdp53QQ8ZZu3b8zF47LVhiwY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=s/f0GSk1XfZlgOqAxap2i52jfN5m38BKYJQ79BpldvXOIZswZHk4/ukJ2cCPQtWmlYp34YV4/M9j0kUg7/40ZgDqJDrAwq0yhPGTxj9q1WzxactYASFzYTSdE2lQqfbqCflpXPnyXT+3hPBCIcvjvchwmBkMOpyWNzAe3OhT3/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lrvm47l/; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C7BF41F000E9;
	Mon,  6 Jul 2026 02:20:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783304406;
	bh=kAfT/P4rKr5P1R3y6O8Hdp53QQ8ZZu3b8zF47LVhiwY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=lrvm47l/PRkJ8TdLOdy13O7yngh1TnAFLrF74/8in5mip9AOz/a1xYyAtUyYZ1vtf
	 kVXwJokRcY2HQurGDpfqfzTJzm88Mr3QHJAG/vDagvwThFyhudFWcqJrMMEKbjm8l+
	 6orNigr7miiHfZf43yn6HhRlMj68iicsGPPw3touwgVYQTfP/KqfaFieyrLeDdzofz
	 TGlhftFodGKatx8mMKBSoyPcJViOKsih6M/WcJT0nCfjnlV5ieasPglGiECzJoSDJS
	 JJXWopoAg0bWXZp6IOhOVffYCdg+AQGllGlDInX4XwMjGcONCcZygoGncOBZYvYmTO
	 xhOgA5yezF4aA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 5/5] hwmon: (pmbus/max20830): add support for
 max20830c and max20840c
Reply-To: sashiko-reviews@lists.linux.dev
To: "Alexis Czezar Torreno" <alexisczezar.torreno@analog.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, linux-hwmon@vger.kernel.org
In-Reply-To: <20260706-dev-max20830c-v2-5-37761e89bb5f@analog.com>
References: <20260706-dev-max20830c-v2-0-37761e89bb5f@analog.com>
 <20260706-dev-max20830c-v2-5-37761e89bb5f@analog.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 06 Jul 2026 02:20:04 +0000
Message-Id: <20260706022005.C7BF41F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-320806-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,vger.kernel.org:from_smtp,sashiko.dev:url,analog.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,lists.linux.dev:replyto];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:alexisczezar.torreno@analog.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:linux-hwmon@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3339770C13E

> Add support for MAX20830C and MAX20840 step-down DC-DC switching
> regulator with PMBus interface. MAX20830C is a different packaging
> for MAX20830, and MAX20840C supports 40A regulation compared to
> MAX20830 that is only 30A.
>=20
> Signed-off-by: Alexis Czezar Torreno <alexisczezar.torreno@analog.com>

Sashiko has reviewed this patch and found no issues. It looks great!

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260706-dev-max208=
30c-v2-0-37761e89bb5f@analog.com?part=3D5


