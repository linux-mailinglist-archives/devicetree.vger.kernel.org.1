Return-Path: <devicetree+bounces-12894-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B40407DBC02
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 15:43:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 259321F2205F
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 14:43:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27877171AC;
	Mon, 30 Oct 2023 14:43:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="2OESjA41"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40B2B15EB0
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 14:43:42 +0000 (UTC)
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3E2E0D3
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 07:43:40 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-5401bab7525so7708215a12.2
        for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 07:43:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1698677019; x=1699281819; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4nwo0UYDV4o06Mzw9WU2DYO+XxHpuorjy7eMshi09Lk=;
        b=2OESjA41F9aeEf4pRwy2E815bTZti3+39VGllMtCc00lpc549g4Kom0Y10M4gYNSHE
         ZNNQO+cBqrmBAAY5Muk0aP3CieqiTm15yOXfQWi2heAHGoBiLLhaPDvzJJpF8/8J1pq9
         IfwnXst+MYR7Yw4pKDevoffkybX6f88HiXfMSuxsd3Rvf5HjC8bpCJndcpPBGRpkJeVQ
         yZKXZ2q9x43/LRasiJs110sx0Qrjh0aDNioGGiImAIaCZDH9P5Z48uGmCUZ4X+ZggN/w
         wgGvEdKoZqiFKrh2doJi92eCWe+84dJHd0h4AUXuxgF6AXYG6n6714VYUiyszgdVIhF5
         LU4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698677019; x=1699281819;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=4nwo0UYDV4o06Mzw9WU2DYO+XxHpuorjy7eMshi09Lk=;
        b=aygk9VGSnxrar0ZoR3wcxUuBmPNYwSytuvWFObVM8E8QUiC99gRbxQZWeTsIo0o0T+
         Ga2BrX8Pu5Vka383XaHvKpCI9ryi+09TsB+yjIdjIirmYvsx1woJOz7+DGQGgMGA/Tqi
         18HIr6hfTkBeG81fonXLTZs9l+uPbrzec/Jh83GlWc84gNAJtiU3xFZcOPoB0RvStUTw
         POnbsS0WCSywiH2HsxSPOR+a7DCY96/nyr9OG0WOuMzalESxihL2Ht7L5q9osNwdM0B5
         +8RtST0uJRSQ+5eUPstTJSwPl9vEPopFOsoNhbsDWDQETjXMKJ4F7rxHhVsuWLzCcSTi
         QMjQ==
X-Gm-Message-State: AOJu0Yz2I21A8H3TKIpukYimEtAkGZlqVkTCyogXDiVYSamw72cV4PQ3
	HmQqsVgkzADbyfgA0eogEaIiKw==
X-Google-Smtp-Source: AGHT+IFyhSMzoVuE7IRbjjhWsmhUnwHwbqzbPgJdBWIPhNuv82ntn1Jnq5yfajDSWdfDcVkYhUZKCA==
X-Received: by 2002:a17:906:38e:b0:9d3:8d1e:cee with SMTP id b14-20020a170906038e00b009d38d1e0ceemr2667017eja.70.1698677018573;
        Mon, 30 Oct 2023 07:43:38 -0700 (PDT)
Received: from localhost (k10064.upc-k.chello.nl. [62.108.10.64])
        by smtp.gmail.com with ESMTPSA id n11-20020a170906b30b00b00989828a42e8sm6035976ejz.154.2023.10.30.07.43.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Oct 2023 07:43:38 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Mon, 30 Oct 2023 15:43:37 +0100
