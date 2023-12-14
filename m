Return-Path: <devicetree+bounces-25536-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 38F14813858
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 18:20:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B47CB1F2105F
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 17:20:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4395265EB1;
	Thu, 14 Dec 2023 17:20:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dabbelt-com.20230601.gappssmtp.com header.i=@dabbelt-com.20230601.gappssmtp.com header.b="N46n21qa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-x32a.google.com (mail-ot1-x32a.google.com [IPv6:2607:f8b0:4864:20::32a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6318DA0
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 09:20:40 -0800 (PST)
Received: by mail-ot1-x32a.google.com with SMTP id 46e09a7af769-6d9d2f2b25aso5800017a34.1
        for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 09:20:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dabbelt-com.20230601.gappssmtp.com; s=20230601; t=1702574439; x=1703179239; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5+F8ciQVGIw9fMsFLXzGlUHF6cxC03FKdUbAqZam9Wc=;
        b=N46n21qaChW5eXxSGESwOeGo8391qa7oDXiOFtFyUUpwpFB2TStjG3uXZr/AMUWwTC
         y0JyaD2eHbqTlu68g8YcUVeyOY/FWH8mFDpeb2OHWsCKqYHTksvgzJldOapnri2NftPp
         Sp4BFVUlCETSkb52XA9SrK3TN7SglUloWGGfIvxiNobBPsNKb6wrGA0O/CCBDQDU9PBC
         aKpzqtttqBvRv18nc9h5bveE3Dhm/Fbvkr1EYgUkrL3PB3yv9RCDdF28MZS3Oq1FFDeh
         McjSCc3Hg5YDFDNVBMAFUkAj6P94mbXIDiz4C2drzHgC7CxbubF3K/ON3khGBpx7oExp
         qy/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702574439; x=1703179239;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5+F8ciQVGIw9fMsFLXzGlUHF6cxC03FKdUbAqZam9Wc=;
        b=l0MyF/pRzu8rUxl72qhGf3poS3oB72mFedzFGgHHDH74JuFM8dipTVMEdruj9fXHb9
         62p/ELdvB3J/lyLkuj8DmpFLqAYMjXbUZrt7h8aKFdz13E0sprYJDQjI9lChBYGy8cgJ
         A3JAATmjswVNEU4+VqoUPtnnysodcfhU8dFvFyChYnlq9E8iQZ6yRmM8LhBrX0XTHdLz
         RaNgILpUfqg/EpdynNndUjhDrPde+9iDIZbJvCkusHVGgHCPr78atnSEZMxbdA+poFPW
         wEPUSQjh7sd4PLrmAjB97ZzdgeNljw9Pw0qmqdqI0Ncta24Id/P9dfAtdcNH08Gx0EAU
         0W7g==
X-Gm-Message-State: AOJu0YwF14+vo1ehTw6uO+lxHTYW22mf/QqY0Dfy5FchbCqh7NtiqeCZ
	bFaiaQdMqP0sYvhEFQNR5LUkRg==
X-Google-Smtp-Source: AGHT+IEKhuB3T4yD3hog/sAFKp2qkeePkdBjrzMh1z490YIfe+DWY3rpJfHh5sAcOgRVy3mI1Umkhg==
X-Received: by 2002:a9d:7402:0:b0:6da:3068:e4ff with SMTP id n2-20020a9d7402000000b006da3068e4ffmr3616737otk.3.1702574439636;
        Thu, 14 Dec 2023 09:20:39 -0800 (PST)
Received: from localhost ([192.184.165.199])
        by smtp.gmail.com with ESMTPSA id h16-20020a9d7990000000b006d9d8abcdeesm3321329otm.40.2023.12.14.09.20.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Dec 2023 09:20:38 -0800 (PST)
Date: Thu, 14 Dec 2023 09:20:38 -0800 (PST)
X-Google-Original-Date: Thu, 14 Dec 2023 09:20:35 PST (-0800)
Subject:     Re: [PATCH v3 2/6] dt-bindings: riscv: Add StarFive JH8100 SoC
In-Reply-To: <20231214-platonic-unhearing-27e2ec3d8f75@spud>
CC: jeeheng.sia@starfivetech.com, kernel@esmil.dk, robh+dt@kernel.org,
  krzysztof.kozlowski+dt@linaro.org, krzk@kernel.org, conor+dt@kernel.org, Paul Walmsley <paul.walmsley@sifive.com>,
  aou@eecs.berkeley.edu, daniel.lezcano@linaro.org, tglx@linutronix.de, anup@brainfault.org,
  Greg KH <gregkh@linuxfoundation.org>, jirislaby@kernel.org, michal.simek@amd.com, michael.zhu@starfivetech.com,
  drew@beagleboard.org, devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
  linux-kernel@vger.kernel.org, leyfoon.tan@starfivetech.com, Conor Dooley <conor.dooley@microchip.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: Conor Dooley <conor@kernel.org>
