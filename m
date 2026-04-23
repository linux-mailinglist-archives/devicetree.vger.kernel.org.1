Return-Path: <devicetree+bounces-289527-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yHQbDzaW6WmpeQIAu9opvQ
	(envelope-from <devicetree+bounces-289527-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 23 Apr 2026 05:47:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AB2C44C94E
	for <lists+devicetree@lfdr.de>; Thu, 23 Apr 2026 05:47:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C4DC3300647A
	for <lists+devicetree@lfdr.de>; Thu, 23 Apr 2026 03:47:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85B4029D27A;
	Thu, 23 Apr 2026 03:46:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lHhGTmla"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F143523E33D
	for <devicetree@vger.kernel.org>; Thu, 23 Apr 2026 03:46:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.218.54
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776916019; cv=pass; b=jP9+wIrMgKAP2fE2Okiw8LlOh9vjS6DEBTlXo+SG/e3RTxRDOTy2RTXPAMEyAfBKKkrDUEW6xKrhYD5djrg8vyWHqO6MGf7FLer33sS3ahzNRuBVRC3yyNeZRDW7X4fJoRmCgSw3BaHCworIqX7hGZ/TspoiSq31ArgDLN8zsxA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776916019; c=relaxed/simple;
	bh=WeNkOMzbwUsxL+mQAEdQI1bS1CFi3gSHibm8joPuWt0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kPPx6V3VneKTBApbxKvGHG9v1f2flc9NsKJ9SVu8p9a6L58o+8DQ/c0Bcj7ruNFxeP2EF6cznBpVJ3Pb+mrURbf+GTRF7E+Tw3HdPGDummRjSjHlFupP/nd8oBMniY7uxUOjirD0zEFYpLtRtC4RtLt0qu7sLTt1rBZto0QdnD0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lHhGTmla; arc=pass smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-b932fe2e1a7so29358366b.1
        for <devicetree@vger.kernel.org>; Wed, 22 Apr 2026 20:46:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1776916016; cv=none;
        d=google.com; s=arc-20240605;
        b=gs9dAGuEq7UFo5dixJowmNF+F9l+hEufg3M+68WVCl2WLtAC6sXTHbP4k5gP3gPNuY
         uZWQPLkcW91ozk7dAzwSVY19FmZvlVBkCEpTD9TmpVXkb5N98rapQYVvw7Ww1pS7UfGH
         qpBK9lgsWhovb0YtzM+D3cJJXK6o0nLF/CCJ+MKLpjfW6CynJJDh48Lt8nm4JAfcLKl9
         +7wZDffz5viwcWC6R1HwbQ8k9ZCnR3IW6eZUVZQ3gQabbaKb12W2LxDwUtDXM+jSVghb
         bvbWKjafXexNYAVS7dfQYFB8CaUNCUt2GwXRPuU3jsRD/iGVNZ37NAKvdWz4mA+JWWUm
         cGxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=c9GSW2Phd9oXEma1/9uB2odB8s4SQeX9sU39sUkX9FY=;
        fh=8lfOncRohiJ3SI7FgT6gBkeRh8TrgzB/taqdzzJ5R9o=;
        b=GDvuAGaH87PFs9/av36i3uwpWot6K2s7b3k5M8g1botvf9Yg8GkuJhtSA8eNSMdhT7
         DXkeGP+OBshq8lYPLWc51vy6ySHOwUf2yXYuKvi9nMjV0MUaYNyhW3rIMRZ3kK0/I9BY
         4aSDoTZ4gUWnGpk7RSxKyKDOuZ1Hz89uoKP9am111FbUX1iHoXbR+oKiegF6Ua3IA68r
         2oYn+Hs1+npe4YVBDepIrStaQRS7qmmCKcG7WmRvh4FWtApEn5yIdW5AyFfWncL8fYGJ
         Oojloo+6k2Z6pFNGj6PFSZ1e0BmNueCbFOMEJ7VLSj1R64TVutZd2z7kXo+OTp8OkCmX
         Z6cA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776916016; x=1777520816; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c9GSW2Phd9oXEma1/9uB2odB8s4SQeX9sU39sUkX9FY=;
        b=lHhGTmlaieYH55/zPwV+zLy4DF34PgsYfn1vRiGRrV7Lh9gOqRo1rZOZyhVTaOunQW
         oFb1aLQV5zCirfs+bcUX+iVgOWdXc+Q73e2iMowE0n75JSKV+3Zu6IPVyThxJWtzNBz8
         NZ8CQ996VJ41yicjPK6VV8bnqwoi8MzCDRYjdeb0MsHx4HyLFXd/gz7BJ2VAY6PChUrc
         CgbFRuN0xDc3N3r1LhbjCPb0K/YHlwBGVEV/E4rxbozEGZrCW/h47zSFFx2A3bJGXbru
         SWIHhUjq0ggFCFzHA5nPzp6KIKGNEuoKq4WKoudqjn9Sjah7ipA6QTeSYhANMnwixBKM
         82cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776916016; x=1777520816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=c9GSW2Phd9oXEma1/9uB2odB8s4SQeX9sU39sUkX9FY=;
        b=XT75B2uzkIrF8KWglhZ7LrvglchdXmNHTUHrUW9Kp5HWX0faz5pfTgSWX6vobh7dVQ
         K+5mDmzygiY8BKtiqUIRHZ/UpeSovgrKQRv1LCWFHUDxYKjYtdJS5JuR1ixHhnOf6VLK
         VsWP6SRUReLhj9bxo5cFXwQqYKYja9SEd5DYbalv9+ndgIzHFsYljVOnYBYx9LgCzqZ1
         zQmGLhgn/9Y2n5QQf7ovydWWpkrbD2lMxdCL71A+KAnicA2MHknPzGnd4YVGfa1o8Knf
         Uk6FGPYlRXoTg2CtZ4p/BvOa8MjA2PUm9y9471e0du58ydrjB42Cs4/mUFhk1aop8OkC
         sJDA==
X-Forwarded-Encrypted: i=1; AFNElJ98YGu0XX0wEa3Z11t5RaG8bW1VgjZYpa/gyd97SzeoAkl9HE6A8HEA7u66sb1zwb3XAodB/iZZTaDI@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6V70GrTlUyLvdf6W8CkIFP+bbzMsoSt914sLy5O6G1RZvXSGc
	G6556JSglXygLqx01OJqBKDVOELs0kN2OcG3Nt4bOzpFiHMOn0d/ipoRcBT92XzkMTQVY7OBnqY
	fPUttqH/wYhJau+jjw/49NJ4XnoLa07S5Pg==
X-Gm-Gg: AeBDiesojsyiKmzOKs+MXOBe1DydCi4EblEaguNOEMtiI57WNaDHXeuDjRiOlzs4alj
	FUn/z4noqHTaSvQiOoI36MLndoG1q7yEh0Xw+Z5Xi2Va5OqVtbHw/gLXQWo0WMv5oEmY0+DrM/U
	Fy6uxGWuUEEWv1NaN49Q89O1TjZxKtcw/qTeDyyCj+2uasqlJwbokHm4zLt9d/gA5JBLwEaGuIX
	pHybvXDvb/FFdytKxQocwMmYWz/dHX7eP5dRAA4OVyDpMdYTPCGyXp8DYGN+LARHvdmASO3kGOA
	77ZlBhnVPnWmC4M=
X-Received: by 2002:a17:907:1c10:b0:ba8:7b3:176b with SMTP id
 a640c23a62f3a-ba807b322c2mr525199966b.49.1776916015972; Wed, 22 Apr 2026
 20:46:55 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260119-patchv2-k1-thermal-v3-0-3d82c9ebe8a4@163.com>
 <20260119-patchv2-k1-thermal-v3-3-3d82c9ebe8a4@163.com> <CANAwSgTOmbb+Vzhck1riVaFM89zYLdMe3dn6DRHrc7p+rkR2DQ@mail.gmail.com>
 <DHZM9D696P6G.NVPMN20XXM3H@mailbox.org>
In-Reply-To: <DHZM9D696P6G.NVPMN20XXM3H@mailbox.org>
From: Anand Moon <linux.amoon@gmail.com>
Date: Thu, 23 Apr 2026 09:16:40 +0530
X-Gm-Features: AQROBzAWkvO9UaeaqqzBdwiPl2IRb1rnMdxCjeOVlETl66PPfZzCcgEwKW1aUrg
Message-ID: <CANAwSgQCOoC7aZWhekqmVS3OTTyzTyDaSxsTsdfMUphxx8vX+Q@mail.gmail.com>
Subject: Re: [PATCH v3 3/3] riscv: dts: spacemit: Add thermal sensor for K1 SoC
To: Shuwei Wu <shuwei.wu@mailbox.org>
Cc: Shuwei Wu <shuweiwoo@163.com>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
	Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-289527-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[20];
	FREEMAIL_CC(0.00)[163.com,kernel.org,linaro.org,intel.com,arm.com,gentoo.org,pengutronix.de,dabbelt.com,eecs.berkeley.edu,ghiti.fr,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linuxamoon@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,mail.gmail.com:mid,mailbox.org:email,spacemit.com:url]
X-Rspamd-Queue-Id: 7AB2C44C94E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Shuwei,

On Wed, 22 Apr 2026 at 16:07, Shuwei Wu <shuwei.wu@mailbox.org> wrote:
>
> Hi Anand,
>
> Thank you for the careful review.
>
> On Wed Apr 22, 2026 at 1:56 PM CST, Anand Moon wrote:
> > Hi Shuwei,
> >
> > On Mon, 19 Jan 2026 at 08:13, Shuwei Wu <shuweiwoo@163.com> wrote:
> >>
> >> Include the Thermal Sensor node in the SpacemiT K1 dtsi
> >> with definitions for registers, clocks, and interrupts.
> >> Additionally, configure thermal zones for the soc, package, gpu, and
> >> clusters to enable temperature monitoring via the thermal framework.
> >>
> >> Signed-off-by: Shuwei Wu <shuweiwoo@163.com>
> >> ---
> >> Changes in v2:
> >> - Update compatible to "spacemit,k1-tsensor"
> >> ---
> >>  arch/riscv/boot/dts/spacemit/k1.dtsi | 101 ++++++++++++++++++++++++++=
+++++++++
> >>  1 file changed, 101 insertions(+)
> >>
> >> diff --git a/arch/riscv/boot/dts/spacemit/k1.dtsi b/arch/riscv/boot/dt=
s/spacemit/k1.dtsi
> >> index 7818ca4979b6..0fe7396ea6e4 100644
> >> --- a/arch/riscv/boot/dts/spacemit/k1.dtsi
> >> +++ b/arch/riscv/boot/dts/spacemit/k1.dtsi
> >> @@ -338,6 +338,96 @@ osc_32k: clock-32k {
> >>                 };
> >>         };
> >>
> > I feel the thermal zones appear to be configured at significantly
> > higher temperatures
> > compared to the thresholds typically used in commercial-grade and
> > industrial-grade device
> > test environments 1.2 Test Environment
> >
> > [1] https://www.spacemit.com/community/document/info?lang=3Den&nodepath=
=3Dhardware/key_stone/k1/k1_hw/avl_veri_sop.md
>
> The official definition of this temperature range is as follows:
> "The CPU delivers stable and reliable computing power from -40=C2=B0C to =
85=C2=B0C,
> complying with the demanding requirements of industrial applications."
>
> [1] https://www.spacemit.com/community/document/info?lang=3Den&nodepath=
=3Dhardware/key_stone
> /k1/k1_docs/root_overview.md
>
> Therefore, this does not mean that the chip cannot continue to work above
> this temperature.
>
> The datasheet also defines another temperature, the Junction Temperature,
> which represents the chip's temperature limit. Exceeding this temperature
> may permanently damage the chip.
>
> [2] https://www.spacemit.com/community/document/info?lang=3Den&nodepath=
=3Dhardware/key_stone
> /k1/k1_docs/k1_usermanual/4.Electrical_Characteristics.md
>
Ok,
> >
> > Thermal zones should be defined as part of the SBC board design,
> > with the option to integrate PWM-controlled fan support in the future.
>
> These thermal zones describe fixed hardware properties of the K1 SoC itse=
lf,
> and are common for all K1-based boards.
>
Ok,
> And this is also done in Allwinner D1, StarFive JH7110 and some other chi=
ps.
>
Ok thanks.
> >
> > Thanks
> > -Anand
> Best regards,
> Shuwei Wu
Thanks
-Anand

