Return-Path: <devicetree+bounces-325568-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3+iHLyD2VGoniAAAu9opvQ
	(envelope-from <devicetree+bounces-325568-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 16:28:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 58FBB74C62B
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 16:28:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=mYgV64mE;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325568-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-325568-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 12DDE301B936
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 14:10:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0EB3B282F09;
	Mon, 13 Jul 2026 14:10:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7133927FB2A
	for <devicetree@vger.kernel.org>; Mon, 13 Jul 2026 14:10:47 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783951848; cv=pass; b=kSbKBydZtsl+WarzsuqNKTa0j39JnlMkSLP4ZBwZwmIA1qbE+kbGLkRbv/3hbbA61W2Xm52vSYITNZsd4R3G2u4jet+km9sZMiMHJCeijS/B+RMCrmCz5LMPiCiyKjat74wpsHXsgKRlDDgN0mjR2X47z3rrb6/byVZkVxNf7U4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783951848; c=relaxed/simple;
	bh=gam8Fe9lZYXy2nFRQ7zZV9v6MyB9GYFRvbbbDs+vbT8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IFqwmOoeooMI7NBveEASpb55mAdG05Lh8irMvFtAaOgm0eNjMR2sHRLGeDeiAPMOyLZHdOgx4J3BADBbGo1yii8rXGfceNABzAvODceXkPTVM4A/DJzkmdiwAIZsneBIKihuVCfzKYYC/yvD8o1r2K7jqS5iQgkSisowdl6zWXo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mYgV64mE; arc=pass smtp.client-ip=209.85.208.54
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-6986287534eso5794613a12.3
        for <devicetree@vger.kernel.org>; Mon, 13 Jul 2026 07:10:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1783951846; cv=none;
        d=google.com; s=arc-20260327;
        b=L9zJy9vehk+Lr9f5o0Q3zY08oDv4xZC5nC5RZyiATwF3ULDWS1otIpw50CVYEnrtIq
         d8PSUf96AcIhb+6yxi8PanJwCA0pHESIVCN5bFgpxKKjIV1GVHSNrznW5jsmTrOJTTaz
         ge2Hoqbd1hgHqMCU/JDDbWOBF68LbUGAF65mZ40xuQiG/MFrzMqtWLXWLAkHdcsYmsEC
         i0YHJgwxstxCEprR30c9qQd8BgoCVhAdmMgP85aa+3R8oNn8fks60CyBdJjeE501yT+R
         xP54fDWN0KzE+QZCu6QSbBVdrtMCqjLd9md0mi9KochN98xUie48CCcsdboW3oPpOa4Z
         Kq0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=1lhLBLRHKApCImsP/0iv5oyajNsWU+yv/r6S7+13+9M=;
        fh=P9cpVPvN3iCpQyFLzAlChFEM+piIHCdaHCOo4kXP7YA=;
        b=SWQrKk4co8fLk55HgKfz0oeygEaCgC48Bu0TUjVKsKJdcTvXk08BIin2xDKkPm0oF1
         L15Na78KEBsJK/gidCx1yMsLtAXWbgLp9x2s1DetLHP4VJ1wfozYjCXKdC/m0rQEuxCE
         hB5kBVYSfv1WCUEhHGe579hGt1iUH3RLhbLRBGMHL4rCQQRzQ0rOrNIP/ptdkIn77pAx
         t7iJso0k+uM+rjtUvwh3Eu6Uo8bnbEcNvWufbzxMHP4o1dGMno8bEnEZEwTY+yz6FOrm
         Ut2FcFbD3cSfGGaiWkqz4QbDN8aLf2YSwup1WEcJStMBfze0N0B/ncz8A/2dmSmlWQk4
         5D9w==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783951846; x=1784556646; darn=vger.kernel.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=1lhLBLRHKApCImsP/0iv5oyajNsWU+yv/r6S7+13+9M=;
        b=mYgV64mEfZr3eebL6ERkDa8xNG00WuN9cFAF1+6AiIsc8/6N1weCTWgLj/12NjP9BL
         RNd8oNSjYLdAWxSbPF882DCnmYiHvgSPoSPP9/YDRXvNE1Qp+awa9v7bFpNrLPpW/zQw
         T6f1sNXV1L4s/4OL1/hAkvM/S0J3Vzh3TiByuMVVqTqkopZIRxWPDvEZzpXVselFhDqU
         5Q3eU7YJGiOLWuhrYoOtG00WTIjC234UW/3717rsmIzCbvUZckBocG1W2bO9ck9ogpyB
         zACe3UUqlhfYFO4O6f/eG8cG/JMazFkX0vPF4h7roGaCOJVypPa+Fq0+KmYQUjKjaMSk
         X/bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783951846; x=1784556646;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=1lhLBLRHKApCImsP/0iv5oyajNsWU+yv/r6S7+13+9M=;
        b=UKZSJUQtfCLzgBDQioskSkGzxTe1F2kkjpZzTgoRlBU4GSnNc6cg22HDBj1Qy440ho
         AsoChRoydoJ8kWSpnrzgxwtrM6nzzmgtoNO+3QjBz0HLDe9b+zYkvROZEqQpmytikdCr
         AGEUObRkd/Vj7ruMjhrCSi5u5bFn096PiLOYXowlkm7Ebq4tRHHJtXtnvuqsBZL4kBle
         rER1LldnADW6ErGjHbKJCHD7slVnC9xlTVCm9zq7bBJ0SlzE3uxzMAhml027fT8wokww
         kGXLkdIX609e8gwJab1tIrJ/P8pKZsBI6lPGldOnGBGPdHyvG7sh4gfRjUpnrNBHFRZY
         wq5Q==
X-Forwarded-Encrypted: i=1; AHgh+RqRQtyu0OAVmuqQzoxH95GSaTJULMInsoWGBgMefFoHNU+B4KV2oRJxTDSSx42bSMR+9GLv2hLGY94Q@vger.kernel.org
X-Gm-Message-State: AOJu0YyadMrfNZDK0KVOFrC8ByEOiRffAv/yvJgZeEOAU7WS0ED0kfs1
	5neCkH8eRoCHb1a0i6fjnzK1gaTcMo96VsoxRwa9w7Ej1LNVmks3nnJllQGMU8ZNY95m3b+SPOI
	J5O5TY8W6Mgabuwpc9/sprUlTEw1zggY=
X-Gm-Gg: AfdE7ckD7TlTlossga8zZDCsghkBMWsMsprUtnGE/nrZrpmBo24tM9AHiEgF1A9CQPl
	nFsCSYc72itz/+Ogb17duSgfnB9+alRs7tqRP99D09Tfg1yxPVQn5jPibcZ3PslhgR3WPC92wWJ
	T5swb/IfzJpYadxqwSNT1a4SwVZLwXP9lEl/nSFKyfqoNhwWO6LzEwvkM0Xn8DHKMLtwn+kHtIR
	NwTEGoCb9iN2IrIfdmdrFMiCfJoZxcu8GuNRseP3t+GmvuGcDl83e6OQ0Hut5vWVIcTyOHA
X-Received: by 2002:a05:6402:1e8f:b0:697:cec5:d056 with SMTP id
 4fb4d7f45d1cf-69c5eeb6629mr3899017a12.0.1783951845729; Mon, 13 Jul 2026
 07:10:45 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260711184934.55701-1-oleksiionchul@gmail.com>
 <20260711184934.55701-3-oleksiionchul@gmail.com> <3f923649-34ff-4089-87e2-8989dae335ca@oss.qualcomm.com>
In-Reply-To: <3f923649-34ff-4089-87e2-8989dae335ca@oss.qualcomm.com>
From: Alex <oleksiionchul@gmail.com>
Date: Mon, 13 Jul 2026 16:10:33 +0200
X-Gm-Features: AUfX_my6XKkZ5u5LrkKRw97yKmZFSBXvLHwP_cZ9NBflKmx2DT8D27WYMmlWjJw
Message-ID: <CAD3ATv2awRTVKXD_+fK1vMv7R+du9deuyZoBqsZCT49mnLB0SA@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: qcom: Add Xiaomi 11 Lite 5G NE
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-325568-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:konrad.dybcio@oss.qualcomm.com,m:andersson@kernel.org,m:konradybcio@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-arm-msm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[oleksiionchul@gmail.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[oleksiionchul@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,vger.kernel.org:from_smtp,mail.gmail.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 58FBB74C62B

On 13/7/26 at 09:52 AM, Konrad Dybcio wrote:
> > +&usb_1 {
> > + /* USB 2.0 only */
>
> Did you test that (with an actual USB3 cable)?

No, I have only tested USB 2.0 operation and do not currently have a
USB 3-capable Type-C cable available. The downstream DTS configures
the generic Yupik primary controller for SuperSpeed, but I could not
verify SuperSpeed operation on Lisa. Therefore, the initial submission
only describes the USB 2.0 configuration that has been tested.

Oleksii


On Mon, Jul 13, 2026 at 9:52=E2=80=AFAM Konrad Dybcio
<konrad.dybcio@oss.qualcomm.com> wrote:
>
> On 7/11/26 8:49 PM, Oleksii Onchul wrote:
> > Add initial support for the Xiaomi 11 Lite 5G NE, codenamed lisa.
> >
> > The supported hardware includes regulators, UFS, SD card, USB, GPU,
> > remote processors, Wi-Fi, Bluetooth, touchscreen, flash LED, thermal
> > sensors and the hardware buttons.
> >
> > Signed-off-by: Oleksii Onchul <oleksiionchul@gmail.com>
> > ---
>
> [...]
>
> > +     chosen {
> > +             #address-cells =3D <2>;
> > +             #size-cells =3D <2>;
> > +             ranges;
> > +
> > +             stdout-path =3D "serial0:115200n8";
> > +
> > +             framebuffer0: framebuffer@e1000000 {
> > +                     compatible =3D "simple-framebuffer";
> > +                     reg =3D <0x0 0xe1000000 0x0 (1080 * 2400 * 4)>;
>
> Please use memory-region instead
>
> [...]
>
> > +             ramoops@a9000000 {
> > +                     compatible =3D "ramoops";
> > +                     reg =3D <0x0 0xa9000000 0x0 0x200000>;
> > +                     pmsg-size =3D <0x200000>;
> > +                     mem-type =3D <0x02>;
>
> Let's make mem-type decimal. Don't you need ecc-size for reliability?
>
> [...]
>
> > +             regulators {
> > +                     vreg_l1p: ldo1 {
> > +                             regulator-name =3D "vreg_l1p";
> > +                             regulator-min-microvolt =3D <1000000>;
> > +                             regulator-max-microvolt =3D <1200000>;
> > +                             regulator-always-on;
>
> Many/all of these shouldn't be always on. This PMIC normally only
> powers cameras, so dropping this should be fine
>
> [...]
>
> > +&ipa {
> > +     qcom,gsi-loader =3D "self";
> > +     memory-region =3D <&ipa_fw_mem>;
>
> These two fill be folded into the SoC DTSI soon
>
> https://lore.kernel.org/all/20260517-ipa-loader-v1-0-3c3764c1b4a3@oss.qua=
lcomm.com/
>
>
> [...]
>
> > +&tlmm {
> > +     /*
> > +      * 32-33: SMB1394 (SPMI)
> > +      * 56-59: fingerprint reader (SPI)
> > +      */
> > +     gpio-reserved-ranges =3D <32 2>, <48 4>, <56 4>;
>
> What about the <48 4> range?
>
> as a nit, other files place the comments inline with the ranges:
>
> gpio-reserved-ranges =3D <4 4>, /* EC TZ Secure I3C */
>                                <10 2>, /* OOB UART */
>                                <44 4>; /* Security SPI (TPM) */
>
>
> [...]
>
> > +&usb_1 {
> > +     /* USB 2.0 only */
>
> Did you test that (with an actual USB3 cable)?
>
> Konrad