Message-ID: <mhng-fb85106d-c0bf-4f6f-8351-10d4a4da6eb6@palmer-ri-x1c9>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On Thu, 14 Dec 2023 08:22:29 PST (-0800), Conor Dooley wrote:
> On Thu, Dec 14, 2023 at 12:36:57AM +0000, JeeHeng Sia wrote:
>> 
>> 
>> > -----Original Message-----
>> > From: Conor Dooley <conor@kernel.org>
>> > Sent: Wednesday, December 13, 2023 8:43 PM
>> > To: JeeHeng Sia <jeeheng.sia@starfivetech.com>
>> > Cc: kernel@esmil.dk; robh+dt@kernel.org; krzysztof.kozlowski+dt@linaro.org; krzk@kernel.org; conor+dt@kernel.org;
>> > paul.walmsley@sifive.com; palmer@dabbelt.com; aou@eecs.berkeley.edu; daniel.lezcano@linaro.org; tglx@linutronix.de;
>> > anup@brainfault.org; gregkh@linuxfoundation.org; jirislaby@kernel.org; michal.simek@amd.com; Michael Zhu
>> > <michael.zhu@starfivetech.com>; drew@beagleboard.org; devicetree@vger.kernel.org; linux-riscv@lists.infradead.org; linux-
>> > kernel@vger.kernel.org; Leyfoon Tan <leyfoon.tan@starfivetech.com>; Conor Dooley <conor.dooley@microchip.com>
>> > Subject: Re: [PATCH v3 2/6] dt-bindings: riscv: Add StarFive JH8100 SoC
>> > 
>> > On Fri, Dec 01, 2023 at 08:14:06PM +0800, Sia Jee Heng wrote:
>> > > Add device tree bindings for the StarFive JH8100 RISC-V SoC.
>> > >
>> > > Signed-off-by: Sia Jee Heng <jeeheng.sia@starfivetech.com>
>> > > Reviewed-by: Ley Foon Tan <leyfoon.tan@starfivetech.com>
>> > > Acked-by: Conor Dooley <conor.dooley@microchip.com>
>> > > ---
>> > >  Documentation/devicetree/bindings/riscv/starfive.yaml | 4 ++++
>> > >  1 file changed, 4 insertions(+)
>> > >
>> > > diff --git a/Documentation/devicetree/bindings/riscv/starfive.yaml b/Documentation/devicetree/bindings/riscv/starfive.yaml
>> > > index cc4d92f0a1bf..12d7844232b8 100644
>> > > --- a/Documentation/devicetree/bindings/riscv/starfive.yaml
>> > > +++ b/Documentation/devicetree/bindings/riscv/starfive.yaml
>> > > @@ -30,6 +30,10 @@ properties:
>> > >                - starfive,visionfive-2-v1.3b
>> > >            - const: starfive,jh7110
>> > >
>> > > +      - items:
>> > > +          - enum:
>> > > +              - starfive,jh8100-evb
>> > 
>> > Hmm, reading some of the other threads it appears that the evaluation
>> > platform that you guys have is actually just an FPGA? Could you please
>> > provide more information as to what this "evb" actually is?
>> > 
>> > If it is just an FPGA-based evaluation platform I don't think that we
>> > want to merge patches for the platform. I'm fine with patches adding
>> > peripheral support, but the soc/board dts files and things like pinctrl
>> > or clock drivers I am not keen on.
>> > Perhaps Emil also has an opinion on this.
>> Eco the same reply here. I am not sure what you mean. We verified on FPGA & Emulator,
>> and the logic is pretty much close to the real silicon.
>
> "Pretty much close" That doesn't give me confidence. The compatible
> should uniquely identify an SoC, but if it is used for both the actual
> SoC and for something "pretty much close" to the actual SoC then that
> does not hold.

Ya, trying to have some pre-silicon FPGA-based platform alias with the 
real chip is a repice for disaster.

>> I did mention that in the cover letter as well.
>
> Ah apologies for missing that. I try to read cover letters but the
> volume of mail gets to me at times.
>
>> I am new to Linux, so I am wondering if there is a Linux upstream guideline mentioning
>> that pre-silicon software is not allowed to upstream?
>
> I wouldn't say that this is the case, but things like clock and pinctrl
> drivers are the sort of things that are likely to vary in your "pretty
> much close" as that is the kind of thing that change for your final
> integration, versus a more "standalone" peripheral.

Yep, and since integration issues in the ASIC blocks can end up 
manifesting as SW-visible behavior in nearby blocks it's hard to just 
pull out the peripherals -- we sort of try by getting the DT topology to 
match the SOC, but there's always some mismatches.

> For dts stuff, in RISC-V at least, we've been operating so far on the
> basis that systems implemented entirely on an FPGA are not suitable for
> inclusion in mainline. I would say that this can probably be relaxed to
> allow systems where there are publicly available, versioned, designs or
> bitstreams that are widely used that these devicetrees correspond to.
> This would suit something like if AMD published a bitstream using one
> of their new MicroblazeV cpu cores as a sort of "reference design".

FPGAs are definately in a grey area, but that's been my mindset as well.  
For me it's less about FPGA vs ASIC (or any other manufacturing 
technology in between) and more about whether something is being used 
publicly.  Specifically: is the FPGA used for internal pre-silicon work 
or is it some publicly availiable system?

The versioning stuff is also important, but we need that for ASICs as 
well since they can be re-spun.

>> Hope there is an updated Linux
>> upstream guideline that benefit other vendors.
>
> I have no idea if there is one or not. I think it generally varies on
> individual maintainers etc, and for something like a dts it comes down
> to the platform maintainer (Emil) I suppose. Sending stuff out before
> your SoC has been produced is really great though, so it is a fine line
> to avoid discouraging something we really like to see.

IIRC we've got some stuff written for arch/riscv somewhere in 
Documentation, but the hardest part here is that each subsystem is going 
to have different policies so it's kind of hard to try and come up with 
a general rule.

> Cheers,
> Conor.

