Return-Path: <devicetree+bounces-285785-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WJzlNPNT1mm8DQgAu9opvQ
	(envelope-from <devicetree+bounces-285785-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Apr 2026 15:11:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 137D43BC9D5
	for <lists+devicetree@lfdr.de>; Wed, 08 Apr 2026 15:11:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 884FD3058DCA
	for <lists+devicetree@lfdr.de>; Wed,  8 Apr 2026 13:07:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5804C3CA48B;
	Wed,  8 Apr 2026 13:07:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com [209.85.221.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E14223CA497
	for <devicetree@vger.kernel.org>; Wed,  8 Apr 2026 13:07:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775653679; cv=none; b=SM/SQFBvqBXmG5LbZ4Wi/IyujynLuyCjdXCIvliLc4LVSSLqYO1ZD1FracUspxwPLcd/PJC9Drn4JOY4ZBQRAkTmp0iN8BQJXUoYL6lj2GXSBxDxTbo/lTK2n9uQAYjHMp810a/GC7FUKrk2w9tuY/uFx+aAdeeMtYxYdJWkhoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775653679; c=relaxed/simple;
	bh=2wNTTwVqCeqr8hkgFLfv2QURTJXll89k2pFbxpcF1uI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SaG2sgqPCzhk//UA/5J6JogGBX0T9j+jOGhB+54Cu21ymWQIuo+1QW4Vgnd5HsW35lPj1W/R9E1xTjkEdHnQnO+PNoHRyL7U8I/q6KFtUS99qlc+L9Ma496IHNca6n243+fD6s3gdL2nzRCboi4ImQBE/dzoW71v2RvhKsImRs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f179.google.com with SMTP id 71dfb90a1353d-56d357797acso4362626e0c.1
        for <devicetree@vger.kernel.org>; Wed, 08 Apr 2026 06:07:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775653677; x=1776258477;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RI+J43qd4H5Anap3izX+byQPpLoUkJOQTO1aaryrRrI=;
        b=rt0fLMQ7TzPf07Rk25Wz4Stty9StKO1J6TTUcZTPkhogKDoOLtuViRSCbT10IIFJM4
         e3cS4Tg1ffRTOcYPt/Wx3ZlIc8+yrUouVzoupUSs2b2clSDfkbwpTJJRXL0CgiocGmOD
         1U0nn7OK0RBD7FlV8FKcw4g7JImVsTV6ZQuYbYivtDzsQDQobxRg1rMkKyo/P+yKEmUX
         VFo4FOD5Z78ZpM/e+PvPD64o1eg2eOdNOs4ZTBloswtmmOnnOMHm32z6r5hORqFrx4Y6
         BaVY8ti+NpsrCBO39R49Q0L7Jw18bmxl1QzGgeddtVy+sH4r7dfKqMERQ3UpP5CSVW2S
         tXTw==
X-Forwarded-Encrypted: i=1; AJvYcCX59VhYp8CzjKToWdK2QwI/L2cjp+fPg88+VtFj4XgT9Ury+OEiQIPJjz7Wf60KEiAg3+6p+qqiVqDR@vger.kernel.org
X-Gm-Message-State: AOJu0YzALzLXEve5p7GhGhqZY71yuxY1cNlIIlhHMZceVkyt1i/nXJTk
	GLdML9dIOiHN4r0iacIMgr6+unHONStqusoauND8vmhaNRxuUH0yIHyKe+Y9xhRC
X-Gm-Gg: AeBDietIHaafrWVMk1VGbgu1pXffGRnCS7mVOx0K2OzTD09e/z+VKRsvvkzvcyR0o9C
	qax9y/5o7pIdqP1EweVtXJ1Yq1pg7AtXe2q/Vi8NYUqDHpor4PDadAP5x+OL3t5sxkegQ0kearH
	bP+fu4WseIQQd/yrC6nQqphbq7fWRyHjJVpRDccynuLLL1u70vmiAHGr+127VlFC0zC5zXIpeuE
	InVwTNAnep+Uvrry/YyxqRv6lC080Q1LnZyGQiEI53eJw51Vb3Gq+RJeINSHLHztZ8w9fqjr5Jf
	pbMikVErHoLZPbhQ1+hJs+BP2o8TLoY5RwBmCYeD+VOrzXGm3MyBDtrlfqqMDSDrjTDsG9/bpO1
	FR1jk/W55uPSztOoMl6luqYmHlIq5tWBqpqE8VE7fosJapOjma91Fw9+QmRE71O1kE6LNIZ2vF9
	l2EZ54Yfu9C3tncehowz2qzJ+Caj7K0Vm/p2QV+58kp9ffODl8wrnm4N3P/FjPrNIC
X-Received: by 2002:a05:6122:871c:b0:56d:b4d1:3c1e with SMTP id 71dfb90a1353d-56db4d17398mr4930078e0c.10.1775653676925;
        Wed, 08 Apr 2026 06:07:56 -0700 (PDT)
Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com. [209.85.221.176])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-56d9bd03371sm19835966e0c.16.2026.04.08.06.07.56
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Apr 2026 06:07:56 -0700 (PDT)
Received: by mail-vk1-f176.google.com with SMTP id 71dfb90a1353d-56d9f191ae6so4140625e0c.3
        for <devicetree@vger.kernel.org>; Wed, 08 Apr 2026 06:07:56 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWyha4fGvRJJkIdQO6qBJq0VRvEajXL5BGtRLZTNwkWre0fDNdg2+u0ppzhmVRF6RF/qRSpLVjyd73U@vger.kernel.org
X-Received: by 2002:a05:6122:871c:b0:56d:b4d1:3c1e with SMTP id
 71dfb90a1353d-56db4d17398mr4930024e0c.10.1775653676268; Wed, 08 Apr 2026
 06:07:56 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1775575276.git.tommaso.merciai.xr@bp.renesas.com>
In-Reply-To: <cover.1775575276.git.tommaso.merciai.xr@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 8 Apr 2026 15:07:44 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXHhd150mpUT5-VPcHW0W5Hs-rFC-Bjrc7Z8Szco9P_Xw@mail.gmail.com>
X-Gm-Features: AQROBzCAgzGrVmv98H9pXphPv--qNykKs0tFH6sDE4aSVcbSsBjA9H5-Jim4uG4
Message-ID: <CAMuHMdXHhd150mpUT5-VPcHW0W5Hs-rFC-Bjrc7Z8Szco9P_Xw@mail.gmail.com>
Subject: Re: [PATCH 0/2] arm64: dts: renesas: Add missing #mux-state-cells to
 usb2phy-reset nodes
To: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
Cc: tomm.merciai@gmail.com, peda@axentia.se, p.zabel@pengutronix.de, 
	linux-renesas-soc@vger.kernel.org, biju.das.jz@bp.renesas.com, 
	Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,axentia.se,pengutronix.de,vger.kernel.org,bp.renesas.com,kernel.org];
	TAGGED_FROM(0.00)[bounces-285785-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.096];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.241.179.0:email,mail.gmail.com:mid,linux-m68k.org:email,renesas.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.241.139.240:email]
