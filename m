Return-Path: <devicetree+bounces-274455-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UFdLNVdjsmntMAAAu9opvQ
	(envelope-from <devicetree+bounces-274455-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 07:55:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B46026E119
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 07:55:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1AC4F31218D7
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 06:54:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B39BD3AA1A6;
	Thu, 12 Mar 2026 06:54:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BB1a3dta"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 825523A9D9A
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 06:54:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.214.178
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773298483; cv=pass; b=DNNKi1bq78szO2Y7bZMsEr3RtDwBqSToAZIXqrs0Z37pETl2RyVtPkfxp259/KtgW1vEXr8Bnm5lRZrNmQGobp6d1GiE1gePoJ62hYdBFWtQ9mtuqH/7idkpkOUR0HRbDiWag1PJ8LxCoJAQW0LI9GjZN8MeauURg5jZdWOnqDU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773298483; c=relaxed/simple;
	bh=Be+DWSJxXaWd2h3oqz8Y4RWZIPdhRhtU2hbnzD1aDuc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=r6+PhXlOwpyyd/4qqw+i0QKHAZdfMNVNqERxd1kmbBhr+e7sNaKc3nQOZivs0EJrufDtLAGphx6gSBo7xv6yb9Mv/9rZrdPxLmKz7/tLScoYEgaI3BTMzRkYX6wuCVfglRrh0lkwHS+/Yx5M7+CLDL5FB1QgdeSa8JjYMrM6ay0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BB1a3dta; arc=pass smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-2ae527552acso3223765ad.0
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 23:54:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773298482; cv=none;
        d=google.com; s=arc-20240605;
        b=BPB0/NS/RIgovoMJh36BUnkknS6/SrvFU+eGVl3Rt/d6VQGMeFvNgUJ39ex2IF9BMs
         cAUFr6vMrr0FE+ee/H0CnlQHD3qeyBIBYTC0D65c7dupabWAoXBpt+hHbQ1vhk/uce9P
         9xTE+fdKGEMI1DhnEDXReSqvvgaMV2iuUzFjaVpvfKgxaXwQpHsddI6ASYKbhN3rRBti
         umrovQ5I9Y2Ic611/cMyvMXAuDKiriks83UqInmCKNESJhQZnTLia1sJNWRi9BphEMEP
         0DDCbdwuwQWuxyI0mHbcMNJyg3RSrH0/wz5lTRWJf2Om9F4LojckHMu8QM9u9/tqJ8v0
         CU1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=wR3lTNQ8vtyMXtspr3IFVrmuZOG8EcAD0Ru8ues67mI=;
        fh=Olh/GOBwz88aFxeIFrtvJpYH2sdMKtl0321b/Pkz7Ro=;
        b=WkonRiViWHkut0hIfn2fvSJc16WDlEcUiJ1vbd5zeYy7UqqedbL0slNf7e3t6MJU0W
         DlrZeJ30ytc/J1bL1y0npR44k6/etvP3F96AUTYGfQlOkj0PgCnDzV3MwEJiuchOTm1T
         smXaMF1hLV2Ksy6OOsc5Kn5VejVOeU6ERjdKWMyNy4bL71cUlowy2UPToZGFgFZoXVMa
         ZlMdDmHg9EsBRsKGHFamsqtyAWWiC2IdkP4L/eJBnGnYBJ6p1X8e9SuuThT1y2F6L8Sk
         iiUDkJJc+e50ZDycEQhIaJLIR7XhM+d7BpMdLUBcQD+61GAyhajVlvwPKR8aQ5kvrsK2
         jL5w==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773298482; x=1773903282; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wR3lTNQ8vtyMXtspr3IFVrmuZOG8EcAD0Ru8ues67mI=;
        b=BB1a3dtaBbvfX0PHWEbSLxj5Z8nWXtko2AtUBeuAsejvadhyUDRihm4S+L9JrWGPUF
         uEfAdTqmz8gd+Hv1+2kafTH+dmMvaRcfPoNXalnzX7GieT/ivk894+/n3A8TKPB01qyS
         oQyyodw4ctIifUtAZe31n2PxislbTwvms/ZoZcsoZJ85ZqN3q1xH6yoYldy3Z6Tv68iF
         PQ/V/8FJgJDZCBM5M0/x5seF4W4hqsWoXq5ENYYud7Sc4aaGKV0EciOHQcuITYq/R8iW
         lRXGn8QjRDuovjThyK0IFgonc6RySoPd/LA4QATe5d+apxo1hYrfL70jxz2SK0BBCeUY
         robw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773298482; x=1773903282;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wR3lTNQ8vtyMXtspr3IFVrmuZOG8EcAD0Ru8ues67mI=;
        b=E2svtZVtFs8POQ+xFyJyxQrQEl9qQd2Xw9F1tPuB9kHlOhzyCrurepRIl0dnPCTLLd
         PpvRk+PjnI122tjrbErAxpIsLCR0t8LWqEBPPrOhQpLU8tGPUjFJOYlVlgrvIcr6Glzo
         zCLj3GJTxhMnsDdlv4JoiWYS6yefxTXmkEfDw81hl+IS/2GDY9ynNWv2jJqRrvJGmITu
         9+YwllwJt3DbTHx08FBBcIobNPLZCumUe6X9sl0hxmh3dtxkZHeRAcfkASIWNUE5kqRJ
         pn3Rjjyb+//Cw/B9B1MvsIvHBRidClPoJRDK4ig7Ty/WV8wtjKFJZhIrnh13ov/vKffl
         KTHw==
X-Forwarded-Encrypted: i=1; AJvYcCV9y7wwUeJfYd0hVG2yN4IxXP2i23sa9avoVSGbYOFJb860oA9pr7l/JB1jed7OjUMGoqHNJiOxGec4@vger.kernel.org
X-Gm-Message-State: AOJu0Yyc138ycVQnGfq4EbRtW/zs1R1AYG2lYFR/oZg1keeSr6/b5kkD
	UoyBoNsD/Vt5qO3RQQX/l1U8n8ocIl3abaSUB+ib2h5Oj5Tm8miHpM3v8B0VllfYqdhX11tyfAs
	3wLEsMVivK+cdknxgoWD3hyNPKSbKjb5bdfD2
X-Gm-Gg: ATEYQzz1hOHN/K4LE2btpbp1aWZ0G0WslY7xN/LVFP96kZ57e7gXf8xYZUZLzIns+Oj
	ppq8F+wfnA4EILYGyvHBg3nTW+szYEYspfZeiBt1A71Qd0FYsOEX7/uFCjCA6TKwfL4qXrmUqvw
	RueK0pIojFYCAnIMXvOVlpDqEV/9brAO1iFe+zIi6WeP6f/q8xYviG6hglMprbLjMBoxNFPwtX5
	/RdHzIJJCYvxlkMKFPnPjDVqVIWesYSMrNm3/toVXb9JN3RviQlKvtVUafdqupWpc70hARb2hNK
	KUKN5m0=
X-Received: by 2002:a17:902:d50a:b0:2ae:5426:da49 with SMTP id
 d9443c01a7336-2aeae88defcmr55291865ad.34.1773298481850; Wed, 11 Mar 2026
 23:54:41 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260312034912.4007057-1-shengjiu.wang@nxp.com>
 <20260312034912.4007057-2-shengjiu.wang@nxp.com> <af948fb4-4f63-4276-9368-9d41e80c3e7c@oss.nxp.com>
In-Reply-To: <af948fb4-4f63-4276-9368-9d41e80c3e7c@oss.nxp.com>
From: Shengjiu Wang <shengjiu.wang@gmail.com>
Date: Thu, 12 Mar 2026 14:54:24 +0800
X-Gm-Features: AaiRm51CB2PtkWtwvXXWHfX6nfM3hu2hh6z8jZbSHIx7_tLXIh1Snw9k9jw4XlQ
Message-ID: <CAA+D8AO2-C8kRiF3ymYd7fvAL_Op5ohwk=m8ZbfjHUWXCSn_3g@mail.gmail.com>
Subject: Re: [PATCH 1/4] arm64: dts: imx952: Add audio device nodes
To: Daniel Baluta <daniel.baluta@oss.nxp.com>
Cc: Shengjiu Wang <shengjiu.wang@nxp.com>, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, Frank.Li@nxp.com, s.hauer@pengutronix.de, 
	kernel@pengutronix.de, festevam@gmail.com, devicetree@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274455-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[nxp.com,kernel.org,pengutronix.de,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shengjiuwang@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[433e0000:email,nxp.com:email,42c40000:email,2.144.32.192:email,mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 3B46026E119
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Mar 12, 2026 at 2:40=E2=80=AFPM Daniel Baluta <daniel.baluta@oss.nx=
p.com> wrote:
>
> On 3/12/26 05:49, Shengjiu Wang wrote:
> > Add audio device nodes, include SAI, MICFIL, ASRC, Audio Mixer.
> >
> > Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
> > ---
> >  arch/arm64/boot/dts/freescale/imx952.dtsi | 199 ++++++++++++++++++++++
> >  1 file changed, 199 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/freescale/imx952.dtsi b/arch/arm64/boo=
t/dts/freescale/imx952.dtsi
> > index 0f86b5626cdd..5787c12e788f 100644
> > --- a/arch/arm64/boot/dts/freescale/imx952.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx952.dtsi
> > @@ -823,6 +823,156 @@ usdhc3: mmc@42c40000 {
> >                       };
> >               };
> >
> > +             aips5: bus@43000000 {
> > +                     compatible =3D "fsl,aips-bus", "simple-bus";
> > +                     reg =3D <0 0x43000000 0 0x800000>;
> > +                     #address-cells =3D <1>;
> > +                     #size-cells =3D <1>;
> > +                     ranges =3D <0x43000000 0x0 0x43000000 0x800000>;
> > +
> > +                     asrc1: asrc@43000000 {
> > +                             compatible =3D "fsl,imx952-asrc";
> > +                             reg =3D <0x43000000 0x10000>;
> > +                             interrupts =3D <GIC_SPI 376 IRQ_TYPE_LEVE=
L_HIGH>;
> > +                             clocks =3D <&scmi_clk IMX952_CLK_BUSWAKEU=
P>,
> > +                                      <&scmi_clk IMX952_CLK_BUSWAKEUP>=
,
> > +                                      <&scmi_clk IMX952_CLK_ASRC1>,
> > +                                      <&scmi_clk IMX952_CLK_ASRC2>,
> > +                                      <&clk_dummy>,
> > +                                      <&clk_dummy>,
> > +                                      <&clk_dummy>,
> > +                                      <&clk_dummy>,
> > +                                      <&clk_dummy>,
> > +                                      <&clk_dummy>,
> > +                                      <&clk_dummy>,
> > +                                      <&clk_dummy>,
> > +                                      <&clk_dummy>,
> > +                                      <&clk_dummy>,
> > +                                      <&clk_dummy>,
> > +                                      <&clk_dummy>,
> > +                                      <&clk_dummy>,
> > +                                      <&clk_dummy>,
> > +                                      <&clk_dummy>;
> > +                             clock-names =3D "mem", "ipg",
> > +                                           "asrck_0", "asrck_1", "asrc=
k_2", "asrck_3",
> > +                                           "asrck_4", "asrck_5", "asrc=
k_6", "asrck_7",
> > +                                           "asrck_8", "asrck_9", "asrc=
k_a", "asrck_b",
> > +                                           "asrck_c", "asrck_d", "asrc=
k_e", "asrck_f",
> > +                                           "spba";
> > +                             dmas =3D <&edma2 97 0 0>, <&edma2 98 0 0>=
, <&edma2 99 0 0>,
> > +                                    <&edma2 100 0 1>, <&edma2 101 0 1>=
, <&edma2 102 0 1>;
>
> For consistency we should use symbolic macros for directions like you did=
 below.
> Use FSL_EDMA_RX for rx direction and also introduce FSL_EDMA_TX for tx di=
rection.

Yes, should use FSL_EDMA_RX.

But introduce FSL_EDMA_TX, it should be zero,  FSL_EDMA_TX =3D 0.
is it necessary to add it in include/dt-bindings/dma/fsl-edma.h?

Best regards
Shengjiu Wang

>
>
> > +                             dma-names =3D "rxa", "rxb", "rxc",
> > +                                         "txa", "txb", "txc";
> > +                             #sound-dai-cells =3D <0>;
> > +                             fsl,asrc-rate  =3D <8000>;
> > +                             fsl,asrc-width =3D <16>;
> > +                             status =3D "disabled";
> > +                     };
>
>
> [...]
>
> > +                     sai3: sai@433e0000 {
> > +                             compatible =3D "fsl,imx952-sai", "fsl,imx=
95-sai";
> > +                             reg =3D <0x433e0000 0x10000>;
> > +                             interrupts =3D <GIC_SPI 170 IRQ_TYPE_LEVE=
L_HIGH>;
> > +                             clocks =3D <&scmi_clk IMX952_CLK_BUSWAKEU=
P>, <&clk_dummy>,
> > +                                      <&scmi_clk IMX952_CLK_SAI3>, <&c=
lk_dummy>,
> > +                                      <&clk_dummy>;
> > +                             clock-names =3D "bus", "mclk0", "mclk1", =
"mclk2", "mclk3";
> > +                             dmas =3D <&edma2 61 0 FSL_EDMA_RX>, <&edm=
a2 60 0 0>;
> As I said we should introduce FSL_EDMA_TX and this will read as:
>
> dmas =3D <&edma2 61 0 FSL_EDMA_RX>, <&edma2 60 0 FSL_EDMA_TX>;
>
> Otherwise, looks good to me.
>
>
>
>

