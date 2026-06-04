Return-Path: <devicetree+bounces-306567-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id cpmbL1bhIGpM8wAAu9opvQ
	(envelope-from <devicetree+bounces-306567-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 04:22:14 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5022C63C790
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 04:22:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=JKpUOTk9;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306567-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306567-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 15B56303D12B
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 02:21:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DABFF27FD4F;
	Thu,  4 Jun 2026 02:21:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC7F322F388
	for <devicetree@vger.kernel.org>; Thu,  4 Jun 2026 02:21:36 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780539697; cv=none; b=MLzcIGHOse8qqqjkWknvgpiGdH+8NEx6wu+86lOpKXtrai8oOXEIcX1tSEgaywA3tt5Y3x8u4TtjQf1qOFjKu2oqDCaijvcl9GivMgZf836Qht1mpT+KAe4pO4XRW2+b/iuNsVEfbGONYredYYdMUpKsC0zZA++lK/J1+cVEnZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780539697; c=relaxed/simple;
	bh=SuxItwHyepC8+83VuIavMkIl8tdR67jqbxSwsKxb/Ds=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=eJACKVWhGtVWasobseo1ldX7S0JNBsjL+5JMZhiZ8c9I5+MgFteP/lIgg8X93laC5MesY2H+wqaawyFVGlOs5yZ7ib1ByYaFbIvk95A0KAZUQBvNZj0uv7TTXWbX5lkp9sHQO67Ea6a/0G6yKJNeYB3f6JLXIC6Z+Y8ZRYZ24Bw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JKpUOTk9; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4D1001F00893;
	Thu,  4 Jun 2026 02:21:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780539696;
	bh=SuxItwHyepC8+83VuIavMkIl8tdR67jqbxSwsKxb/Ds=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=JKpUOTk9bh7NJWH7IjuO2tvMl5QY0jEFBRRIw1et9j8vgBV2q8UNv0Yo6kZdOPAnI
	 ZHQJeUUiwKpj+XP49vmT1H6tKkZj9kGPAPdyilOkldgu5XYcWY+PDRZv0nxn8New5i
	 k7yz59+q7wcH0rKbkZPdVXs2mwyAo4P+dFap/AK9hDymGnZH8vWTbI/Muyox0571Ur
	 lH5Z8tDj+HAoHNepGorTs0k9i9gP/nSyiaEQIPYTLASNYH+t5B0CRWcbQivdssjsrY
	 KsdXJwWWCmWODbfeeihaP6WfEHVpVgKNbpEfciiUHeYUle7VyQXupK17sepQz0eieR
	 F1hOpFCIYIDOg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 4/7] ASoC: dt-bindings: loongson,ls-audio-card: Add
 ctcisz forever pi compatible
Reply-To: sashiko-reviews@lists.linux.dev
To: "Binbin Zhou" <zhoubinbin@loongson.cn>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <4f74b6d809bffb849f6df8f956f063a052cd288c.1780538113.git.zhoubinbin@loongson.cn>
References: <4f74b6d809bffb849f6df8f956f063a052cd288c.1780538113.git.zhoubinbin@loongson.cn>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 04 Jun 2026 02:21:35 +0000
Message-Id: <20260604022136.4D1001F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-306567-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:zhoubinbin@loongson.cn,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[loongson.cn:email,sashiko.dev:url,lists.linux.dev:replyto,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,smtp.kernel.org:mid,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5022C63C790

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The commit message specifies a different compatible string than =
what is actually added in the code.
--

commit 9b240b4406c6099d7dd0c7904cdd748ee7b2bb68
Author: Binbin Zhou <zhoubinbin@loongson.cn>

ASoC: dt-bindings: loongson,ls-audio-card: Add ctcisz forever pi compatible

This commit adds a new compatible string for the audio card on the
Loongson-2K0300 ctcisz forever pi SoC.

> Add a new compatible string `loongson,ls2k0300-ctcisz-audio-card` for
> the audio card on Loongson-2K0300 ctcisz forever pi SoC.

[Severity: Medium]
Is the compatible string in this description accurate? The commit message
specifies loongson,ls2k0300-ctcisz-audio-card, but the code actually adds
loongson,ls2k0300-forever-pi-audio-card to the properties enum in the
device tree bindings.

Subsequent patches in the series correctly implement driver support for
loongson,ls2k0300-forever-pi-audio-card, which suggests the code is correct
but the commit message is inaccurate. Could the commit message be updated to
match the code?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/cover.1780538113.gi=
t.zhoubinbin@loongson.cn?part=3D4

