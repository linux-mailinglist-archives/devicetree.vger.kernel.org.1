Return-Path: <devicetree+bounces-258956-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EK24Kit6c2kfwAAAu9opvQ
	(envelope-from <devicetree+bounces-258956-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 14:39:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 48E0676644
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 14:39:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id AF8283004F1F
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 13:39:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA43330AAD8;
	Fri, 23 Jan 2026 13:39:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f173.google.com (mail-vk1-f173.google.com [209.85.221.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 862A91B808
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 13:39:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769175593; cv=none; b=jTA2WpZgRA4rmLmj3T92fOmhnC8+rU8yxscMpzgtuUH+bd1WkZhQskgdAYMqDFmmmoT1uZlW9zvKlnLF40OyrAmuPO5Nq0c5WQrGHLtiyGOzIRBhXKumpapWbrxR76vWo2lkeDS9C2Gn+CVhpivXAdEU2tNUO7lpBb1w++s53PQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769175593; c=relaxed/simple;
	bh=SezjN9CTD3abCICIhg7/y+Vi1HPlELPv7Rr1jPC5d58=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=B4KGUzMqOukdBtlEmlRjtgq/z6OlfgRKIAyj6wzE6qFIrHj+K4+GNBTlU3uPps3k8+xpA/fXyS8P4Hj5R4podWFecwaVrgFg0m1BsRWDXlNhwPWse5gpjzJbBBataOGX/MVs03rWyFEKaz+uXktzkRUa8tyqqWaCpqHM9OipK0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f173.google.com with SMTP id 71dfb90a1353d-56373f07265so1892306e0c.0
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 05:39:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769175591; x=1769780391;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8T4Q453c5FamHIEguPjFSHxEM5Rnl+xXzrGuGiGD+qg=;
        b=adNks1RNnLiWv+TZrDjyBecTswnV5kYg6mX0Xb57ug5VHv4pcZoVCeXaStrTPEZfgg
         yFl5ei6meOsKlaNvRoX0q3pdCyqrDNL4EJFPnEIXDVTYXtPiRNA8+KjPFWNMfH65+WgK
         OPLiH1agfUvd2otzEwdkgDuqSTBEjqvUNGEAYKy0BIjmhHTcKQD54IPrsvEz/f0tdlY/
         0F6384wfyv2jEKWbn+tj3AnEjUgfONs+pN0co0Z3UTqM1YAEgeump2CdgoprjOyXbzbI
         Uu7/2JKJ2dcuVbUrt9mf84Bth/Wq4MfS+plDlUIQXu7Mq8TVK02tygvSUQVFBZhVXhUg
         ol4Q==
X-Forwarded-Encrypted: i=1; AJvYcCVK37+Gmm/ElkfBxbwVYFNK6kHlIE0hFWyvcstn5JuNsytHzY+jB05/6UXd6QVARffbkO8N4IyYs/KN@vger.kernel.org
X-Gm-Message-State: AOJu0YwJ9yf220PYdRtvCrnlFf91dShJdvFa8aZhx0lOxBY/wg4OREVL
	f4dKYxn3qE7lW+ntJZxr70HuKMp5yeJDV24XyMVqMmfs3/4Ttrb2eTdiTxt/GLz/
X-Gm-Gg: AZuq6aLlleRn7kbqbZY6lze5RjPv6NvWt2yTA91Igu7A/+NSLkcauulV1nM3U75WW+r
	/QAB8nAGQEAwnO4gwwYvg5T5R9/moFhc4QtMPcaRU/kq3oJUwkgMe4Me5VPoU3RzPIMBoLFtvMf
	+NsPHMN4p1us3YQczNwvOcCtcIyss6l17RkLfr8MRoUGCXYeUSMxUXDg9fIpo1/YUR6lTw6tFX/
	Pmc+BGfJ2v+g6m2Wwl2ZUmiymXffzlbr0mB5Ie8ZpaCHgeVNIv/FcLjp4ABwjywNeX4sbuS8nBM
	vLnr+qcgfqhiR7FZTCyB87fGGXh2xNgL5dlbxO/un4B9zkZ32wDGuiNBnb+VO+a5K4ZtNOOFZOc
	RT4TGiFUTCsOHBkLIiGux5/d2hdT+u4q6qJrimBH9nbgq1e8wLUQDWtluck6ACnbzx2mrzYBMvd
	e7OREZyGBqT+X60QpU4sU9TnI64+jyGLd9qYKrDsOC5+zayuReW0UIq1LJKBc=
X-Received: by 2002:a05:6122:3283:b0:566:354d:9f4a with SMTP id 71dfb90a1353d-5663ea69d5dmr1002882e0c.1.1769175591307;
        Fri, 23 Jan 2026 05:39:51 -0800 (PST)
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com. [209.85.217.44])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5663fb7dab9sm476447e0c.15.2026.01.23.05.39.49
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Jan 2026 05:39:49 -0800 (PST)
Received: by mail-vs1-f44.google.com with SMTP id ada2fe7eead31-5f54d6b4047so1251901137.0
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 05:39:49 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWX8z+z0nmZMW2yn9VHlZlsVx30K+PYg+JvpuJ57/f568pO3tuU0g3+lK6VAYKH1GQ97ralgPYaezCu@vger.kernel.org
X-Received: by 2002:a05:6102:4405:b0:5f5:41a4:f166 with SMTP id
 ada2fe7eead31-5f54b9db4d9mr883093137.9.1769175589225; Fri, 23 Jan 2026
 05:39:49 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260118135038.8033-1-marek.vasut+renesas@mailbox.org> <20260118135038.8033-10-marek.vasut+renesas@mailbox.org>
In-Reply-To: <20260118135038.8033-10-marek.vasut+renesas@mailbox.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 23 Jan 2026 14:39:38 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUERxbGJN7muntQyyYZL6uy4eh5bJUmMPBmppA8y803DQ@mail.gmail.com>
X-Gm-Features: AZwV_Qj1omzI-6qmH4tEn10AVrvuRYh99XIsZ2j_jsDkAgxLig7Gm4WvDQM34Zk
Message-ID: <CAMuHMdUERxbGJN7muntQyyYZL6uy4eh5bJUmMPBmppA8y803DQ@mail.gmail.com>
Subject: Re: [PATCH v2 9/9] arm64: dts: renesas: ebisu: Describe PCIe/USB3.0
 clock generator
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[lists.infradead.org,kernel.org,gmail.com,linaro.org,renesas.com,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258956-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.992];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 48E0676644
X-Rspamd-Action: no action

On Sun, 18 Jan 2026 at 14:51, Marek Vasut
<marek.vasut+renesas@mailbox.org> wrote:
> Describe the 9FGV0841 PCIe and USB3.0 clock generator present on Ebisu
> board. The clock generator supplies 100 MHz differential clock for both
> PCIe slot and BT/WLAN expansion port, as well as for the USB 3.0 PHY.
>
> This configuration is valid for SW49 in OFF position, which means the
> PCIe signals are routed to the PCIe slot and U11 9FGV0841 PCIe clock
> generator output 3 supplies clock to the PCIe slot.
>
> In case the SW49 is set to ON position, which means the PCIe signals
> are routed to the EX BT/WLAN expansion port, and U11 9FGV0841 PCIe
> clock generator output 4 supplies clock to the port and &pciec0_rp
> clocks should be changed to "clocks = <&pcie_usb_clk 4>;". Once the
> BT/WLAN port is tested, this can be implemented using a DTO. Until
> then, assume SW49 is set to OFF position.
>
> Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.21.

> --- a/arch/arm64/boot/dts/renesas/ebisu.dtsi
> +++ b/arch/arm64/boot/dts/renesas/ebisu.dtsi
> @@ -578,12 +591,30 @@ &ohci0 {
>
>  &pcie_bus_clk {
>         clock-frequency = <100000000>;

I will drop the clock-frequency while applying, as there is no point
in changing it in a disabled node.

> +       status = "disabled";
>  };

> @@ -871,7 +902,19 @@ &usb2_phy0 {
>         status = "okay";
>  };
>
> +&usb3_phy0 {
> +       clocks = <&pcie_usb_clk 6>;
> +       status = "okay";
> +};
> +
> +&usb3s0_clk {
> +       clock-frequency = <100000000>;

Likewise.

> +       status = "disabled";
> +};
> +
>  &usb3_peri0 {
> +       phys = <&usb3_phy0>;
> +       phy-names = "usb";
>         companion = <&xhci0>;
>         status = "okay";
>  };

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

