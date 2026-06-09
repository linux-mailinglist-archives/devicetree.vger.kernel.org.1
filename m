Return-Path: <devicetree+bounces-309233-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id dZUTOCJEKGpIBQMAu9opvQ
	(envelope-from <devicetree+bounces-309233-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 18:49:38 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 77083662990
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 18:49:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=IJW+qUz4;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309233-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309233-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 14D30315884A
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 16:39:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FE5D40149F;
	Tue,  9 Jun 2026 16:38:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 721683AA1A9
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 16:38:39 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781023120; cv=none; b=L3rmTTGCjZ90o/6jBsxHRRz3a2wc8gdaPDu777ZbfgoTS1FQQUd+FvOSO7xJWmiwW3q1xn9Cb0rHdXaGejV1Wuol1SQqHdCrPjGwI+fg3OUtzkya0yi3oamzbjWWEm8EKzbs9CmyBaxKAUuoTy+WDQXCzHPUgScHFeAgjL548gE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781023120; c=relaxed/simple;
	bh=Xi0AdM74Y2389Zw82/EngrV4Lpjd/IWzPP1dJQndfvU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=fqrpgXstDXk5uP9FMQZ5OQs0HJlb1K25F/mh7T/H0tD++S6hyD69FrXYOOj5ceOHiKppl6Pc8cYvvr7Tr3FvUwfrhuAxNy9T2Ux27PsjlgZ72uiIF51jP+uK+2+iNx0SpIcg3NFDEqynkihrxIpbv39fb8sqCm50YMRWGPST3oc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IJW+qUz4; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D2BCC1F00893;
	Tue,  9 Jun 2026 16:38:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781023119;
	bh=CJVs9Naejtr4lDjHwhsBgSUNRKxiPLKw1btHNDO/ZaA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=IJW+qUz45I6dPzcvpnQjucGx67gI3ZMOX5uN+NwhykHD/NoETuSzPQE9Qv833XY6B
	 5gW5Zg9F12WIbAoG7GjjzI95XSlcuMNVh9j3ecGcqUDnYkEqhi7McSQoegkmKm9pcV
	 ch2PDBCHKzosvwwG1gMqP/6xgwkSvajC8h4wMe+4/ng5QgqOYxoEkhMMhrLxhrYqct
	 34InkPnRL5DVmWUTn6n3vpBFtstiT7mHD1lVPUEL62bH/+r2mStCh9sL66O4k1FYeM
	 0RE95GsmJGqkpxbGTaiAHrmB9A7yp1DLusxXbbWMrnYHrpvw1EKSxehUVLKK7UmCGB
	 al9PwJ3XOKycQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 12/15] ASoC: qcom: sm8250: add SDM660 compatible
Reply-To: sashiko-reviews@lists.linux.dev
To: "Richard Acayan" <mailingradian@gmail.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260609162255.31074-13-mailingradian@gmail.com>
References: <20260609162255.31074-13-mailingradian@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 09 Jun 2026 16:38:38 +0000
Message-Id: <20260609163838.D2BCC1F00893@smtp.kernel.org>
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
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-309233-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:mailingradian@gmail.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp,sashiko.dev:url,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 77083662990

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The commit message claims to add the compatible string for SDM67=
0 devices, but it is completely missing from the implementation.
--

commit 075844a100dc2d901b8571b7631f5698eae8be05
Author: Richard Acayan <mailingradian@gmail.com>

ASoC: qcom: sm8250: add SDM660 compatible

This commit adds support for SDM660 devices to use WCD codecs
connected to internal MI2S.

> Add the compatible for SDM660 and SDM670 devices, which can use the
> support for WCD codecs connected to internal MI2S.

> diff --git a/sound/soc/qcom/sm8250.c b/sound/soc/qcom/sm8250.c
> index 1952c599e004f..76dc3a3f4a312 100644
> --- a/sound/soc/qcom/sm8250.c
> +++ b/sound/soc/qcom/sm8250.c
> @@ -210,6 +210,7 @@ static const struct of_device_id snd_sm8250_dt_match[=
] =3D {
>  	{ .compatible =3D "qcom,qrb2210-sndcard", .data =3D "qcm2290" },
>  	{ .compatible =3D "qcom,qrb4210-rb2-sndcard", .data =3D "sm4250" },
>  	{ .compatible =3D "qcom,qrb5165-rb5-sndcard", .data =3D "sm8250" },
> +	{ .compatible =3D "qcom,sdm660-sndcard", .data =3D "sdm660" },

[Severity: Medium]
The commit message indicates that this patch adds the compatible string
for SDM670 devices, but only the SDM660 compatible is added here in
snd_sm8250_dt_match.

Was the SDM670 compatible intentionally omitted from the array, or should
the commit message be updated to match the code?

>  	{ .compatible =3D "qcom,sm8250-sndcard", .data =3D "sm8250" },
>  	{}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260609162255.3107=
4-1-mailingradian@gmail.com?part=3D12

