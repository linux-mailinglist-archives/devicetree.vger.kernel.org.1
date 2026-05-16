Return-Path: <devicetree+bounces-298787-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KOmjCQ7pCGoH/AMAu9opvQ
	(envelope-from <devicetree+bounces-298787-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 17 May 2026 00:00:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 44BC055E04D
	for <lists+devicetree@lfdr.de>; Sun, 17 May 2026 00:00:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B591C3015E39
	for <lists+devicetree@lfdr.de>; Sat, 16 May 2026 22:00:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C77F438736C;
	Sat, 16 May 2026 22:00:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="xZeIi0Tl"
X-Original-To: devicetree@vger.kernel.org
Received: from out-184.mta0.migadu.com (out-184.mta0.migadu.com [91.218.175.184])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7D033502AA
	for <devicetree@vger.kernel.org>; Sat, 16 May 2026 22:00:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.184
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778968812; cv=none; b=OBP3P+jr1XUNTwJIOCH8hhyXQFMb1Ld0KFrDMqYQyUbXlEY9zSfnmzoxpNYo9RfvOdmbtd6q29epJXjUuYYV7FDsN58vYPt6IZFgN8ICsT/3bYnH6ALuM/zvsxyCoJvtSeQ4mRitaPCKA45cyygmai5U/CbVM9Ji3cfZcWcCOyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778968812; c=relaxed/simple;
	bh=evs3SefPe7zmlbL4lVVeXN67p+GYCKzfw1GIeNqfdj0=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=RiFwjW311f9oQV2tuGR/ux8exjUyBq3xgI8j6U4o5hCSwL8vqd2w9HGstzD7aPnAqm17J6akoTVM+ENFHDA8C4SKq+jIPsYdVtX8dvjR11ow8iGTbOG9rC/ooeYaYlsigkJyR7yyNiefhUrDNvVdVK6S0QleuL1KIIZKTKFf5Lc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=xZeIi0Tl; arc=none smtp.client-ip=91.218.175.184
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
Content-Type: text/plain; charset=utf-8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1778968798;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=evs3SefPe7zmlbL4lVVeXN67p+GYCKzfw1GIeNqfdj0=;
	b=xZeIi0Tlqux/y6Id/ouEyJDMMhs36HofgMSFjOtY0uH4H4dxN41BM4AnUOW92emR28d267
	Re4XK8X2mj204JOpqLoKGt+8+ruYqMebIs+F6UJY+ZBPcUR4oSeeKJBGOXepyIvyg321Tj
	IKjuJqjLqx9cJaxmy5uNcr7mD2wLgmI=
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (1.0)
Subject: Re: Stop false review statements
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Roman Gushchin <roman.gushchin@linux.dev>
In-Reply-To: <4f3d7f48-5766-425b-91f6-0acdb5554584@kernel.org>
Date: Sat, 16 May 2026 14:59:44 -0700
Cc: debarbos@redhat.com, Arnaldo Carvalho de Melo <acme@kernel.org>,
 Greg KH <gregkh@linuxfoundation.org>,
 Konstantin Ryabitsev <mricon@kernel.org>,
 Guenter Roeck <linux@roeck-us.net>, sashiko-bot@kernel.org,
 sashiko-reviews@lists.linux.dev, sashiko@lists.linux.dev,
 Linux Kernel Workflows <workflows@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 devicetree@vger.kernel.org, kfree@google.com
Message-Id: <07602616-412B-4ED8-95D7-588C0D077EE3@linux.dev>
References: <4f3d7f48-5766-425b-91f6-0acdb5554584@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
X-Migadu-Flow: FLOW_OUT
X-Rspamd-Queue-Id: 44BC055E04D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linux.dev,none];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[linux.dev:s=key1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-298787-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[13];
	DKIM_TRACE(0.00)[linux.dev:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[roman.gushchin@linux.dev,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linux.dev:mid,linux.dev:dkim,sashiko.dev:url]
X-Rspamd-Action: no action



> On May 16, 2026, at 2:33=E2=80=AFPM, Krzysztof Kozlowski <krzk@kernel.org>=
 wrote:
>=20
> I find it opposite: clogging commits with useless information, because
> some arbitrary and completely closed-source tool did analysis means
> nothing to me one year later when I look at the commit in the Git history.=


This is simple not true: Sashiko is fully open-source, under Apache 2.0 lice=
nse
and the code belongs to LF. Yes, the instance behind sashiko.dev is using
Gemini 3.1 Pro LLM, which is not open-source, but it=E2=80=99s not a fundame=
ntal limitation -=20
Sashiko is supporting various LLMs, including open models - it=E2=80=99s jus=
t a practical
choice: to my knowledge the quality of open models is not on par with fronti=
er closed
models and it would require a non-trivial amount of hardware and infrastruct=
ure to run
an open model at the required scale.

Thanks=

