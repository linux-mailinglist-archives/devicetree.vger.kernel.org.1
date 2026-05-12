Return-Path: <devicetree+bounces-296224-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aBwiLC8hA2r10gEAu9opvQ
	(envelope-from <devicetree+bounces-296224-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 14:46:39 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 099E8520636
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 14:46:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 353493184C67
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 12:40:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2C253A48C5;
	Tue, 12 May 2026 12:35:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mvgyvhPc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA8939E9CC
	for <devicetree@vger.kernel.org>; Tue, 12 May 2026 12:35:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.52
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778589340; cv=pass; b=DEapMQlE9V1Yh7Z6uK8YqO+wkaRrsyCJyP2otKwdXcLNEKOqDGvjK1N/lSYtQCN8aM8nC4ngxeqJMO5x5IaAsZnVxfWhdVCfFu3KT4WErTc4gWNKC7qNqfb1Erkd6KCoGYKtdZhcqEkryM8wRWetg8ZWAPeA+Su0h6nW/c3igWY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778589340; c=relaxed/simple;
	bh=zmP1rFX6qc3fWMYwls1hzVQH7Xwp2zzFxeWDcYKJoJ4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=OfGDMcaR+1bDjHsaN/ZQDeYsoFgSp3OUPUgmrSBrU1fTVQRz+R+zwHZHnUj6LimRg9pbT1pjXAwJedzAUls8MXcKpFKNFpXNWAd2Rt7J97W+JFHjwAV2kVqQZwSPlFeLNKB/jWVuE+0/JdqkVZqtiOxd/PqO3UxsRz+DvNV0ZBg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mvgyvhPc; arc=pass smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-44e1860558fso3540599f8f.0
        for <devicetree@vger.kernel.org>; Tue, 12 May 2026 05:35:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1778589326; cv=none;
        d=google.com; s=arc-20240605;
        b=i8hGodt4cXu+WzGnLl6IEIzld+uc88nZJQXUZLMmNZsiIkcYsWRTknpndCvHVkEpN/
         Yas/kixaI0TZ80mD8m04MWj1m3kwo6sdH6EvK25LAyl7gj6iuxLQYb1P5Ssuha+23zMN
         xUoLcKhlQviip9WMOGX3XoMtKtkdUPz89x8EbrBwepxc7fV79kR77VEXLdyFRY3bxI/T
         qrGG6jHHn0PunSZUPUxxWjAVIcZIJQL4FMpb9rSGRTj+3ZHyfxgiEVOGBs6zPPpS8Akq
         e1JS5JMp3VAKnzU+3ENYTxJXfNv874em4F8HpHZ4EcssV+BaNyX9ABYBp0K8ym1Xq+c8
         q4YA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Zoj54LTJUq55xyS7TD5R4Dc+Opd/luBrG056DdUpw1A=;
        fh=p6T1839SmZfar3DgM+JtMeXuvxiJ5xrjATenl4iqJCo=;
        b=hsDOwMTkZuSUi6rhlvuT7cHW29gnGt71WEnfflpNSmADj/jQTQ9UnrilwgP+7863jR
         lQPjV63E3PQoYmlJZ+DB7bByg5Xn2HM0R6awDXUlkGw4ZTvLNhxGQgucAqlP0vyqLvHQ
         jFDr4YEokt+DyO/9EvmWYotlJmrMv7zDwlB8vbATziWinM5zFgV120kShi46EwTfJXM0
         T1dPXgv81yoljIxcK/BOg7ku4KHIlNnPc5fdYgh87YspgTRz6uB/Tl/796bFKvvbTn2L
         vhgdh1GoJwHkG2jBTIJaEyD79SN8hpO+CaRdUsYScbHCE0Wqv/9R2olhL+YkmyAiIpL8
         /Y8A==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778589326; x=1779194126; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Zoj54LTJUq55xyS7TD5R4Dc+Opd/luBrG056DdUpw1A=;
        b=mvgyvhPc5N3D3F060NzWqlk850YM60u5MJKO/InvCH4sBjh1Z+mluCUHLEZX34Tn3q
         M7PJ6ON98K0lj4/rD5uaUhYCnf0W09p9ZYl2An+ka01ZIY06yor8GqEuTZ66l1IJ37vP
         djFe3Lh9bvUsCV8ne8aH2nCyYaIVYtMv9DUO/6V2EyQ5ycs/P6/xNFpM0ublPyhYEMxS
         qUaUp8RMljW3FgTh2v44AFdOK2uWPkerYDVgg6Dv6VIFjxyBknveKOFPYSkEeZ4pqKwI
         AbOiFXJffJHebuBYRAKcESXJwJcosKpL/ZttNuEZ53+4FcEkA5ARuqL/vBYAinaDcAPM
         b9cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778589326; x=1779194126;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Zoj54LTJUq55xyS7TD5R4Dc+Opd/luBrG056DdUpw1A=;
        b=SGCUhlrP858PK4KDw0jrxJ6DKb4AZ9Gr3qr2AKAWUcOh0lpJe3fmHPRf5aSbk6xX1m
         GZnh2SrIIQ50IQwB9rx4D0LUJmK+j3T5Vv39Msp2hgF0DhtQ/s3NQE7F1UUUlEexBgxr
         4ZkEi6bkzQ6wajQVVdVryfaU6n6gRgTqW3QvrEpJdULipgoRAuNwKjflWJNhXW3FeIEM
         o3dvXYoJijRTD6n7fnBx+2Cxz2C0KB7Fg7K5H68iFlbrsHBSVLtIt0nSc3BeWmwmJgxi
         /wNqhCHAKt1AbMowpaGLHpEsGcpnFqKJVU2RkkKEhHugtL5VxSP/Yafyq+JYt8xd2Aqe
         WMmw==
X-Forwarded-Encrypted: i=1; AFNElJ8tCdwDEh6S3gV8rcygCrs4gxVZ3neLk5GwlgSniTBtriYM5u8DAWf9pRiFQDiG+YSD9KTEycdAvrf3@vger.kernel.org
X-Gm-Message-State: AOJu0YyluNVU6xRaGjh+vWO0NuyEvkWkmzxApOnoA9Mt4M5+LPAnFWba
	Ljc1mVfatwJEOzxCaf7HPh0LE2Olvtia6SeCdUuwJCTr2JmgPEExm2Vp0z7QBvanc3FoKvLgbDx
	oXkF+E6rhcWOV7iETzk9Z59fy/bx3Wy8Z7qUYYiA=
X-Gm-Gg: Acq92OEtfhPW2uZuBh+6ga8BP4jZ4faIVpExUXgLX2oJa9wCUxOES+kViv/f87eyL8u
	30JMt6WE9ZAcRA3T/R/JPa2xvGwd4J2G0ztLYB21xkOuSnAAu7UsyYV71ePybk1ITwLObqWQPkr
	ti2oiJAjOAEk5XsdFE6y6FnVNJxC34yw5b+uxfhUQjJi0IsY3oJ9zJQ41AS20kjmdgcgXB0VY9s
	WkSHKWCGLs4P4CoVkouWbzOm9rF8GYFhDZR8gz4FAOKwfkymmbKK63A4xCQXHb252XtTiT9uDWU
	rZJ6rBms8Cwhqe6VFxyv2RYVHZfWhkL+P9uPJZW4Gjk2qix0GrYZcMY2zRds7WyPxHWp/w==
X-Received: by 2002:a05:6000:268a:b0:43d:7a97:78b5 with SMTP id
 ffacd0b85a97d-454633e9851mr28949302f8f.33.1778589325997; Tue, 12 May 2026
 05:35:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260508111744.771659-2-prabhakar.mahadev-lad.rj@bp.renesas.com> <20260508202233.47B7DC2BCB0@smtp.kernel.org>
In-Reply-To: <20260508202233.47B7DC2BCB0@smtp.kernel.org>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Tue, 12 May 2026 13:34:59 +0100
X-Gm-Features: AVHnY4KcjeUlz5_VrrYuyeAhSs9sgkTFkN7i4yolbWX6Jfpg-kNjrphJi5Tlddk
Message-ID: <CA+V-a8sw3uG-6+h1v+fJweR5SqF=aS9GjQqn2CajQEKyn8CxTA@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] dt-bindings: display: renesas,rzg2l-du: Add RZ/T2H
 and RZ/N2H support
