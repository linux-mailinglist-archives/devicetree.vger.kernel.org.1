Return-Path: <devicetree+bounces-299876-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eBPoNkYfDGqoWgUAu9opvQ
	(envelope-from <devicetree+bounces-299876-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 10:28:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E198B57A0CC
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 10:28:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 9FD8C3018A22
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 08:17:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AB143DCDAB;
	Tue, 19 May 2026 08:17:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HT3SeN3u"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67CBF1917CD
	for <devicetree@vger.kernel.org>; Tue, 19 May 2026 08:17:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779178639; cv=none; b=Q3dU0CbhHJO4AxxJjIK+m0DgrBOO2NjdnYhRuVIFLWjqXgpN0RoQN7G1VzGC25OhNqmOOtOR3tICTK8emCaZOpUsesE4S10GRojHW6BSYqOLgOHaTl7PA+D8MFhzwBdG6FMaFk+Ti4YiSImLVnyBpME6p8cRdxyl1XLkvkA+F5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779178639; c=relaxed/simple;
	bh=+CkX3Ct25kkDaGBbufT0s6p2kSmiSqfV78wPFNx3uM4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=CR3h8JLlCelamboUEfnCV9XUbFaEYicYy7BcnmKYSAHo6VTnyrtNv9tAZHqAhkxfl4qlArhR0wUTVDeUssfzkuv3yD7xKoBxjUySrKYvxc1qCnUMqSzB2JfcvJQKkFQ4c8UzanhdtrVlXqhtAjXyADmNsEzaKQbK5T3p0N9uFrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HT3SeN3u; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4F790C2BCB3;
	Tue, 19 May 2026 08:17:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779178639;
	bh=+CkX3Ct25kkDaGBbufT0s6p2kSmiSqfV78wPFNx3uM4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=HT3SeN3u+g0g/hInKILA/uADl6s140SIpSOtDer1RHyA6cj6jXrzWB85QcTTBU7BT
	 /0k/4x9yRq9Q35Tywl0CwlJwBmMjC4Ngd6CSHA37GvXdvi6/Bkr+Zx8oO3nP7qYxl0
	 vcim2gmYg6oewDrxgVpZSZt+LzW5MnrOHshUi3yni5uMTalBSPxOB8Ea4B1BVI6+LD
	 f2AgnMBui3a0u4qkIk5yTP22oDDy/Dkv9wGiTpKXA/o00Anl76WHGIIqEVCqnk/ORg
	 lMQvoM5Dgg5p4zXmEwhUJ4OuKq+dmTSUnJV5nCOKA9DTln1DrM2BErNohKb/il/u72
	 W3tsTbn3L2WdQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/2] arm64: renesas: r8a78000-ironhide: enable to use
 SCMI
Reply-To: sashiko-reviews@lists.linux.dev
To: "Wolfram Sang" <wsa+renesas@sang-engineering.com>
Cc: conor+dt@kernel.org, wsa+renesas@sang-engineering.com, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260519074702.3308-6-wsa+renesas@sang-engineering.com>
References: <20260519074702.3308-6-wsa+renesas@sang-engineering.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 19 May 2026 08:17:17 +0000
Message-Id: <20260519081718.4F790C2BCB3@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,lists.linux.dev:replyto,smtp.kernel.org:mid,renesas.com:email];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-299876-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Queue-Id: E198B57A0CC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The patch adds an include directive for `<dt-bindings/soc/renesas,r=
8a78000-mfis.h>`, but this header is not included in the commit and does no=
t exist in the repository.
--

commit 12e4bb3b81767937e835c191fd20007f6b57db69
Author: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>

arm64: renesas: r8a78000-ironhide: enable to use SCMI

This commit enables SCMI via MFIS-SCP and the STCM transport area to manage
clocks on the r8a78000-ironhide platform.

> diff --git a/arch/arm64/boot/dts/renesas/r8a78000-ironhide.dts b/arch/arm=
64/boot/dts/renesas/r8a78000-ironhide.dts
> index a721734fbd5d0..86bbe5fbb118a 100644
> --- a/arch/arm64/boot/dts/renesas/r8a78000-ironhide.dts
> +++ b/arch/arm64/boot/dts/renesas/r8a78000-ironhide.dts
> @@ -6,6 +6,7 @@
>   */
> =20
>  /dts-v1/;
> +#include <dt-bindings/soc/renesas,r8a78000-mfis.h>

Is the dt-bindings/soc/renesas,r8a78000-mfis.h header missing from this
patch? The file doesn't seem to be included in the commit or currently
present in the repository, which causes a build failure during the C
preprocessing step.

[ ... ]

> @@ -20,6 +21,23 @@ chosen {
>  		stdout-path =3D "serial0:1843200n8";
>  	};
> =20
> +	firmware {
> +		scmi: scmi {
> +			compatible =3D "arm,scmi";
> +			mboxes =3D <&mfis_scp 2 MFIS_CHANNEL_TX>, <&mfis_scp 2 MFIS_CHANNEL_R=
X>;

Are MFIS_CHANNEL_TX and MFIS_CHANNEL_RX defined anywhere else? Without the
header file included above, these macros remain undefined.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260519074702.3308=
-4-wsa+renesas@sang-engineering.com?part=3D2

