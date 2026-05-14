Return-Path: <devicetree+bounces-297322-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2Pn7LPVlBWoZWAIAu9opvQ
	(envelope-from <devicetree+bounces-297322-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 08:04:37 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 140D253E2DF
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 08:04:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 334C9301F4A3
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 06:04:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1ED53ACA5A;
	Thu, 14 May 2026 06:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k61XJ5i4"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E8CD37DEB1
	for <devicetree@vger.kernel.org>; Thu, 14 May 2026 06:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778738674; cv=none; b=AJSXzfP2mNa7QNhFLzbPBdK0KHAOBtdrbGEZoHkVXqQztivWKZrP8qFFTsMWpBsMaOB4qVywaVVeOYuJqx9e2gQJF01WFRV/M2Vy92zk5aHpiI2ZUFtMn5CmLV26aEHxzHG4SmFlXkbF0PI1xlJIsbZkQijtEsY1jyyg8GyUCDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778738674; c=relaxed/simple;
	bh=Azi4tlEMBFtqvH2+J2pzcq0yarmfMiWLmWTBWnuQ1VQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=XhcjVeQlpc/sak0eFDiVHdZRszKtR7Ndo0Kbp0+c/VedzTLSFkhrVpfsF/ElBfI6RgRoehCZBvLxE2ulExNlcNuI1x3gBhuQrlFuJ2XGl/GKxpTUPX+ykq7gWsEIdUntorjQVufK9NQuS4Qj4t4GtQ5wNw1sGn1fSZXHz3PRpaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k61XJ5i4; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D8C5CC2BCC6;
	Thu, 14 May 2026 06:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778738674;
	bh=Azi4tlEMBFtqvH2+J2pzcq0yarmfMiWLmWTBWnuQ1VQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=k61XJ5i4pJJTQ/jb9y5kOF/W53T3z/nxN/bmHTcs3C3U+q3vEaJHtG6PqbfDgki4N
	 hnFy85cE/cQ92v69bKdIMf/7KBMvlCkHgQJZNEc94Pc4Mofvjan+R862XDS1Mxilnq
	 0EUrT+m+XBzdS050uStii+/MNkASzCmlMnhJv3yhHBSyP5WTOwX81MHyWoJF6baRqV
	 0+OA7sZv4Dg4vE06EzNlfL6KdjWwE8oOt1aj4okeBUFxHy7GkSy93hLY9HL0WHJD22
	 5QLPDeFOAFuCRoHs6Cw4n+D21A6Vw7ksrbQlVvBmk3hcxW45Jntk5a9BrV4gf0K4Cg
	 y1VtB3wvZJ25A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: clock: qcom: add missing definition
 for the USB2 PHY reset
Reply-To: sashiko-reviews@lists.linux.dev
To: "Bartosz Golaszewski" <bartosz.golaszewski@oss.qualcomm.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org, krzk+dt@kernel.org
In-Reply-To: <20260513-nord-clk-usb2-phy-v1-1-8eafcb2d5129@oss.qualcomm.com>
References: <20260513-nord-clk-usb2-phy-v1-1-8eafcb2d5129@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 May 2026 06:04:33 +0000
Message-Id: <20260514060433.D8C5CC2BCC6@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 140D253E2DF
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-297322-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,lists.linux.dev:replyto,smtp.kernel.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The newly added reset macro is incorrectly named `NE_GCC_QUSB3PHY_P=
RIM_BCR` instead of `NE_GCC_QUSB2PHY_PRIM_BCR`, contradicting the commit me=
ssage.
--

commit 995687d91ac26d49f12e0c08bcd404ce73e33d6c
Author: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

dt-bindings: clock: qcom: add missing definition for the USB2 PHY reset

This commit adds the missing USB2 PHY reset definition to the nord-negcc
clock bindings header. This provides the definition needed to add the USB
nodes in the device tree.

> diff --git a/include/dt-bindings/clock/qcom,nord-negcc.h b/include/dt-bin=
dings/clock/qcom,nord-negcc.h
> index 95f333d8e1aa7..c2d048d9fc9e9 100644
> --- a/include/dt-bindings/clock/qcom,nord-negcc.h
> +++ b/include/dt-bindings/clock/qcom,nord-negcc.h

[ ... ]

> @@ -120,5 +120,6 @@
>  #define NE_GCC_USB3_PHY_SEC_BCR					10
>  #define NE_GCC_USB3PHY_PHY_PRIM_BCR				11
>  #define NE_GCC_USB3PHY_PHY_SEC_BCR				12
> +#define NE_GCC_QUSB3PHY_PRIM_BCR				13

The commit message indicates this patch adds the USB2 PHY reset definition,
but the introduced macro is named NE_GCC_QUSB3PHY_PRIM_BCR.

Is this a typo? Should the macro be named NE_GCC_QUSB2PHY_PRIM_BCR to refle=
ct
a USB2 PHY rather than a USB3 PHY before it becomes locked into the
dt-bindings API?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260513-nord-clk-u=
sb2-phy-v1-0-8eafcb2d5129@oss.qualcomm.com?part=3D1

