Return-Path: <devicetree+bounces-70356-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A86F28D3269
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 10:58:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 07B26B23920
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 08:57:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A5C7167DB3;
	Wed, 29 May 2024 08:57:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="RYPmipFT"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D869167D87
	for <devicetree@vger.kernel.org>; Wed, 29 May 2024 08:57:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716973075; cv=none; b=Ivu/gyqMI3g7ONsUKjyYsKH8QNllXKGNHqHze9hPHKtZn/IWsTBo4kwGDmziRJBnTABMcGkwu+xHa04k6WcVQQhvt0d4ljhBCyNnFY9xQ56iHlknT/NgrKpNG9cPSovxL9AJPlGzEFric2GM5hwJUq79Y4QbvNDlczI+VCve1L8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716973075; c=relaxed/simple;
	bh=S+X9GXGhHwTcRuSiC9i/SHon03qhfv/kK9Vaiu+hrio=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=aoZxQUFWl8rmqRDfqOhbXhXoWLr6GnOVArX1EO2ozdEoOMC2PAJ71jUm1rJC8kHj+HZUd/JU9hKBmzMrqueGzGY9c8/0f263GI+oDhbZSrfbdLr4R/Q4VNeXzTstYIDZQL3PaH26CAVbtC7g6sJgGrNgOi8cn/AiRZnu8nybuVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=RYPmipFT; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 1BFA13FE59
	for <devicetree@vger.kernel.org>; Wed, 29 May 2024 08:57:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1716973066;
	bh=7E/ixyFBMdyfw3d95h9lXIVPkbHsrCtTkTVK1phqYPQ=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=RYPmipFThOvRZamXv7dKsE9jv16hu36nElWWZR0hmdeNqjpEcU4PPVIqo2WqS07Md
	 a5olWPRMVUZ9lRWKy/KoM7sueb/E/sYZ1q73ysDX6r7g9GtrmUCzaBGQ2qZMexXV3J
	 2XKDKrPX6Tez5RL2Z7vcZLzUPsadEK+Pg6TsShTxrpLIGMpEtDfqKFdZf0AWm3TMWx
	 DSIlt51COg5wCDbOtLMW39LrpvR2A9VewLABU8m1MvlL+QGHqk60vjEqAGj4Fd4d7R
	 bVvKafUCi2/b+2cJb37EbTEb0qoBrR4FmoUfHCJ0LESbW75qLsP1YDqpvJFSAlMc7k
	 iPufM8nr9fKYA==
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-43fc79f9250so17515031cf.3
        for <devicetree@vger.kernel.org>; Wed, 29 May 2024 01:57:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716973065; x=1717577865;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7E/ixyFBMdyfw3d95h9lXIVPkbHsrCtTkTVK1phqYPQ=;
        b=Qg9BgT8ZZoaVI/IDCsyBwxSd+OhRGlOaaegeW3VJNC6T39GRL96y3dWUZdiLwaXLrn
         8dw1QsHc3K98Hk0Y69SO0H6iRVc1FjnYsmwxuBI3XMsXN7vlhimFKswDXECVMVUSv0ih
         3V9uOMdIBGgZCTIWN2N9XDXr9Ig3lB8OiEXbQ/YRJCbiUDFPI+I8TGXcgBs7LZdy2IJP
         QpY1pLR0FBNJQvxq8wqNb+ABP0nkGYMGxVTmUaHhUbSf+oElJDp0KRSrqOGxVAImDn/J
         rvMOdyDmsk2X0MHaLGNKMuglwP624xCzCFBiGAcVhiAR8YeeWD6ESL+UuskFs9REQolZ
         zANw==
X-Gm-Message-State: AOJu0Yx079iB3szedy1o1/04x/a+ASkidhZnHIkktfIK7FXiXUA5620R
	A1iiYm0w4vecfhqrD7SOae5q/ORLUxhT8TkexwvTvjYpQN+7SETJxmJIJYpLw5Jw+cKWqrYHVQE
	Q2XRgB/neE3IeCeZ0n/9ef7PqHk25+xzilXVIWVkrpb7VIrdFwsXd+zfIKWI2Bnm2G7jYomj18U
	Rgk8yk85yNx65ApMLK044ISrP+SkDRyS9hdChNa4dnAHMjh5JJRw==
X-Received: by 2002:a05:622a:50a:b0:43a:9cd3:7fed with SMTP id d75a77b69052e-43fb0e6de43mr160149101cf.17.1716973065079;
        Wed, 29 May 2024 01:57:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE1j+AFmFPVCTE536njafbvZ4XRvDNgWG8gWthUfQYV0su8dbTfEujaBQjWaVYrBYJsDICRI63w3lUZ8Q15BP8=
