Return-Path: <devicetree+bounces-287055-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aFDZEwEQ3WkOZQkAu9opvQ
	(envelope-from <devicetree+bounces-287055-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Apr 2026 17:47:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AC0D13EE262
	for <lists+devicetree@lfdr.de>; Mon, 13 Apr 2026 17:47:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 447E33027B75
	for <lists+devicetree@lfdr.de>; Mon, 13 Apr 2026 15:40:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDBDA3CBE62;
	Mon, 13 Apr 2026 15:40:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fgoiIU9Y"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88DF23E122E;
	Mon, 13 Apr 2026 15:40:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776094816; cv=none; b=EmVt6fYur82EsTjEOnOcPeFnzm7Dq9lqV21vsZcBD4dHp7Y5ZfZWupFKWpUXv8g02dPuBPlwWjQtRng4dJczlCixyJerlXIWvd7OjoG2ArUhLbtWHPW605W7RnLghTScjUOzKkpVE6JC9CBTSubUyTn0pY12fNTO1bxCYVFc/Gk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776094816; c=relaxed/simple;
	bh=aHXOlXLBnV7UlZptakys60ytQxlgey+InItFueoAcSw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=thiJ5/m9cH78GxrKhJo0WzrtYRh6NcvF0COPBlY/eRiJiAatJi34ezwDEsEg4e0LS404wM0kF6+sl49gvFirBaSsLYUzoGyRD2eqPub6ySEDN4O9yQ3YczflKCMeb6bg/AhMUWPga1F1jxoxf8OveMRfBugC5ZNg2lx3aOsGfno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fgoiIU9Y; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BF8ECC2BCB0;
	Mon, 13 Apr 2026 15:40:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776094816;
	bh=aHXOlXLBnV7UlZptakys60ytQxlgey+InItFueoAcSw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fgoiIU9YXAMhhNLWe3EcROUjkJ92dAczKRrGN8x818+HdXazyrKifc4vPovBPpc2q
	 z4f2t3yT7t3mpN1nJX1oRYGQMEIDoP/kZkbPonOdsTBrdyelYXeKaoQsk+QbGc+J4F
	 BeveV17gfW/AZhLZ7kkdHgqP4sLatl+34CIB6wvKBxKEAlYzUJY/0jGCb3okCh1r0V
	 eF0KFFeDSEjh5Q8EaBi9Gj18dVGr5o7/OT6+3cpAvHa8/OQR+W12GEznPNSZJ8rIrU
	 WGrYdigOz8U1o4UawHqQ4QdzW2AZmtDV2MR2gu815MoH4OM6s95wt4xg+fMhw3LZ/0
	 6aAwj8jtTnCBg==
Date: Mon, 13 Apr 2026 16:40:11 +0100
From: Conor Dooley <conor@kernel.org>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 RESEND 1/2] dt-bindings: phy: mediatek,xsphy: add
 property to set disconnect threshold
Message-ID: <20260413-disorder-quote-8d8ee49c97eb@spud>
References: <20260413122836.4848-1-chunfeng.yun@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zOeBsFTfE7j7c4kz"
Content-Disposition: inline
In-Reply-To: <20260413122836.4848-1-chunfeng.yun@mediatek.com>
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-287055-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[kernel.org,collabora.com,linaro.org,gmail.com,lists.infradead.org,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mediatek.com:email,collabora.com:email]
X-Rspamd-Queue-Id: AC0D13EE262
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--zOeBsFTfE7j7c4kz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 13, 2026 at 08:28:35PM +0800, Chunfeng Yun wrote:
> Add a property to tune usb2 phy's disconnect threshold.
> And add a compatible for mt8196.
>=20
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collab=
ora.com>
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> ---
> v2: change property name
> ---
>  Documentation/devicetree/bindings/phy/mediatek,xsphy.yaml | 8 ++++++++
>  1 file changed, 8 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/phy/mediatek,xsphy.yaml b/=
Documentation/devicetree/bindings/phy/mediatek,xsphy.yaml
> index 0bed847bb4ad..9017a9c93eb9 100644
> --- a/Documentation/devicetree/bindings/phy/mediatek,xsphy.yaml
> +++ b/Documentation/devicetree/bindings/phy/mediatek,xsphy.yaml
> @@ -50,6 +50,7 @@ properties:
>            - mediatek,mt3611-xsphy
>            - mediatek,mt3612-xsphy
>            - mediatek,mt7988-xsphy
> +          - mediatek,mt8196-xsphy
>        - const: mediatek,xsphy
> =20
>    reg:
> @@ -130,6 +131,13 @@ patternProperties:
>          minimum: 1
>          maximum: 7
> =20
> +      mediatek,disconnect-threshold:
> +        description:
> +          The selection of disconnect threshold (U2 phy)

Why is this unitless? What does the threshold represent? Time? Voltage?
Something else?

> +        $ref: /schemas/types.yaml#/definitions/uint32
> +        minimum: 1
> +        maximum: 15
> +
>        mediatek,efuse-intr:
>          description:
>            The selection of Internal Resistor (U2/U3 phy)
> --=20
> 2.45.2
>=20

--zOeBsFTfE7j7c4kz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCad0OWwAKCRB4tDGHoIJi
0iK6AP4y8shTRP4IN/Atsh6JGHHKZgJ2BIXF2x//7klI+p459QD+PzeOECp3Gcpt
89sWMn/MpBwodYWGyX6lMwuCOCM6MQ8=
=kOMk
-----END PGP SIGNATURE-----

--zOeBsFTfE7j7c4kz--

