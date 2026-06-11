Return-Path: <devicetree+bounces-310161-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id gliAAyZOKmrvmgMAu9opvQ
	(envelope-from <devicetree+bounces-310161-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 07:56:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9119366ED6E
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 07:56:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=YxXIIxAA;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310161-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-310161-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 852C6300B466
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 05:56:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A5F8352010;
	Thu, 11 Jun 2026 05:56:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com [209.85.217.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34EAB3446BE
	for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 05:56:48 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781157409; cv=pass; b=bMTgPKtjKrLBR+IhaIoWxkrj/VUeGEC3vgrd09jqRELoEIhmTtujtdAFNjE5x+u6zx/9oiJNPvuNG64YrHntywdbGBbjRpt9zT9VVzhuv05e0SpHolnczaFhgnqHsA0I2AJ5gIk8/2E66RPXm8bb3aGh69mMGVU7SftODv+jxdw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781157409; c=relaxed/simple;
	bh=znNxsoZmlaB6W/mqj3T/8VIN1JDA05KdwQQHBufosGc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TF0NLYrpLV2v/EXEJgLzPGO++8UHk+vR4jjwGQzG12S9F+gwmRbpQn1cKcVV/HXV6X9biB3V2p0hoHR/Ew+FQFvXQLxFZwcAUlr+ok0jdT/d+CZSIFjDXuNg4zc6DDmW91CV1kYaSeMpU2Lm6/lPezG9hr14Z63J0Ld7XjSHlW8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YxXIIxAA; arc=pass smtp.client-ip=209.85.217.50
Received: by mail-vs1-f50.google.com with SMTP id ada2fe7eead31-6efdb57d98fso2226230137.3
        for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 22:56:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1781157407; cv=none;
        d=google.com; s=arc-20240605;
        b=NFRYfqfkLqrRS0Rl0rDAbfIG0ZmSP6D6fah9hVT30+1JsLKkEvk1TlF1mkVfRTWz/3
         t0iD5H+H9u9tFBim29vVztLGHjpnUsF59XjweP+IiELgxEIUIzZLd7TZw7aK2q4mxcs4
         1GCZYQnx20AjxckHNrNneWnIZTmeiLsI1b/ntfT0JmRAwm3Qw+RSsKFdDGye9pxFCbn7
         G/amGyXEXhKp1myevnIG0KXJe4i+Gjvw85OHTHc5QclmCOVfNuCgRG/WKu67PyYc0D3m
         bwsrJeddMs6a28FanQvDZ0gJmm4t1JIr3irVvVO7oWhBG9hXqCx/pJ2Cd88AI6jOrEXB
         TsUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=znNxsoZmlaB6W/mqj3T/8VIN1JDA05KdwQQHBufosGc=;
        fh=cwxDSUg3WIInWCpOee0fWgEjsFkhqTFLzt+eNLKU+Lg=;
        b=jig65rJyN5FbzWE2dRvfjuCgFhcdFiAEbbcuCT8RkjyfnuKcxl8nxyk7yTEhgLdWrQ
         W6BWZXoAca/pv6ZHTg25NtwZ9wYB4vWCU2gRmzHVPP/5fHSdFasa2JFm89HrziNPGHah
         bRWtJL0w+BtuMhxUJWRF5n0NO644/sb3crWEMCqLqhXm8UFO9nXZcAgaBdoE1/tNknfs
         2KtRtHZDivxdhLTksx8k+bnE063lAZIVdTT8g/8P7KrQck2pbTDq03cmmEz6qUiQ06Kr
         i6zPWCKiwn7uXj0Ze87i0jqSXOrXz+ftMMOlKrocu0ztBY22eaLT6QHtytqNSGYuenJQ
         3q7A==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781157407; x=1781762207; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=znNxsoZmlaB6W/mqj3T/8VIN1JDA05KdwQQHBufosGc=;
        b=YxXIIxAA4HcxF5oQKrkLaP3UTGHL5tb3BGmT60A9OtRe6Er/mSDZM0H+Jm9Hotfy9H
         4Bz1PMKkJYuq5TeZ6NYF7shvDhlHsfrsVRwOdEm+68ajpcO1V03ZDBTJgDXerJJ8SQ8A
         BVMdrNeSfnZwEq+SuB8XYpae4Pcl6ZLKJYoc5C1PqQPtCsKDTeAukDyQufwmsgWKkTrj
         bDbE1Ib4wHKzwOsjTZAIZWoeDezLZK5q4At5jAda9dSZhMbW+tYIra+PHuJbHmtoePs0
         +MKPinPt7481Y+LYP52h+aypYUWBNGAnZfzw2yYooBSeVhrTPUX4EFp50OVXJ618XAVo
         eFTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781157407; x=1781762207;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=znNxsoZmlaB6W/mqj3T/8VIN1JDA05KdwQQHBufosGc=;
        b=gaaGVQkkwbdE0ANhNlW2P02GiMRPA2Q6djW2/KjRjFgpeTiBiB45oHtNWhROw3BG74
         qhuHYp41WaenLo/F4t9yjfG9Gi0Ip6pjwj29ZyMdzsUoAgR9c7RkvOyZb20hCz3nQh/U
         +uSgJ3ev/OB2xgSDCEc7kGgzkFf4pZIpcW+K0o2xY5dKzcJubDoEBApJtKsXJFRdBqpM
         3KAfOs3VTn9Jtg035MJOrKj6jEgKJ/fdkiij139eJNaqnOJUFJSb0NvNqHP6eRv0zGR4
         hCSw2oqghoa4ivFvVaX5XjUMDrHU1+m5BsRaHZLMgBv+zwDXUpJsH7wGg4Za5Z+5/MkX
         r06w==
X-Forwarded-Encrypted: i=1; AFNElJ9Kv3Qa6T+RFvE6xaukmQQiPoUIeoX8WIYRu8nWDrO9EcHyh3gzQJjkbYSTqeil8wcrDF7VHvOnXkPh@vger.kernel.org
X-Gm-Message-State: AOJu0YzAhJTi8YYuSLqi1bhCfbKV4czTJuTklIUB6a67MrZVwsqIladr
	P1ecbKj8JZtM2TVHl6NpKr2KC+/+xcHGRkoVVPAl5yI0wNHNGiGWW0iQIMkM3rT1PqOoVqjLVzg
	munNmgmmfG91EBkUXaX3+Nkyo+T4S0So=
X-Gm-Gg: Acq92OEtcwZsn1oQhU15lAMbNABRDDfLH0+Co+dwxwnQAjv0g9CpBaS6eDhNmywL/IH
	9BpApDmsIp2JAe1WU9iWHdr/7ZYh/S1GN3roz+bYOBF417IfTrYjC/WkDVOGHZbindHOoq+4N5O
	+7CAW22Anz8L+fSNmls+t4/Vrl9LBbjKfo/argUSKGayEy0bilggpTB9CMWOvfhh0KU7PkANRJb
	gBLdw5skaoJ7CdqmQwxjM/mC9HSt4/dFXkLPjgwKtICzfd1tCvw6cm1x5UqTgs+ZhLuBItiVvOI
	PypRjfGwCGPxZv1UUNfa2w34w96wPb7Y91iTmYF1Vl6isOq3rg==
X-Received: by 2002:a05:6102:3f48:b0:6c2:e290:cc69 with SMTP id
 ada2fe7eead31-71d5cd7d1bdmr411153137.23.1781157407193; Wed, 10 Jun 2026
 22:56:47 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260602081451.3808833-1-zhengxingda@iscas.ac.cn>
 <178040480680.1778078.1165164069560552075.b4-review@b4> <bc4644a6c1e30a99f1ed5d967c64ba7f5da77fbc.camel@iscas.ac.cn>
 <178073773007.397244.9871455646149843167.b4-reply@b4> <7ecda3d0f91b0d96bcec44ddf485ed5146788220.camel@iscas.ac.cn>
 <178073918523.417326.15121723011916371966.b4-reply@b4> <1c33b1dd7d187b17b21b17339a4f1990e59d2f77.camel@iscas.ac.cn>
 <CAH2e8h7y9PivdMh-h78VSqMf8i2vSR2fvVaO0P1eYBT8qgEdUA@mail.gmail.com> <bd5ad1b53eb009377d0ee492b0e007e45d36f6a1.camel@iscas.ac.cn>
In-Reply-To: <bd5ad1b53eb009377d0ee492b0e007e45d36f6a1.camel@iscas.ac.cn>
From: Pengyu Luo <mitltlatltl@gmail.com>
Date: Thu, 11 Jun 2026 13:55:29 +0800
X-Gm-Features: AVVi8CcBDu6kzdtgQfGLhHAE9rTe4a2guqHrI7e7tsESyItQdgpIn_y5SMh1rkc
Message-ID: <CAH2e8h5jFP=A_WTYvqZJxv4gifu5yO7ikhT=ZK-rKLCZXj6sEQ@mail.gmail.com>
Subject: Re: [PATCH 0/6] arm64: dts: qcom: sc8280xp: set GPI DMA channels
 according to DSDT
To: Icenowy Zheng <zhengxingda@iscas.ac.cn>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-310161-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:zhengxingda@iscas.ac.cn,m:andersson@kernel.org,m:konradybcio@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-arm-msm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[mitltlatltl@gmail.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mitltlatltl@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[iscas.ac.cn:email,vger.kernel.org:from_smtp,mail.gmail.com:mid,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9119366ED6E

On Sun, Jun 7, 2026 at 4:49=E2=80=AFPM Icenowy Zheng <zhengxingda@iscas.ac.=
cn> wrote:
>
> =E5=9C=A8 2026-06-06=E5=85=AD=E7=9A=84 21:51 +0800=EF=BC=8CPengyu Luo=E5=
=86=99=E9=81=93=EF=BC=9A
> > On Sat, Jun 6, 2026 at 9:21=E2=80=AFPM Icenowy Zheng
> > <zhengxingda@iscas.ac.cn> wrote:
> > >
> > > =E5=9C=A8 2026-06-06=E5=85=AD=E7=9A=84 17:46 +0800=EF=BC=8CPengyu Luo=
=E5=86=99=E9=81=93=EF=BC=9A
> > > > On 2026-06-06 17:28:35+08:00, Icenowy Zheng wrote:
> > > > > =E5=9C=A8 2026-06-06=E5=85=AD=E7=9A=84 17:22 +0800=EF=BC=8CPengyu=
 Luo=E5=86=99=E9=81=93=EF=BC=9A
> > > > >
> > > > > > On 2026-06-02 21:21:27+08:00, Icenowy Zheng wrote:
> > > > > >
> > > > > > The magnetic keyboard (USB HID) can't be connected somehow,
> > > > > > others
> > > > > > are
> > > > > > fine, such as the spi touchscreen (not upstream yet), which
> > > > > > utilizes
> > > > > > DMA definitely. My config is here
> > > > > > https://pastebin.com/SdjuyJYk
> > > > >
> > > > > Is this a defconfig?
> > > > >
> > > >
> > > > Yes.
> > > >
> > > > > BTW it seems that CONFIG_ASYNC_TX_DMA needs to be selected too
> > > > > for
> > > > > exhibiting the problem (because there should be "public" GPI
> > > > > DMA
> > > > > consumers to trigger the stuck/reset).
> > > > >
> > > >
> > > > Is this still necessary? I checked the fedora discussion and your
> > > > GPI
> > > > DMA fix. And GPI DMA is only for the QUP-supported peripherals as
> > > > the
> > > > binding mentioned, devicetree/bindings/dma/qcom,gpi.yaml
> > >
> > > The devicetree without this fix seems to be still incorrect,
> > > because
> > > with the device tree fix even if the GPI DMA driver misbehaves the
> > > system won't be stuck (although it will iterate all GPI channels
> > > and
> > > then fail to function at all).
> > >
> >
> > Back to the start. You said some GPI interfaces aren't available to
> > HLOS, your mask is 0xb(0b1011), so I use 0x4(0b100) did a quick test,
> > and spi6 consumed it, no stuck or reset. Could you give me a
> > unavailable channel?
>
> I think channel 0b10000 of gpi_dma2 could be an example?
>
> It seems that 4 channels are tried on gpi_dma2 before hang on my
> gaokun3, but as gaokun3 has no known serial access, it's possible that
> 0b100000 or 0b1000 is problematic.
>

I see. I may test it on the weekend. Thanks!

Best wishes,
Pengyu

> (The reason gpi_dma2 is checked first is because it's the GPI DMA
> controller with the smallest address)
>
> BTW I just took the values from Windows DSDT, which is quite
> conservative.
>
> Thanks,
> Icenowy
>
> >
> > Best wishes,
> > Pengyu
>

