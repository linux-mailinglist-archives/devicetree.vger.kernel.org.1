Return-Path: <devicetree+bounces-314080-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id F70hEtnjN2obVQcAu9opvQ
	(envelope-from <devicetree+bounces-314080-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 21 Jun 2026 15:15:05 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 861216AADDD
	for <lists+devicetree@lfdr.de>; Sun, 21 Jun 2026 15:15:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=aurel32.net header.s=202004.hall header.b=YNyrsNRJ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314080-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-314080-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=aurel32.net;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 378F1300D857
	for <lists+devicetree@lfdr.de>; Sun, 21 Jun 2026 13:15:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6AEF366822;
	Sun, 21 Jun 2026 13:15:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from hall.aurel32.net (hall.aurel32.net [195.154.119.183])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0F4728C84A;
	Sun, 21 Jun 2026 13:15:00 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782047702; cv=none; b=KsMOYqPb8wpsl8nGAZkvy/+WMjHm6xMlAw5/ntVLJRhACM8L0cT9yij3ZkGwG8gCRMUA3RnnM6FsclcR1JUUV/9nGUvK7oR51S3HtaR3Tabru9ESoyhn5l48RsE/tMygjvRqO/Jje6F1dDh4Ic2HTDMYlj81GJzn3kZ2EV2QObI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782047702; c=relaxed/simple;
	bh=Ggyqf4V9QdplCClTk9Hgs7Wmob2TRbKYdHkBOyzeNPY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qsl2MeppW46ATYDUh2iN9Rz8qsKLl7wfioG9LXhIGqZ8dgxhtbWN+9IHRwd2FPZFogkf8IRpOgqCf4/94keDd5Yi18ZmvdKdPmOxyVBkJ6vtPjBFEUodwPwZx4OpkIEdOit5YpDBQRJlpVZpXKzRTDlISeKx72tdS50XAmyvEb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=aurel32.net; spf=pass smtp.mailfrom=aurel32.net; dkim=pass (2048-bit key) header.d=aurel32.net header.i=@aurel32.net header.b=YNyrsNRJ; arc=none smtp.client-ip=195.154.119.183
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=aurel32.net
	; s=202004.hall; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:From:Reply-To:
	Subject:Content-ID:Content-Description:X-Debbugs-Cc;
	bh=b+7H29dkhVMGO3TYR7p0AjHCtsPqiNAR3VmqxDlgg4k=; b=YNyrsNRJGh7cNXixVSGLbXkyEk
	T2/vIARUjYirxMyH2xW4s2iHF1+SyuVXCAhsx17kSaGPIt9VCEuhS7RZHOLUoqMPRRG/APRk6ZMJi
	sz7ka3/uEhDz1YzflamAKg4DTOUVCnMYeFdxW8PjHiMRzxxm3miJFfNJL0WFLUtt2WLkioGyj7liw
	BH8K8gporiEqUMXxArI8SON95X2V7JP66KqR6so/4uxrR99r3WPeX+hqwZlrLI+vZRA2Ryvvy+yW0
	3ZoeEK0h0NrIALxny7BBN8wSUdQFvSfTm4+Y+67MVh8BapQ8XdARoRG1yAGXvGTM3SeE745RLoQ7i
	KCQQOSLg==;
Received: from authenticated user
	by hall.aurel32.net with esmtpsa  (TLS1.3)  tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <aurelien@aurel32.net>)
	id 1wbI0h-00000001gBd-1xzv;
	Sun, 21 Jun 2026 15:14:51 +0200
Date: Sun, 21 Jun 2026 15:14:50 +0200
From: Aurelien Jarno <aurelien@aurel32.net>
To: linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	Yixun Lan <dlan@kernel.org>
Cc: Aurelien Jarno <aurelien@aurel32.net>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	"open list:RISC-V ARCHITECTURE" <linux-riscv@lists.infradead.org>,
	"open list:RISC-V SPACEMIT SoC Support" <spacemit@lists.linux.dev>
