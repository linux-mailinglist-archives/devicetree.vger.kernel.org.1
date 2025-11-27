Return-Path: <devicetree+bounces-242801-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 70A0BC8F47F
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 16:32:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 6F1234E06FC
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 15:32:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED310337688;
	Thu, 27 Nov 2025 15:31:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f43.google.com (mail-ua1-f43.google.com [209.85.222.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5142833710A
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 15:31:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764257484; cv=none; b=g8crO1ETWqcoBJYRrA8RK76M/gMbiBEl0IWFObwI/x53xZlQE5cVrRQhFnmRkwVOTme57KRz9FEfnDWNaWsTzaNvecc1Xvcax1cf0o4GhLhk4+bjVdFex0TM3sIyjC/oa7wDfcFWVXFUi46MHjO0mURzIJKhfSpCxLQps73me+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764257484; c=relaxed/simple;
	bh=0Ms3nh6UST62nZ5f2gQbl1TP9z1Cw0CPLTAwI1ISOn0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mVZ5pH+jrroGh/AUHdEnBJY6Sxb/G6Iri1rM46UeFWlIWC6jUzFtMUNpumd4OApZoxfS/1IVC9Y6jc24H0y+KNcaF8boeXxsLAz/GWzAayGPg0ettvdw15mHrUvnMVlqby+PPt9lyS4p6uAZ2Of7mFhP5BlgGk7io++5AFYIU98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f43.google.com with SMTP id a1e0cc1a2514c-9351ed45fb8so246618241.0
        for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 07:31:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764257482; x=1764862282;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gMGm1buzaIw6yaiLwd7+ag/+onuunyVRgfQz7fJY0H8=;
        b=ez6WePop8IDLCdWxgfNOBhjr4eBlv3v+A7XzshOfgS5jrmTadbGHdwhT/0lLBYGaXs
         62nloS9yU2I0F/hVAouE31MGtS++Ey78uaW9YFizUQG29CF/ZSsBzNO2LXbTJpTFNmBX
         s4iBWlh0DqhLCsjyCLumY5mDn38IIMW07mcMykRh2ao9R14cZI3tYw9cdFsCy6bvYH6V
         l+REys++vhsScINAZS+nJwyY8zyydJ8M2uoHDaye+Hqo4JeAFylArbpq4Ll52rrSKbvs
         oO+sgVQO6lhQSDNLNyTRnmQ83MKPuc8CojCmnG9s1W/b5Z9euWAeOjhU8YMcmUhNdpLL
         HD1w==
X-Forwarded-Encrypted: i=1; AJvYcCUkw7+86LYCtbvWUqDIZZ2Kp7eSbAqPonKJw+JAgswy1FrHKREnDFQyM+vnbGmeS7YB45r5/76xEuE0@vger.kernel.org
X-Gm-Message-State: AOJu0YygtyivmuYfck/ZA1nboCtU+RObiDHnVBihgkFuPb1xciVF85Dw
	iPfNlydaBxsspzSm1r8Zn0OcPfrLgH6CqZeQDz2TNZenLUr+/lfxgdkasvLv1lbY
X-Gm-Gg: ASbGncvAKhhLs3jd1rTwqMssYGPGAdrjM/cy5xx+JhoiELLRU5gTKDznCIAuOGPXQRj
	oyjdBfqQYBwNjj9xdeTqKOeoPiqkwCaljngmUc2eMyNc7eCZomfUePDOjuPDhw9aVm4g1XVXJAC
	UGkp/Fxh1zRdIgh6wRLidk4RJQm9GM+F2LSAG0fCp9VVNXyza83hmIPr81Wibr9cxyZDldYuRsC
	9OJBMJpgvEB/L2zlsFCacia5O2C/oN7WXkKnD9GhgeesseqVpKb/TmhyrGMt2kD82ypjD2v/BV8
	/jcK/AFKLMaMCrGrkACfg1dVIBCY+bNx/mp8ef0OSJoqzgEfraILlTyFJcpWQ9LptN1M/U2MoJe
	9txYzx3p1Zri08kFyBygDWvode1YZUPjEgHdZF+PbH8YSO083C2MFenpl82Ab5mDQK9+Ys1E6BP
	pgh6boRn6xhenRN4R0KsP+N2ue2ACCLUJ0Dr7rVcZI0ft2LB+oAG+0
X-Google-Smtp-Source: AGHT+IGmzu7KibaTogluSmhx+tttytQKdxlwB5S5g0uM5M/+CUobm2IWxvXRWTUhQKjVMWSHHnsVFw==
X-Received: by 2002:a05:6102:f97:b0:5db:e0e6:1b47 with SMTP id ada2fe7eead31-5e2242c0402mr3925164137.19.1764257481857;
        Thu, 27 Nov 2025 07:31:21 -0800 (PST)
Received: from mail-vk1-f173.google.com (mail-vk1-f173.google.com. [209.85.221.173])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-93cd6c6806esm703375241.1.2025.11.27.07.31.19
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Nov 2025 07:31:21 -0800 (PST)
Received: by mail-vk1-f173.google.com with SMTP id 71dfb90a1353d-55ad466ad1eso299443e0c.3
        for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 07:31:19 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCX43rEdUXT4/bUxeI3gmy0umtXqu4+CgH6e2PYKDKDeFbn84Vs+kx/fLs0GopJGL0i7DLWQ5pmmBtA8@vger.kernel.org
X-Received: by 2002:a05:6102:943:b0:5e1:ef48:271f with SMTP id
 ada2fe7eead31-5e2243b0ae6mr3428187137.24.1764257479536; Thu, 27 Nov 2025
 07:31:19 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251119143523.977085-1-claudiu.beznea.uj@bp.renesas.com>
 <20251119143523.977085-5-claudiu.beznea.uj@bp.renesas.com> <6hvsrtdxpm2ywwk7whaala3ynfdy4lo76epigxvn345ymormqf@bp3au24dwwud>
In-Reply-To: <6hvsrtdxpm2ywwk7whaala3ynfdy4lo76epigxvn345ymormqf@bp3au24dwwud>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 27 Nov 2025 16:31:08 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVgWcEFa+=XEQRTM4ZiJCBJnv6f8FD6CyKuO7cnB2QQcw@mail.gmail.com>
X-Gm-Features: AWmQ_bmuHs8omtOnus2gS0alfoG90XbZ5XLzzwu1zc-9nISSqEQTG2vuN7RDHuI
Message-ID: <CAMuHMdVgWcEFa+=XEQRTM4ZiJCBJnv6f8FD6CyKuO7cnB2QQcw@mail.gmail.com>
Subject: Re: [PATCH v8 4/6] arm64: dts: renesas: rzg3s-smarc-som: Add PCIe
 reference clock
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Claudiu <claudiu.beznea@tuxon.dev>, bhelgaas@google.com, lpieralisi@kernel.org, 
	kwilczynski@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, geert+renesas@glider.be, magnus.damm@gmail.com, 
	p.zabel@pengutronix.de, linux-pci@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, 
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

On Tue, 25 Nov 2025 at 06:54, Manivannan Sadhasivam <mani@kernel.org> wrote:
> On Wed, Nov 19, 2025 at 04:35:21PM +0200, Claudiu wrote:
> > From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> >
> > Versa3 clock generator available on RZ/G3S SMARC Module provides the
> > reference clock for SoC PCIe interface. Update the device tree to reflect
> > this connection.
> >
> > Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>
> Acked-by: Manivannan Sadhasivam <mani@kernel.org>

Thx, will queue in renesas-devel for v6.20.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

