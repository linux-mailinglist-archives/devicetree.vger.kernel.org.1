Return-Path: <devicetree+bounces-249167-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E3D79CD99D7
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 15:25:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 84212304F649
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 14:24:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DA2532C938;
	Tue, 23 Dec 2025 14:24:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f172.google.com (mail-vk1-f172.google.com [209.85.221.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6DD731A812
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 14:24:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766499893; cv=none; b=XU5W9FYO7OzBgX+FwE1LgU5LdS3uVDOerXTEoipSCEFywVafs9Gix7+x+lVj8H2F2wqezQ9HfvHgOjyaUfsCnR2QoY14JDqojPlnp73SVhn4C/V1nVPHYrqaXnIz8O1TUenGncPtVcZEM6NmpzOCFZjMIy0IPgGpdL3U2Zc9f4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766499893; c=relaxed/simple;
	bh=ogzBvS29Ue/2IXvBzeRNG78it29lv+6MNhav5HFyVj4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jPYvl4q9H/mpp3bCNZKjwSde5QJbsF5ctbB8AWY/aSqIcQg+cAlUTX8teKGlpy/AKZPTnD7NstD4g0Qc7eDtWJBdqOVR/MFN47UdNfMejotXFukVRtO6vhfQLlVu42+J7djQTURylTpMAtbh8ZEJJkfkmLi7wRnd+gdVhK/eAGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f172.google.com with SMTP id 71dfb90a1353d-55b22d3b39fso1070054e0c.2
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 06:24:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766499890; x=1767104690;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fqy4upQ5W7t+jp1G+g2SJ1qrfxpgarALeWZ6iD6XhOI=;
        b=vj275aoDFuQzl15rElR/UVovMMDmtRpk1wZ8UX+g1dVC1b7GukkUsg3rLMGSUY+ERV
         KkN1Ea74LH9YpPH9DH2C0y0RtwsgdajQ7XlTTXvHiFFAwfk92IOWlnQsGs/OgBRPwVeb
         6VXXzlDsjnSZl+8/ruCvZ2QEMipveBx/NA0oLa2lhF02Pbrx/XkosRdeiNXjVybw6NCj
         0UoGi3w94QSwRobEEqV7rxnqS0KCAwk0n1NoLhiHx4dmt+W2JyyJjyXZ45KX7Uyk0219
         P2RwPkEVtLy4oOhSbMMcEeNsFNDoeu4oX7a1mpVpPP6Pcz88ERsqjOkGBFnMPCNZBAeU
         ZVmQ==
X-Forwarded-Encrypted: i=1; AJvYcCWVbcn/Ss9E7dA/2iGTh4AQ7IYV5ZAh5JeKh5HboVXKZUSELgWPm3qkOHgpjkWnH8lcOt4TffLqjxQn@vger.kernel.org
X-Gm-Message-State: AOJu0YxgSQ84XFSwmHChZ2NzF53Xj87wbHONN9Yiva4aT0Opn8Ekv2Wf
	vuuBuaDMxtM/mOcf3O5O02NiCurFUqulc7d05pxL+GoIfcQ2V/izhHVIYp8TnNHc9bw=
X-Gm-Gg: AY/fxX4bz8XofQpoEPp57EW7NSQHZc5/rB5wnWMxgVEleH8y9SHNCN1SkXyhNX7Wgsp
	9yW4ZQJk7oAK2u1ubsOthkVuDyEhuh0sryJ3h+K3kr6AEI3ZT7sKlPK90fiUNmanKk1XrmO3OFg
	k9Q3QMkOx96xIc6iDYFlS10UpuJElpfE09tGDrsq0EjYF/7g22mUKS9Qolh1C2dy+IrGzKQkDcA
	BGFRecLG2cRxkFkRh+50syNBHmswB628+KDRObPzaJRmZ52zsmm5NHpy5MddBH4czJWa+RaModT
	W/HZ3Pnq6kbg5b19xlU0PZp2xNwdOL9iXM5z3FJXAvd0hQduIuG/FpSdQJkPxscCjnLZuyQf/5x
	tWMZTjlGlLgoEuiKn+zYoLdc+IfhpGA9UG3bMko70AKwB+92BExnZIOgbVIZrfrZLmTO2mGSqeE
	b882WqbkkUV2d/E7lDg5NZkPPBnEhQBdKxBJFlaC6fz8HDgvvF
X-Google-Smtp-Source: AGHT+IFgPieqQWKJRNXmj7jmN7s74l0u1NJDLTKAbPhycvCToZtF987yZjBxqsSXLVKIsu8vvVbcsA==
X-Received: by 2002:a05:6122:1d53:b0:556:92b0:510a with SMTP id 71dfb90a1353d-5615be71e67mr3559904e0c.14.1766499889710;
        Tue, 23 Dec 2025 06:24:49 -0800 (PST)
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com. [209.85.217.48])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5615d1329f2sm4621739e0c.14.2025.12.23.06.24.49
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Dec 2025 06:24:49 -0800 (PST)
Received: by mail-vs1-f48.google.com with SMTP id ada2fe7eead31-5dfc6be7df3so1820152137.0
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 06:24:49 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWASRIyTyfOd01gJ0GOV+KMy5lzvdOdteUWAs/Axz/6zTIrjoUp7eVwgEwr9qErwQeQjjtzL7RV2s9R@vger.kernel.org
X-Received: by 2002:a05:6102:5e81:b0:5dd:8819:e68a with SMTP id
 ada2fe7eead31-5eb1a8122f2mr4383697137.36.1766499888811; Tue, 23 Dec 2025
 06:24:48 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251201134229.600817-1-cosmin-gabriel.tanislav.xa@renesas.com> <20251201134229.600817-13-cosmin-gabriel.tanislav.xa@renesas.com>
In-Reply-To: <20251201134229.600817-13-cosmin-gabriel.tanislav.xa@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 23 Dec 2025 15:24:37 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWUPM=q7J_S_x7=CZoYxKm-v=7GGGkq9Nv0T14b8MBtpA@mail.gmail.com>
X-Gm-Features: AQt7F2rOMWs-9fKqfhdAbKXqn60pJqEJhnj5TNYUFWGKrGSfLOShXq2lSJzOfRE
Message-ID: <CAMuHMdWUPM=q7J_S_x7=CZoYxKm-v=7GGGkq9Nv0T14b8MBtpA@mail.gmail.com>
Subject: Re: [PATCH 12/13] arm64: dts: renesas: r9a09g077: wire up DMA support
 for SPI
To: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
Cc: Fabrizio Castro <fabrizio.castro.jz@renesas.com>, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, linux-spi@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Cosmin,

On Mon, 1 Dec 2025 at 14:44, Cosmin Tanislav
<cosmin-gabriel.tanislav.xa@renesas.com> wrote:
> RZ/T2H (R9A09G077) has three DMA controllers that can be used by
> peripherals like SPI to offload data transfers from the CPU.
>
> Wire up the DMA channels for the SPI peripherals.
>
> Signed-off-by: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>

Thanks for your patch!

> --- a/arch/arm64/boot/dts/renesas/r9a09g077.dtsi
> +++ b/arch/arm64/boot/dts/renesas/r9a09g077.dtsi
> @@ -200,6 +200,8 @@ rspi0: spi@80007000 {
>                         clocks = <&cpg CPG_CORE R9A09G077_CLK_PCLKM>,
>                                  <&cpg CPG_MOD 104>;
>                         clock-names = "pclk", "pclkspi";
> +                       dmas = <&dmac0 0x267a>, <&dmac0 0x267b>;
> +                       dma-names = "rx", "tx";

RZ/T2H does not seem to have restrictions about which DMA controllers
can be used by which SPI instance.  Hence shouldn't these point to
all three DMA controllers?

    dmas = <&dmac0 0x267a>, <&dmac0 0x267b>,
           <&dmac1 0x267a>, <&dmac1 0x267b>,
           <&dmac2 0x267a>, <&dmac2 0x267b>;
    dma-names = "rx", "tx", "rx", "tx", "rx", "tx";

Note that this requires updating the DT bindings, as they currently
restrict dma to two entries.

The rest LGTM, so
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

