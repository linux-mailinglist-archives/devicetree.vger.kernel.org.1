Return-Path: <devicetree+bounces-299309-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KJluG3ryCmpv+AQAu9opvQ
	(envelope-from <devicetree+bounces-299309-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 13:05:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id F2B6E56B346
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 13:05:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 36A023008894
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 11:03:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C10B53F2117;
	Mon, 18 May 2026 11:03:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XWZhN6x0"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04BFC3F0773
	for <devicetree@vger.kernel.org>; Mon, 18 May 2026 11:03:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779102202; cv=none; b=lio7N1Im6wqtsIv08C4mEiZ0S00RuVL/Wh5S0QUQzHCnJGsoKVZa7a4V9SswAKQZppiL0/9W8DfJlt817PiurbRHn21MSah+VxAm7TmXDxy9hHZk9PAgnMuUcPXroVTVcZ8rCSeeeJuEGnt7m98fmUYnGFbFD0LXFOyIYn4bNOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779102202; c=relaxed/simple;
	bh=RC+EB6AGqYPaOpeRYcttsp5h/6sH2zJN0L9kROF4HRU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=oehns7xaTrUGGHIcP4hG1OVWfDq6f3j7jwFQA6Ae4VCYXduELsXfOnkDowL181a8KXexN0hZqUAfLwVLgPoekVZACIPXwh2ZHt8NPHkfYQ7TnhzN0hTyUEb1d5evZe2cQ5h6gQ1hlJtRuqkXW/QgF7uk82HB8OWipivNyQ1nH2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XWZhN6x0; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F1C39C2BCB8;
	Mon, 18 May 2026 11:03:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779102201;
	bh=RC+EB6AGqYPaOpeRYcttsp5h/6sH2zJN0L9kROF4HRU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=XWZhN6x0RQcRVf6MWIXcbqcjAKAebH1ThNb1XrDU59wyjlmBjgkKA/Bdwt9mlHxYH
	 ysTE6ZnpfyAOP8HwRdGs53d3P1xeHbhgpakRoZLSSulPebjb+dLq9CWmXdwmCGVmpu
	 Karo4wzXgPtHvsRlCBKYUHd78hti6hxkkzmgFNEab7iStYWutqwBfhTcKWlyduRhwS
	 qA8uKGb24PgkpshnYeYSeaQnVt5QU6/hHhjPWpi13HE1oJvO5eenb/6rHyhQIlsLZd
	 h+qCT/lTU8R2BdQBZoRYpCAfRbU69Rt83g0X4QFkNYw+8tp+xnVAnzql0JTiEk7mzN
	 cDr7kfOJm9kVQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/5] phy: core: Define TBT phy_mode
Reply-To: sashiko-reviews@lists.linux.dev
To: "Konrad Dybcio" <konradybcio@kernel.org>
Cc: olteanv@gmail.com, conor+dt@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org, linux-phy@lists.infradead.org, robh@kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260518-topic-usb4phy-v1-2-71d827c49dca@oss.qualcomm.com>
References: <20260518-topic-usb4phy-v1-2-71d827c49dca@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 18 May 2026 11:03:20 +0000
Message-Id: <20260518110320.F1C39C2BCB8@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: F2B6E56B346
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-299309-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org,lists.infradead.org,linaro.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sashiko.dev:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,lists.linux.dev:replyto]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] The tbt_phy_submode enum implicitly sets PHY_SUBMODE_TBT3 to 0, =
making it the hidden default submode for phy_set_mode().
- [Low] Using PHY_MODE_TBT as the generic mode with USB4 as a submode conce=
ptually inverts the industry standard hierarchy.
--

commit f1ad33ca1ed62aa8d4ab806ced09908d4e9f3625
Author: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

phy: core: Define TBT phy_mode

This commit introduces a new PHY mode for Thunderbolt (TBT) and USB4 PHYs
that require specific electrical and analog configurations. It defines
PHY_MODE_TBT along with PHY_SUBMODE_TBT3 and PHY_SUBMODE_USB4 submodes.

> diff --git a/include/linux/phy/phy-tbt.h b/include/linux/phy/phy-tbt.h
> new file mode 100644
> index 0000000000000..5f48059814e19
> --- /dev/null
> +++ b/include/linux/phy/phy-tbt.h
> @@ -0,0 +1,14 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> + */
> +
> +#ifndef __PHY_TBT_H_
> +#define __PHY_TBT_H_
> +
> +enum tbt_phy_submode {
> +	PHY_SUBMODE_TBT3,

Since PHY_SUBMODE_TBT3 is the first element, it implicitly evaluates to 0.

The generic phy_set_mode(phy, mode) macro in include/linux/phy/phy.h wraps
phy_set_mode_ext(phy, mode, 0).

Does this mean any driver calling phy_set_mode(phy, PHY_MODE_TBT) will
silently default to requesting the legacy TBT3 electrical/timing
configuration instead of USB4?

Would it be safer to reserve 0 for an unspecified state (e.g.,
PHY_SUBMODE_UNSPECIFIED =3D 0) to force explicit submode selection, or to
make the modern standard (USB4) the default?

> +	PHY_SUBMODE_USB4,
> +};
> +
> +#endif

> diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
> index ea47975e288ae..26a91c070f8ce 100644
> --- a/include/linux/phy/phy.h
> +++ b/include/linux/phy/phy.h

[ ... ]

> @@ -45,6 +46,7 @@ enum phy_mode {
>  	PHY_MODE_LVDS,
>  	PHY_MODE_DP,
>  	PHY_MODE_HDMI,
> +	PHY_MODE_TBT,

Is using PHY_MODE_TBT as the generic mode with USB4 as a submode the best
hierarchy here?

USB4 is the foundational open standard established by the USB-IF, and the
Linux kernel USB and Type-C subsystems natively treat USB4 as the primary
mode (e.g., TYPEC_MODE_USB4).

Could grouping USB4 under a Thunderbolt PHY mode cause semantic confusion
and contradict existing kernel USB nomenclature? Might it be more
consistent to use PHY_MODE_USB4 as the primary mode, with TBT3 as a
legacy fallback submode?

>  };
> =20
>  enum phy_media {

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260518-topic-usb4=
phy-v1-0-71d827c49dca@oss.qualcomm.com?part=3D2

