Return-Path: <devicetree+bounces-13047-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 42E827DC6BB
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 07:51:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E109428108C
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 06:51:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52D2A6AB7;
	Tue, 31 Oct 2023 06:51:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="auV/mghX"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F982EC6
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 06:51:24 +0000 (UTC)
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A1ACC9
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 23:51:13 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-40907b82ab9so36802625e9.1
        for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 23:51:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1698735072; x=1699339872; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z03tBAD7kulHLciz+wyaNXrh/TRCLRTdw+sLgMToEro=;
        b=auV/mghXFpoG33l9D7LeTCjJCsVLEGGVBDAHMEwpP87UyENpwPIpYHqSUGK3zfcsh/
         6CoXjVlVIWPu1MOtbgKsAt62Cg0g8p99eX8xjqCQe9AN9OURF6dhslJU6jDOiqDxco2f
         6U3RZyJJW+oKrDaOs0Vl/+SYC2963DCDsrQefFnDj/5kLZU7xO6LPujJqpqCg7nY4Pfb
         jxX2rf/n/ZB82hYTTEilYGVEtew9S2xo636zcJ1+9XpHl0BezoquAv0x/xSs7rfNThKx
         N+JbbWMwNKixvwdvv0D6X/APKWBUvBgz0fMhWLD1hE3K0gH7QaNNwmPOQO+iU/DND221
         EeOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698735072; x=1699339872;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=z03tBAD7kulHLciz+wyaNXrh/TRCLRTdw+sLgMToEro=;
        b=aUXsEmkAddTlDT5lcRZE3lOowAxHUtXF6+w3wDF7SEEsCRB8DsDm55wzV0e4VlIHRW
         VrA35lIIoGadmqG74LgNxhqYEl06Mt1dz58PryAbmXXQSJdOFWFrNqYYGKufhqdzxZqG
         H0yIWQavjSKY9huZP56C492X1TAGqh3TdWNdwgPmmHZb1bIJSPg9k2adhf9p/4NuXqSE
         KPlr75mVVYdBXgERzRPVVZ0jruz4jOa0Tv2VUMlhADWq5EKaz4KbSu9GwHfMZQVKpl2Q
         rAqpx5iO8C/zYjxN3X9r1+F+HHUOMyszBlj8dyihdb0p8WWbBdB3wJYD8x6ik8RLkWTb
         wj7Q==
X-Gm-Message-State: AOJu0YyALW5ar47/MqXZOEXl8bi7xSrJIrYMK2/hBazpLNFOv3VAoP94
	cHSGxYiaAWtMhqhrefjsKLZzWA==
X-Google-Smtp-Source: AGHT+IEzHyPRQE2zZhzDDa2oTzBfGeHjRLaOTVFZzI5RlRHxHNoXR6ODtgZmff9pqdm1ZlEPaclxXg==
X-Received: by 2002:a05:6000:2a2:b0:32f:803e:3a06 with SMTP id l2-20020a05600002a200b0032f803e3a06mr1821538wry.7.1698735071261;
        Mon, 30 Oct 2023 23:51:11 -0700 (PDT)
Received: from localhost (mobiledyn-62-240-134-103.mrsn.at. [62.240.134.103])
        by smtp.gmail.com with ESMTPSA id e13-20020a5d594d000000b00327bf4f2f14sm725497wri.88.2023.10.30.23.51.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Oct 2023 23:51:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 31 Oct 2023 07:51:08 +0100
Message-Id: <CWMFBOXZ8IIL.3PDP1L7ZMG3MO@fairphone.com>
Cc: "Andy Gross" <agross@kernel.org>, "Bjorn Andersson"
 <andersson@kernel.org>, "Konrad Dybcio" <konrad.dybcio@linaro.org>,
 "Mathieu Poirier" <mathieu.poirier@linaro.org>, "Rob Herring"
 <robh+dt@kernel.org>, "Krzysztof Kozlowski"
 <krzysztof.kozlowski+dt@linaro.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Manivannan Sadhasivam" <mani@kernel.org>,
 <cros-qcom-dts-watchers@chromium.org>,
 <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 "Krzysztof Kozlowski" <krzysztof.kozlowski@linaro.org>, "Rob Herring"
 <robh@kernel.org>, =?utf-8?q?Matti_Lehtim=C3=A4ki?=
 <matti.lehtimaki@gmail.com>, <linux-arm-msm@vger.kernel.org>,
 <linux-remoteproc@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 7/9] arm64: dts: qcom: sc7280: Add CDSP node
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Mukesh Ojha" <quic_mojha@quicinc.com>, "Doug Anderson"
 <dianders@chromium.org>
X-Mailer: aerc 0.15.2
References: <20231027-sc7280-remoteprocs-v1-0-05ce95d9315a@fairphone.com>
 <20231027-sc7280-remoteprocs-v1-7-05ce95d9315a@fairphone.com>
 <7934a36a-9438-719a-2ed0-4a78757b044b@quicinc.com>
 <CWLNP6QNUXN1.SNVACF2IEGI8@fairphone.com>
 <CAD=FV=U6mi0h0MBFMC+ba4oq-te6_+WR6fj1XjAq7tmUu64bUA@mail.gmail.com>
 <CWLUQWPZNAS5.3F4Y5W13OD08M@fairphone.com>
 <CAD=FV=XbwbjFgMjq-y_L-9EO+xfxwGo6RYV8Wh6P5oBR=oDf_g@mail.gmail.com>
 <d5d53346-ca3b-986a-e104-d87c37115b62@quicinc.com>