To: sashiko@lists.linux.dev
Cc: krzk+dt@kernel.org, robh@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, wsa+renesas@sang-engineering.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 099E8520636
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-296224-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[prabhakarcsengg@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,0.0.0.1:email,mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,renesas.com:email]
X-Rspamd-Action: no action

On Fri, May 8, 2026 at 9:22=E2=80=AFPM <sashiko-bot@kernel.org> wrote:
>
> Thank you for your contribution! Sashiko AI review found 1 potential issu=
e(s) to consider:
> - [Low] The conditional constraints for renesas,r9a09g077-du fail to expl=
icitly disallow port@1, permitting invalid device trees to silently pass va=
lidation.
> --
>
> commit cd9bf5724c5d57e0dd67fd27e0187153179b0578
> Author: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> dt-bindings: display: renesas,rzg2l-du: Add RZ/T2H and RZ/N2H support
>
> This commit documents the Display Unit (DU) support for the RZ/T2H and RZ=
/N2H
> SoCs. It adds new compatible strings and updates the allOf constraints to
> handle the SoCs' specific register differences and lack of reset control.
>
> > diff --git a/Documentation/devicetree/bindings/display/renesas,rzg2l-du=
.yaml b/Documentation/devicetree/bindings/display/renesas,rzg2l-du.yaml
> > index 2cc66dcef870a..18776ac9e7c7e 100644
> > --- a/Documentation/devicetree/bindings/display/renesas,rzg2l-du.yaml
> > +++ b/Documentation/devicetree/bindings/display/renesas,rzg2l-du.yaml
> [ ... ]
> > @@ -95,7 +98,9 @@ allOf:
> >        properties:
> >          compatible:
> >            contains:
> > -            const: renesas,r9a07g043u-du
> > +            enum:
> > +              - renesas,r9a07g043u-du
> > +              - renesas,r9a09g077-du
> >      then:
> >        properties:
> >          ports:
> > @@ -137,6 +142,17 @@ allOf:
> >
> >            required:
> >              - port@0
>
> Should we also explicitly set port@1 to false here?
>
> The base schema for 'ports' allows both 'port@0' and 'port@1' via the
> patternProperty '^port@[0-1]$'. By not explicitly disallowing port@1 in t=
his
> conditional block for the single-port RZ/T2H DU variant, would a malforme=
d
> device tree containing an extra port@1 incorrectly pass schema validation=
?
>
A patch for this fix already exists [0]; I'll post this fix as part of
this series.

https://lore.kernel.org/all/d1e0d4e0fe74e60345a3d043fb4f9128c1057638.177814=
1145.git.tommaso.merciai.xr@bp.renesas.com/

Cheers,
Prabhakar

