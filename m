Return-Path: <devicetree+bounces-238078-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D89AC56FBB
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 11:50:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1B3873B9169
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 10:42:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A3C2331A73;
	Thu, 13 Nov 2025 10:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (4096-bit key) header.d=canonical.com header.i=@canonical.com header.b="YgRcZuLm"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78AD43314D9
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 10:42:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763030553; cv=none; b=pdJjQmRseD4kZjt71dZ2Ga4OByZtFWWg4ePoa4aGCFKldBUDvOE89DZ3pST/dgkYIJ58vLlLfoG7rRMwjKKzR/GDuitAN44lda97DKuBjs9mqmRn93NxM4jMT9mZDzG1MnvnmKS8SI0177mIgLN6BcbJx2Y9zNaMDczKoe30wqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763030553; c=relaxed/simple;
	bh=PMmKSFKj6pzkYGzgLnVnV4jlBP4NMbJ4YiWVaQ7L768=;
	h=MIME-Version:In-Reply-To:References:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZWjt7JPkkGIUvphGQ9EF4INIkDaFk1vMG3z7tFd18vBH9XhiNgBZbp1NuCYsV0fY8S5wP4+TrDDAHwtg/C8vGqyXWgSbVc8KVCcXo719i29xsGYZ1gF4VxkyPFivGLdEyxglf0YWofYa7sQL2S9bI8poPiTMn9vhGPZh9Ms2MKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (4096-bit key) header.d=canonical.com header.i=@canonical.com header.b=YgRcZuLm; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com [209.85.218.72])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 3263740251
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 10:42:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20251003; t=1763030548;
	bh=WaWROQhILaIk4AODRxLJvdFvDxUCFVP6Fxty2SkZyI4=;
	h=MIME-Version:In-Reply-To:References:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=YgRcZuLm86cfnKM7UX2EDXrfVXVcH1g7Mf8TnnZtarKdu91czDC6BrbC3vYLgRRBM
	 VyLumaupXBK1Uk/2VGv8993+5Y/RGuN/5BFUp0dOhf+S4lEHIN9ku8GjBD2tRDGrG4
	 TCJj0QgRG7WKIcMzKaZhf0YYhWhtMFlh2pqcbPqMoo3dgplzXKBcmuLfNm3mI0jF2W
	 PBgw0rnGSysHsT5sLzllM3U4Y9BYpLjjLRf5AxjjCadjKyS+84AGVuE1i2pvOSY0+C
	 qcaTmiQKywpplVhHdBrsKu0W/GkM1bOOJ0Wyx2hd450k9VLIghw1gsYnFx8Gs9Jx+4
	 V1melovOopT6Te1FMo+IZALYEgsLSfCFeRuKU7vRFcdbBe5t85DEoRcXUFCsG7niPJ
	 oPtQG6hlmpmhV9YPDsUIpY/W/Mk7z/WBBQbnYYKfRRcD4aGaLC5Kd3gD0VNhmQunIt
	 HuZnLFItLu/9zgO12WTZgdx09CSDVu4c6j9+6d5d+NKHCg+lOKxFa7OXojLQfknTKQ
	 u5syzlvV4wEdIG3AsYCGnwd1Yg/jiEGKNbV3yHO/B/pgIPNUbVggOyFqrXwLXN+XGt
	 oU7qzDJRUtYZezsomLqD5RI5Sc3VklJXSwv7LpxN32c2BYTPDzOaIz9oI++HojWsgL
	 wuwmwZwYUO6oKa3j1HTYpMVU=
Received: by mail-ej1-f72.google.com with SMTP id a640c23a62f3a-b70b2a89c22so96477966b.0
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 02:42:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763030547; x=1763635347;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WaWROQhILaIk4AODRxLJvdFvDxUCFVP6Fxty2SkZyI4=;
        b=N/EplPRuNzyEPFkYqovVCnFvudRKS+8EmUhAkZJqdcn3zfTMKAznfqRjE+HvfnXgEm
         Ibz+7ttvnfn4tk8b++B9Gkz5tzlQaSOOTA6wWaEebxmmxBGxh3HB98NwqWjyl5nGXFxr
         FYso/nlGVkCDZOAdrqFytHORhN5qwlzb1kh2bdBvrFRunFktj0eo0z8ncig87Kbkuw96
         KqarYvfCDWaGLTV/qVtB81TDbpt4toXuPq/YLn/iaUvWTEaVjOpVZ2HPKm3df6PCl2wn
         ZsxqD6Bbq5ktbyfKcIK/1zoXM94m6ayAi8JwcAZSntpzwIFmKh1jhGEVMfPK/DT+HOPG
         GuvQ==
