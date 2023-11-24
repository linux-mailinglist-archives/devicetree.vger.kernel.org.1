Return-Path: <devicetree+bounces-18444-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ACFC7F6B90
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 06:05:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 40AB11C20A10
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 05:05:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C642D3D90;
	Fri, 24 Nov 2023 05:05:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="NPjepY7d"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-x31.google.com (mail-oa1-x31.google.com [IPv6:2001:4860:4864:20::31])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BAF09D67
	for <devicetree@vger.kernel.org>; Thu, 23 Nov 2023 21:05:26 -0800 (PST)
Received: by mail-oa1-x31.google.com with SMTP id 586e51a60fabf-1f5bd86ceb3so943247fac.2
        for <devicetree@vger.kernel.org>; Thu, 23 Nov 2023 21:05:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1700802326; x=1701407126; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NSqVVlNqay+tkbRQW9+dH1P4yW/ANJSftxzN49AnClI=;
        b=NPjepY7dWhIrtAkquUq71j4etkz/UIfEg93n4qluwjGcJo9tvR7kCy8HbfZMT69Vfb
         3AIudzb1GbM+EboKZ1pywajMjOsASyNab2yonYDZw5SRm61prIckA6KrCQuMJLpB/WMr
         vuIsV0TBjVD9DhlLG2HcOI8zxfYFZ+vK/fyRTRHn9MCdvLIjKA+pLm8d1GHModY2WMPS
         mZ7dWf/HAvek1pHaNTUi8dAItJo2hv8G1q/y1BF7l9JswzmEbW0hafb5AEborbG0Chth
         LccFFPVFo2Qa5fIH3FPFABdCBjrUnJ4//tw6bHbQvpn11KpxSUSXidraQEpZVqOt+IgZ
         SY9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700802326; x=1701407126;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NSqVVlNqay+tkbRQW9+dH1P4yW/ANJSftxzN49AnClI=;
        b=oqYe1GCUg9xVp+wAaboi09PBzsuh8MEu9q6tQCHSAmENOdQ9BK4akxCiNAkoenf8Hc
         2pLDtd1fWxw9UVIF3874rM0TLjqSaKg9wlJl4f87aYy6iK4zjztDVN9iHmyTcvMEiivE
         bUGIQrReKmMV/y8jH9Y0uLiWa27tx7pG7aRokoPtAfVG++vSIbIhVHbNNaqc16hrFWXe
         RzjfIDZUra9POBVFg1CyaSkCDv9XsTKXgPFYigoiG/ZRcKsCyoHTirS4LxZkPJZr132t
         3+CN08lpAEmLsQSH99smsYyGiR0r9OlfTZSx2xpsv76PBaviZ0ogQZaDEZtrXeYir/a7
         hNTA==
X-Gm-Message-State: AOJu0Yy7ymHF/99n1RmRiJ0K5+lUG+vlc0CIxyLSDIMRcc9LgOsjxZiN
	2xUP90srh4qUhmD8KKgoDHo6vzJ2EOxJHxpc1nXXNw==
X-Google-Smtp-Source: AGHT+IFB5hLdEj2Vo3fmacGt2M6/9IlhJVsJ7X1oKygLIIziwPw2RA7a2JJFveCBHs2/AbOlS1f1+OTbypCtVFPqtnI=
X-Received: by 2002:a05:6871:5315:b0:1f9:a468:dd01 with SMTP id
 hx21-20020a056871531500b001f9a468dd01mr2133739oac.53.1700802325856; Thu, 23
 Nov 2023 21:05:25 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <MEYP282MB3659BA22E1535379D06A0D3583B8A@MEYP282MB3659.AUSP282.PROD.OUTLOOK.COM>
In-Reply-To: <MEYP282MB3659BA22E1535379D06A0D3583B8A@MEYP282MB3659.AUSP282.PROD.OUTLOOK.COM>
From: Anup Patel <apatel@ventanamicro.com>
Date: Fri, 24 Nov 2023 10:35:14 +0530
Message-ID: <CAK9=C2V4Gkx6tcymNdm=WmPv+vqFgJ=0hm2hrPw7kS0qGP79yg@mail.gmail.com>
Subject: Re: [PATCH v2 7/9] irqchip: Add RISC-V advanced PLIC driver
To: =?UTF-8?B?6LCiIOazog==?= <xiebo_60@live.com>
Cc: "Alistair.Francis@wdc.com" <Alistair.Francis@wdc.com>, "anup@brainfault.org" <anup@brainfault.org>, 
	"atishp@atishpatra.org" <atishp@atishpatra.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>, "maz@kernel.org" <maz@kernel.org>, 
	"palmer@dabbelt.com" <palmer@dabbelt.com>, "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>, 
	"robh+dt@kernel.org" <robh+dt@kernel.org>, "tglx@linutronix.de" <tglx@linutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 24, 2023 at 8:33=E2=80=AFAM =E8=B0=A2 =E6=B3=A2 <xiebo_60@live.=
com> wrote:
>
> Hello all,
>
>
> I have a question regarding the handling of potential issues during the M=
SI interrupt sending process. It appears that if the APLIC target register'=
s value is modified during the MSI interrupt sending process, it could pote=
ntially lead to MSI interrupt send failures. The code doesn't seem to accou=
nt for this scenario or take appropriate measures.
>
> I am reaching out to seek clarification on whether this situation has bee=
n considered and if there are specific reasons for not addressing it in the=
 code. Your insights into this matter would be highly appreciated.
>
> Thank you for your time, and I look forward to your response.

This has been taken care of in the IMSIC driver in the irq_set_affinity()
because the IMSIC driver manages the re-writing of MSI messages
upon IRQ affinity changes.

Please look at PATCH7 and PATCH8 of the "[PATCH v11 00/14] Linux
RISC-V AIA Support" series.
(Refer, https://www.spinics.net/lists/devicetree/msg643764.html)

Regards,
Anup

>
> Best regards
>
>
>