In-Reply-To: <d5d53346-ca3b-986a-e104-d87c37115b62@quicinc.com>

On Tue Oct 31, 2023 at 7:44 AM CET, Mukesh Ojha wrote:
>
>
> On 10/30/2023 8:33 PM, Doug Anderson wrote:
> > Hi,
> >=20
> > On Mon, Oct 30, 2023 at 7:43=E2=80=AFAM Luca Weiss <luca.weiss@fairphon=
e.com> wrote:
> >>
> >> On Mon Oct 30, 2023 at 3:11 PM CET, Doug Anderson wrote:
> >>> Hi,
> >>>
> >>> On Mon, Oct 30, 2023 at 2:12=E2=80=AFAM Luca Weiss <luca.weiss@fairph=
one.com> wrote:
> >>>>
> >>>> On Mon Oct 30, 2023 at 10:04 AM CET, Mukesh Ojha wrote:
> >>>>>
> >>>>>
> >>>>> On 10/27/2023 7:50 PM, Luca Weiss wrote:
> >>>>>> Add the node for the ADSP found on the SC7280 SoC, using standard
> >>>>>> Qualcomm firmware.
> >>>>>>
> >>>>>> The memory region for sc7280-chrome-common.dtsi is taken from msm-=
5.4
> >>>>>> yupik.dtsi since the other areas also seem to match that file ther=
e,
> >>>>>> though I cannot be sure there.
> >>>>>>
> >>>>>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> >>>>>> ---
> >>>>>>    arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi |   5 +
> >>>>>>    arch/arm64/boot/dts/qcom/sc7280.dtsi               | 138 ++++++=
+++++++++++++++
> >>>>>>    2 files changed, 143 insertions(+)
> >>>>>>
> >>>>>> diff --git a/arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi b/=
arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi
> >>>>>> index eb55616e0892..6e5a9d4c1fda 100644
> >>>>>> --- a/arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi
> >>>>>> +++ b/arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi
> >>>>>> @@ -29,6 +29,11 @@ adsp_mem: memory@86700000 {
> >>>>>>                      no-map;
> >>>>>>              };
> >>>>>>
> >>>>>> +           cdsp_mem: memory@88f00000 {
> >>>>>> +                   reg =3D <0x0 0x88f00000 0x0 0x1e00000>;
> >>>>>> +                   no-map;
> >>>>>> +           };
> >>>>>> +
> >>>>>
> >>>>> Just a question, why to do it here, if chrome does not use this ?
> >>>>
> >>>> Other memory regions in sc7280.dtsi also get referenced but not actu=
ally
> >>>> defined in that file, like mpss_mem and wpss_mem. Alternatively we c=
an
> >>>> also try and solve this differently, but then we should probably als=
o
> >>>> adjust mpss and wpss to be consistent.
> >>>>
> >>>> Apart from either declaring cdsp_mem in sc7280.dtsi or
> >>>> "/delete-property/ memory-region;" for CDSP I don't really have bett=
er
> >>>> ideas though.
> >>>>
> >>>> I also imagine these ChromeOS devices will want to enable cdsp at so=
me
> >>>> point but I don't know any plans there.
> >>>
> >>> Given that "remoteproc_cdsp" has status "disabled" in the dtsi, it
> >>> feels like the dtsi shouldn't be reserving memory. I guess maybe
> >>> memory regions can't be status "disabled"?
> >>
> >> Hi Doug,
> >>
> >> That's how it works in really any qcom dtsi though. I think in most/al=
l
> >> cases normally the reserved-memory is already declared in the SoC dtsi
> >> file and also used with the memory-region property.
> >>
> >> I wouldn't be against adjusting sc7280.dtsi to match the way it's done
> >> in the other dtsi files though, so to have all the required labels
> >> already defined in the dtsi so it doesn't rely on these labels being
> >> defined in the device dts.
> >>
> >> In other words, currently if you include sc7280.dtsi and try to build,
> >> you first have to define the labels mpss_mem and wpss_mem (after this
> >> patch series also cdsp_mem and adsp_mem) for it to build.
> >>
> >> I'm quite neutral either way, let me know :)
> >=20
> > I haven't done a ton of thinking about this, so if I'm spouting
> > gibberish then feel free to ignore me. :-P It just feels weird that
> > when all the "dtsi" files are combined and you look at what you end up
> > on a sc7280 Chrome board that you'll be reserving 32MB of memory for a
> > device that's set (in the same device tree) to be "disabled", right?
> > ...the 32MB is completely wasted, I think. If we wanted to enable the
> > CDSP we'd have to modify the device tree anyway, so it seems like that
> > same modification would set the CDSP to "okay" and also reserve the
> > memory...
> >=20
> > In that vein, it seems like maybe you could move the "cdsp_mem" to the
> > SoC .dsti file with a status of "disabled". . I guess we don't do that
> > elsewhere, but maybe we should be? As far as I can tell without
> > testing it (just looking at fdt_scan_reserved_mem()) this should
> > work...
>
> What do you think about moving present reserve memory block from
> sc7280-chrome-common to sc7280.dtsi and delete the stuff which
> chrome does not need it sc7280-chrome-common ?

Hi Mukesh,

I'll do that in v2, thanks!

Regards
Luca

>
> -Mukesh
> >=20
> > -Doug


