Return-Path: <devicetree+bounces-318738-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id M8zdOLY0RWqi8goAu9opvQ
	(envelope-from <devicetree+bounces-318738-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 17:39:34 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A46006EF53B
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 17:39:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ZzmD9K5K;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318738-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-318738-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4C790300AB04
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 15:34:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C04FB47F2F9;
	Wed,  1 Jul 2026 15:34:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0F333B3C0D;
	Wed,  1 Jul 2026 15:34:35 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782920076; cv=none; b=XC0a8a/5bUyye9akYU/tlL/mBZ4sbvi3zyPW2Kf33NJUwm28h+sU8/XfYJBAIzY4Mpq9Dv7twRytw/kO3cgLZmahWBJXWmlWxcK3NI8bEZ8rtGz5eJBsVEawN/PrI2zresm25T/mQQMjR6hTK9ESZuYuw3xviiCWfxD2EtSF2w8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782920076; c=relaxed/simple;
	bh=hg8e9oSN+Lxkuoie78UE6DfTPYWwsSgEBBOY7NFNDHA=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=PhJi6Ul7HFW2eTjO2TJtuSKEaBuJ6zo34hbc2e5dXQcUACchPFcGqda7UBgNzzJMKLl88nscK8lViQou2wjNgkrHpQCtstZVkAi890sXfeRMXMwThL6pXN3F0zcn5FkHbz7DT12fS9q5JNQ8vGdB4Xn3utY22ClzznJKzpQqqRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZzmD9K5K; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 133A41F000E9;
	Wed,  1 Jul 2026 15:34:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782920075;
	bh=hg8e9oSN+Lxkuoie78UE6DfTPYWwsSgEBBOY7NFNDHA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ZzmD9K5Kr/gj4yWjTzOkIb5ozpowWlGhwP0lQDDv6E0NKtaYTa07H4hCG3TqK1gC1
	 2rWk1kvRcAaCO5xdEXR16HppF1z6Q6hpi2tOcmYlBqsrK+JSHPRnciGwOnUSx9/DAS
	 tKF70JJUA7rcpAwSv3RpvGkDsElGB4q7xzTS/+FaeqmdW2CUh0lV0HHTCBNo6miSS9
	 vL0mY9LZaD8LOEGsuZKVJmS0/q7Mb8OF8TxEu0rvkntOYLOgNwJWw/leFVz5dFtclM
	 Oa4uaFe/2rvzIJHMQdnXgYvZ6rdkRBFwiQ9icwMISauVk31xK0uieKnYT/77oAqqm3
	 QaQuLJ4Ko+v8Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] dt-bindings: PCI: mediatek-gen3: Add support for MT8189
 SoC
Reply-To: sashiko-reviews@lists.linux.dev
To: "Louis-Alexis Eyraud" <louisalexis.eyraud@collabora.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, linux-pci@vger.kernel.org
In-Reply-To: <20260701-mt8189-dt-bindings-pcie-v1-1-7c7a65087654@collabora.com>
References: <20260701-mt8189-dt-bindings-pcie-v1-1-7c7a65087654@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 01 Jul 2026 15:34:34 +0000
Message-Id: <20260701153435.133A41F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-318738-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,lists.linux.dev:replyto];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:louisalexis.eyraud@collabora.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:linux-pci@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
X-Rspamd-Queue-Id: A46006EF53B

> Add compatible for MT8189 PCIe Gen3 controller, that is compatible with
> the one found MT8192.
>=20
> Signed-off-by: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>

Sashiko has reviewed this patch and found no issues. It looks great!

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260701-mt8189-dt-=
bindings-pcie-v1-1-7c7a65087654@collabora.com?part=3D1