X-Gm-Message-State: AOJu0YwE9+04Bbk7KvHdEbdnt7yG37teTFlrcFdfAKEiDO/Y0/dphM8B
	oN5BBz1qBKohOVH3Fsyp7Oi3KL1fA2xMcYNs42srT5UHbrAN0VjOhElZhqyqVbi+NpprTZ3ypy4
	aaFVMY1GM/TgXznBcGOW3BAKFBkl4Fi1a+R/2ca+gXgbVNFrjBiAWzQaYNoBJoddjJtdZorNlBp
	caXB2LCecVQIvon9PtLzv/xvYROGoYP/oH41q/FuRBgvJawUyvP9/8bA==
X-Gm-Gg: ASbGncuI1xk9GWvklnBRQ95cFzTivkrX/uc+p5O3MqIoLMADE5GziLsRBwRMY2p6bVO
	N+7NVvV8Nlzl89as9kxDTbkmdeZhQ83+BBaviee5QFHwi50iJcNlK42s32a21PXLF8aTgfumNIw
	cmJWzFI3XlEOs4Gsp/83+oC1Sqz2cYHAZGnxrXBESKJ3g/pKl30RvgHg==
X-Received: by 2002:a17:907:3e1f:b0:b72:b7cd:f59e with SMTP id a640c23a62f3a-b7348087148mr254967266b.8.1763030547556;
        Thu, 13 Nov 2025 02:42:27 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFTJg98+9M8c886tFyGLEzoK9vA4EcA/KrEpft00B6n0vwqztesDMLxb4eNFEPEpnVvcr/HOe2M0PsqZg0bCHc=
X-Received: by 2002:a17:907:3e1f:b0:b72:b7cd:f59e with SMTP id
 a640c23a62f3a-b7348087148mr254965466b.8.1763030547147; Thu, 13 Nov 2025
 02:42:27 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 13 Nov 2025 02:42:26 -0800
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 13 Nov 2025 02:42:26 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <ZQ2PR01MB13076544E2136E7E7C2EEDA1E6CD2@ZQ2PR01MB1307.CHNPR01.prod.partner.outlook.cn>
References: <20251107095530.114775-1-hal.feng@starfivetech.com>
 <CAJM55Z_rczBo4D3HsC90QW1=fp3NWgK-tsEo6LHTZNXEBHTDqA@mail.gmail.com> <ZQ2PR01MB13076544E2136E7E7C2EEDA1E6CD2@ZQ2PR01MB1307.CHNPR01.prod.partner.outlook.cn>
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
User-Agent: alot/0.0.0
Date: Thu, 13 Nov 2025 02:42:26 -0800
X-Gm-Features: AWmQ_blOZ9S9m9Ve_xD05iTkInH_Tetx_kG4fJGOm32UTmonVLiTkEgBwiVrXdU
Message-ID: <CAJM55Z9KyNK1n4i9FxbLor4HTQKqK8WKA2svjPVvKXihw_E+sg@mail.gmail.com>
Subject: RE: [PATCH v2 0/8] Add support for StarFive VisionFive 2 Lite board
To: Albert Ou <aou@eecs.berkeley.edu>, Bjorn Helgaas <bhelgaas@google.com>, 
	Conor Dooley <conor+dt@kernel.org>, E Shattow <e@freeshell.de>, 
	Hal Feng <hal.feng@starfivetech.com>, 
	Heinrich Schuchardt <heinrich.schuchardt@canonical.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <pjw@kernel.org>, 
	"Rafael J . Wysocki" <rafael@kernel.org>, Rob Herring <robh@kernel.org>, 
	Viresh Kumar <viresh.kumar@linaro.org>
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"

