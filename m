Return-Path: <devicetree+bounces-304836-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8MPxNiL9G2rFIAkAu9opvQ
	(envelope-from <devicetree+bounces-304836-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 31 May 2026 11:19:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 454BA6154E1
	for <lists+devicetree@lfdr.de>; Sun, 31 May 2026 11:19:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 52ED8300D967
	for <lists+devicetree@lfdr.de>; Sun, 31 May 2026 09:17:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 100A22C08DC;
	Sun, 31 May 2026 09:17:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b="kkS0M9o6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-43167.protonmail.ch (mail-43167.protonmail.ch [185.70.43.167])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3CC32343BE;
	Sun, 31 May 2026 09:17:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.167
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780219026; cv=none; b=JP5XUYcKBPCGA1d4+VQt3/fzxOlMsUxftCjO3eyT99yY6631C377aGhH2wlnFOBeesAixFrkk59jCnoWFJWhJwwbf8PNDIZDaBZtZfQdE5NewjA7PhOR2b4muC1bkb8oJ1eeXeITZYMV/Squ3/UHgM4JSTYvvB2PE/8cF5JWAeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780219026; c=relaxed/simple;
	bh=jHz8CVODyq/bGFHHw1uFbsab5fAepr9pEEGfvssULnA=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=YfD4XiWImYp6wh9il/8TrT+CHFePDGqe2Lc1btpiYt1jWUwZRRBIwhJRQQyuk3b3GPjHstX6S5wek6QGxpLGpy5dSh3PNjfjEwhh7ieg4bmXVbA/LkZ5apl8MnVvZ3iSvWRiRXQZAZr+/bmsHSW6nLbqEyoU1frn4XCcZt6Rt54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.com; spf=pass smtp.mailfrom=protonmail.com; dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b=kkS0M9o6; arc=none smtp.client-ip=185.70.43.167
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=protonmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1780219021; x=1780478221;
	bh=6Mi/KLOUb5arO23rwQT+9y7j1zQmga8RdlBDubg+76U=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=kkS0M9o65E9vzU0tAQN3sG+1sNy/wqRGMLlBz6rgYzhRrhrKCYAcix10tZSei36Rq
	 A49IY34WBaDVMNn7Zt7eyW4Z3ernS+5S/Vwn2OhMTe3ohROjGNJj1xywXCUJ4X2GiW
	 +ZOD1u1hbuP5jc5AEIZLB702dpCk1xO+PccTCrDCugGA0zfHhMxEhzn8LUt4V2wjP0
	 K4JH90O8bLjt0AUV3k/ykRjl6LzupDieaAVunXpN7Onl7bNyl9FwsCNyJtXZSz8pfq
	 BeGeufQuklPkukCPDtABDmasJ33OVFmaoN44yBoDgl74Qj5o6Ph9Mo9rzcr9nGlM3t
	 dhq+BtB6dMFjg==
Date: Sun, 31 May 2026 09:16:56 +0000
To: y.oudjana@protonmail.com
From: Yassine Oudjana <y.oudjana@protonmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Flora Fu <flora.fu@mediatek.com>, Alexandre Mergnat <amergnat@baylibre.com>, Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-input@vger.kernel.org
Subject: Re: [PATCH v2 0/4] MediaTek MT6735+MT6328 SoC/PMIC pair base support
Message-ID: <wQ6oaceRZHkMTNpnvLBdrScK2DqHJ1boThn_3lf03guV83pOD24rG4c-a66ziGBrXPj09-xHK_pJoA1QvsP_wxvGZGT3y8KAhnIXaRERtH0=@protonmail.com>
In-Reply-To: <20260531-mt6735-pwrap-mt6328-pmic-v2-0-dac37bf92894@protonmail.com>
References: <20260531-mt6735-pwrap-mt6328-pmic-v2-0-dac37bf92894@protonmail.com>
Feedback-ID: 6882736:user:proton
X-Pm-Message-ID: 06f8c2a7c3d9eadd276875d922d56e33b78a84b5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[protonmail.com,quarantine];
	R_DKIM_ALLOW(-0.20)[protonmail.com:s=protonmail3];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-304836-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[protonmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[protonmail.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[protonmail.com:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[y.oudjana@protonmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,collabora.com,mediatek.com,baylibre.com,vger.kernel.org,lists.infradead.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,gitlab.com:url,protonmail.com:email,protonmail.com:mid,protonmail.com:dkim]
X-Rspamd-Queue-Id: 454BA6154E1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sunday, May 31st, 2026 at 11:10 AM, Yassine Oudjana via B4 Relay <devnul=
l+y.oudjana.protonmail.com@kernel.org> wrote:

> These patches are part of a larger effort to support the MT6735 SoC famil=
y in
> mainline Linux. More patches (unsent or sent and pending review or revisi=
on)
> can be found here[1].
>=20
> This series adds base support for the MediaTek MT6735 SoC and MT6328 PMIC=
 pair.
> This includes PMIC wrapper support on the SoC side and regulators and key=
s on
> the PMIC side. The PMIC has other blocks such as an audio codec and batte=
ry
> charger which can be supported in the future.
>=20
> Changes since v1:
> - Fit regulator definitions in 2 lines and 100 characters whenever possib=
le.
> - Remove get_mode and set_mode ops for regulators that don't support them=
.

Forgot to mention:
- Remove MD register definitions.

>=20
> [1] https://gitlab.com/mt6735-mainline/linux/-/commits/mt6735-staging
>=20
> Signed-off-by: Yassine Oudjana <y.oudjana@protonmail.com>
> ---
> Yassine Oudjana (4):
>       dt-bindings: mediatek: pwrap: Add MT6735 compatible
>       soc: mediatek: pwrap: Add support for MT6735 and MT6328 SoC/PMIC pa=
ir
>       regulator: Add driver for MediaTek MT6328 PMIC regulators
>       Input: mtk-pmic-keys - Add support for MT6328
>=20
>  .../bindings/soc/mediatek/mediatek,pwrap.yaml      |   1 +
>  drivers/input/keyboard/mtk-pmic-keys.c             |  15 +
>  drivers/regulator/Kconfig                          |   9 +
>  drivers/regulator/Makefile                         |   1 +
>  drivers/regulator/mt6328-regulator.c               | 500 +++++++++++++++=
++++++
>  drivers/soc/mediatek/mtk-pmic-wrap.c               | 177 +++++++-
>  include/linux/regulator/mt6328-regulator.h         |  49 ++
>  7 files changed, 749 insertions(+), 3 deletions(-)
> ---
> base-commit: 7da7f07112610a520567421dd2ffcb51beaefbcc
> change-id: 20260531-mt6735-pwrap-mt6328-pmic-de481d5c5e89
>=20
> Best regards,
> --
> Yassine Oudjana <y.oudjana@protonmail.com>
>=20
>=20
> 