Message-Id: <CWLUQWPZNAS5.3F4Y5W13OD08M@fairphone.com>
Cc: "Mukesh Ojha" <quic_mojha@quicinc.com>, "Andy Gross"
 <agross@kernel.org>, "Bjorn Andersson" <andersson@kernel.org>, "Konrad
 Dybcio" <konrad.dybcio@linaro.org>, "Mathieu Poirier"
 <mathieu.poirier@linaro.org>, "Rob Herring" <robh+dt@kernel.org>,
 "Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>, "Conor Dooley"
 <conor+dt@kernel.org>, "Manivannan Sadhasivam" <mani@kernel.org>,
 <cros-qcom-dts-watchers@chromium.org>,
 <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 "Krzysztof Kozlowski" <krzysztof.kozlowski@linaro.org>, "Rob Herring"
 <robh@kernel.org>, =?utf-8?q?Matti_Lehtim=C3=A4ki?=
 <matti.lehtimaki@gmail.com>, <linux-arm-msm@vger.kernel.org>,
 <linux-remoteproc@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 7/9] arm64: dts: qcom: sc7280: Add CDSP node
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Doug Anderson" <dianders@chromium.org>
X-Mailer: aerc 0.15.2
References: <20231027-sc7280-remoteprocs-v1-0-05ce95d9315a@fairphone.com>
 <20231027-sc7280-remoteprocs-v1-7-05ce95d9315a@fairphone.com>
 <7934a36a-9438-719a-2ed0-4a78757b044b@quicinc.com>
 <CWLNP6QNUXN1.SNVACF2IEGI8@fairphone.com>
 <CAD=FV=U6mi0h0MBFMC+ba4oq-te6_+WR6fj1XjAq7tmUu64bUA@mail.gmail.com>
In-Reply-To: <CAD=FV=U6mi0h0MBFMC+ba4oq-te6_+WR6fj1XjAq7tmUu64bUA@mail.gmail.com>

On Mon Oct 30, 2023 at 3:11 PM CET, Doug Anderson wrote:
> Hi,
>
> On Mon, Oct 30, 2023 at 2:12=E2=80=AFAM Luca Weiss <luca.weiss@fairphone.=
com> wrote:
> >
> > On Mon Oct 30, 2023 at 10:04 AM CET, Mukesh Ojha wrote:
> > >
> > >
> > > On 10/27/2023 7:50 PM, Luca Weiss wrote:
> > > > Add the node for the ADSP found on the SC7280 SoC, using standard
> > > > Qualcomm firmware.
> > > >
> > > > The memory region for sc7280-chrome-common.dtsi is taken from msm-5=
.4
> > > > yupik.dtsi since the other areas also seem to match that file there=
,
> > > > though I cannot be sure there.
> > > >
> > > > Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> > > > ---
> > > >   arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi |   5 +
> > > >   arch/arm64/boot/dts/qcom/sc7280.dtsi               | 138 ++++++++=
+++++++++++++
> > > >   2 files changed, 143 insertions(+)
> > > >
> > > > diff --git a/arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi b/a=
rch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi
> > > > index eb55616e0892..6e5a9d4c1fda 100644
> > > > --- a/arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi
> > > > +++ b/arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi
> > > > @@ -29,6 +29,11 @@ adsp_mem: memory@86700000 {
> > > >                     no-map;
> > > >             };
> > > >
> > > > +           cdsp_mem: memory@88f00000 {
> > > > +                   reg =3D <0x0 0x88f00000 0x0 0x1e00000>;
> > > > +                   no-map;
> > > > +           };
> > > > +
> > >
> > > Just a question, why to do it here, if chrome does not use this ?
> >
> > Other memory regions in sc7280.dtsi also get referenced but not actuall=
y
> > defined in that file, like mpss_mem and wpss_mem. Alternatively we can
> > also try and solve this differently, but then we should probably also
> > adjust mpss and wpss to be consistent.
> >
> > Apart from either declaring cdsp_mem in sc7280.dtsi or
> > "/delete-property/ memory-region;" for CDSP I don't really have better
> > ideas though.
> >
> > I also imagine these ChromeOS devices will want to enable cdsp at some
> > point but I don't know any plans there.
>
> Given that "remoteproc_cdsp" has status "disabled" in the dtsi, it
> feels like the dtsi shouldn't be reserving memory. I guess maybe
> memory regions can't be status "disabled"?

Hi Doug,

That's how it works in really any qcom dtsi though. I think in most/all
cases normally the reserved-memory is already declared in the SoC dtsi
file and also used with the memory-region property.

I wouldn't be against adjusting sc7280.dtsi to match the way it's done
in the other dtsi files though, so to have all the required labels
already defined in the dtsi so it doesn't rely on these labels being
defined in the device dts.

In other words, currently if you include sc7280.dtsi and try to build,
you first have to define the labels mpss_mem and wpss_mem (after this
patch series also cdsp_mem and adsp_mem) for it to build.

I'm quite neutral either way, let me know :)

Regards
Luca

>
> -Doug


