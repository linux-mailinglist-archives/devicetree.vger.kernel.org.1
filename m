Return-Path: <devicetree+bounces-70351-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B36F38D3248
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 10:52:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5F1E4284289
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 08:52:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3410917BB0E;
	Wed, 29 May 2024 08:49:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="a6PKJYhk"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 230A017B433
	for <devicetree@vger.kernel.org>; Wed, 29 May 2024 08:49:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716972554; cv=none; b=Qf7ZZVHD+ldTyd/w3DZCGIPPkDEszOz38Wwv0KmFq+JLpAw6ZuRT5vFlcYTf/W9C6RTzQEgmNCvgznAW6XCIpzJ4q55VtrN+CziJGmoxMGh2jmhLMwcZwF/vIayRxzDcx6dIJFW4Jqpvn6/Ij9UrCeKeSSRE930NKSQkiPcRCSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716972554; c=relaxed/simple;
	bh=kvfZaS196ROsCaxEFEgt3cwBxH3SveUwTDPLo+rZvdc=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VJY4XQ+NMDjOUhBNmi9DyviDpTwr6I2HLip9t0pD3Y9V20WmfVWQptNqOjusS2k1q2Kz9F7mLv/FWLl46EWi6k72dKsTw2elUBKsVZMAcjrpAKbckKwq05LwcGBiIvi4jbjusWNrFhAQNhRmDxSgF7utTOvFjMm45AdS3z5FgnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=a6PKJYhk; arc=none smtp.client-ip=185.125.188.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-ua1-f72.google.com (mail-ua1-f72.google.com [209.85.222.72])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 32C933FE52
	for <devicetree@vger.kernel.org>; Wed, 29 May 2024 08:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1716972545;
	bh=EJ2t9GtZmp+s6cfLA48Ay8n38h3UwJsqAm7P3XzHLVk=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=a6PKJYhkSJ2gs7ivVQKba5VYJmA6cbChK9Hq0214I9yun2FU4hOVNV5V2tLxkdQoF
	 DKkAd0lgLcw4Hi1Kp/El+/7a5ntx3MoxNPat7rtcVZathqBtljFJS5V2ifjuuAcE4H
	 nO9OlSlOeqPwErjqwtCagyQBMP7Z+rLAviP4ZO3dyEsDDobFfUrH3zKavIUukAhHZh
	 IXT7r5lJDYexUzoPfR0wlU25H1r093iVXVffNjeWTV5woYQ72AYOVMGRunoqKHuMNF
	 RlCanz2mc/1uV3XMx18wxssI8vITbo8GqYVjLCtBFwduG4h63j3eHHHuZpYgtPeAJF
	 Hh3ZiOOxWx/FA==
Received: by mail-ua1-f72.google.com with SMTP id a1e0cc1a2514c-7fc2273536bso738267241.2
        for <devicetree@vger.kernel.org>; Wed, 29 May 2024 01:49:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716972544; x=1717577344;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EJ2t9GtZmp+s6cfLA48Ay8n38h3UwJsqAm7P3XzHLVk=;
        b=gJ8AKH7ejuzohvU4nZD4A0X2JMKxwkTr1488WaldQagKpvtbQAVACT0O1SdFOlaXse
         MvkrdUyKECCjsgZmycqGlWV+kKQRMFwR5Oc7hjo5pSncYu27vn38G4LiriK1w7seJVLS
         eDszpELQ/Aj0Mlfwvx2HDl4al32Rn/WNFTqfZCscquMHhQAcYCAwWMP55cns723wNC6r
         cbr+jbz337OLPL7kmhUthPq7y1qigXU57+XbD+miZ3a3W0FWetJFM7NNru1j+JIpB0kD
         VxBXxJv1bINzty0zWMNiZlJtyigrQLDF7gsI/r3NoNgZnm1EStXV/N+hhOndwphwPHYF
         Z0ZA==
X-Gm-Message-State: AOJu0YxLuOXkTm8WVAJmaavfMGJEsSeMivEQzEtvIly2ejBJ31ZHW6Vo
	OYk4poEwddWqx4WbH354P+vXm5D9ZTe6mmL8CVpQ347UGCYWA5aLiyUhq0E1NKjukdkS4D/1zMl
	Dqy1N41TbvaoRcm4qWOdh94sB3uaDy4eXboMxYm9yaVe/DwT14l9cszZXW7V6Bta53K0FXgkcZ6
	xP6YxxWztdIWkcNdu4Y/jQYX455L3khFJHyZESdBvkfxsgB9rCAw==
