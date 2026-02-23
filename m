Return-Path: <devicetree+bounces-267477-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aDViMlVnnGmsFwQAu9opvQ
	(envelope-from <devicetree+bounces-267477-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 15:42:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 427B91782D9
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 15:42:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6CD0430D49C1
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 14:40:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B1203382F4;
	Mon, 23 Feb 2026 14:40:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow-tech.com header.i=@cknow-tech.com header.b="K7PJH590"
X-Original-To: devicetree@vger.kernel.org
Received: from out-185.mta0.migadu.com (out-185.mta0.migadu.com [91.218.175.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D39912BF006
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 14:40:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.185
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771857624; cv=none; b=TVVdgjae95WY9AsOKndDQ6R4rKbJAyQMmeb72han87a2HfvP3J3ECMMdqLPTJDhhLjfSn8Tw8w0MZ/cFBaBb4oCjop8jo7lhjqsEK5JkqX+Y+jkbPDvd8RDCHoMh8qJ4x9K6okM8rdH/nGvFrck2/2rODVNhCc/bzvJA9a9EGHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771857624; c=relaxed/simple;
	bh=q9gO9g6GAbxiUvlliWF9Tl7BEjGnbmpJ6tFjS/ahug0=;
	h=Mime-Version:Content-Type:Date:Message-Id:To:Cc:Subject:From:
	 References:In-Reply-To; b=HdpukdT8pvRWCiXImEiJ9Qj06iCmky7Bt+t4l7ZmYJ9Uai0wLpeZ2EX7u2txa7Kz6gx7Vqph9ye3OGAY6Nq4YO2l4ZwFt0Gxy76J90Ef1yc/PxgansZ9Lv+BgPm+ym5OMYpZ0xxD7WhzeKHakO8YHZYRt+XLxV3LPb9wVfw5KpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow-tech.com; spf=pass smtp.mailfrom=cknow-tech.com; dkim=pass (2048-bit key) header.d=cknow-tech.com header.i=@cknow-tech.com header.b=K7PJH590; arc=none smtp.client-ip=91.218.175.185
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow-tech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow-tech.com
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1771857609;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=gMw6gf/oTSSqQro1Zpiosb4Vw6V7R5A1fyETNWZeN+E=;
	b=K7PJH590JkvaDXDSFyhWY/LA9PkPKekKf738AGPatQKh8iq85Hc8h/vy4twZj70vWljspl
	nlQZwhndSsBDcdVIaX0u9MAXXt7FuCeqT8aISrgrchStN8NytmQP2Dv6Gs2HJx38zwnnJ+
	4KCZ9V+R+L7SkwIy4gPve9dGbD1rylnIC6bJ80B29RgLhOemXH2lrBNdtE9vzM8TY5nbW0
	OwsiUM4wURlwid38th3rn61jD4pRxL2YmPvcB7tin1mh3WGRX1icKn8e+Eaj9LwbjeMugO
	y5l0gQLK5PqGKFEZcAzcz7CFjJqnoqAonA/WzkHLXVDIJAeXGJ8kOdybeCqfJA==
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Mon, 23 Feb 2026 15:39:56 +0100
Message-Id: <DGMF3IX3J3BP.1XT41P0G8P5OD@cknow-tech.com>
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>, "Cristian
 Ciocaltea" <cristian.ciocaltea@collabora.com>
Cc: "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Heiko
 Stuebner" <heiko@sntech.de>, "Detlev Casanova"
 <detlev.casanova@collabora.com>, <kernel@collabora.com>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix vdec register blocks order on
 RK3576
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
References: <20260223-vdec-reg-order-rk3576-v1-1-560976566bd3@collabora.com>
 <aZxkDGzEQCCLKR-M@venus>
In-Reply-To: <aZxkDGzEQCCLKR-M@venus>
X-Migadu-Flow: FLOW_OUT
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[cknow-tech.com,quarantine];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[cknow-tech.com:s=key1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267477-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[12];
	DKIM_TRACE(0.00)[cknow-tech.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[diederik@cknow-tech.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,27b00000:email,1.168.49.192:email,cknow-tech.com:mid,cknow-tech.com:dkim]
X-Rspamd-Queue-Id: 427B91782D9
X-Rspamd-Action: no action

On Mon Feb 23, 2026 at 3:31 PM CET, Sebastian Reichel wrote:
> On Mon, Feb 23, 2026 at 02:25:05PM +0200, Cristian Ciocaltea wrote:
>> When building device trees for the RK3576 based boards, DTC shows the
>> following complaint:
>>=20
>>   rk3576.dtsi:1282.30-1304.5: Warning (simple_bus_reg): /soc/video-codec=
@27b00000: simple-bus unit address format error, expected "27b00100"
>>=20
>> Provide the register blocks in the expected address-based order.
>>=20
>> Fixes: da0de806d8b4 ("arm64: dts: rockchip: Add the vdpu383 Video Decode=
r on rk3576")
>> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
>> ---
>
> This fixes this warning, but instead creates a new one, because the
> reg-names order is fixed in the DT binding:
>
>    reg:
>      minItems: 1
>      items:
>        - description: The function configuration registers base
>        - description: The link table configuration registers base
>        - description: The cache configuration registers base
>  =20
>    reg-names:
>      items:
>        - const: function
>        - const: link
>        - const: cache

See also the prior discussion wrt this:
https://lore.kernel.org/linux-rockchip/edabca63-594e-44ae-8a3d-0f60987a8664=
@collabora.com/

>
> Greetings,
>
> -- Sebastian
>
>>  arch/arm64/boot/dts/rockchip/rk3576.dtsi | 6 +++---
>>  1 file changed, 3 insertions(+), 3 deletions(-)
>>=20
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3576.dtsi b/arch/arm64/boot/=
dts/rockchip/rk3576.dtsi
>> index 49ccdf12ef7e..45eb0d053a6f 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
>> @@ -1281,10 +1281,10 @@ gpu: gpu@27800000 {
>> =20
>>  		vdec: video-codec@27b00000 {
>>  			compatible =3D "rockchip,rk3576-vdec";
>> -			reg =3D <0x0 0x27b00100 0x0 0x500>,
>> -			      <0x0 0x27b00000 0x0 0x100>,
>> +			reg =3D <0x0 0x27b00000 0x0 0x100>,
>> +			      <0x0 0x27b00100 0x0 0x500>,
>>  			      <0x0 0x27b00600 0x0 0x100>;
>> -			reg-names =3D "function", "link", "cache";
>> +			reg-names =3D "link", "function", "cache";
>>  			interrupts =3D <GIC_SPI 308 IRQ_TYPE_LEVEL_HIGH>;
>>  			clocks =3D <&cru ACLK_RKVDEC_ROOT>, <&cru HCLK_RKVDEC>,
>>  				 <&cru ACLK_RKVDEC_ROOT_BAK>, <&cru CLK_RKVDEC_CORE>,
>>=20
>> ---
>> base-commit: 6de23f81a5e08be8fbf5e8d7e9febc72a5b5f27f
>> change-id: 20260223-vdec-reg-order-rk3576-cc2ec6e05e98
>>=20