X-Rspamd-Queue-Id: 137D43BC9D5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Tommaso,

On Tue, 7 Apr 2026 at 17:35, Tommaso Merciai
<tommaso.merciai.xr@bp.renesas.com> wrote:
> The renesas,rzv2h-usb2phy-reset binding schema defines #mux-state-cells as a
> required property. Add it to the USB2 PHY reset nodes in the RZ/V2H and RZ/V2N
> device trees to fix dtbs_check warnings.
>
> "arch/arm64/boot/dts/renesas/r9a09g056n48-rzv2n-evk.dtb: usb20phy-reset@15830000 (renesas,r9a09g056-usb2phy-reset): '#mux-state-cells' is a required property"
> "arch/arm64/boot/dts/renesas/r9a09g056n48-rzv2n-evk-cn15-emmc.dtb: usb20phy-reset@15830000 (renesas,r9a09g056-usb2phy-reset): '#mux-state-cells' is a required property"
> "arch/arm64/boot/dts/renesas/r9a09g056n48-rzv2n-evk-cn15-sd.dtb: usb20phy-reset@15830000 (renesas,r9a09g056-usb2phy-reset): '#mux-state-cells' is a required property"
> "arch/arm64/boot/dts/renesas/r9a09g057h44-rzv2h-evk.dtb: usb20phy-reset@15830000 (renesas,r9a09g057-usb2phy-reset): '#mux-state-cells' is a required property"
> "arch/arm64/boot/dts/renesas/r9a09g057h44-rzv2h-evk.dtb: usb21phy-reset@15840000 (renesas,r9a09g057-usb2phy-reset): '#mux-state-cells' is a required property"
> "arch/arm64/boot/dts/renesas/r9a09g057h44-rzv2h-evk-cn15-emmc.dtb: usb20phy-reset@15830000 (renesas,r9a09g057-usb2phy-reset): '#mux-state-cells' is a required property"
> "arch/arm64/boot/dts/renesas/r9a09g057h44-rzv2h-evk-cn15-emmc.dtb: usb21phy-reset@15840000 (renesas,r9a09g057-usb2phy-reset): '#mux-state-cells' is a required property"
> "arch/arm64/boot/dts/renesas/r9a09g057h44-rzv2h-evk-cn15-sd.dtb: usb20phy-reset@15830000 (renesas,r9a09g057-usb2phy-reset): '#mux-state-cells' is a required property"
> "arch/arm64/boot/dts/renesas/r9a09g057h44-rzv2h-evk-cn15-sd.dtb: usb21phy-reset@15840000 (renesas,r9a09g057-usb2phy-reset): '#mux-state-cells' is a required property"
>
> Kind Regards,
> Tommaso
>
> Tommaso Merciai (2):
>   arm64: dts: renesas: r9a09g057: Add #mux-state-cells to
>     usb2{0,1}phyrst
>   arm64: dts: renesas: r9a09g056: Add #mux-state-cells to usb20phyrst

Does this series supersedes "[PATCH v5 16/22] arm64: dts: renesas:
r9a09g056: Add USB2.0 VBUS_SEL mux-controller support"[1] and "[PATCH
v5 17/22] arm64: dts: renesas: r9a09g056: Add USB2.0 PHY VBUS internal
regulator node"[2]?

Thanks!

[1] https://lore.kernel.org/c63d0a62d439a78e9ccc0b4176b84bbc32629a8e.1764241212.git.tommaso.merciai.xr@bp.renesas.com
[2] https://lore.kernel.org/f33b5566511a946e4e909854213e75c12d89a441.1764241212.git.tommaso.merciai.xr@bp.renesas.com

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

