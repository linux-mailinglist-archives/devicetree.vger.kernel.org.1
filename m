Return-Path: <devicetree+bounces-299443-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eBtANm8dC2q8DgUAu9opvQ
	(envelope-from <devicetree+bounces-299443-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 16:08:47 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 9291456E5E5
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 16:08:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 8348B3026F32
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 13:59:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D8A148164C;
	Mon, 18 May 2026 13:59:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="stGVFnjU"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A26E64AA4
	for <devicetree@vger.kernel.org>; Mon, 18 May 2026 13:59:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779112798; cv=none; b=e1NTHbIUUSEiCLcDGmXMD8srNaKPrLGxCj6uz9/AkL1UNjrVbTcPGdVN1bL61oXr6uOOwEjCDDA6gPc5mjih4hNWpMUTBAte3BTfkA4Vph0UP0M6wWTyiCKtgB4yohG7iFFkvw0jR4YH1+dYjHC4SGhC+jp3/FaYalg7HgUDsaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779112798; c=relaxed/simple;
	bh=dcbegfIT75r+BtDPix/k/0cHTAvX8uOvkJdiDLNy6io=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=nFGwxb5habPZ/kW2q1PN+dfWWIlnxCc6zy8KijDfEhQkdu1fhM28gNQxDbjf32+xRm1l2Igpeva4jK94i3PrUbrOS+/4wgkZVu9hJxa6xSJ+POBVoB0reTerdpto+Np1cPCRrX4dk8cOirgW8DxVunh1Exry2xiB0t71whswjxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=stGVFnjU; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C942AC2BCB7;
	Mon, 18 May 2026 13:59:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779112798;
	bh=dcbegfIT75r+BtDPix/k/0cHTAvX8uOvkJdiDLNy6io=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=stGVFnjUJ0WA5RfUKEFVcgSiJVbAJYZgZAKAk3X5k+JORTIINIYSJvzT6zBN+erqF
	 79rWw+/15RL04O1xA+qwr0GXq6T8YQTUF9WG37kqzV55M7uJR2lRRJUMFcat46G3by
	 89OjDq/kfFeWDPCDVqG6Su4Zgy56kkjo583RHQ7Li/KoSIhL94TKJBvfo7BYjA0CcA
	 d0CDaCjPbsAcBUicEWM93GWnU5Y2Xja2LEY5Y+O0sZDak+XprbnjTH0Ys1ZmcU3MyP
	 gWTNiEPLzejR9LbWRzxiuQ+v/5fNzPaCTnO2W3ylduyW9kgSPq5NgfqC/+yL1dDxeY
	 GpP9tOGD+BHGQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: soc: qcom: pmic-glink: Document
 batteryless property
Reply-To: sashiko-reviews@lists.linux.dev
To: "Rakesh Kota" <rakesh.kota@oss.qualcomm.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260518-add_dc_in_support-v1-1-31fbaa329879@oss.qualcomm.com>
References: <20260518-add_dc_in_support-v1-1-31fbaa329879@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 18 May 2026 13:59:57 +0000
Message-Id: <20260518135957.C942AC2BCB7@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-299443-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sashiko.dev:url,lists.linux.dev:replyto,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,qualcomm.com:email]
X-Rspamd-Queue-Id: 9291456E5E5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The device tree binding description references Linux-specific subsy=
stem constants and dictates OS software behavior instead of strictly descri=
bing the hardware.
--

commit 27eac983fdf61301b30bef6fc60e922a67eecbbd
Author: Rakesh Kota <rakesh.kota@oss.qualcomm.com>

dt-bindings: soc: qcom: pmic-glink: Document batteryless property

This commit documents a new boolean property, qcom,batteryless, for the
PMIC Glink battery manager node. It is intended for systems powered by 12V
DC adapters rather than batteries.

> diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.y=
aml b/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml
> index ff01d2f3ee5be..5f7b90d37ea09 100644
> --- a/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml
> +++ b/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml

[ ... ]

> @@ -72,6 +72,14 @@ properties:
>        - const: charge_limit_end
>        - const: charge_limit_delta
> =20
> +  qcom,batteryless:
> +    $ref: /schemas/types.yaml#/definitions/flag
> +    description:
> +      When present, the battery manager registers the power supply as
> +      POWER_SUPPLY_TYPE_MAINS instead of BATTERY. This is intended for
> +      12V DC adapters, where exposing the supply as a battery would
> +      incorrectly trigger userspace battery power-saving sequences.

This isn't a bug, but does this description reference Linux-specific
subsystem constants rather than strictly describing the hardware?

Device tree bindings are expected to be OS-agnostic and describe physical
hardware characteristics. The current text explicitly mentions
POWER_SUPPLY_TYPE_MAINS, BATTERY, and userspace behavior.

Could this be rephrased to focus on the physical hardware state, such as
indicating the system is powered by a continuous fixed DC source, instead
of dictating OS driver behavior?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260518-add_dc_in_=
support-v1-0-31fbaa329879@oss.qualcomm.com?part=3D1

