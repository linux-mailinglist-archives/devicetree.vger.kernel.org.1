Return-Path: <devicetree+bounces-155407-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 88A55A56928
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 14:43:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 756191670D0
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 13:43:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47F2A219EB8;
	Fri,  7 Mar 2025 13:43:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FlxFRTfh"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231E0EBE
	for <devicetree@vger.kernel.org>; Fri,  7 Mar 2025 13:43:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741354987; cv=none; b=uduSBpHZ4vHJH4H7h4R1OVjD1+RKDqRR4zYa3e/C/d09Nwjo9ab22b75KgX3JOkMj7P2amBGNJ4dUUMT6ZGGjl8psh1J1/zmM3cVy3JkdMbHdsW60SqqER7Mnqs3hY8oFUggvhIJwR91n8PNI7md2pHz92J3qv0+Yi5rFDtYIpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741354987; c=relaxed/simple;
	bh=o96a4oADz87hcePQZSEpuJiCyGHWz0jL1FgSaASzVTc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=e4ufrDkj3SBLYEhs72rHcOFn1TnNDkkWy/Opedec/Fz5iZAILsIKixQV3F34PlmrWhBCswgdk94PIvOU1YZSc+WvCpL8WYHJW962GtdiH6tArRaC2pVPqTD5pYbZ631QEylVCHpAeuD0OUv909FC3/LWpagD1UjjWAeydDID8CE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FlxFRTfh; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9704CC4CEEA
	for <devicetree@vger.kernel.org>; Fri,  7 Mar 2025 13:43:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741354986;
	bh=o96a4oADz87hcePQZSEpuJiCyGHWz0jL1FgSaASzVTc=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=FlxFRTfhSBwo922hmTW11IXjvhW/tAIZVDbJEm+HjtIjbS9RC10S2sqSyQNooq96/
	 QSDFRUWk4LxTWlMRwmgJUQz9TmNgRsKKtK6NFiPF4bwnIca+gNzuW8McAezgihKHCV
	 ZKndao72LlMb1v7Jlku9RFV5SbxAEtfXPIaj7fsPepYSfpybmdSM2mbFtqY9VdFaIv
	 qBUCLC22whf7LV2Ezx24b3zZi3JtQM4DDSed/464CcY07K1TBVF8P4K/Lb4PTlZdXJ
	 NROe7vAb7OxmAJa5ubEUf5f/BA+W+TSYxtP+vupPQ15dskOCyomsuRZl8h5QCzq8Rd
	 2t7JAFB++AwTw==
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-5e5cd420781so3071967a12.2
        for <devicetree@vger.kernel.org>; Fri, 07 Mar 2025 05:43:06 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUrCad7Mq7++GotFNNfshv5xb46rcvLw3msoxCJEF+vffYEBIVmWHYKhb6wng21lWBh2qaXl9xznVeL@vger.kernel.org
X-Gm-Message-State: AOJu0YzDGxpa20lVbPKEIx7ObNOCl9q/v8Hhe8zeBpMFeSipJT93m6qT
	GHN/ZWhtk4V90yxIPkUgXEXeFcpwx/0BRvQLshXAALSD3GDtYf2ESNz5NWVSXu/ruTPhvcoIDhj
	b4DdhMvS/BhprAW8RK3l+po9vVA==
X-Google-Smtp-Source: AGHT+IFc3bvdtsW0T/1KqLHL/xTobzr93bIMREKqlZT8Ch30B7IGpnpqrwxAJREqDwYwuE6RMxrqFbzrjwLiAl1/mP8=
X-Received: by 2002:a17:906:dc8e:b0:abf:6ec7:65e9 with SMTP id
 a640c23a62f3a-ac252f8f556mr339325966b.43.1741354985185; Fri, 07 Mar 2025
 05:43:05 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <ad457a08aa7607a094872bab41b5fb670b978cec.camel@siemens.com>
In-Reply-To: <ad457a08aa7607a094872bab41b5fb670b978cec.camel@siemens.com>
From: Rob Herring <robh@kernel.org>
Date: Fri, 7 Mar 2025 07:42:53 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLX_t90QYa+Z45wpLhmf0xQ_=i6aJgyFRG2pXJZaYY1PQ@mail.gmail.com>
X-Gm-Features: AQ5f1Jrvew8iFiDP4ewWteXcG7Dqcn4PyDmf1R7IENOP-Eb7ppBmiUmNuzHzPpA
Message-ID: <CAL_JsqLX_t90QYa+Z45wpLhmf0xQ_=i6aJgyFRG2pXJZaYY1PQ@mail.gmail.com>
Subject: Re: How legal is #interrupt-cells = <0>?
To: "Sverdlin, Alexander" <alexander.sverdlin@siemens.com>
Cc: "krzk+dt@kernel.org" <krzk+dt@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 7, 2025 at 6:29=E2=80=AFAM Sverdlin, Alexander
<alexander.sverdlin@siemens.com> wrote:
>
> Dear DT and bindings maintainers!
>
> I'm facing a dilemma trying to provide new bindings for an interrupt
> controller which only has one interrupt in one configuration. It must
> be modelled in the DT because its driver has to acknowledge the IRQ
> request in HW, but otherwise there is no information required to
> select or configure this single interrupt.
>
> Logically thinking the above would mean #interrupt-cells =3D <0> in this
> interrupt-controller node.

You don't need #interrupt-cells unless you have a consumer with
'interrupts". And "interrupts" requires at least one cell. I suppose
you could use "interrupts-extended", but that was intended just for
different parents, not 0 cells.

> And except all the hell breaks loose in the drivers/of/irq.c I see
> no other issues with this.

For this reason alone, I would just use 1 cell and move on.

> Do you see this as definitely illegal combination? (Aside of the
> two already existing examples in both arch/.../*.dts and in bindings,
> one marked as "will not be an irq parent" and another example being
> an MSI controller, probably taking other code paths.

I think all these cases are just to abuse IRQCHIP_DECLARE() as they
are all MSI controllers. It's been on my radar to fix these.

Rob

