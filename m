Return-Path: <devicetree+bounces-13109-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 798097DC8E0
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 10:02:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E433AB20C5C
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 09:02:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AC071078C;
	Tue, 31 Oct 2023 09:02:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ap2o7LUd"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 113F46FCC
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 09:02:00 +0000 (UTC)
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com [IPv6:2607:f8b0:4864:20::1034])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D674091;
	Tue, 31 Oct 2023 02:01:58 -0700 (PDT)
Received: by mail-pj1-x1034.google.com with SMTP id 98e67ed59e1d1-2809414efa9so869705a91.1;
        Tue, 31 Oct 2023 02:01:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698742918; x=1699347718; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=zqxJQ8Ni/MPYlzrYNW/kZynf7izc43entk4fRBk4nkQ=;
        b=Ap2o7LUdBk4Ir+9f3/pkTeWJzgcX5bFRs6qpTpE8B0UVhvIFFO4ZqBTLmQ3Vfuk2EO
         nk5s5OM0pguUKYBRcJdDzq1so2VJQjIl+w1HBVp37vebxYg15cFyYWc+lTCfKI5PAfOS
         SAnrN5c04RmRVEvAdS9UceQRXMHAdcjrlX0g6BxL0A4X75n+0p/BJ50Djw5yIKqq3u5V
         Tjq+y2cDezebL8573ecNgTCi2iBl2JDAgFCkXEY6PfBW04L4UnIKHAmwzE5Y8jSQ+U25
         37tJSOI59SeWLeaVFLKI3+l5oGlO6Ni1vTCxcIHpRSzUO9GcJ/t25lNHCIGWMkinBuQn
         XbhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698742918; x=1699347718;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zqxJQ8Ni/MPYlzrYNW/kZynf7izc43entk4fRBk4nkQ=;
        b=Ibp08OH0E1VeT1+dcMjdMqDNMIv23pORMykay9p+MLNvG1yMFngqv1AQ7sMz4kwHsr
         nwe9RPxST2swP+7RXYpBLVmLPNNky16TSTyoiD7hXplku7L+qBl56nRCY51z+Amtv8ma
         XuNHKztFGtXXIWkajBX0GFr9tOO7Z0PL0CrXA5qncsoCQ8w84hkZGPCCEuVCto5xfG7B
         HSS69U0ORwP66ygrFup6zk/anTr8D3eQEQJknuj6r4wXfzbg7CheofeYSX9oD1S4hexW
         7ZkaoQFRH8PoZ38MKqXWzJARfFqD5qfVWcBaWUumfl7JPJCL+Vc57VA+kn8EkvVGi5tq
         ORFw==
X-Gm-Message-State: AOJu0YwiIOGhXw+jXht93ViGgDFaYsJlo/kq2NTTSJ/6ppZzsSf4c36G
	NirHG0vE67huxSEkDy60QE50HK3Bvzcyjo772m4=
X-Google-Smtp-Source: AGHT+IFwrWvxotSFyxfI1rxiJRHMU2JaY4pHGXA3/eAAFwJFmrZc2zszEFL7FLs8uar8EfcStUpR3JRApPolKxCi/t4=
X-Received: by 2002:a17:90b:4c88:b0:280:8356:10b2 with SMTP id
 my8-20020a17090b4c8800b00280835610b2mr3199047pjb.5.1698742918210; Tue, 31 Oct
 2023 02:01:58 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231025104457.628109-1-robimarko@gmail.com> <20231025104457.628109-2-robimarko@gmail.com>
 <CAOX2RU4MBvDZZ767RPS9XKj0U2L3gviVG5cyR8NKyO4LD+sfYQ@mail.gmail.com>
 <20c8cfde-3f55-45c5-bc23-21979ac9680d@linaro.org> <CAOX2RU5-XFZhGzjigNtu-qFnPWDd2XkpGpY=HXWigRa5SXw4TA@mail.gmail.com>
 <ef377506-4132-4805-a76e-18f241afe319@linaro.org>
In-Reply-To: <ef377506-4132-4805-a76e-18f241afe319@linaro.org>
From: Robert Marko <robimarko@gmail.com>
Date: Tue, 31 Oct 2023 10:01:47 +0100
Message-ID: <CAOX2RU4K67evm10giQvF1rcfqTfR+e--KQT3ZePoHQoqASv_fg@mail.gmail.com>
Subject: Re: [PATCH 2/3] clk: qcom: ipq6018: add USB GDSCs
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: agross@kernel.org, andersson@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	mturquette@baylibre.com, sboyd@kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-clk@vger.kernel.org, 
	Kathiravan Thirumoorthy <quic_kathirav@quicinc.com>
Content-Type: text/plain; charset="UTF-8"

On Mon, 30 Oct 2023 at 22:12, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
> On 30.10.2023 21:37, Robert Marko wrote:
> > On Mon, 30 Oct 2023 at 20:37, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
> >>
> >> On 29.10.2023 12:04, Robert Marko wrote:
> >>> On Wed, 25 Oct 2023 at 12:45, Robert Marko <robimarko@gmail.com> wrote:
> >>>>
> >>>> IPQ6018 has GDSC-s for each of the USB ports, so lets define them as such
> >>>> and drop the curent code that is de-asserting the USB GDSC-s as part of
> >>>> the GCC probe.
> >>>>
> >>>> Signed-off-by: Robert Marko <robimarko@gmail.com>
> >>>
> >>> Unfortunately, after testing on multiple devices I hit the same GDSC
> >>> issue I had a long time ago
> >>> that was the reason I did not send this upstream.
> >>> It seems that USB3 port GDSC (USB0 GDSC in code) works just fine,
> >>> however the USB2 one
> >>> (USB1 GDSC in code) it is stuck off and USB2 port will fail due to this:
> >>>     1.607531] ------------[ cut here ]------------
> >>> [    1.607559] usb1_gdsc status stuck at 'off'
> >>> [    1.607592] WARNING: CPU: 0 PID: 35 at gdsc_toggle_logic+0x16c/0x174
> >>> [    1.615120] Modules linked in:
> >> Can you dump GDSCR (the entire 32-bit register) at boot and when toggling?
> >
> > Sure, here it is:
> > [    0.023760] qcom,gcc-ipq6018 1800000.gcc: reg: 0x3e078 val: 0x8222004 init
> > [    0.023782] qcom,gcc-ipq6018 1800000.gcc: reg: 0x3f078 val: 0x8222004 init
> > [    0.988626] qcom,gcc-ipq6018 1800000.gcc: reg: 0x3f078 val:
> > 0x8282000 before toggle
> > [    1.202506] qcom,gcc-ipq6018 1800000.gcc: reg: 0x3f078 val:
> > 0x8282000 after toggle
> > [    1.207208] qcom,gcc-ipq6018 1800000.gcc: reg: 0x3e078 val:
> > 0xa0282000 before toggle
> Any chance
>
> .en_few_wait_val = 0x2
>
> (turning BIT(19) into BIT(17))
>
> will make a difference?

Sadly, it makes no difference and GDSC status bit newer comes up which is
rather weird as USB0 one seems to work just fine.

Regards,
Robert
>
> Konrad

