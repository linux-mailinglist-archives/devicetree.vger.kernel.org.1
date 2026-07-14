Return-Path: <devicetree+bounces-326385-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id d3tlHiFzVmoq5wAAu9opvQ
	(envelope-from <devicetree+bounces-326385-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 19:34:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C42B57577CA
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 19:34:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=gzg1mQj+;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326385-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-326385-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 26BC530FC0DD
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 17:31:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65007261388;
	Tue, 14 Jul 2026 17:31:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 853952F3614;
	Tue, 14 Jul 2026 17:31:10 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784050272; cv=none; b=HSSvXaOiYqbtI1JbUdR0ceuXlV1cqGINkJD3ikU5H+R21XmFu1+zwt7fPS6ilhgxJs6upam/64AKmX9B5CNJSRyPbCjIzSDMhyCY3kiRLCWqGsKRdMzc28yBBWBn5CJk+5gZiS1nXymP5TxqInNv8Ky8FLwT/vFlDgjl6RE/rTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784050272; c=relaxed/simple;
	bh=KFBql864CH6U7gCVfquaN6ZXflddMRJSomdfQ6HaPQI=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=hVHlXHfA74Z0/BerDJRW9i/cXdZ+QkFsqod4SN9+yxRM5k7EWAX96sK5eOZPMpw+9+93a4PszYc0l6lDu06LEqFoBKMeM+oxN+CDXCQMGbPQnEAQwLyO+EaOy5uEQbcjf1T3gX569yFy+6tffSS23ZZBztx+h8a0F9gRJgCuUL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gzg1mQj+; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B4A7C1F000E9;
	Tue, 14 Jul 2026 17:31:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784050270;
	bh=KA6bTba6wf4zsGMDKiAoAkSyb8oyQFTaJx14DUITZDg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=gzg1mQj+rOaU6+2B89QBeSDJqqbSiv+Se5fvZ2E59YmtY9n32h8z91ggUoZQL21Wz
	 2hZkutUlYiWU3dokrhhkR8GVTvH59GBPLoFfuGEYSspxujbNERSYqcSSoanLIWFEcC
	 nQLmDgliNz2/a4wg524KKYbbX6WrfAyiOoJ8Zl9CleJDX2qTRuz12A4F4eKtK/1nBv
	 AIuROdqleilY7b9zlNKiDp2n1EhcFov+tH77unlMJUJtOEHXls6rIj+PB4EtbXBqfl
	 E0sHp6VsF4Vo8kk3SY1XmUVGeL3u/yFiyTpoe2hkjuHkL7SuwKi3PMQym2p+45Mqm+
	 ewDXQc6jK6F/A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v23 12/13] arm64: dts: qcom: Add psci reboot-modes for
 monaco boards
Reply-To: sashiko-reviews@lists.linux.dev
To: "Shivendra Pratap" <shivendra.pratap@oss.qualcomm.com>
Cc: mfd@lists.linux.dev, devicetree@vger.kernel.org, robh@kernel.org, lee@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260714-arm-psci-system_reset2-vendor-reboots-v23-12-e7453c548c21@oss.qualcomm.com>
References: <20260714-arm-psci-system_reset2-vendor-reboots-v23-0-e7453c548c21@oss.qualcomm.com>
 <20260714-arm-psci-system_reset2-vendor-reboots-v23-12-e7453c548c21@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 14 Jul 2026 17:31:09 +0000
Message-Id: <20260714173109.B4A7C1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	URIBL_MULTI_FAIL(0.00)[sashiko.dev:server fail,smtp.kernel.org:server fail,sea.lore.kernel.org:server fail,qualcomm.com:server fail,lists.linux.dev:server fail];
	TAGGED_FROM(0.00)[bounces-326385-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:shivendra.pratap@oss.qualcomm.com,m:mfd@lists.linux.dev,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:lee@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,smtp.kernel.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,lists.linux.dev:replyto,sashiko.dev:url,vger.kernel.org:from_smtp];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C42B57577CA

> Add PSCI SYSTEM_RESET2 reboot-modes for monaco-evk and
> qcs8300-ride for use by the psci-reboot-mode driver.
>=20
> The following modes are defined:
> - bootloader: reboot into fastboot mode for fastboot flashing.
> - edl: reboot into emergency download mode for image loading via
>   the Firehose protocol.
>=20
> Support for these modes is firmware dependent.
>=20
> Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
> Signed-off-by: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>

Sashiko has reviewed this patch and found no issues. It looks great!

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260714-arm-psci-s=
ystem_reset2-vendor-reboots-v23-0-e7453c548c21@oss.qualcomm.com?part=3D12


