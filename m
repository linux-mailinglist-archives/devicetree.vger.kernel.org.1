Return-Path: <devicetree+bounces-300096-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WK9kB7RSDGpxfQUAu9opvQ
	(envelope-from <devicetree+bounces-300096-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 14:08:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 760F157E587
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 14:08:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 72A2330BBD6C
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 12:01:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DA134C040B;
	Tue, 19 May 2026 12:01:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wy9I042g"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B789220F2D
	for <devicetree@vger.kernel.org>; Tue, 19 May 2026 12:01:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779192069; cv=none; b=oLJ+R0Ghk8q1xg9sRVqcyoLJP0kOnrYAxwnJOKICwzVpgOUWo3RiOCFXoEOxJ4YIQfjDC9KwZNx0tg3K0UG/4cwfr6+GKvOyVctuIfq+WzPRwkMKyY3qnHI1m6NZ55D9AMn8vPRVyTee99tUwnqs4dhfuFu/7MVKJnVlazUF6dQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779192069; c=relaxed/simple;
	bh=BLTFlYEMYuLQYWXAsqAvU/r5dJbrg3kEYZroTgbJDrg=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=PxPBsAO93MJKLUnWidAl6SjzjFnMUTK+ToJ658WPBVfYQG0KlsjWFiG73ewTY0CwYSd0a6nK2zaH5P/IdG7v5xf+D2P1EMcONi+s1D9r4ftl7UkQUjglVHqJRhhf+K4Fc/DRX53vTcDtv2LDms1X07cPZu3hmCDa2VTmf2391Oo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wy9I042g; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4844BC2BCB3;
	Tue, 19 May 2026 12:01:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779192068;
	bh=BLTFlYEMYuLQYWXAsqAvU/r5dJbrg3kEYZroTgbJDrg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=Wy9I042gY9nlPy3qYvQlYaDqn0dpNyIXb8A/5T2YYKyyDWqOLoYM4YpbbeuNJFAeJ
	 hQjjLdN6d48V2zdH65i6FQZ3lKCoMJAmoAF3wKIlvK2EtYKpuG7+zSE41Eva0O1v9g
	 HIHhrIVnAIv+SiPdp2+tCXzPrDJoS4ExqTkOxUF75K28ZFqENN1VZsv4ViMQemvWNX
	 1fNXFIksOqxrxmIufoDxPrGoiaJyQ5q3JHOqIBLbFb4lnKA9paKk1tUBqRWA4ci+2U
	 M1e8X+KcyubrD7Qstbyb1erAd1vNOFqF987w4BYLlHjfcBWgKAeUEE1cPPDjRzC9sS
	 jVPoodadEQmPw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 4/6] arm64: dts: qcom: pm7250b: move vdd-vbus-supply to
 connector nodes
Reply-To: sashiko-reviews@lists.linux.dev
To: "Dmitry Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260519-fix-tcpm-vbus-v1-4-14754695282d@oss.qualcomm.com>
References: <20260519-fix-tcpm-vbus-v1-4-14754695282d@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 19 May 2026 12:01:07 +0000
Message-Id: <20260519120108.4844BC2BCB3@smtp.kernel.org>
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
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-300096-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,lists.linux.dev:replyto,sashiko.dev:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,0.0.5.220:email]
X-Rspamd-Queue-Id: 760F157E587
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Critical] Removing `vdd-vbus-supply` from `pm7250b.dtsi` breaks VBUS fun=
ctionality for older kernels booting with this updated device tree.
--

commit 248f42632176b717a6099ac7dd20eb6355d2d9ed
Author: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

arm64: dts: qcom: pm7250b: move vdd-vbus-supply to connector nodes

This commit removes the vdd-vbus-supply property from the pm7250b_typec
node and instead specifies vbus-supply on the connector node.

> diff --git a/arch/arm64/boot/dts/qcom/pm7250b.dtsi b/arch/arm64/boot/dts/=
qcom/pm7250b.dtsi
> index 0761e6b5fd8d1..43cab07126c5c 100644
> --- a/arch/arm64/boot/dts/qcom/pm7250b.dtsi
> +++ b/arch/arm64/boot/dts/qcom/pm7250b.dtsi
> @@ -86,7 +86,6 @@ pm7250b_typec: typec@1500 {
>  					  "msg-tx-discarded",
>  					  "msg-rx-discarded",
>  					  "fr-swap";
> -			vdd-vbus-supply =3D <&pm7250b_vbus>;

Will removing vdd-vbus-supply cause a regression for older kernels booting
with this updated device tree?

Older versions of the qcom_pmic_typec driver do not parse the vbus-supply
property from the connector child node, and instead call
devm_regulator_get(dev, "vdd-vbus") on the parent PMIC Type-C node.

Because NORMAL_GET is used, the regulator core will fall back to returning a
dummy regulator instead of failing. Will the driver silently enable the
dummy regulator, preventing the real VBUS from being enabled and breaking
USB Type-C power on existing boards like the Fairphone 4?

Should the deprecated vdd-vbus-supply property be retained for a transition
period to maintain backwards compatibility?

>  			status =3D "disabled";
>  		};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260519-fix-tcpm-v=
bus-v1-0-14754695282d@oss.qualcomm.com?part=3D4

