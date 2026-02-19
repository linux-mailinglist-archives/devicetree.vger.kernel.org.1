Return-Path: <devicetree+bounces-266559-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id f2ZjMbqRlmmDhgIAu9opvQ
	(envelope-from <devicetree+bounces-266559-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 05:29:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 10AAF15C048
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 05:29:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 85212301843C
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 04:29:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 906C9285C8B;
	Thu, 19 Feb 2026 04:29:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="Bwojwkgh"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCD4227603F;
	Thu, 19 Feb 2026 04:29:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771475383; cv=none; b=q0SGkLSJS/Bn1VUDAfNnTVXPJBW9QPXObU/GX1mSSHevISfzsEPzne54tdtJCD6CvQo0pnSKv5+1ELbS1YiHYd+ExhIw9fJuXjQz1xr9xyZJAUR0lqKAF87wbEG9zIloj1CBzXyje/EZVsE4kFbv7l1BzG3aZDrBKpru2ja8kqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771475383; c=relaxed/simple;
	bh=IW9SER9RIitJsBDF56Xv2ooeDZNlYWYueCy861NkBAI=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=ESIUNnc0+34mxiTCroocUO1vn0iWuuJkjrHn66kkHvrSGPB/B7prXLzl6KNjFS4HQgqpxcnmAFpMsF1ACylgWQQqNsUdUb/6JmUzhZg59V24a6ZCpM216PZgk/A4E2sbmNEltYFFolvTvi2HEYb7oxEQSa04diIHpftiewN4b1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=Bwojwkgh; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1771474857;
	bh=hXrvUZQrcqQlGaHQ11Cid7iVmcJJZTJxmPs9kL1e/rs=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=Bwojwkghc4xDICaeOQpHCSeB8PghyUnrrJCRmCC47tvOKYdQauZ9ySpiEMgRFHQje
	 W7XQ9bOGmCwzJzAxSgb2kQWMHDnx/ck8uhmj78B3mgYQd5yosqtJWjc/aDRaobYMyG
	 1ievMsTD9NDe9y/4hZJpDuMYcEeSZ3CCfADJ8yASmQo+o5gwgvR8A12pyU8vI6HtjI
	 0IkXNFnda2+4MMi1XQliOtPXfvhNz1fd72yaFBtJxUdN58Lcmj0y9qqNtfYGLK2fin
	 ml2MnBIN3YNT9i2P2sMskWwrRTHdNUV04FscunCJESHRjbT4iScD7f1Zj110Q19EG7
	 2ajMkwQcxDSQw==
Received: from [192.168.68.114] (unknown [180.150.112.60])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 1839760033;
	Thu, 19 Feb 2026 12:20:55 +0800 (AWST)
Message-ID: <6192440acc150d216de5e074299e579e891fc845.camel@codeconstruct.com.au>
Subject: Re: [PATCH v2] ARM: dts: aspeed: anacapa: Add retimer EEPROMs
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: dirkchen@amd.com, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
	 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Joel Stanley
	 <joel@jms.id.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
Date: Thu, 19 Feb 2026 14:50:54 +1030
In-Reply-To: <20260209-b4-anacapa-dts-fix-v2-1-fe446a7038bf@amd.com>
References: <20260209-b4-anacapa-dts-fix-v2-1-fe446a7038bf@amd.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[codeconstruct.com.au,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[codeconstruct.com.au:s=2022a];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266559-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[codeconstruct.com.au:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew@codeconstruct.com.au,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.0.0.50:email,codeconstruct.com.au:mid,codeconstruct.com.au:dkim,0.0.0.3:email,0.0.0.70:email]
X-Rspamd-Queue-Id: 10AAF15C048
X-Rspamd-Action: no action

Hi Dirk,

On Mon, 2026-02-09 at 15:58 +0800, Dirk Chen via B4 Relay wrote:
> From: Dirk Chen <dirkchen@amd.com>
>=20
> The Anacapa board features Atmel 24C2048 EEPROMs on i2c0 and i2c1, which
> are used to store retimer configurations. Add the corresponding device
> tree nodes to support these components.
>=20
> Signed-off-by: Dirk Chen <dirkchen@amd.com>
> ---
> Changes in v2:
> - Improved commit description to clarify that the change reflects
> =C2=A0 actual hardware as requested by the reviewer.
> - Removed mentions of other platforms to avoid confusion.
> - Link to v1: https://lore.kernel.org/r/20260202-b4-anacapa-dts-fix-v1-1-=
20d4b0114854@amd.com
> ---
> =C2=A0arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts | 12 +++++=
+++++++
> =C2=A01 file changed, 12 insertions(+)
>=20
> diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts b/a=
rch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts
> index 221af858cb6b..b8d248d99d7c 100644
> --- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts
> +++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts
> @@ -328,6 +328,12 @@ i2c0mux0ch3: i2c@3 {
> =C2=A0			#size-cells =3D <0>;
> =C2=A0		};
> =C2=A0	};
> +
> +	eeprom@50 {

Please order these nodes by ascending address. The node currently above
this one is i2c-mux@70 - eeprom@50 should go before it.

https://docs.kernel.org/devicetree/bindings/dts-coding-style.html#order-of-=
nodes

> +		compatible =3D "atmel,24c2048";
> +		reg =3D <0x50>;
> +		pagesize =3D <128>;
> +	};
> =C2=A0};
> =C2=A0
> =C2=A0// R Bridge Board
> @@ -362,6 +368,12 @@ i2c1mux0ch3: i2c@3 {
> =C2=A0			#size-cells =3D <0>;
> =C2=A0		};
> =C2=A0	};
> +
> +	eeprom@50 {

Same for this one.

> +		compatible =3D "atmel,24c2048";
> +		reg =3D <0x50>;
> +		pagesize =3D <128>;
> +	};
> =C2=A0};
> =C2=A0
> =C2=A0// MB - E1.S
>=20
> ---
> base-commit: 4c87cdd0328495759f6e9f9f4e1e53ef8032a76f
> change-id: 20260202-b4-anacapa-dts-fix-207ffe9a3b0c
>=20
> Best regards,

