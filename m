Return-Path: <devicetree+bounces-275371-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WCr5H08ttGkEigAAu9opvQ
	(envelope-from <devicetree+bounces-275371-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:29:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D06BB285FF2
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:29:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C53E3321A373
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 15:25:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 101FD3A963A;
	Fri, 13 Mar 2026 15:25:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="siZ3hLr/"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FBE5392C50;
	Fri, 13 Mar 2026 15:25:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773415544; cv=none; b=n1BL6Rsr7kdd+EqR0eUO2nQetgP2L+O1oNOXNUvFXYKLxPlixIQVYsoXuWlvt3Pl/qgU4PEQOtVbOMh0rJIOVIT1CBPpK77YRB7qPvKCi7aGxxr7pET1/fX7ZhINu6IFYjFm/PM1EqIdJX2cBEddiWwiLj4dL8HpcAHHIcE2EdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773415544; c=relaxed/simple;
	bh=wusj2LTn7DPfUgzGzuSVUPLY6Qqm/Ben5xslJSr3GW8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=DQR+wo/KubTVsqIHOM7FwkHd5RJvL153lekSbq+lhDDKWGEhqBmIp79RdtUsXg1venNCinZto3aFtwhRQNerCXcDI43+LIX9hklXI362xOxb7yKS0yqA+8gndSyGtqA+vkAU3FtDyF1QpZZXtrUVV+ZlDptUx9nrNSp/tei9nT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=siZ3hLr/; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=FBGeKWKKKMA/GYKVdnALvhIQ+8mrBUlUzmRZ9SlygL8=; b=siZ3hLr/RBuaALUlg0nh7FZcY7
	lWf5bv5S/xfRiWZ7Kz/z2JTrBN3OdMkK4ZjW9DJWtdfXn3BiamcMdU31fI5nlqK48075qsDryk5NH
	gMPGOKk/7zQbpuhCsELAjcw2ffuRfNmj/bRb/3yCjIAgf3VGvPr8YLOiGyT4QVagg/qo5NXKdtFyN
	hQVidV3y9NX/XujTtkD5r+6ixUjpWNGCb3nX7jc28er9fN7xsVcXIoqvIFC+OeZgn6UW20Ch0J/kX
	Nd0GrGT+Jf7HZDJJi2VpQbCE4WWBJs9KF7xvbTEYEhFJCaPJ+bhRaMz1yrZC93UrHH7tK2jxby+xw
	CNQ9m07Q==;
From: Heiko Stuebner <heiko@sntech.de>
To: ulf.hansson@linaro.org, Fabio Estevam <festevam@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 shawn.lin@rock-chips.com, linux-mmc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Fabio Estevam <festevam@nabladev.com>
Subject:
 Re: [PATCH] dt-bindings: mmc: rockchip-dw-mshc: Fix the RV1103B compatible
Date: Fri, 13 Mar 2026 16:25:30 +0100
Message-ID: <12853156.O9o76ZdvQC@phil>
In-Reply-To: <20260313130835.708066-1-festevam@gmail.com>
References: <20260313130835.708066-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[sntech.de,quarantine];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[linaro.org,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-275371-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[sntech.de:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,nabladev.com:email]
X-Rspamd-Queue-Id: D06BB285FF2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Am Freitag, 13. M=C3=A4rz 2026, 14:08:35 Mitteleurop=C3=A4ische Normalzeit =
schrieb Fabio Estevam:
> From: Fabio Estevam <festevam@nabladev.com>
>=20
> RV1103B uses the same DesignWare MSHC controller IP version as RK3576.
>=20
> They have no "ciu-drive" nor "ciu-sample" clocks and use the phase
> tuning inside the controller.
>=20
> Fix it accordingly.
>=20
> Fixes: 517b1e3c9455 ("dt-bindings: mmc: rockchip-dw-mshc: Add RV1103B com=
patible")
> Suggested-by: Shawn Lin <shawn.lin@rock-chips.com>
> Signed-off-by: Fabio Estevam <festevam@nabladev.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

> ---
>  Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>=20
> diff --git a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml =
b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> index a75209bd2710..4965bb518c54 100644
> --- a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> +++ b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> @@ -43,11 +43,14 @@ properties:
>                - rockchip,rk3562-dw-mshc
>                - rockchip,rk3568-dw-mshc
>                - rockchip,rk3588-dw-mshc
> -              - rockchip,rv1103b-dw-mshc
>                - rockchip,rv1108-dw-mshc
>                - rockchip,rv1126-dw-mshc
>            - const: rockchip,rk3288-dw-mshc
>        # for Rockchip RK3576 with phase tuning inside the controller
> +      - items:
> +          - enum:
> +              - rockchip,rv1103b-dw-mshc
> +          - const: rockchip,rk3576-dw-mshc
>        - const: rockchip,rk3576-dw-mshc
> =20
>    reg:
>=20