Quoting Hal Feng (2025-11-13 04:42:05)
> > On 12.11.25 21:54, Emil Renner Berthing wrote:
> > Quoting Hal Feng (2025-11-07 10:55:22)
> > > VisionFive 2 Lite is a mini SBC based on the StarFive JH7110S
> > > industrial SoC which can run at -40~85 degrees centigrade and up to
> > > 1.25GHz.
[...]
> > Currently the JH7110 device trees are layed out like this, with a nice separation
> > between the SoC description and board descriptions:
> >
> > jh7110.dtsi               # JH7110 SoC description
> > |- jh7110-common.dtsi     # Peripherals common to all JH7110 boards
> >    |- jh7110-starfive-visionfive-2.dtsi # Peripherals common to VF2 boards
> >    |  |- <VF2 boards>     # Final VF2 board descriptions
> >    |- jh7110-milkv-marscm.dtsi # Peripherals common to Mars CM boards
> >    |  |- <Mars CM boards> # Final Mars CM board descriptions
> >    |- <other boards>      # Other JH7110 board descriptions
> >
> > With this series it moves to
> >
> > jh711x.dtsi
> > |- jh711x-common.dtsi
> >    |- jh7110-common.dtsi
> >    |  |- <jh7110 boards>
> >    |- jh7110s-common.dtsi
> >       |- <jh7110s boards>
> >
> > ..which I can't even give clear labels like above. In other words when new
> > patches are sent in it would not be easy to explain exactly where each change
> > should go and why.
> > I'm also worried that you'll find that more of the peripherals on the JH7110S
> > need special handling and a new jh7110s-... compatible string. Then I guess
> > they'll need to jump from jh7110x.dtsi two levels down to jh7110{,s}-
> > common.dtsi which then both describe SoC and board properties.
> >
> > If you're serious about calling this a new SoC then I'd expect something more
> > like this:
> >
> > jh711x.dtsi                  # Peripherals common to both SoCs
> > |- jh7110.dtsi               # JH7110 SoC description
> > |  |- jh7110-common.dtsi     # Peripherals common to all JH7110 boards
> > |     |- jh7110-starfive-visionfive-2.dtsi # Peripherals common to VF2 boards
> > |     |  |- <VF2 boards>     # Final VF2 board descriptions
> > |     |- jh7110-milkv-marscm.dtsi # Peripherals common to Mars CM boards
> > |     |  |- <Mars CM boards> # Final Mars CM board descriptions
> > |     |- <other boards>      # Other JH7110 board descriptions
> > |- jh7110s.dtsi              # JH7110S SoC description
> >    |- jh7110s-common.dtsi    # Peripherals common to all JH7110S boards
> >       |- <JH7110S boards>    # Final JH7110S board descriptions
> >
> > I know this will mean some duplication in jh7110{,s}-common.dtsi, but I
> > would prefer that to not having a clear explanation of what each file describes.
> >
> > Do you think this layout could work for you?
>
> Yeah, it is clearer for developers and maintainers.
>
> Considering Conor's suggestion, what about:
>
> jh7110.dtsi               # JH7110 SoC description
> |- jh7110-common.dtsi     # Peripherals common to all JH7110 boards
>    |- jh7110-starfive-visionfive-2.dtsi # Peripherals common to VF2 boards
>    |  |- <VF2 boards>     # Final VF2 board descriptions
>    |- jh7110-milkv-marscm.dtsi # Peripherals common to Mars CM boards
>    |  |- <Mars CM boards> # Final Mars CM board descriptions
>    |- <other boards>      # Other JH7110 board descriptions
> |- <JH7110S boards>
>
> Move the opp table from jh7110.dtsi to jh7110-common.dtsi.
> Remove jh7110s-common.dtsi, because only one board uses JH7110S now.

This patchset adds 2 different boards. Has this changed?

Also this would mean that you're not using the starfive,jh7110s compatible or
any other starfive,jh7110s-.. compatible strings, so effectively you're not
treating it as a new chip, but just a board that needs a different opp table.

I see now that the opp table is effectively the only difference between the two
chips in this patchset, so if that's closer to reality then what you suggest is
fine with me.

/Emil

