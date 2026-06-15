Return-Path: <devicetree+bounces-311656-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id f92XKXCYL2oPDAUAu9opvQ
	(envelope-from <devicetree+bounces-311656-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 08:15:12 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 076CF683B27
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 08:15:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b=phzulaZ+;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311656-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311656-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=mailbox.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AF461301AA40
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 06:12:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 149F73AF664;
	Mon, 15 Jun 2026 06:12:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mout-p-103.mailbox.org (mout-p-103.mailbox.org [80.241.56.161])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA15C3AFAE0;
	Mon, 15 Jun 2026 06:12:27 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781503959; cv=none; b=sG79XmqJwokk2CAn89/GoWEausyI7IdXbXL+Nb4IzC0Dl3DrQ6FewF1p3t4Y4YW3W1FaYbse0QXuWita4F+HfL8+FsYDK9hzcz/X4nVj0Jh1W8FC4KyWehCos8GD6DbildJlASeuSZVMv+QIJmPMhfanBJheJAW3ZuYCO2EyaXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781503959; c=relaxed/simple;
	bh=/VZ4zClhJzZrNLtXfhTdULU67m3ZVri2koYZWW3a9LM=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=sNZpWuZmmgFN18Z77RxvpddeDMhTZM+FwOlK9igzaBq0xjaTT33QaQIfX9tvFA6LzjfwqMkQzQ6gX7oD3YKsxnAjngSo8KBXxfsuh4uvF85Lm84CClw2gGVgnT33blZPyaE2fgvdQ1QoeZVh7DQamOv9+HT3WIj7OkquKjrnNig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=mailbox.org; spf=pass smtp.mailfrom=mailbox.org; dkim=pass (2048-bit key) header.d=mailbox.org header.i=@mailbox.org header.b=phzulaZ+; arc=none smtp.client-ip=80.241.56.161
Received: from smtp202.mailbox.org (smtp202.mailbox.org [IPv6:2001:67c:2050:b231:465::202])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-103.mailbox.org (Postfix) with ESMTPS id 4gf0C6218Bz9ts6;
	Mon, 15 Jun 2026 08:12:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1781503938;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/VZ4zClhJzZrNLtXfhTdULU67m3ZVri2koYZWW3a9LM=;
	b=phzulaZ+JyLogfpRQ7HBGAPyUMuCFbqDHsgS63IH86zVwE8JMmlOMK4nk7h97gqkdCHKxr
	85o+QvnD4AhHyhIbYJI3x805Kj7mVedsv5/10NsrzmctqpG06QaWDs0AMBbKod33GbqWbE
	CMXEgj7yXNvTP3OLaJ50rO2esiTi86Z2Gu3ousMffnuP7WqudyJYpUgPpCkSPRhJNNMFna
	/9YC0E+9+5uITErC3cZ2r6T0inWTtmPpHHPtC390U8Av2ISJnVBDdxOijDUBH066+ifG1x
	WV14TL+3PwH/B6+X927t8quPY+Yrj3EBRgDeEMCt9taYl+e2NHF5SfuJth5Bug==
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Mon, 15 Jun 2026 14:12:06 +0800
Message-Id: <DJ9EFPG561VZ.1WGRYYHJ2W9J9@mailbox.org>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, "Paul Walmsley" <pjw@kernel.org>, "Palmer
 Dabbelt" <palmer@dabbelt.com>, "Albert Ou" <aou@eecs.berkeley.edu>,
 "Alexandre Ghiti" <alex@ghiti.fr>, "Yixun Lan" <dlan@kernel.org>,
 <linux-pm@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-riscv@lists.infradead.org>, <spacemit@lists.linux.dev>,
 <devicetree@vger.kernel.org>
Subject: Re: [PATCH v3 1/2] cpufreq: spacemit: Add K1 cpufreq driver
From: "Shuwei Wu" <shuwei.wu@mailbox.org>
To: "Viresh Kumar" <viresh.kumar@linaro.org>
References: <20260612-shadow-deps-v3-0-2f3ba88611ff@mailbox.org>
 <20260612-shadow-deps-v3-1-2f3ba88611ff@mailbox.org>
 <bd4s2icqgusnuujvrpoag4cniy3g2e4bumecqxt5yffl77aqpq@kxg4dj4c2wk3>
In-Reply-To: <bd4s2icqgusnuujvrpoag4cniy3g2e4bumecqxt5yffl77aqpq@kxg4dj4c2wk3>
X-MBO-RS-ID: c7b5cf38a87e3ca26a7
X-MBO-RS-META: zjp4t73kp1bk1dehp139gn986jjq6dpj
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[mailbox.org,reject];
	R_DKIM_ALLOW(-0.20)[mailbox.org:s=mail20150812];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-311656-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:rafael@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:pjw@kernel.org,m:palmer@dabbelt.com,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:dlan@kernel.org,m:linux-pm@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:spacemit@lists.linux.dev,m:devicetree@vger.kernel.org,m:viresh.kumar@linaro.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[shuwei.wu@mailbox.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shuwei.wu@mailbox.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[mailbox.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mailbox.org:dkim,mailbox.org:mid,mailbox.org:from_mime,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 076CF683B27

Hi Viresh,

Thanks for your reply.

On Mon Jun 15, 2026 at 1:24 PM CST, Viresh Kumar wrote:
> On 12-06-26, 17:51, Shuwei Wu wrote:
>> K1 has two CPU cluster clocks but one shared CPU voltage rail. Use one
>> cpufreq policy for all CPUs, let the OPP core handle the shared regulato=
r
>> and the cluster0 clock, and update the cluster1 clock explicitly.
>
> If the clusters can do DVFS individually (as they have separate clocks), =
this
> should be represented as two separate policies. Isn't it ?

The clusters have separate clocks, but they share the same voltage supply.[=
1]
So two independent policies would be unsafe: one policy could lower the sha=
red
voltage while the other cluster is still running at a higher frequency.
This means they can't use different policies.

From a hardware perspective, the eight cores of the K1 are homogeneous,
so using the same policy for them is relatively reasonable.

I used a K1-specific driver because cpufreq-dt only manages one CPU clock
through the CPU device used for the OPP transition.
On K1, the policy needs to control two independent cluster clocks and one s=
hared
regulator, so the driver has to update the second cluster clock explicitly =
and
keep the ordering safe: raise voltage before raising either cluster, and lo=
wer
both cluster clocks before lowering the shared voltage.

[1] https://lore.kernel.org/spacemit/aeaXszeaE62rM6BJ@aurel32.net/

--=20
Best regards,
Shuwei Wu