Subject: Re: [PATCH 2/5] riscv: dts: spacemit: enable the i2c2 adapter on K3
 Pico-ITX board
Message-ID: <ajfjyvSCVBVgr-UO@aurel32.net>
Mail-Followup-To: linux-kernel@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	Yixun Lan <dlan@kernel.org>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	"open list:RISC-V ARCHITECTURE" <linux-riscv@lists.infradead.org>,
	"open list:RISC-V SPACEMIT SoC Support" <spacemit@lists.linux.dev>
References: <20260620062238.3199108-1-aurelien@aurel32.net>
 <20260620062238.3199108-3-aurelien@aurel32.net>
 <20260620062948.0A1161F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20260620062948.0A1161F000E9@smtp.kernel.org>
User-Agent: Mutt/2.2.13 (2024-03-09)
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[aurel32.net,none];
	R_DKIM_ALLOW(-0.20)[aurel32.net:s=202004.hall];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-314080-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:linux-kernel@vger.kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:pjw@kernel.org,m:palmer@dabbelt.com,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:dlan@kernel.org,m:aurelien@aurel32.net,m:devicetree@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:spacemit@lists.linux.dev,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[aurelien@aurel32.net,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aurelien@aurel32.net,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[aurel32.net:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,aurel32.net:url,aurel32.net:from_mime,aurel32.net:dkim,aurel32.net:email,aurel32.net:mid,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 861216AADDD

Both issues reported by Sashiko AI (see below) are valid, I'll submit a=20
v2 fixing them, but I'll first leave a few more days for humans to also=20
have a look at the patches.

Regards
Aurelien

On 2026-06-20 06:29, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 2 potential issu=
e(s) to consider:
> - [Low] The pinctrl subnode is named `i2c2-0-pins` but belongs to the `i2=
c2-1-cfg` parent node.
> - [Low] Missing space before the assignment operator in `bias-pull-up=3D =
<0>;`.
> --
>=20
> commit 4dc6c92d42831e85b38f3350c15707d0e2b3af18
> Author: Aurelien Jarno <aurelien@aurel32.net>
>=20
> riscv: dts: spacemit: enable the i2c2 adapter on K3 Pico-ITX board
>=20
> This commit defines the I2C2 pinctrl properties and enables the adapter
> on the K3 Pico-ITX board. It will be used by the 24c02 eeprom.
>=20
> > diff --git a/arch/riscv/boot/dts/spacemit/k3-pinctrl.dtsi b/arch/riscv/=
boot/dts/spacemit/k3-pinctrl.dtsi
> > index 23899d3f308a0..c9fe9c2e5aeee 100644
> > --- a/arch/riscv/boot/dts/spacemit/k3-pinctrl.dtsi
> > +++ b/arch/riscv/boot/dts/spacemit/k3-pinctrl.dtsi
>=20
> [ ... ]
>=20
> > @@ -45,6 +45,17 @@ gmac0-phy-0-pins {
> >  		};
> >  	};
> > =20
> > +	/omit-if-no-ref/
> > +	i2c2_1_cfg: i2c2-1-cfg {
> > +		i2c2-0-pins {
>=20
> [Severity: Low]
> This isn't a bug, but should this subnode be named i2c2-1-pins to match
> the i2c2-1-cfg parent node? It seems to diverge from the standard naming
> pattern where the suffix of the parent and child matches.
>=20
> > +			pinmux =3D <K3_PADCONF(46, 5)>,	/* i2c2 scl */
> > +				 <K3_PADCONF(47, 5)>;	/* i2c2 sda */
> > +
> > +			bias-pull-up=3D <0>;
>=20
> [Severity: Low]
> This isn't a bug, but there is a missing space before the equals sign
> here, which diverges from the spacing used in the surrounding code.
>=20
> > +			drive-strength =3D <25>;
> > +		};
> > +	};
>=20
> --=20
> Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260620062238.31=
99108-1-aurelien@aurel32.net?part=3D2
>=20

--=20
Aurelien Jarno                          GPG: 4096R/1DDD8C9B
aurelien@aurel32.net                     http://aurel32.net