X-Received: by 2002:a05:6102:512a:b0:48b:8bd6:1a59 with SMTP id ada2fe7eead31-48b8bd61bfdmr7190059137.24.1716972544107;
        Wed, 29 May 2024 01:49:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGwpijt0PsidAXBp+RcaLzwT5vMVN002Oe/FiayvOw00xh/Jrg4nuJALXiWsepj1/IQE/b8s7BaI+i4L1m2fO4=
X-Received: by 2002:a05:6102:512a:b0:48b:8bd6:1a59 with SMTP id
 ada2fe7eead31-48b8bd61bfdmr7190044137.24.1716972543771; Wed, 29 May 2024
 01:49:03 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 29 May 2024 04:49:03 -0400
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <87zfsy102h.fsf@igel.home>
References: <20240508111604.887466-1-emil.renner.berthing@canonical.com>
 <87wmo2nmee.fsf@linux-m68k.org> <CAJM55Z-F6N6ua5LoqyMFogDtLp=FaRPoDv4osXFDMjR1b8r9nw@mail.gmail.com>
 <87zfsy102h.fsf@igel.home>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Wed, 29 May 2024 04:49:03 -0400
Message-ID: <CAJM55Z8Ce1i==pSUj0z4T2y71g713-675mAYQP5qSN5Euz=rLQ@mail.gmail.com>
Subject: Re: [PATCH v1 0/2] riscv: dts: starfive: Enable Bluetooth on JH7100 boards
To: Andreas Schwab <schwab@linux-m68k.org>, 
	Emil Renner Berthing <emil.renner.berthing@canonical.com>
Cc: devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Emil Renner Berthing <kernel@esmil.dk>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>
Content-Type: text/plain; charset="UTF-8"

Andreas Schwab wrote:
> On Mai 10 2024, Emil Renner Berthing wrote:
>
> > You don't include any information useful for debugging this, but if it get's
> > far enough to load the firmware could you at least make sure you run the
> > version below, so that's at least the same.
> >
> > https://github.com/esmil/linux/blob/visionfive/firmware/brcm/BCM43430A1.hcd
>
> That didn't change anything (and there are no messages related to
> firmware loading from hci_uart).
>
> [  +0.879623] Bluetooth: Core ver 2.22
> [  +0.004843] NET: Registered PF_BLUETOOTH protocol family
> [  +0.008787] Bluetooth: HCI device and connection manager initialized
> [  +0.021944] Bluetooth: HCI socket layer initialized
> [  +0.008488] Bluetooth: L2CAP socket layer initialized
> [  +0.006333] Bluetooth: SCO socket layer initialized
> [  +0.097478] Bluetooth: HCI UART driver ver 2.3
> [  +0.007943] Bluetooth: HCI UART protocol H4 registered
> [  +0.006066] Bluetooth: HCI UART protocol BCSP registered
> [  +0.006962] Bluetooth: HCI UART protocol LL registered
> [  +0.000015] Bluetooth: HCI UART protocol ATH3K registered
> [  +0.000084] Bluetooth: HCI UART protocol Three-wire (H5) registered
> [  +0.000247] Bluetooth: HCI UART protocol Intel registered
> [  +0.000455] Bluetooth: HCI UART protocol Broadcom registered
> [  +0.000084] Bluetooth: HCI UART protocol QCA registered
> [  +0.000008] Bluetooth: HCI UART protocol AG6XX registered
> [  +0.000057] Bluetooth: HCI UART protocol Marvell registered
> [  +0.051854] hci_uart_bcm serial0-0: supply vbat not found, using dummy regulator
> [  +0.000387] hci_uart_bcm serial0-0: supply vddio not found, using dummy regulator
> [  +0.094658] hci_uart_bcm serial0-0: No reset resource, using default baud rate
> [  +0.990297] Bluetooth: hci0: command 0x1001 tx timeout
> [  +0.022893] Bluetooth: hci0: BCM: Reading local version info failed (-110)
> [  +3.306159] Bluetooth: BNEP (Ethernet Emulation) ver 1.3
> [  +0.013336] Bluetooth: BNEP filters: protocol multicast
> [  +0.124262] Bluetooth: BNEP socket layer initialized

Oddly it doesn't work on my Starlight board either. I was thinking the firmware
might set up pinconf differently, but comparing

  /sys/kernel/debug/pinctrl/11910000.pinctrl-pinctrl-starfive/pinconf-pins

on the two boards shows no differences. I've also not been able to spot any
differences in how the AP6236 module is connected in the schematics for the two
boards, so not really sure how to proceed.

If you're also testing on the Starlight board then I can update the
patch to just
enable Bluetooth on that I guess.

/Emil

