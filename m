Return-Path: <devicetree+bounces-254574-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 016BFD1968E
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 15:23:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0EBCF3049F44
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 14:19:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8241A284896;
	Tue, 13 Jan 2026 14:19:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f174.google.com (mail-vk1-f174.google.com [209.85.221.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5137F286D7D
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 14:19:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768313967; cv=none; b=jQU8OpcgEqkE/Q61S/BDS6hFHIl/9VW6qUSj2urMRqNPbP/70oO0obnWwXcyZOL4ZrjgePoghWcFthHJwyx+LXQMlqRlYOB7nI4BSE2yVhZgjnKYJ2/1wdkMU4UrxulaiJLLPbOP44GtkpoW7KMdJWIe4SIP/xnbcKKA8G5OKH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768313967; c=relaxed/simple;
	bh=uIpqQqtA/lJKBwjwwDPXE3suNhtvcxttY7BDb8S7rWg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=YXHhJay8TuKEeAgDqQI3hLpewDcvME0af4E5RfMC0AavCHuWFdZADLLEdlqHK2Wqz1MtnjgDX8tscc/o+Me0YKiY5cq2JXRwdz1GJ6HtJhbtRUjoEpBRHadsvWMCP72a1IT1MX32K1mBbiLRIytgDnme+Yz/hklGBsNns7zHAQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f174.google.com with SMTP id 71dfb90a1353d-563686cba0aso1244539e0c.0
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 06:19:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768313964; x=1768918764;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xwGbtz4WHBgjbaUVUACc9YQ7tp8fqM7Cfldv3SNB0Jo=;
        b=A+o14r0R2pUWUTp+HzH4PknI8Gx1EluE4mUUYvmvvOzHOF+2wTJOQkHDqAgQqS6H8B
         LUdfINvedP4LCZsG8dtdzyLUsjFB4BRCAAIwHJMPzE/79mFlARhz1CiElfh+YRMkqs7k
         ZKX5w98t58m/hh0MCq6K69+OrdnQGn6H+Xi7fkHp/0fs5DOWsBh+H4egPMLE4WgXt9c3
         TM++tcscQDrwPTTuQeBX/U3aYGHSTsSNsJ7qkQQUoHhCXqzZ9jaOhZdRjbu6PqqAFVdI
         Y74Y9/ObYHPdRGNLyjrn+/uiNQ0tSx6CPajfeWBz75ea0qIHltLnJhlzrgQaSWN4zexn
         00Ew==
X-Forwarded-Encrypted: i=1; AJvYcCVJGHDDWoEl0PqCZbdsL7hjIg28iSLEmRv0w02vN6qoepwsKnIH71tAY+Zm7ywmmCEPdhJc7pkw45st@vger.kernel.org
X-Gm-Message-State: AOJu0Yzsjbuhz8CFhz7a/BXsDJxmfVRis08bGyaNwT4mVo50jFprYvPd
	jCUFPgkfrpISrXsLcg2vIXvup+80P7UyO0B/xM/MZ3G/mx+HTs4a6y+9GMl3uvB0
X-Gm-Gg: AY/fxX7+/JZ9WSM+4uc9qh/o3Cb2FIvp4v9BK7MPNmMHSflaPnaghN+W2cy7icxLJBc
	GmwbQfHR/Oc85yYaXixr7OFJUlX5oK50NrR2OwOfANDQR4mb+pm7QFV3DKbJS4rugq5PguYI3o5
	SiKkYYtGr3hRAp+U/5NCLvTRlbDnk5R5NMJQP114I1zq0Z7t8C5f6rFYpdU4q/WDNCSixcql5U3
	hB2iSO1loBPxDoQkSsdBfQ9M1K4uj++Uk1qsI+vC9bPt0ClK/8jbxrabdkg1oes/V1BHF8LvBVf
	6WVjrxESybG3EhyH7vxn8FdIEHjVjZMwDt5tu90LfGl9SiKgWnm1t9PaMa0zJFRm13vSVWSF0pd
	paVMvyN83O7Fw48qX4ftgFP2U60KsagYmDltgFDOhbOmrR8VI+08w23R1NrPoaKh9fyGC1iCX3y
	g2HH37hvt4M+8SV+dYdELzRbRw/+2kFQWKlLx0ei8MZzRFGXETRoA4mSuoTgo=
X-Google-Smtp-Source: AGHT+IFCiIMLgC9fq8lTF7xRq7ooZt7BQaKQA+X+X4DHtfRxHxJY2Ec5BhB8NVJZviC5fFlyXYoDFw==
X-Received: by 2002:a05:6122:895:b0:54a:8cfe:193e with SMTP id 71dfb90a1353d-56347d4a486mr7024487e0c.5.1768313962742;
        Tue, 13 Jan 2026 06:19:22 -0800 (PST)
Received: from mail-ua1-f42.google.com (mail-ua1-f42.google.com. [209.85.222.42])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5634ca16da7sm17905069e0c.17.2026.01.13.06.19.21
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Jan 2026 06:19:21 -0800 (PST)
Received: by mail-ua1-f42.google.com with SMTP id a1e0cc1a2514c-943d0cafe77so2464023241.3
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 06:19:21 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWl1zng0pzdgMC8o+VEtFisqso0sD94kJov2J1byKvN3rQKICxfMdcMBF4hVuTRjCKzjirYuq/bw/zq@vger.kernel.org
X-Received: by 2002:a05:6102:5120:b0:5f1:55c9:11a2 with SMTP id
 ada2fe7eead31-5f155c91443mr2213235137.43.1768313960828; Tue, 13 Jan 2026
 06:19:20 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260101203938.159161-1-marek.vasut+renesas@mailbox.org>
In-Reply-To: <20260101203938.159161-1-marek.vasut+renesas@mailbox.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 13 Jan 2026 15:19:08 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVyQpOBT+Ho+mXY07fndFN9bKJdaaWGn91WOFnnYErLyg@mail.gmail.com>
X-Gm-Features: AZwV_Qgc2H6REA8fgJsKnqRk5KR8TM9uu7EdHnPsHrNotI7sbZvhls2j-N9ukmU
Message-ID: <CAMuHMdVyQpOBT+Ho+mXY07fndFN9bKJdaaWGn91WOFnnYErLyg@mail.gmail.com>
Subject: Re: [PATCH 00/11] Describe PCIe/USB3.0 clock generator on R-Car Gen3
To: Marek Vasut <marek.vasut+renesas@mailbox.org>
Cc: linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Magnus Damm <magnus.damm@gmail.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
	devicetree@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Marek,

On Thu, 1 Jan 2026 at 21:39, Marek Vasut
<marek.vasut+renesas@mailbox.org> wrote:
> Describe the 9FGV0841 PCIe and USB3.0 clock generator present on various
> R-Car Gen3 boards. The clock generator supplies 100 MHz differential clock
> for PCIe ports, USB 3.0 PHY and SATA.
>
> The series effectively has three parts, the first three patches are part 1,
> which fills in the missing USB 3.0 PHY on R-Car E3 Ebisu and enables it,
> thus aligning the Ebisu USB 3.0 support with the rest of the Gen3 boards.
>
> The second part is description of PCIe root ports on R-Car Gen3 SoCs where
> applicable, in this case that is H3/M3W/M3N/E3. The root port is used with
> PCIe port power control to also control the PCIe port clock. This is needed
> on Gen3 boards, because they often use separate clock output from the PCIe
> clock generator 9FGV0841 to supply clock to the controller and to the PCIe
> port.
>
> The third part is enablement of the 9FGV0841 PCIe clock controller on the
> R-Car Salvator-X/XS, ULCB and Ebisu boards. The boards use the PCIe clock
> controller outputs in a slightly different manner, all use the outputs to
> supply PCIe controllers and slots, as well as USB 3.0 SuperSpeed PHY. The
> ULCB board also uses the 9FGV0841 to supply SATA IP, but this is not yet
> described in DT, therefore it is also not part of this series.
>
> Marek Vasut (11):
>   dt-bindings: phy: renesas: usb3-phy: add r8a77990 support
>   arm64: dts: renesas: r8a77990: Add USB 3.0 PHY and USB3S0 clock nodes
>   arm64: dts: renesas: ebisu: Enable USB 3.0 PHY
>   arm64: dts: renesas: r8a77951: Describe PCIe root ports
>   arm64: dts: renesas: r8a77960: Describe PCIe root ports
>   arm64: dts: renesas: r8a77961: Describe PCIe root ports
>   arm64: dts: renesas: r8a77965: Describe PCIe root ports
>   arm64: dts: renesas: r8a77990: Describe PCIe root port
>   arm64: dts: renesas: salvator-common: Describe PCIe/USB3.0 clock
>     generator
>   arm64: dts: renesas: ulcb: ulcb-kf: Describe PCIe/USB3.0 clock
>     generator
>   arm64: dts: renesas: ebisu: Describe PCIe/USB3.0 clock generator

Thanks for your series!

This causes a crash during s2idle on e.g. Salvator-XS with R-Car
H3 ES2.0:

    PM: suspend entry (s2idle)
    Filesystems sync: 0.014 seconds
    Unable to handle kernel NULL pointer dereference at virtual
address 0000000000000008
    Mem abort info:
      ESR = 0x0000000096000004
      EC = 0x25: DABT (current EL), IL = 32 bits
      SET = 0, FnV = 0
      EA = 0, S1PTW = 0
      FSC = 0x04: level 0 translation fault
    Data abort info:
      ISV = 0, ISS = 0x00000004, ISS2 = 0x00000000
      CM = 0, WnR = 0, TnD = 0, TagAccess = 0
      GCS = 0, Overlay = 0, DirtyBit = 0, Xs = 0
    user pgtable: 4k pages, 48-bit VAs, pgdp=0000000504be2000
    [0000000000000008] pgd=0000000000000000, p4d=0000000000000000
    Internal error: Oops: 0000000096000004 [#1]  SMP
    CPU: 2 UID: 0 PID: 1000 Comm: s2idle Not tainted
6.19.0-rc5-arm64-renesas-04116-g331b300b41b0 #3416 PREEMPT
    Hardware name: Renesas Salvator-X 2nd version board based on r8a77951 (DT)
    pstate: a00000c5 (NzCv daIF -PAN -UAO -TCO -DIT -SSBS BTYPE=--)
    pc : devres_for_each_res+0x60/0xe8
    lr : devres_for_each_res+0x48/0xe8
    sp : ffff800083263a70
    x29: ffff800083263a70 x28: 0000000000000000 x27: ffff0004c125aec8
    x26: ffff800083263af8 x25: ffff80008167bd38 x24: ffff800083263af8
    x23: ffff80008071b2f4 x22: ffff0004c125aed0 x21: ffff80008071acd8
    x20: ffff80008071ad44 x19: ffff0004c125ac20 x18: 0000000000000001
    x17: 00000000ffffffff x16: ffff800081b93ac8 x15: 0056c6b8a4d0b0e4
    x14: 00001998170d3e20 x13: 188a4fd930ce7024 x12: 0000000529c8ad17
    x11: 00000000000000c0 x10: 0000000000000960 x9 : ffff800083263a50
    x8 : ffff800083263b38 x7 : 0000000000000000 x6 : ffff0004c0dc36c0
    x5 : ffff800083263af8 x4 : 0000000000000000 x3 : 0000000000000001
    x2 : 0000000000000000 x1 : 0000000000000000 x0 : 0000000000000000
    Call trace:
     devres_for_each_res+0x60/0xe8 (P)
     dev_cache_fw_image+0x5c/0x1a8
     dpm_for_each_dev+0x50/0x80
     fw_pm_notify+0xc0/0xec
     blocking_notifier_call_chain_robust+0x70/0xdc
     pm_notifier_call_chain_robust+0x24/0x40
     pm_suspend+0x13c/0x1e0
     state_store+0x7c/0x100
     kobj_attr_store+0x14/0x24
     sysfs_kf_write+0x78/0x8c
     kernfs_fop_write_iter+0x128/0x1d0
     vfs_write+0x210/0x390
     ksys_write+0x6c/0x100
     __arm64_sys_write+0x18/0x20
     invoke_syscall+0x44/0x100
     el0_svc_common.constprop.0+0x3c/0xd4
     do_el0_svc+0x18/0x20
     el0_svc+0x24/0xd8
     el0t_64_sync_handler+0x98/0xdc
     el0t_64_sync+0x154/0x158
    Code: f94004dc eb1600df 540000e1 14000018 (f9400780)
    ---[ end trace 0000000000000000 ]---
    note: s2idle[1000] exited with irqs disabled
    note: s2idle[1000] exited with preempt_count 1

I do not know what is the actual issue.  Adding debug prints to
rs9_suspend() and rs9_resume() shows these functions are not called,
while adding 'status = "disabled"' to the renesas,9fgv0841 clock node
in arch/arm64/boot/dts/renesas/salvator-common.dtsi does fix the issue.

Perhaps you have pending patches for the rs9 or PCIe drivers?
Do you have a clue?
Thanks!

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

