Return-Path: <devicetree+bounces-270738-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GK+dDt46p2mofwAAu9opvQ
	(envelope-from <devicetree+bounces-270738-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 20:47:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A99FC1F6526
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 20:47:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2D9F0307A12F
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 19:43:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00A7C3976A1;
	Tue,  3 Mar 2026 19:43:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ausil.us header.i=@ausil.us header.b="TZMsi71G"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABFDC39769F
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 19:43:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.219.51
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772566994; cv=pass; b=QOb6Z8lom8IwCFxUUbCFCIGwqIYucf71KXEsdD+iI9yiBLm80KGC9tnI7mPihLm1RQkEZQNDwK9K269eKvZbvYAGnAopvaHMZIVRnRO4wBp5CV1JJGZOEEgyklnGrUdkoAcEv7Udf4oH9HIlbEqXBpUf2XYv6ax4zgKfO083v+Q=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772566994; c=relaxed/simple;
	bh=KbeYM3SqD+t63Vq4CzN0pGR9OtUebUgTS2PJqFlOuM8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HG+oXkUD73gbc5kJ/KxDQ4RUu/9BryjhvM+eA9lVkHPLJYsKZ1s9JcP7VrQnNcGlW7MEmqYk566uNJzDHzB6S42nf5rPyhO+zEi5n6zfJOxQifptXNKrV8hVYBTrIomc+VR8bO/pmOgnYA17rvM74kiRq8Gi9d0AKwUfn3sGn/8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ausil.us; spf=pass smtp.mailfrom=gilmore.net.au; dkim=pass (2048-bit key) header.d=ausil.us header.i=@ausil.us header.b=TZMsi71G; arc=pass smtp.client-ip=209.85.219.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ausil.us
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gilmore.net.au
Received: by mail-qv1-f51.google.com with SMTP id 6a1803df08f44-89a018cbbf8so25671246d6.0
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 11:43:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772566993; cv=none;
        d=google.com; s=arc-20240605;
        b=HnLOJ6/PVocoOmWRe3ja20Zp4gZOvdt80+jPtNggK3PATC0zDXPTyvO6TgJ3/XdkTP
         YEoLz3VoHRCsHI0UOglKuYrTqkglcwlAG6cul4msjcSJcyxrZ0EYAM7ZbOYlfeQkzqxx
         wzjcs9x+1o20aleUiWOYKbJPi/j2dE7m925UksA5XO8gMCZd1Zptn1NzMnnTXdCbSk0W
         UMFC07KOE4CFzq40U6bJjVe8q9pL2CK9uk6UHTP/AmNaVCaPRTNIgmKDKXWn0rKB3OLz
         +pfFFO4YmOHKkNPTOwIHcL635HsdOiIN9z+mhfFIdj+X02OVLo9P9G2bfzb7SDb8j/KC
         sbZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=L8n8435Zr1khu5rLcpa1RouqYs6DNDPzPkSmUCRdtj8=;
        fh=BtcIMYISu6ukIkqzubIWQv9by0CapVh6vaU3h5O6GMc=;
        b=U5UQ9174aTZfgiOG79eiNuAQOGWjhSRpaGPi34VbuvxqcMUga7TO2KlZ/Z2JZdr+fM
         5XcF0ftWd7u0w2WXkddoeCwoIDf5ehteaE2OFrd8Zd1+Nnt/uHTV/WVTQGF0XkbKRHwS
         yxET2CdeYLDu8KwA24pMK6fAZgtxF5qtH3VIuZZik4ofyIiOgzDFFy35FWKGl9YXuioQ
         0w9Rdkx2fiWzZ/QWhfOe43uasygEOoFpqSje+3xxkF+fWSb8HsKFvfpEiyufqYOOdQ0J
         2uZSBJdSsAVE6F6WfRagSEjRPeUUSvsL99xBR4bIa6wwahyjqeUm4DQQKqx69tG46BEt
         umjg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ausil.us; s=google; t=1772566993; x=1773171793; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L8n8435Zr1khu5rLcpa1RouqYs6DNDPzPkSmUCRdtj8=;
        b=TZMsi71GbG4YsHR6Ya48ifWFtntU1eXAcbBuTFWjtc6m6ecqAk9GuoX+XMZEmsYwN4
         Q3tDXI476Aq3m9Ov0NjSqNm4N0CTgH8jTq6/q6vI0LhQYXSYC//GWKWoFDLITPrY0xsh
         h3j+8Ca8BCVL+01I58p0AD/SYppdXX24wG0X43HZAmycll1VDNy14HYbwUSMABWAOe/k
         2/UgYkyl8W1Xi29KYGLAdfnFwnh74PMj+8LGvWhDWaBeJEOdKDzf4q0lD6iszkhw6w91
         e1jrcNnw0gz7lGJOUPMhRz4Kb2EjXz9ChEPTT+O9g05LZa7ZCQybSo2LySpjFPP4K6tR
         Si6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772566993; x=1773171793;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=L8n8435Zr1khu5rLcpa1RouqYs6DNDPzPkSmUCRdtj8=;
        b=QrFeO5XSHhEFyUois3r+dM0hkrZNLvoHMiljqBa/VhZYqLYcIH47YlAv+CXXfhYhyT
         YyyXTDQAC/u4Lm/30ox3g7AcfdiAVuSqBkoZb8/zw757R9zL3qUCKrBupVyh8yscrpY7
         qcBoBtZ9+8C4x3q2P3RBT5Kp0DYWbvGnTDU1JsNrrKlRVo8HKHiEBvKIhhc6lyj0FZWL
         SMpzSFPUwnYfEmwrOkG536Fg/t5EaNJJL4Ib7351fr27xISiblLI7B+VUbGuloha1xVB
         1/LLjzSeacaGqiB2lBF+CvCxrk+F8yjtiaUMrPdGTsb35/Uct1ZJiFZ0LkKs64vEuIFI
         Qonw==
X-Forwarded-Encrypted: i=1; AJvYcCV6KC7KzvWTfnL/NVbCkTqAe99A720H2sWaBCUWk2sE7g8p1WeMCdBbcBOdgi4jwGKL1ZwLh0aO/1t1@vger.kernel.org
X-Gm-Message-State: AOJu0YxErFPWcaOwsfU3pXYQWukYLqMnHTJYLEMxceH2X5X166vg4OAv
	tatNhXwIU7/kD9SDFbn60tRHAjd5Zu9XACjT6M8fdAwo1QX4ZMlnE7nfwBmAgupuJfs0uROL1fl
	8/4jBVSBQuYrLuavwd4BpKXu+eyE9p8ek2CjcwUArTyCGaS4d8Y/ymLmbGxLbjE+m9w==
X-Gm-Gg: ATEYQzzjVjLpa0sZEfQaosmL9QLemXRELL83Q0h7W6FnvyQFzPYbugE/vqxaze7LRku
	0Sp0h0vkMbJtLyjak/m45S2sg4xjJDpBDwB4RHQSLYM1b7BqrKQ94Ls3ddzyKyM6voV2RnlbQv+
	+rbRMTXE7sR0M9+/jiN6gCi5nQKvKY+xhf01V2QjyNH5B31/sUP+iIsAGWXut5ftcsuyJNyxVtf
	I3CYP27QVHzcM/20TP3KiaX0BzVtVMs34/yixVpWL7k4GOZMaktuNV/VxP8uDu+5jfva4lfJbr/
	dM4wgnyfZoulCgIwPtbSI5Dzn0eg1ep6jEcPFHedCn9c06SzIyuUt/KKDI+YUxUpofTvH+k=
X-Received: by 2002:ad4:5aa7:0:b0:89a:e8:d188 with SMTP id 6a1803df08f44-89a0a8d7188mr45825626d6.20.1772566992620;
 Tue, 03 Mar 2026 11:43:12 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260228205418.2944620-1-dennis@ausil.us> <20260228205418.2944620-3-dennis@ausil.us>
 <CALWfF7LZV07x7zAgufE_aa58s7x6e_ODAM2LgZqjbEakDticpA@mail.gmail.com>
In-Reply-To: <CALWfF7LZV07x7zAgufE_aa58s7x6e_ODAM2LgZqjbEakDticpA@mail.gmail.com>
From: Dennis Gilmore <dennis@ausil.us>
Date: Tue, 3 Mar 2026 13:43:01 -0600
X-Gm-Features: AaiRm52nwTc5WYofSGOqwEBnZSvdAzLbNGmLH2WcJSTdxX_MUmE39dck-KQ4XU0
Message-ID: <CAABkxwsJ2ZnytCcHEvXWzNkjwzNThoTR23FAeHJLdf4JjXJEMg@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add Orange Pi 5 Pro board support
To: Jimmy Hon <honyuenkwun@gmail.com>
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
X-Rspamd-Queue-Id: A99FC1F6526
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	R_DKIM_ALLOW(-0.20)[ausil.us:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	DMARC_BAD_POLICY(0.00)[ausil.us : Multiple policies defined in DNS];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270738-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ausil.us:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dennis@ausil.us,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,sntech.de,radxa.com,chainsx.cn,kwiboo.se,rock-chips.com,gmail.com,rootcommit.com,cherry.de,lunn.ch,vger.kernel.org,lists.infradead.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,mail.gmail.com:mid]
X-Rspamd-Action: no action

On Mon, Mar 2, 2026 at 11:57=E2=80=AFPM Jimmy Hon <honyuenkwun@gmail.com> w=
rote:
>
> Hi Dennis,
>
> Some curiosities below,
>
> On Sat, Feb 28, 2026 at 2:54=E2=80=AFPM <dennis@ausil.us> wrote:
> <snip>
> > +
> > +       /* Pro uses gpio-leds instead; pwm0 LED is not wired up */
> > +       /delete-node/ pwm-leds;
> <snip>
> > +
> > +       gpio-leds {
> > +               compatible =3D "gpio-leds";
> > +               pinctrl-names =3D "default";
> > +               pinctrl-0 =3D <&leds_rgb>;
> > +
> > +               blue-led {
> > +                       color =3D <LED_COLOR_ID_BLUE>;
> > +                       function =3D LED_FUNCTION_STATUS;
> > +                       gpios =3D <&gpio1 RK_PC6 GPIO_ACTIVE_HIGH>;
> How come you decided gpio-leds instead of pwm-leds for this? GPIO1 C6
> is muxed with PWM15_IR_M2

the downstream dts uses gpio-leds  the GPIO comes from the schematic

> > +                       linux,default-trigger =3D "heartbeat";
> > +               };
> > +
> > +               green-led {
> > +                       color =3D <LED_COLOR_ID_GREEN>;
> > +                       function =3D LED_FUNCTION_ACTIVITY;
> > +                       gpios =3D <&gpio1 RK_PC2 GPIO_ACTIVE_HIGH>;
> How come you decided gpio-leds instead of pwm-leds for this? GPIO1 C2
> is muxed with PWM3_IR_M2.

Again, the downstream dts uses gpio-leds

Dennis

> > +                       linux,default-trigger =3D "mmc0";
> > +               };
> > +       };
>
> Jimmy

