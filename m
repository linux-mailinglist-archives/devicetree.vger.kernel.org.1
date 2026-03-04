Return-Path: <devicetree+bounces-270850-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cCe/Oveqp2lejAAAu9opvQ
	(envelope-from <devicetree+bounces-270850-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 04:45:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 992C01FA7F8
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 04:45:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 577FF30902DC
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 03:45:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCD81377576;
	Wed,  4 Mar 2026 03:45:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="E7nIza/V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8446377034
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 03:45:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.42
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772595952; cv=pass; b=s5loGm742D9ELPAz34fvAKkL6nO0P1tBTZJjI/2VQ6oivWjjTEtzBJiAIg5fRtcbYzymftPQa5XRRBjFeDynl1VNPE5cPsczh2LmYU0yxtIxBUVZIABqTvyHthymYCie+xuNzHEHtLp+F+SlKOuckFiCdXWIKEC0x7CiuVsFa4A=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772595952; c=relaxed/simple;
	bh=69P8goYDO/b/sn65ZnV8O0kNHlTnh70b1PMYtrnR1Cc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TpiXc1ZTbQbC6M+9PhpvB4SfKpDEkTfaz1pGMebJiNaco/TNGoxqSG7sO03LI8v44fizXyVW0aXJxPUg0LTi6AFbRNX5alym96RubiI/ck9OUKNOzFSA/wrwCVWRrRSVBHTgqhNdkOFNk+SvMZ3X9YH0NHLJOnuLteoHwTqW97M=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=E7nIza/V; arc=pass smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-439b2965d4bso2881845f8f.2
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 19:45:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772595949; cv=none;
        d=google.com; s=arc-20240605;
        b=Ae+c2u1aG9rVUVk5ga7tMDxWzA5vGlr6FBwvP/7AD5EukgwbpTr+wsDf59CWlyiVyg
         J8HIGAG3GT/gjflzJI2G7zUtioEg6UmjlEaPtTlIsje+EaKfEFfOeeqRH/Afk0z2rwGy
         AZBQZhSCX+FvjUi8iOWqP/p3jhzE43GnQEPUPd01kUfaj8DnZ2K4nydG6ST/ZVvgPZ1S
         G/cBhr+CYhFgjobKDXG5rPWcMVLftuLW/dOE9S9HKyWcaGoYujXHG5uw+70YxIll9X+3
         8rvdPCKZYhe5lVh65BTRjWDL/ibzPbVETjK9XvpYjc+tUXZ6DgFxPFOuOixZ88eLgFUk
         mqeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=0ck0SxwPDcv+Zqhqz8cZVKiShWiiww33rNFdcafCJLs=;
        fh=/C6ohC3nDOis4EmDVe0sOcevwl2EZzBy0LqstmaC3mc=;
        b=I6GGeAxafRXi6kbXtFMrqLFCY/mTmK+IXAim7SjtlBQ5eo2X1rn8tuuUpyf1x8dHPD
         Y4kEZGg/V5e9rwp2Uq+ue1YYz6dnF/uxot7l/AwwdHET7th6rUrDnN1+jAaj13QXtWb3
         bKSgP0E+VzVjPYk3iOP+ZTrRXx+R5MM/O3BHu1EEXNhhF8NZHL3YSasK1XDIG1DGJars
         Lgkh0dwNuX2fnoKrm83N781GOApBYQIVdpEF374a6K0IhJXuaJMl9AzxBMqB/mZOASXp
         AyJBoxSq2RQ2TLr6oPCvuXAVldTS1QB02A35YObSw4Scy4286uxwvAI57OvamSXrd938
         +WbQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772595949; x=1773200749; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0ck0SxwPDcv+Zqhqz8cZVKiShWiiww33rNFdcafCJLs=;
        b=E7nIza/VHff0aegEAWDh5ynv/uU5oaH3iEHO+LbHQyUDrSaFENI3U4BjNMVeMBgRgs
         NAtLGYSfRISGiwAagtSdbz/0TD5+krJdsSVmSMDOKigCWBeBJVsjpF/bnjWOO2n/gKg7
         YxerJ4Uwluifv4MQqKS7DfUVfPi7nMImQNzM1LTruB+xzoLaEPrYKcEQ3BsK+VKXaBlJ
         5UyW0z5/W4/k5dksGnFDBI7iIz0onRgjcnj98gdrxSroo7yx79n9vIibNabn4j62lby0
         BZFWlViFifGnk+VW5Wu3oGANj2FeC76fwtdjreN13K2qaFlEMzo1rZQAjeDQsmaOn5nR
         gEfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772595949; x=1773200749;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=0ck0SxwPDcv+Zqhqz8cZVKiShWiiww33rNFdcafCJLs=;
        b=b7tpEB96i3J6WztlAXt1qMfITWrH1x4uVZt8VWBTfNle4K1qU4V5zKmsM5iY9Qs0Me
         ZrQtElawfKxOx6f4w+PV/0VWtLYpHvcSwsfLdZMa6QbO5YXQvGu4D3QTDK0UQ9FHAC5F
         qoWfrR2IShIfGsgawSN04+QSjT7hKLbmKO5npk2AzynPdm9oI5LvLHLKGZBxqOyI82zH
         Q1nFVgjSnYsfyUQYFMCr8Py94VUt7sQyXBXJ+n0e4aaYpEI/yh7W5oOP5s2HW2MoMmpH
         bI+IF8j5Is4KhynlUKQFcfS05etxf8kXx0p21rJX9vs0Mdm4EXsngfuXdxnB++m13uSc
         ZBrQ==
X-Forwarded-Encrypted: i=1; AJvYcCUtuXK5/kliqQph1GeBUiIFyUxiJKmU3ojGs6a5T+ylxrrklDBMYuS2pwe2ViR8kMU2Z2s9Kk4mANKZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2jqRo19z8LU986kQWvd+bsZz6g4SgyRdYJL3j2/8HzFetTOUC
	FiF4Gmg77vVqWKMvvoXcHA7fPL3pMjaDEHsGjCqzkbpP/Icnvai9O2Q+pkPD/CscRdRNNp9amgH
	M8tw9shZL+Xv/PgUj2/w1kVXa7ZHfZKM=
X-Gm-Gg: ATEYQzxoyyBtQWmCacC6cfA6xytWzGvEnwXKUQwy1U3iL1cKveA5SjctqOVjtsMhYoP
	7UuUnSj6/VQoeTEyyTTmf2QGfBz24NLM5JoPmy0vtzHNwOvpsTC8JCHhb0sra/w1nCmE69HcfWT
	0+2P39r8TOEIlFdTcZJaPGubt/X6o3dMAWbf61Zeu5befaWPQs0BXPAWKfgYHi++VeMpnVHMO7i
	ulil4N2j14WDQpyQO603ys27PcWzGBvcpx/AOQk7Bg9nafXhxZhpuy0zyWqKAG1YwICHRFJIEZm
	g8BxDuUKEIokFz62uw34XZQj9luvoN3Q4UBIbN8=
X-Received: by 2002:a05:6000:1acc:b0:439:ac53:a94d with SMTP id
 ffacd0b85a97d-439c80005a2mr1016259f8f.29.1772595949061; Tue, 03 Mar 2026
 19:45:49 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260228205418.2944620-1-dennis@ausil.us> <20260228205418.2944620-3-dennis@ausil.us>
 <CALWfF7LZV07x7zAgufE_aa58s7x6e_ODAM2LgZqjbEakDticpA@mail.gmail.com> <CAABkxwsJ2ZnytCcHEvXWzNkjwzNThoTR23FAeHJLdf4JjXJEMg@mail.gmail.com>
In-Reply-To: <CAABkxwsJ2ZnytCcHEvXWzNkjwzNThoTR23FAeHJLdf4JjXJEMg@mail.gmail.com>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Tue, 3 Mar 2026 21:45:37 -0600
X-Gm-Features: AaiRm510_muOP2trKshqRAe1MQ9prhJ4qP0ttHmvpYHaggzE4klTOIJdcnDBxLM
Message-ID: <CALWfF7+gdNqSgzk4uAnVRkG8vT9FwJDV46VXpb26hd7BzdaGcw@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add Orange Pi 5 Pro board support
To: Dennis Gilmore <dennis@ausil.us>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, FUKAUMI Naoki <naoki@radxa.com>, 
	Hsun Lai <i@chainsx.cn>, Jonas Karlman <jonas@kwiboo.se>, Chaoyi Chen <chaoyi.chen@rock-chips.com>, 
	John Clark <inindev@gmail.com>, Michael Opdenacker <michael.opdenacker@rootcommit.com>, 
	Quentin Schulz <quentin.schulz@cherry.de>, Andrew Lunn <andrew@lunn.ch>, 
	Alexey Charkov <alchark@gmail.com>, Peter Robinson <pbrobinson@gmail.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 992C01FA7F8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270850-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	FREEMAIL_CC(0.00)[kernel.org,sntech.de,radxa.com,chainsx.cn,kwiboo.se,rock-chips.com,gmail.com,rootcommit.com,cherry.de,lunn.ch,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[honyuenkwun@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,mail.gmail.com:mid]
X-Rspamd-Action: no action

On Tue, Mar 3, 2026 at 1:43=E2=80=AFPM Dennis Gilmore <dennis@ausil.us> wro=
te:
>
> On Mon, Mar 2, 2026 at 11:57=E2=80=AFPM Jimmy Hon <honyuenkwun@gmail.com>=
 wrote:
> >
> > Hi Dennis,
> >
> > Some curiosities below,
> >
> > On Sat, Feb 28, 2026 at 2:54=E2=80=AFPM <dennis@ausil.us> wrote:
> > <snip>
> > > +
> > > +       /* Pro uses gpio-leds instead; pwm0 LED is not wired up */
> > > +       /delete-node/ pwm-leds;
> > <snip>
> > > +
> > > +       gpio-leds {
> > > +               compatible =3D "gpio-leds";
> > > +               pinctrl-names =3D "default";
> > > +               pinctrl-0 =3D <&leds_rgb>;
> > > +
> > > +               blue-led {
> > > +                       color =3D <LED_COLOR_ID_BLUE>;
> > > +                       function =3D LED_FUNCTION_STATUS;
> > > +                       gpios =3D <&gpio1 RK_PC6 GPIO_ACTIVE_HIGH>;
> > How come you decided gpio-leds instead of pwm-leds for this? GPIO1 C6
> > is muxed with PWM15_IR_M2
>
> the downstream dts uses gpio-leds  the GPIO comes from the schematic
It should be fine to upgrade to pwm-leds when adding into mainline.
The Orange 5 Plus did.
In the downstream DTS, they used gpio-led for the green led
https://github.com/orangepi-xunlong/linux-orangepi/blob/232ed4b97b65da2b7b6=
47c4e3c496f8594b9f3f1/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.d=
ts#L31-L36
But in the mainline kernel, it was converted to use pwm-led.
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/a=
rch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts?id=3D236d225e1ee72a2=
8aa7c2b1e39894e4390bbf51c

Jimmy