X-Received: by 2002:a05:622a:50a:b0:43a:9cd3:7fed with SMTP id
 d75a77b69052e-43fb0e6de43mr160148901cf.17.1716973064666; Wed, 29 May 2024
 01:57:44 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 29 May 2024 04:57:44 -0400
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <CAJM55Z8Ce1i==pSUj0z4T2y71g713-675mAYQP5qSN5Euz=rLQ@mail.gmail.com>
References: <20240508111604.887466-1-emil.renner.berthing@canonical.com>
 <87wmo2nmee.fsf@linux-m68k.org> <CAJM55Z-F6N6ua5LoqyMFogDtLp=FaRPoDv4osXFDMjR1b8r9nw@mail.gmail.com>
 <87zfsy102h.fsf@igel.home> <CAJM55Z8Ce1i==pSUj0z4T2y71g713-675mAYQP5qSN5Euz=rLQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Wed, 29 May 2024 04:57:44 -0400
Message-ID: <CAJM55Z8Bhv-CSR5PKhFfN7dG-rBcEeH+rmL=i2Ass_QuYtBi+Q@mail.gmail.com>
Subject: Re: [PATCH v1 0/2] riscv: dts: starfive: Enable Bluetooth on JH7100 boards
To: Emil Renner Berthing <emil.renner.berthing@canonical.com>, 
	Andreas Schwab <schwab@linux-m68k.org>
Cc: devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Emil Renner Berthing <kernel@esmil.dk>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>
Content-Type: text/plain; charset="UTF-8"

Emil Renner Berthing wrote:
> Andreas Schwab wrote:
> > On Mai 10 2024, Emil Renner Berthing wrote:
> >
> > > You don't include any information useful for debugging this, but if it get's
> > > far enough to load the firmware could you at least make sure you run the
> > > version below, so that's at least the same.
> > >
> > > https://github.com/esmil/linux/blob/visionfive/firmware/brcm/BCM43430A1.hcd
> >
> > That didn't change anything (and there are no messages related to
> > firmware loading from hci_uart).
> >
> > [  +0.879623] Bluetooth: Core ver 2.22
> > [  +0.004843] NET: Registered PF_BLUETOOTH protocol family
> > [  +0.008787] Bluetooth: HCI device and connection manager initialized
> > [  +0.021944] Bluetooth: HCI socket layer initialized
> > [  +0.008488] Bluetooth: L2CAP socket layer initialized
> > [  +0.006333] Bluetooth: SCO socket layer initialized
> > [  +0.097478] Bluetooth: HCI UART driver ver 2.3
> > [  +0.007943] Bluetooth: HCI UART protocol H4 registered
> > [  +0.006066] Bluetooth: HCI UART protocol BCSP registered
> > [  +0.006962] Bluetooth: HCI UART protocol LL registered
> > [  +0.000015] Bluetooth: HCI UART protocol ATH3K registered
> > [  +0.000084] Bluetooth: HCI UART protocol Three-wire (H5) registered
> > [  +0.000247] Bluetooth: HCI UART protocol Intel registered
> > [  +0.000455] Bluetooth: HCI UART protocol Broadcom registered
> > [  +0.000084] Bluetooth: HCI UART protocol QCA registered
> > [  +0.000008] Bluetooth: HCI UART protocol AG6XX registered
> > [  +0.000057] Bluetooth: HCI UART protocol Marvell registered
> > [  +0.051854] hci_uart_bcm serial0-0: supply vbat not found, using dummy regulator
> > [  +0.000387] hci_uart_bcm serial0-0: supply vddio not found, using dummy regulator
> > [  +0.094658] hci_uart_bcm serial0-0: No reset resource, using default baud rate
> > [  +0.990297] Bluetooth: hci0: command 0x1001 tx timeout
> > [  +0.022893] Bluetooth: hci0: BCM: Reading local version info failed (-110)
> > [  +3.306159] Bluetooth: BNEP (Ethernet Emulation) ver 1.3
> > [  +0.013336] Bluetooth: BNEP filters: protocol multicast
> > [  +0.124262] Bluetooth: BNEP socket layer initialized
>
> Oddly it doesn't work on my Starlight board either. I was thinking the firmware
> might set up pinconf differently, but comparing
>
>   /sys/kernel/debug/pinctrl/11910000.pinctrl-pinctrl-starfive/pinconf-pins
>
> on the two boards shows no differences. I've also not been able to spot any
> differences in how the AP6236 module is connected in the schematics for the two
> boards, so not really sure how to proceed.
>
> If you're also testing on the Starlight board then I can update the patch to just
> enable Bluetooth on that I guess.

* I meant update the patch to only enable bluetooth on the VisionFive V1 of
  course.

/Emil

