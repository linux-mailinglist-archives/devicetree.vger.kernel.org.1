Return-Path: <devicetree+bounces-321383-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id V4N3JRnbS2oDbgEAu9opvQ
	(envelope-from <devicetree+bounces-321383-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 18:43:05 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id EDC127136E8
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 18:43:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Gbfbru71;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321383-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-321383-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 347C3309ED30
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 16:14:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9343414DDD;
	Mon,  6 Jul 2026 16:14:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 912073BD246;
	Mon,  6 Jul 2026 16:14:38 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783354479; cv=none; b=SJUK0iQl0fgcnC9mEbV0OwscfvZV64T+oa3mvHnGcRlY98g59UNcQadOLzjPf3tOSzlvyOUMM9yZ1uuWmn5PIwItLwkNg5aYcogPUKNsZZF1knaCa8U7d8Nq0t1LnLlYxKg22mxvE+QdJDVKsMvXjLZ7vgxpN6ifRBBYum/pQ70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783354479; c=relaxed/simple;
	bh=HKM0dExR8kgNiguY6T5otF/5yX1HJ2aKYzELhikm+44=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=tKnzgYsPUqcHLNpsWlpqHq0CihHUMO7tYR0Gz5gOg/1ZhNNpH8J3cOWx57P+WxFt4dPMq/fFpauB7OiIbCrDM+QQ210boKoisUvTY+dWG9nU3n60pvyvyrDKr8Ln3tlMUWMSjV8bGolXPQ4EBXvMhck0VfaFXwozAK/ftT1Q0TA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gbfbru71; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C78081F000E9;
	Mon,  6 Jul 2026 16:14:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783354478;
	bh=HKM0dExR8kgNiguY6T5otF/5yX1HJ2aKYzELhikm+44=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Gbfbru71TeobpMh6h+KEpnzJcBrDZ+7sCyVZBNeOsSlKTxRCygMINM9x8nX42nK33
	 ZaFHHyd3NCNT3Q69P68bsWfpcN/H2m9/snt1CEXeShGPC2vmGM4Wurpf9Nwud/RnOk
	 NTZXRTJ8oxnhNEAXt8AYqJVq0WP5rKl3OMNHLqWBUD/MWtyRVTwqrW0DBWsw7+2StU
	 8fgKsYb+k5kR9B6wdZ1rme4H9oI34tMdRPCMFJ4TRxkxxxcJ7/KvshY4O7hZ6uMyfV
	 iUQD/M0p3fZbOQ43GKfw/G4WMYERFpro3ozryifU6m/EuW4yev7ET8mvrz+AGLVdOO
	 SzgXjE6lNzhQQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 1/2] platform: arm64: lenovo-thinkpad-t14s-ec: Add
 hwmon support for temperatures
Reply-To: sashiko-reviews@lists.linux.dev
To: "Daniel Lezcano" <daniel.lezcano@oss.qualcomm.com>
Cc: conor+dt@kernel.org, linux-hwmon@vger.kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260706160830.17698-2-daniel.lezcano@oss.qualcomm.com>
References: <20260706160830.17698-1-daniel.lezcano@oss.qualcomm.com>
 <20260706160830.17698-2-daniel.lezcano@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 06 Jul 2026 16:14:37 +0000
Message-Id: <20260706161437.C78081F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-321383-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,qualcomm.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp,sashiko.dev:url,smtp.kernel.org:mid,lists.linux.dev:replyto];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:daniel.lezcano@oss.qualcomm.com,m:conor+dt@kernel.org,m:linux-hwmon@vger.kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EDC127136E8

> Expose the Lenovo ThinkPad T14s EC environmental sensors through
> the hwmon subsystem.
>=20
> The driver now registers a hwmon device providing access to six EC
> temperature sensors corresponding to the SoC, keyboard area, base
> cover, PMIC/charging circuitry, QTM module and SSD. Sensor labels
> are exported to allow user space to identify each measurement.
>=20
> This allows standard monitoring tools such as lm-sensors to report
> platform temperatures.
>=20
> Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on T14s OLED
> Signed-off-by: Daniel Lezcano daniel.lezcano@oss.qualcomm.com

Sashiko has reviewed this patch and found no issues. It looks great!

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260706160830.1769=
8-1-daniel.lezcano@oss.qualcomm.com?part=3D1


