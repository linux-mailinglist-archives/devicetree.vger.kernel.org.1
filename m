Return-Path: <devicetree+bounces-303292-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mAB6EEe1FmokogcAu9opvQ
	(envelope-from <devicetree+bounces-303292-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 11:11:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 920165E195E
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 11:11:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7DC6B3041A5C
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 09:04:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A5B33E51D4;
	Wed, 27 May 2026 09:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mWDTgM4l"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DFE03CA490;
	Wed, 27 May 2026 09:04:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779872663; cv=none; b=HeJh+zyuoR59VJ5D7lH/K+N+BWA/Ny7s5fJjulpaQ+ImiuIVo0i7gS40D8AjrQ46ZNWlkuYxN8hsRBlA0A5kD8Cd1zJSToyGvgGvAuZzVLNtDS0bZoI+8lbsy6XuDdQ0ZyQ2t7LHhHlcqchaF6YGt0DKp6i+5IUbvoMVrRjbw20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779872663; c=relaxed/simple;
	bh=lPQR09V0lQuaKBAYgnRoyLkKEpdd/Cl558ZxUtOfZoM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TYxu867cNgsiJ4BKiEaQZ0Fpw3kEZn50PPLLuXBGbfhvgwhbRTyFX6zFH28yS+Q9ZJVvQYKi/fyYFgEkBMruDZOSndv+HyyGX8T9POX1n9j1N00G7hlsyYC6N9FK/I3F24FHCcQEE2rkbjuapaNPpQw5eug00AmvOO9gJkNKSzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mWDTgM4l; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AC0DF1F000E9;
	Wed, 27 May 2026 09:04:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779872661;
	bh=HgTiie3gdp8A4Mkcwu6eWRcmLnotNowq9WN8RLEUORg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=mWDTgM4lWv6RNcm8njJCY0QV9rTE6zfnPE3t98L6zPq5nKpjkp5R3J1Qv+0qN1Rnc
	 mCl+jBSH/L53tlO2BeYr6CVpMSwkhMAXwoNKTV7xnihqk4f5yjHnCTbL9F2nOugNbD
	 X3gQdoOcYGn5DM+DYrpQg3AHUQkd5BCE+FtgwgdnSrlWBSIH4gr2GMHl4wjPbBW8dg
	 1LzScnP4lvVornYgF87+mE6Bv+84w/rlo7XCgtaCUC/U5sAllrT8+MDsw+BF3aK1L1
	 5bRV+ThnuETUQVRH+CpR2hZ2quSNtTBPNC2XaHUC2ONUZGLqcW3NlsLVnnQnmxkli5
	 Py/z3uVUjXgsA==
Date: Wed, 27 May 2026 11:04:16 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Frank.Li@oss.nxp.com
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Guenter Roeck <linux@roeck-us.net>, Frank Li <Frank.Li@nxp.com>, Wensheng Wang <wenswang@yeah.net>, 
	Brian Chiang <chiang.brian@inventec.com>, Cosmo Chou <chou.cosmo@gmail.com>, 
	Dixit Parmar <dixitparmar19@gmail.com>, Eddie James <eajames@linux.ibm.com>, 
	Antoni Pokusinski <apokusinski01@gmail.com>, Nuno =?utf-8?B?U8Oh?= <nuno.sa@analog.com>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, imx@lists.linux.dev
Subject: Re: [PATCH v3 1/1] dt-bindings: trivial-devices: add fsl,mc1323
Message-ID: <20260527-grinning-nebulous-ape-a347c8@quoll>
References: <20260522203810.832631-1-Frank.Li@oss.nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20260522203810.832631-1-Frank.Li@oss.nxp.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-303292-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,roeck-us.net,nxp.com,yeah.net,inventec.com,gmail.com,linux.ibm.com,analog.com,vger.kernel.org,lists.linux.dev];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_PROHIBIT(0.00)[2.250.240.128:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,0.0.0.0:email,nxp.com:email,2.251.23.144:email]
X-Rspamd-Queue-Id: 920165E195E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, May 22, 2026 at 04:38:08PM -0400, Frank.Li@oss.nxp.com wrote:
> From: Frank Li <Frank.Li@nxp.com>
>=20
> Add freescale 2.4 GHz IEEE=C2=AE 802.15.4/ZigBee mc1323 to fix the below
> CHECK_DTBS warnings.
>   arch/arm/boot/dts/nxp/imx/imx53-smd.dtb: /soc/bus@50000000/spba-bus@500=
00000/spi@50010000/mc1323@0: failed to match any schema with compatible: ['=
fsl,mc1323']
>=20
> Since the i.MX53 platform is more than 20 years old, it is difficult to
> find detailed information about how the MC1323 was used on the i.MX53 SMD
> board, as the functionality depended on firmware.
>=20
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
> chagne in v3
> - fix warning message
> change in v2
> - add descript about reason in commit message
> ---
>  Documentation/devicetree/bindings/trivial-devices.yaml | 2 ++
>  1 file changed, 2 insertions(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


