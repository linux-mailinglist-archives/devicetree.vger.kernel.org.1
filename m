Return-Path: <devicetree+bounces-278295-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UN1BLN5VvWme9AIAu9opvQ
	(envelope-from <devicetree+bounces-278295-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 15:12:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F57A2DBA5A
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 15:12:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D873C307C893
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 14:06:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A433A2DF138;
	Fri, 20 Mar 2026 14:06:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=collabora.com header.i=louisalexis.eyraud@collabora.com header.b="PvQmJThl"
X-Original-To: devicetree@vger.kernel.org
Received: from sender4-pp-f112.zoho.com (sender4-pp-f112.zoho.com [136.143.188.112])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C17940DFC2;
	Fri, 20 Mar 2026 14:06:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.112
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774015609; cv=pass; b=iOLpcmMcMk/NAEZojz9VnYIQLGJlo/gQz+XRS8wZ3RhzYjyRwYObCNqQvNEQ2MXLiIeBFDW5104gSpo1heWlVzBB2WT628vfRPyC4fEnm/jnne0zenWdViL+9aLpQswu+n/UplCjYEVcaUDtDFO1nddl5BgvhSHIxafWJRdUd5M=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774015609; c=relaxed/simple;
	bh=kke4U8is/52QuT/XsXOqDRBpfoVeEqcEtpPGmuuttaw=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=R3CjiFocWfXSWPNOY0/Ct1AaWe8OnaaRaNalN/jDAkAIvECx/lNyPDl/uFWEXofa3sDLGscdW1ylE7CuVZlTUY1b4d+5GzSjhSiSQhUlaXUxOUzZneFzjG/5mvKxiz1URwiStMxiL66wzsBywPIPOX9+CW0fmImtV4Qu3p4/ohU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (1024-bit key) header.d=collabora.com header.i=louisalexis.eyraud@collabora.com header.b=PvQmJThl; arc=pass smtp.client-ip=136.143.188.112
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
ARC-Seal: i=1; a=rsa-sha256; t=1774015588; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=Wr9FbiYdbxLUWCL9K7rYZTrOQKOpu9kK+amZrXcg3V/3dA7MhRwi4q1dMjrnhbO9vp/iDphZtG4QPo4ZSFQ4WPedmabCfwULB+KEu29IwZimOWorIWFqFBOgI/YbAxrtwFi4jbqkkkoTPkor7e+mZh90+AS548pTVG0fSxpeqCE=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1774015588; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=hWgkyHieI+lx6uZjlbxnNfikaImkXlaHPtGyHRNFVhw=; 
	b=Up3hbl2VH50Vli4WhIUpalEprB++a4eLM18qmYa2MNfb03rVZHHVoaHqRh2nB9m688S1QWByjhR0Chot7vWBAsSgY9mjFFE54Yh+B9qXwUVTLrmjW6JPovTRxnAWX2w+JhoNW+GOYAN4KDthE5y5Y39OoStSjxsqh/TCYpCdVKQ=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=louisalexis.eyraud@collabora.com;
	dmarc=pass header.from=<louisalexis.eyraud@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1774015588;
	s=zohomail; d=collabora.com; i=louisalexis.eyraud@collabora.com;
	h=Message-ID:Subject:Subject:From:From:To:To:Cc:Cc:Date:Date:In-Reply-To:References:Content-Type:Content-Transfer-Encoding:MIME-Version:Message-Id:Reply-To;
	bh=hWgkyHieI+lx6uZjlbxnNfikaImkXlaHPtGyHRNFVhw=;
	b=PvQmJThlSKXxXoG1gYCgwyJkw7EO+zihVPm2ShJ1cr5TIwG4J9X+MS8i7xC+VXJe
	Rysi6qqqX55sU2Ko0WlJB5cz8Bp/TsX2GEYn76k7suOZ476X9SvrRVi981QUk5Ue/B8
	XUVEz+j0SttDunBcKfkhFVt1iZq4hWEt00ubfBBU=
Received: by mx.zohomail.com with SMTPS id 1774015585746684.6715664799156;
	Fri, 20 Mar 2026 07:06:25 -0700 (PDT)
Message-ID: <32a03f60a50fc0fc3e9a3b5bfb2c06ce694054cf.camel@collabora.com>
Subject: Re: [PATCH 3/4] arm64: dts: mediatek: add device-tree for Genio
 720-EVK board
From: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
To: David Lechner <dlechner@baylibre.com>, Greg Kroah-Hartman	
 <gregkh@linuxfoundation.org>, Jiri Slaby <jirislaby@kernel.org>, Rob
 Herring	 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley	 <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Sean
 Wang <sean.wang@mediatek.com>
Cc: kernel@collabora.com, linux-kernel@vger.kernel.org, 
	linux-serial@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
Date: Fri, 20 Mar 2026 15:06:20 +0100
In-Reply-To: <23778b52-9aa2-49fc-946b-e858b99fc3c9@baylibre.com>
References: 
	<20251203-add-mediatek-genio-520-720-evk-v1-0-df794b2a30ae@collabora.com>
	 <20251203-add-mediatek-genio-520-720-evk-v1-3-df794b2a30ae@collabora.com>
	 <23778b52-9aa2-49fc-946b-e858b99fc3c9@baylibre.com>
Organization: Collabora Ltd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.58.3 (3.58.3-1.fc43) 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-ZohoMailClient: External
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=zohomail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-278295-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[baylibre.com,linuxfoundation.org,kernel.org,gmail.com,collabora.com,mediatek.com];
	HAS_ORG_HEADER(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[louisalexis.eyraud@collabora.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,collabora.com:dkim,collabora.com:email,collabora.com:mid]
X-Rspamd-Queue-Id: 1F57A2DBA5A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi David,

On Thu, 2026-02-19 at 18:09 -0600, David Lechner wrote:
> On 12/3/25 7:59 AM, Louis-Alexis Eyraud wrote:
> > Add support for MediaTek MT8189 SoC and its variants, and a device-
> > tree
> > for the basic hardware enablement of the Genio 720-EVK board, based
> > on
> > MT8391 SoC.
> >=20
> > MT8391 SoC is a variant of MT8189 SoC with a difference for the Arm
> > Cortex-A78 CPU core maximum frequency (2.6 Ghz for MT8391, 3 Ghz
> > for
> > MT8189). MT8391 hardware register maps are identical to MT8189.
> >=20
> > The Genio 720-EVK board has following features:
> > =C2=A0 - MT8391 SoC
> > =C2=A0 - MT6365 PMIC
>=20
> Is MT6365 PMIC ...
>=20
> > diff --git a/arch/arm64/boot/dts/mediatek/mt8391-genio-common.dtsi
> > b/arch/arm64/boot/dts/mediatek/mt8391-genio-common.dtsi
> > new file mode 100644
> > index
> > 0000000000000000000000000000000000000000..744641916952111a4b389cf6a
> > dbd27c429b6eff2
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/mediatek/mt8391-genio-common.dtsi
> > @@ -0,0 +1,555 @@
> > +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> > +/*
> > + * Copyright (c) 2025 Collabora Ltd.
> > + * Author: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
> > + */
> > +
> > +#include "mt6359.dtsi"
>=20
> ... really 100% identical to MT6359 PMIC?
>=20
I did not find any info in the LKML archives if this topic was
discussed in the past.

The MT6365 PMIC seems to be more a rebranded MT6359P.
They have the exact same buck converter and LDOs, and features.

There are several boards based on MT8370, MT8390 and MT8395 SoC that
integrate the MT6365 PMIC and whose devicetree, present in upstream,
use the mt6359.dtsi for this PMIC support:
 - Mediatek Genio 1200 EVK
 - Mediatek Genio 700 EVK
 - Mediatek Genio 510 EVK
 - Radxa NIO-12L
Probably a couple more.

The Genio 1200 EVK board devicetree was the first one that used
"mediatek,mt6359" compatible for this PMIC.

As far as I know, there is no known compatibility issue.
The MT6359 regulator kernel driver, in particular, does recognise it as
MT6359P (same identifier) and the MT6365 datasheet shows it has the
same register layout from what I compared for the buck and ldos.

So 100% identical? I cannot say it for sure but I don't have any info
telling otherwise.

> Asking because I'm working on this in U-Boot and would be helpful
> to know that this is correct. Would probably be a good idea to
> mention
> it in the commit message too to show this is intentional.
>=20
>=20
> And I wonder if it would be a good idea to add a compatible with
> fallback
> just to be sure.
>=20
> &pmic {
> 	compatible =3D "mediatek,mt6365", "mediatek,mt6359";
> };

You're right.=C2=A0
That's make sense to document a proper compatibility in the dt-bindings
and use it the devicetree, not only for pmic node but also but its
subdevices (auxadc, codec, regulator, rtc, pmic-keys).

As the Genio 720 EVK is not the only board concerned,=C2=A0it would be
better that I send another series to do such cleanup, for instance one
that adds a new mt6365.dtsi before using it (instead of mt6359.dtsi) in
the Genio 720 EVK devicetree.

Regards,
Louis-Alexis

