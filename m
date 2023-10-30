Return-Path: <devicetree+bounces-12890-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A8BEB7DBB76
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 15:11:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 13DD9B20C31
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 14:11:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAE711774C;
	Mon, 30 Oct 2023 14:11:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="IOSC0IIb"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E36631773C
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 14:11:33 +0000 (UTC)
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 939E3E8
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 07:11:31 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-9c773ac9b15so674336566b.2
        for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 07:11:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1698675088; x=1699279888; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E4pKFRQbiSaL9ZKbrNbTowWU8USbI5fmQxi6InoyZho=;
        b=IOSC0IIb0Tx/CSpf3tkeq9dQF+Mf+x2f5rrIxPWMbvSe5eBLGwDUYOHv31G0Fu+Mai
         eNuQlhEKDVKYbSnYZtSjLOP+uah0Dy+VQfaaTFEUIQ/30YYxU3FrLBiorVTgYVkq09rp
         HM0Nz3C98QU8jN+qTub8OZ2GCE9dLMYVPjla0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698675088; x=1699279888;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=E4pKFRQbiSaL9ZKbrNbTowWU8USbI5fmQxi6InoyZho=;
        b=i6j9NCFfRpnt8plHMeAYYnLyPSgMRT3BpPn2C3+SOXOy7KaU7c5wAre9gsXpMKGEFr
         sHKXiIjn8+39B5t/XLBMul3IaoBuUkF16f1NQkf3zrSFd8bwSqiiBmpvn/i8KYkQyztO
         Iup3352f2kHHYdfJ1mnjnBy2GJBVtiO0Snn8YsYwWYsn15WEJ+f9v4WDxzcBfPgr3aPB
         QlovUE10kKOqwmjNaw71g058BSjpVksiKXMVrLd5YUAc3FHmpikc2tcJVLLrYIempkNL
         Ap10HoMvu+2IdfNXVQC4BZ1IX0qhiMpymLVaXrzsZPoW/Nwp+3F/NhA2UkeQfmi5T9X/
         tATQ==
X-Gm-Message-State: AOJu0YxWzBRjAhKlDAdvCBwCDA8wUmgGKbIqUKIxMiqLN5T5+tc9xkq2
	QiWOLLsmd57zc4soBGEzTAULQqhnKokaZ79uCairvQ==
X-Google-Smtp-Source: AGHT+IG8LOC+jxfilRHyBqKQzuECFa/TEcxgcOq1Eut8Qxugmv05I+C6Ugmqd1keidi/OEqa40gywA==
X-Received: by 2002:a17:907:934a:b0:9c7:4e5d:12c5 with SMTP id bv10-20020a170907934a00b009c74e5d12c5mr8320185ejc.61.1698675088556;
        Mon, 30 Oct 2023 07:11:28 -0700 (PDT)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com. [209.85.128.45])
        by smtp.gmail.com with ESMTPSA id mf8-20020a170906cb8800b009ad875d12d7sm6047832ejb.210.2023.10.30.07.11.27
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Oct 2023 07:11:28 -0700 (PDT)
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-40853f2e93eso94755e9.0
        for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 07:11:27 -0700 (PDT)
X-Received: by 2002:a05:600c:5128:b0:3f7:3e85:36a with SMTP id
 o40-20020a05600c512800b003f73e85036amr116810wms.7.1698675087168; Mon, 30 Oct
 2023 07:11:27 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231027-sc7280-remoteprocs-v1-0-05ce95d9315a@fairphone.com>
 <20231027-sc7280-remoteprocs-v1-7-05ce95d9315a@fairphone.com>
 <7934a36a-9438-719a-2ed0-4a78757b044b@quicinc.com> <CWLNP6QNUXN1.SNVACF2IEGI8@fairphone.com>
In-Reply-To: <CWLNP6QNUXN1.SNVACF2IEGI8@fairphone.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 30 Oct 2023 07:11:07 -0700
X-Gmail-Original-Message-ID: <CAD=FV=U6mi0h0MBFMC+ba4oq-te6_+WR6fj1XjAq7tmUu64bUA@mail.gmail.com>
Message-ID: <CAD=FV=U6mi0h0MBFMC+ba4oq-te6_+WR6fj1XjAq7tmUu64bUA@mail.gmail.com>
Subject: Re: [PATCH 7/9] arm64: dts: qcom: sc7280: Add CDSP node
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Mukesh Ojha <quic_mojha@quicinc.com>, Andy Gross <agross@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Mathieu Poirier <mathieu.poirier@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, cros-qcom-dts-watchers@chromium.org, 
	~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Rob Herring <robh@kernel.org>, 
	=?UTF-8?Q?Matti_Lehtim=C3=A4ki?= <matti.lehtimaki@gmail.com>, 
	linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Oct 30, 2023 at 2:12=E2=80=AFAM Luca Weiss <luca.weiss@fairphone.co=
m> wrote:
>
> On Mon Oct 30, 2023 at 10:04 AM CET, Mukesh Ojha wrote:
> >
> >
> > On 10/27/2023 7:50 PM, Luca Weiss wrote:
> > > Add the node for the ADSP found on the SC7280 SoC, using standard
> > > Qualcomm firmware.
> > >
> > > The memory region for sc7280-chrome-common.dtsi is taken from msm-5.4
> > > yupik.dtsi since the other areas also seem to match that file there,
> > > though I cannot be sure there.
> > >
> > > Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> > > ---
> > >   arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi |   5 +
> > >   arch/arm64/boot/dts/qcom/sc7280.dtsi               | 138 ++++++++++=
+++++++++++
> > >   2 files changed, 143 insertions(+)
> > >
> > > diff --git a/arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi b/arc=
h/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi
> > > index eb55616e0892..6e5a9d4c1fda 100644
> > > --- a/arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi
> > > +++ b/arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi
> > > @@ -29,6 +29,11 @@ adsp_mem: memory@86700000 {
> > >                     no-map;
> > >             };
> > >
> > > +           cdsp_mem: memory@88f00000 {
> > > +                   reg =3D <0x0 0x88f00000 0x0 0x1e00000>;
> > > +                   no-map;
> > > +           };
> > > +
> >
> > Just a question, why to do it here, if chrome does not use this ?
>
> Other memory regions in sc7280.dtsi also get referenced but not actually
> defined in that file, like mpss_mem and wpss_mem. Alternatively we can
> also try and solve this differently, but then we should probably also
> adjust mpss and wpss to be consistent.
>
> Apart from either declaring cdsp_mem in sc7280.dtsi or
> "/delete-property/ memory-region;" for CDSP I don't really have better
> ideas though.
>
> I also imagine these ChromeOS devices will want to enable cdsp at some
> point but I don't know any plans there.

Given that "remoteproc_cdsp" has status "disabled" in the dtsi, it
feels like the dtsi shouldn't be reserving memory. I guess maybe
memory regions can't be status "disabled"?

-Doug

