Return-Path: <devicetree+bounces-258949-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WEPZNf94c2kfwAAAu9opvQ
	(envelope-from <devicetree+bounces-258949-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 14:34:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 22489764EE
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 14:34:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E716830238E7
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 13:34:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BF78325495;
	Fri, 23 Jan 2026 13:34:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f66.google.com (mail-vs1-f66.google.com [209.85.217.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45447322749
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 13:34:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769175266; cv=none; b=ttgErMZ+4NCxyZoMJ8GcaSuEAzg+2ENzRJhK5tF6lBZYUt1JPyaZ/4WtHi31nD5HUXbWPrkdscfg9QClTh4b6DL5j7oQm/8Gs/qeT3pDxyhmTyY8ib3ZBZea2gqT85T07quHjygSXOFJ+KoceFdwDIVvwtQ5mQfI3NMSdMrrgCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769175266; c=relaxed/simple;
	bh=BBelxpCNfyNgrKmosQxaTVM+6G81cYYiiZT0HIE7b34=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CuJF0Q75cH/lcTpm1fSM1m1WBWlDoubTCOOR3JQLVfDSlTutLvqY3QHOP9pfIVpeZbRG1AE9iOG+HayjiZQATVitOXpdnLtYTVo/u/aTI8GYxOWJZY/Do5bGEChHzkrAfIUP/WIqWydlKnF0+KAkvTXRIMrMHU4IBGMVnUOFBxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f66.google.com with SMTP id ada2fe7eead31-5f52b3d98cfso789276137.2
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 05:34:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769175263; x=1769780063;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/FaJ17quXgLj3q7lesyxJ1BD4hQkqNGO4klrnGmMXe0=;
        b=Bw2H7kp5i0fqUJ94ZUiFOVo/iylN4RWYaN6TrbGTwU3cyrg6gdeG9LJSACr2aUH5SH
         31s7kFo/VwV8kaoC8aIWU/p0kcHq9DwB62trtaSnbqzqbtMmcDO2AXi93189JgEBiUVA
         mvuBIYGVi7DllU5nXKPkx57qscRrpmR9BAdZacT9fljpjymwuSgnTnJomwbVjXp95lRz
         5uhfXZw71N6zZeltZOtbyyeXmgr2TiY167+00UNgjJLvO38De59qN6E2Q8zkKLX2XP8K
         6Gqy3b4WH2oljdD6XiLMVXifCgJn+eAKrY5t7csAkFUetjOOC8tjLi6FgWgBiS8HidIs
         p8HA==
X-Forwarded-Encrypted: i=1; AJvYcCWOYmPb+zrOwvqJ/Lrvp0aBe4pj/S4MyTETyrXZQoSxC1rrZQzSCXBxvMZt1l5HHrqDf0ljGYV0ynzI@vger.kernel.org
X-Gm-Message-State: AOJu0YyqoEbt4RqJ60JBL0RQsPeBZrsX8g1C6qCHi1yb/yIRR5ogBlhX
	ML363USoqWvz4nysQXhAxja/rEcZXIpja49WxAJkmqhaBQ2euDLpXQkoZM/EHmNYFaw=
X-Gm-Gg: AZuq6aICNvcww6QKbqykSeMmTSSjWTirgAU9UU2RHQZjFIndseMSCyoP/jTEQkszfui
	UfMZnaP2DJEbSDNJl3+ID3V34lxl8oirwH8o1n9TKuFqSvhrk93+GpqcShlhd4Iax3EiSLW/uXC
	SPd3OKAGNfirles5Qc7IbZ9D9//Lzg1a8w0ISy1ytV5lxXPWYveov7njXSsbC6Bm1VutXSXAGJB
	IR+/tcXhFn9L6b2DjsVXRmzdFnyYaouzbekgzuzzlXy9L2QbyZGv6Yxd+RqwkiylirFRf7IVtMQ
	LTr+AaflCqInwpVRyl/UdjpZ9TAT3SnoD8xl2ylR90519wEDB24X4vp2KEoYwrkp+8oQ5MV/pSr
	sMdjAzN1YCA67QWE7aadsVgJgM75+opjVwZKwUjKCBQQCDpeEeu1EsBXZvz6W1RON7v9Mv73Lnb
	xtsmbnlY+bDlv4nKr1qipj4CyE8K9xWWt3t99ehQsLk8t29Pca
X-Received: by 2002:a05:6102:3ed4:b0:5ef:2cb8:e9db with SMTP id ada2fe7eead31-5f54bb73ccdmr842196137.18.1769175262960;
        Fri, 23 Jan 2026 05:34:22 -0800 (PST)
Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com. [209.85.222.53])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5f54d62dde1sm486051137.11.2026.01.23.05.34.21
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Jan 2026 05:34:21 -0800 (PST)
Received: by mail-ua1-f53.google.com with SMTP id a1e0cc1a2514c-9412cb281acso602631241.2
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 05:34:21 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXwN4XWdjlkqBFVTv4x8fgIRemTDIcwKT6DQIpD/z8PK/c9A9bEOrtjs3yuCYSPu+EaL95KmfX66Zbm@vger.kernel.org
X-Received: by 2002:a05:6102:3753:b0:5ef:aeff:8304 with SMTP id
 ada2fe7eead31-5f54bccac8amr893050137.33.1769175260730; Fri, 23 Jan 2026
 05:34:20 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260118135038.8033-1-marek.vasut+renesas@mailbox.org> <20260118135038.8033-8-marek.vasut+renesas@mailbox.org>
In-Reply-To: <20260118135038.8033-8-marek.vasut+renesas@mailbox.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 23 Jan 2026 14:34:08 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUhqLnfZdg_9-JmH7Nrae1MfzM73R_NUFuwXioYnNoQ8g@mail.gmail.com>
X-Gm-Features: AZwV_Qj-XKrZ6tI1NWPXXvOntE-HmWyNH8CYB4F0u4KrKnplhkYq6k74VqQHwH0
Message-ID: <CAMuHMdUhqLnfZdg_9-JmH7Nrae1MfzM73R_NUFuwXioYnNoQ8g@mail.gmail.com>
Subject: Re: [PATCH v2 7/9] arm64: dts: renesas: salvator-common: Describe
 PCIe/USB3.0 clock generator
To: Marek Vasut <marek.vasut+renesas@mailbox.org>
Cc: linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Magnus Damm <magnus.damm@gmail.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
	devicetree@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[lists.infradead.org,kernel.org,gmail.com,linaro.org,renesas.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-258949-lists,devicetree=lfdr.de];
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
	NEURAL_HAM(-0.00)[-0.991];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux-m68k.org:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mailbox.org:email,glider.be:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 22489764EE
X-Rspamd-Action: no action

On Sun, 18 Jan 2026 at 14:51, Marek Vasut
<marek.vasut+renesas@mailbox.org> wrote:
> Describe the 9FGV0841 PCIe and USB3.0 clock generator present on both
> Salvator-X and Salvator-XS boards. The clock generator supplies 100 MHz
> differential clock for both PCIe ports, as well as for the USB 3.0 PHY.
>
> Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.21.

> --- a/arch/arm64/boot/dts/renesas/salvator-common.dtsi
> +++ b/arch/arm64/boot/dts/renesas/salvator-common.dtsi
> @@ -641,16 +654,27 @@ &ohci1 {
>
>  &pcie_bus_clk {
>         clock-frequency = <100000000>;

I will drop the clock-frequency while applying, as there is no point
in changing it in a disabled node.

> +       status = "disabled";
>  };

> @@ -1038,11 +1062,13 @@ &usb3_peri0 {
>  };
>
>  &usb3_phy0 {
> +       clocks = <&cpg CPG_MOD 328>, <&pcie_usb_clk 6>, <&usb_extal_clk>;
>         status = "okay";
>  };
>
>  &usb3s0_clk {
>         clock-frequency = <100000000>;

Likewise.

> +       status = "disabled";
>  };

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

