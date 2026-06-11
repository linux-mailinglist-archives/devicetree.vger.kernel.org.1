Return-Path: <devicetree+bounces-310077-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id HP1xC1E0KmoKkAMAu9opvQ
	(envelope-from <devicetree+bounces-310077-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 06:06:41 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7447F66E1DD
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 06:06:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=codeconstruct.com.au header.s=2022a header.b=h5T9HOKS;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310077-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-310077-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=codeconstruct.com.au;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 139C030A7142
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 04:06:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 062F8285061;
	Thu, 11 Jun 2026 04:06:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A747220F49;
	Thu, 11 Jun 2026 04:06:36 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781150797; cv=none; b=ksv/YEe7+KORuPleXwEVCiQTqM8BhYMqqeM4VmAjkxG9/8cyvj3z5gKwSRDIsRkRMm1hBWKGEGu41LjgA6QHJ+RIV3UxCW9qEjT0uWfPWIzfG7CEf2ZzVCfqiFKPuRY3Pv+7S0r+MjcHzpfmVtN3wvi/L7vu3HC63BW1m6l3BCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781150797; c=relaxed/simple;
	bh=TEBqkHqiALPM/gieqp+/D4G9XR2dEP42WoB3zeXIIuA=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=MPv/ictYUSox8D3Jp+4PM06BNVaYyV72HnBlSteRdLTcGeFF9grva38EBGLkWOUdNdSyIK0m9iYi1nc4Zc+4F8MeA47PvSEe5Rmq89n/JXM4IrlW41vGv1WTrSizTRWk6cvflQUvgvYdtKPYgtV87mlR5ejbWPmthstvCXDbvGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=h5T9HOKS; arc=none smtp.client-ip=203.29.241.158
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1781150794;
	bh=fs2D/dmY6qG5eFk5keXxNf0HlHzBHntwLDPmYvPj8xA=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=h5T9HOKS7M9O1foYkec/z47r6o6cIhERYKZtRFocOM6fumMx01P4miGrprmiV2Qb/
	 xhYspqxpGkBpqRCPopb7HhMu4MoxDRO4y3TArJgafrGawwxg+r+LvQPhzS1uoiWgUo
	 sixF/Ww0INydYwfA+rSm828vbrRIhZHOiBhU3GPI0wjQOfQPOTCdXIvjtKUYB4E5Eb
	 JhwiYxvKlrOSHe3FohbDfZxBVPbnO7Hg6aLR1FA2IeWqPVFWRZYSej4ODOlKQvnw2e
	 MW8fX+uej6ProOA7Lpn1bTkRQ5oLrU/patSOT7Mz340qjQpfLF8TOn3uHsorLbKMUJ
	 MkuYWc7diWwZA==
Received: from [192.168.68.117] (unknown [180.150.112.11])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id CB59160A0C;
	Thu, 11 Jun 2026 12:06:32 +0800 (AWST)
Message-ID: <5543c67f4eb6a206e524c6a590e13bbb1756b0df.camel@codeconstruct.com.au>
Subject: Re: [PATCH v3 0/9] ARM: dts: aspeed: anacapa: restructure
 devicetree for development-phase
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: u8813345@gmail.com, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
	 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Joel Stanley
	 <joel@jms.id.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
	colin.huang2@amd.com, Carl Lee <carl.lee@amd.com>, Rex Fu
 <rex.fu.amd@gmail.com>,  Andy Chung <Andy.Chung@amd.com>, Peter Shen
 <peter.shen@amd.com>
Date: Thu, 11 Jun 2026 13:36:32 +0930
In-Reply-To: <20260602-anacapa-devlop-phase-devicetree-v3-0-7c93c5df8d9b@gmail.com>
References: 
	<20260602-anacapa-devlop-phase-devicetree-v3-0-7c93c5df8d9b@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[codeconstruct.com.au,none];
	R_DKIM_ALLOW(-0.20)[codeconstruct.com.au:s=2022a];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-310077-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,jms.id.au];
	FORGED_SENDER(0.00)[andrew@codeconstruct.com.au,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_RECIPIENTS(0.00)[m:u8813345@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:joel@jms.id.au,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-aspeed@lists.ozlabs.org,m:linux-kernel@vger.kernel.org,m:colin.huang2@amd.com,m:carl.lee@amd.com,m:rex.fu.amd@gmail.com,m:Andy.Chung@amd.com,m:peter.shen@amd.com,m:krzk@kernel.org,m:conor@kernel.org,m:rexfuamd@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[codeconstruct.com.au:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew@codeconstruct.com.au,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.ozlabs.org,amd.com,gmail.com];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[codeconstruct.com.au:dkim,codeconstruct.com.au:mid,codeconstruct.com.au:from_mime,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7447F66E1DD

Hi Colin,

On Tue, 2026-06-02 at 21:24 +0800, Colin Huang via B4 Relay wrote:


...

>=20
> Colin Huang (5):
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ARM: dts: aspeed: anacapa: add EVT1 device=
tree and point wrapper to it
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ARM: dts: aspeed: anacapa: add EVT2 device=
tree inheriting EVT1
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ARM: dts: aspeed: anacapa: add DVT devicet=
ree inheriting EVT2

So my concern with these three are that none of the EVT1, EVT2 or DVT
devicetrees correspond with the current Anacapa devicetree. All of them
have variations on the configured GPIOs. Some GPIO lines are renamed
while others are added.

Adding them is (eventually) fine, but I'd rather not do that while
we're shuffling the devicetree sources around.

Renaming them to accommodate changes in the one devicetree is what
we're trying to escape here, so having renames hide in the rest of the
shuffling is definitely problematic.

For example:

   -""                    =20
   +"L_FNIC_FLT"     =20
    "FM_CPU0_SYS_RESET_N"
   -""                                                                     =
                                                                           =
           =20
   +"L_BNIC0_FLT"
    "CPU0_KBRST_N"
   -""
   +"L_BNIC1_FLT"
    "FM_CPU0_PROCHOT_trigger_N"
   -""
   +"L_BNIC2_FLT"
    "FM_CLR_CMOS_R_P0"
   -""
   +"L_BNIC3_FLT"
    "Force_I3C_SEL"
   -""
   +"L_RTM_SW_FLT"
    "SYSTEM_Force_Run_AC_Cycle"
    ""
    ""
   @@ -20,55 +20,57 @@
    "FM_SCM_JTAG_MUX_SEL"
    "Channel2_leakage_Manifold1"
    "FM_BRIDGE_JTAG_MUX_SEL"
   -"Channel3_leakage"
   +"Channel5_leakage_present_EAM1"

I've pasted a script below that helps compare the various dts files.
You can use it to generate the reference from the current aspeed-bmc-
facebook-anacapa.dts, then generate the comparison files from the newly
introduced dts files.

To reiterate, I expect the shuffling of the dts files to result in at
least one of the variants producing the same devicetree as the current
aspeed-bmc-facebook-anacapa.dts.

Andrew

   #!/usr/bin/bash
  =20
   set -x
  =20
   : ${ANACAPA_VARIANT:=3D""}
   : ${ANACAPA_REFERENCE:=3D"arch/arm/boot/dts/aspeed/.aspeed-bmc-facebook-=
anacapa.dtb.rt.dts.tmp"}
  =20
   if [ -z "$ANACAPA_REFERENCE" ] || ! [ -e "$ANACAPA_REFERENCE" ]
   then
     gcc -E -Wp,-MMD,arch/arm/boot/dts/aspeed/.aspeed-bmc-facebook-anacapa.=
dtb.d.pre.tmp -nostdinc -I ../scripts/dtc/include-prefixes -undef -D__DTS__=
 -x assembler-with-cpp -o arch/arm/boot/dts/aspeed/.aspeed-bmc-facebook-ana=
capa.dtb.dts.tmp ../arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dt=
s ; ./scripts/dtc/dtc -o arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anaca=
pa.dtb -b 0 -i../arch/arm/boot/dts/aspeed/ -i../scripts/dtc/include-prefixe=
s -Wno-unique_unit_address -Wno-unit_address_vs_reg -Wno-avoid_unnecessary_=
addr_size -Wno-alias_paths -Wno-interrupt_map -Wno-simple_bus_reg   -d arch=
/arm/boot/dts/aspeed/.aspeed-bmc-facebook-anacapa.dtb.d.dtc.tmp arch/arm/bo=
ot/dts/aspeed/.aspeed-bmc-facebook-anacapa.dtb.dts.tmp ; cat arch/arm/boot/=
dts/aspeed/.aspeed-bmc-facebook-anacapa.dtb.d.pre.tmp arch/arm/boot/dts/asp=
eed/.aspeed-bmc-facebook-anacapa.dtb.d.dtc.tmp > arch/arm/boot/dts/aspeed/.=
aspeed-bmc-facebook-anacapa.dtb.d
     dtc -I dts -O dts -o arch/arm/boot/dts/aspeed/.aspeed-bmc-facebook-ana=
capa.dtb.rt.dts.tmp arch/arm/boot/dts/aspeed/.aspeed-bmc-facebook-anacapa.d=
tb.dts.tmp
     ANACAPA_REFERENCE=3Darch/arm/boot/dts/aspeed/.aspeed-bmc-facebook-anac=
apa.dtb.rt.dts.tmp
   fi
  =20
   if [ -n "$ANACAPA_VARIANT" ]
   then
     gcc -E -Wp,-MMD,arch/arm/boot/dts/aspeed/.aspeed-bmc-facebook-anacapa-=
${ANACAPA_VARIANT}.dtb.d.pre.tmp -nostdinc -I ../scripts/dtc/include-prefix=
es -undef -D__DTS__ -x assembler-with-cpp -o arch/arm/boot/dts/aspeed/.aspe=
ed-bmc-facebook-anacapa-${ANACAPA_VARIANT}.dtb.dts.tmp ../arch/arm/boot/dts=
/aspeed/aspeed-bmc-facebook-anacapa-${ANACAPA_VARIANT}.dts ; ./scripts/dtc/=
dtc -o arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa-${ANACAPA_VARIA=
NT}.dtb -b 0 -i../arch/arm/boot/dts/aspeed/ -i../scripts/dtc/include-prefix=
es -Wno-unique_unit_address -Wno-unit_address_vs_reg -Wno-avoid_unnecessary=
_addr_size -Wno-alias_paths -Wno-interrupt_map -Wno-simple_bus_reg   -d arc=
h/arm/boot/dts/aspeed/.aspeed-bmc-facebook-anacapa-${ANACAPA_VARIANT}.dtb.d=
.dtc.tmp arch/arm/boot/dts/aspeed/.aspeed-bmc-facebook-anacapa-${ANACAPA_VA=
RIANT}.dtb.dts.tmp ; cat arch/arm/boot/dts/aspeed/.aspeed-bmc-facebook-anac=
apa-${ANACAPA_VARIANT}.dtb.d.pre.tmp arch/arm/boot/dts/aspeed/.aspeed-bmc-f=
acebook-anacapa-${ANACAPA_VARIANT}.dtb.d.dtc.tmp > arch/arm/boot/dts/aspeed=
/.aspeed-bmc-facebook-anacapa-${ANACAPA_VARIANT}.dtb.d
     dtc -I dts -O dts -o arch/arm/boot/dts/aspeed/.aspeed-bmc-facebook-ana=
capa-${ANACAPA_VARIANT}.dtb.rt.dts.tmp arch/arm/boot/dts/aspeed/.aspeed-bmc=
-facebook-anacapa-${ANACAPA_VARIANT}.dtb.dts.tmp
     diff -u "$ANACAPA_REFERENCE" arch/arm/boot/dts/aspeed/.aspeed-bmc-face=
book-anacapa-${ANACAPA_VARIANT}.dtb.rt.dts.tmp | tee ${ANACAPA_VARIANT}-{re=
move,add}
     grep '^-[^-]' ${ANACAPA_VARIANT}-remove | grep gpio-line-names | sed -=
E 's/.+gpio-line-names =3D //' | tr ',' '\n' | sed -E 's/^ //' | sponge ${A=
NACAPA_VARIANT}-remove
     grep '^[+][^+]' ${ANACAPA_VARIANT}-add | grep gpio-line-names | sed -E=
 's/.+gpio-line-names =3D //' | tr ',' '\n' | sed -E 's/^ //' | sponge ${AN=
ACAPA_VARIANT}-add
     diff -u ${ANACAPA_VARIANT}-{remove,add}
   fi


