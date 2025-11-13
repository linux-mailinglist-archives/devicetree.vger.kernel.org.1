Return-Path: <devicetree+bounces-238154-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id E23A2C57DFD
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 15:16:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 7D1784E5070
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 14:12:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 413AC2727FA;
	Thu, 13 Nov 2025 14:12:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com [209.85.221.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 861DD2727F3
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 14:12:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763043143; cv=none; b=UDl1L6lcnK6NgMA6Fc2myBGKyz4YgeLUPmBOFHdNqRjLIq/0g3ujK5KwfnRG4jkEaHQPn5ZLRgrDXNaGf1KVJ1pW1JLC+bZkZ1gessoXR/VulzIh2i1ZgnZFsm7NGE/WsMh8FpxnDpp/7fibiADFysY+LYTvT6BXYN9Vj6uHyTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763043143; c=relaxed/simple;
	bh=comZjXuDIDnizqUYHOKDvMQRgHC3+80Q+P6ov/b0Rc8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=A0zymhZLjSOqJiyMadeDADzLoNt6Za3Yf8afxUQvLMqz784Gw+Oo02iqcAVazgFa9CsF8BVCnl4wcdwILff6J86hzm8A891RJ7mIOQd68oVMgtYv/3l70+Q/TDV6DcZh9MrIxg2qROg7y6Anzt3MIU5dZgLyrkQ/LBXBaXYqrCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f179.google.com with SMTP id 71dfb90a1353d-559a849bfe6so308707e0c.1
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 06:12:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763043140; x=1763647940;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ulWJQ4QTuc71083HdY/1CUbZ5xknk1Yhidqn40qfX8s=;
        b=vuN0q6WfaPqv2sVhFgkV+JyLz1II9I2y9rc0h8ePkt/WMcBMp2lIyJnSHtqmtUTpo2
         FACvNwDbReKWtV/T8MOdhW1x/XXII5qooQPsapFnb4XRLkhKwDmosF5RZuUtQqCMvnwn
         54lIYUSrtJsVEOGWGMIotizUTvfqbsM9O8r3av99lOlkZjDysqohD/aYJwOR5ySBF9aC
         HdqYje8M7rGseV8MBud1CDbsioBZ3EIR1L+oI+bzFU6RXHw7luYQ8H07lrWM1iT1V1wD
         WEcu++V56xtGStFGxAlscoPnCwyLvZCNVKM6MRR15P44x7zASvnrTDdJsVaUfVJgoLjg
         7jDw==
X-Forwarded-Encrypted: i=1; AJvYcCVsA9nypFGd+SVkFq3uhAuawZNhpFQym5BeQuR/7Um5oJv8NqwZp9nPkYC+Wvs41jGLKsET6Mhu1tmA@vger.kernel.org
X-Gm-Message-State: AOJu0YwHzeT6VPLreQj/PbmYJlHVQaBf7yjCHT4kY+W0ZMMeeYS3Uy4r
	PtMDxo7yOFGvyAhTADzUOfFZcYE6apWj/H5hgIDHYlE6Nh0omVx3aRtcb2VD4cJ5IpM=
X-Gm-Gg: ASbGncuaGBlsYS0Pze0MPnNqtmMluhnBdGcZhprS291EId+QbXz6wZxUrdrlvXcGXZ7
	/FwJlJb/rUbGrSv3qZxMLEltE6euWAQKhCKwHYSnWXFGj/Z4SYc/xeR/tRVgcLGiryh4WA1aP2F
	gLT2HjbABueyssIvTWn278j5hEreEnl3DIEOTN83UETUBdlEaZMQrYuqoG9g+CI7QmXjHYf6Js4
	v6YKKXZAKJJWX+Y3NBVxpq7GCyuMUKNI1S3Uf+hn7szqNeDrBHAp3IyTBizzOICTH++qczzfAwx
	s86Zej5N6UNT+QWkNpXgTBV5OPV5XKftTvj64BcmQas0gxURDy8JCHLgM8fLwk/5+vB4ZbpVGV5
	BfD4BcQ6gxR6Y1bLaHRuG8/qUqia8DQx3vt7tq+015moUgFq5DVpo1gQWy+WYqZ4bpbZs9rGSz/
	ghpPolkO274V4bV3pGB/rXSNaIfarLUx5qoAtk92q2SudkFD7F
X-Google-Smtp-Source: AGHT+IExbIuJQYXeFbMGZkTxyEh3eogedE0Rv6n6aTPsffDYCvao0A3/eZcnuiy5jkgQNZ+0iqbGPQ==
X-Received: by 2002:a05:6122:908:b0:559:6723:628e with SMTP id 71dfb90a1353d-559e7dcfd13mr2814804e0c.15.1763043139728;
        Thu, 13 Nov 2025 06:12:19 -0800 (PST)
Received: from mail-ua1-f51.google.com (mail-ua1-f51.google.com. [209.85.222.51])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-55b0f331034sm710043e0c.3.2025.11.13.06.12.18
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Nov 2025 06:12:19 -0800 (PST)
Received: by mail-ua1-f51.google.com with SMTP id a1e0cc1a2514c-934fb15ee9dso247103241.1
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 06:12:18 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWRoLrTPgcWmUyk/TsYwBybokk82wMHZWLkUEQPVG8uhQitceW7MBb426IMs81iBs97UkfTI7tREwOv@vger.kernel.org
X-Received: by 2002:a05:6102:d93:b0:5db:20ea:2329 with SMTP id
 ada2fe7eead31-5de07eaedbdmr1809754137.35.1763043138634; Thu, 13 Nov 2025
 06:12:18 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251107210706.45044-1-ovidiu.panait.rb@renesas.com>
 <20251107210706.45044-2-ovidiu.panait.rb@renesas.com> <20251110-hardhead-upside-54baa149f453@spud>
In-Reply-To: <20251110-hardhead-upside-54baa149f453@spud>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 13 Nov 2025 15:12:07 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUUOMYZGF2xJWUnBi8i3eggxi2+j+FB0G-E7bMBwYAGhQ@mail.gmail.com>
X-Gm-Features: AWmQ_bnlPnhXhYldo17YNgMXfp15mj6ryj0q_5g1DZAmmEAVMaJw8DyorslMWa0
Message-ID: <CAMuHMdUUOMYZGF2xJWUnBi8i3eggxi2+j+FB0G-E7bMBwYAGhQ@mail.gmail.com>
Subject: Re: [PATCH v4 1/4] dt-bindings: rtc: renesas,rz-rtca3: Add RZ/V2H support
To: Conor Dooley <conor@kernel.org>
Cc: Ovidiu Panait <ovidiu.panait.rb@renesas.com>, claudiu.beznea.uj@bp.renesas.com, 
	alexandre.belloni@bootlin.com, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, geert+renesas@glider.be, magnus.damm@gmail.com, 
	p.zabel@pengutronix.de, linux-rtc@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Conor,

On Mon, 10 Nov 2025 at 19:50, Conor Dooley <conor@kernel.org> wrote:
> On Fri, Nov 07, 2025 at 09:07:03PM +0000, Ovidiu Panait wrote:
> > The Renesas RZ/V2H RTC IP is based on the same RTCA3 IP as RZ/G3S
> > (r9a08g045), with the following differences:
> > - It lacks the time capture functionality
> > - The maximum supported periodic interrupt frequency is 128Hz instead
> >   of 256Hz
> > - It requires two reset lines instead of one
> >
> > Add new compatible string "renesas,r9a09g057-rtca3" for RZ/V2H and update
> > the binding accordingly:
> > - Allow "resets" to contain one or two entries depending on the SoC.
> > - Add "reset-names" property, but make it required only for RZ/V2H.
> >
> > Signed-off-by: Ovidiu Panait <ovidiu.panait.rb@renesas.com>
>
> Didn't Alexandre already apply this? The changed version is
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> in case this replaces the other.

Alexandre dropped it, so it is no longer found in next-20251107
and later.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

