Return-Path: <devicetree+bounces-4505-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 680797B2DE0
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 10:36:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 2B9B01C20AC5
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 08:36:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20D46441B;
	Fri, 29 Sep 2023 08:36:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE80C630
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 08:36:21 +0000 (UTC)
Received: from mail-vk1-xa2f.google.com (mail-vk1-xa2f.google.com [IPv6:2607:f8b0:4864:20::a2f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A8631A8;
	Fri, 29 Sep 2023 01:36:20 -0700 (PDT)
Received: by mail-vk1-xa2f.google.com with SMTP id 71dfb90a1353d-4935f87ca26so5485950e0c.3;
        Fri, 29 Sep 2023 01:36:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695976579; x=1696581379; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m5Kz8VFA+B2AxBslxteitG48MqhtGdsjVZBje8m+de0=;
        b=Od6nn+3QhCs2ocebXVjETwj6N7oQAf6B2j/AHTz1V0XekZIduYVPVm+9hkVdtr3H+2
         BzV/nURf2ANYqTzTTy2ENl/CHgqmC10TmWlmdvyduNHjqy7q3li05iVVB7B0uXWY39Hx
         9N2LykCMVz8KhJ06Q7/KgT2KyYkJqH2CzxmSynstRUi5+nYrUrqg+r4ULo67QuWRM74R
         oID+A8uFvsNn+buyGAufLQgX4lK/Oo0d/kbmQJQx2MK/JI3mEzroh4oaW3302FW/2HY7
         dSLmL/e9Y1WlGB3SswkWbt5iB9u100fAIZU1I8CD5WiwxuW/TTKNtfdgXX/CUMRuI2Vi
         /y+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695976579; x=1696581379;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=m5Kz8VFA+B2AxBslxteitG48MqhtGdsjVZBje8m+de0=;
        b=rRc5nvw2NYeUfeFe5VU5ToX9oaRiWtWwXIvWYcWqKbczMnnoRherFw1jmm2N+e8rAK
         T46fpjeRyrvldEWdBNp2+L+HXf3dSOnjiYA5eooZUAdIeDUwV+SLugiZiQcZtiAct159
         OivtReJ5VvGWkcfGEA9Gcoy1c/upMQmD5setnVaJ5k5a2l1SFqSM5TorpZriVEQ3ewLZ
         NNKFbLgIShsLsWND5xstTRtBrTpjY11pZvKdyz83qa5/Ftmbz2hTsLLeiYbFFyjo1K56
         CmmfTybbbrQeV7Oi8tq+nuYSvhU725KBoQXxCPIJcYexiV/JULnRvSNTqvUvpKL8ABXO
         BcwA==
X-Gm-Message-State: AOJu0YzeRr1GG1PzBkxRwmx1IcvC7MsxHpt7zqcQkyYESPbK/CtAP8kj
	zfI78BRIM+gTKLPSOZwBduDx3N/6cwf9IXtjqsw=
X-Google-Smtp-Source: AGHT+IHclMXMPLNIE54QUwl5QiPwm1i2DMnOHWq32pITFa8iicU/ER3VPH4Fz0mWUm2pdxJCcgkESqSRAqq9PTE2Xj0=
X-Received: by 2002:a1f:d686:0:b0:49a:5b11:1996 with SMTP id
 n128-20020a1fd686000000b0049a5b111996mr3076694vkg.6.1695976579560; Fri, 29
 Sep 2023 01:36:19 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230929000704.53217-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20230929000704.53217-5-prabhakar.mahadev-lad.rj@bp.renesas.com> <3d9eb660-e255-4477-a04b-6db8d249a20d@sifive.com>
In-Reply-To: <3d9eb660-e255-4477-a04b-6db8d249a20d@sifive.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Fri, 29 Sep 2023 09:35:53 +0100
Message-ID: <CA+V-a8v+eYk3Hmi7G74Na-=O5AF5hhovKmJ6VDj4DX9b7sXvzw@mail.gmail.com>
Subject: Re: [PATCH 4/5] riscv: dts: renesas: rzfive-smarc: Drop dma
 properties from SSI1 node
To: Samuel Holland <samuel.holland@sifive.com>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-renesas-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Samuel,

On Fri, Sep 29, 2023 at 1:30=E2=80=AFAM Samuel Holland
<samuel.holland@sifive.com> wrote:
>
> Hi Prabhakar,
>
> On 2023-09-28 7:07 PM, Prabhakar wrote:
> > From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> >
> > With DMA enabled audio capture/playback has some echo noise. So for
> > now switch to PIO mode until fixed.
>
> Is it really appropriate to work around a Linux software bug with a DT ch=
ange
> like this? Remember, the devicetrees are used by software other than Linu=
x.
>
Agreed not a good idea, this worked with previous kernel version and I
wanted to make sure people using upstream kernel be aware of this
issue. As you mentioned this is not a correct approach Im happy for
this patch to be dropped from the series.

Cheers,
Prabhakar

> Regards,
> Samuel
>
> > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > ---
> >  arch/riscv/boot/dts/renesas/rzfive-smarc.dtsi | 5 +++++
> >  1 file changed, 5 insertions(+)
> >
> > diff --git a/arch/riscv/boot/dts/renesas/rzfive-smarc.dtsi b/arch/riscv=
/boot/dts/renesas/rzfive-smarc.dtsi
> > index a8573fdfd8b1..85f96e24a96e 100644
> > --- a/arch/riscv/boot/dts/renesas/rzfive-smarc.dtsi
> > +++ b/arch/riscv/boot/dts/renesas/rzfive-smarc.dtsi
> > @@ -6,3 +6,8 @@
> >   */
> >
> >  #include <arm64/renesas/rzg2ul-smarc.dtsi>
> > +
> > +&ssi1 {
> > +     /delete-property/ dmas;
> > +     /delete-property/ dma-names;
> > +};
>

