Return-Path: <devicetree+bounces-14090-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D93BD7E2083
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 12:55:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8FF40281170
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 11:55:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A37E61A5BB;
	Mon,  6 Nov 2023 11:55:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IxG8Zu4w"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 121431A5A4
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 11:55:07 +0000 (UTC)
Received: from mail-yw1-x112d.google.com (mail-yw1-x112d.google.com [IPv6:2607:f8b0:4864:20::112d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F4C7EA
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 03:55:05 -0800 (PST)
Received: by mail-yw1-x112d.google.com with SMTP id 00721157ae682-5a81ab75f21so52198127b3.2
        for <devicetree@vger.kernel.org>; Mon, 06 Nov 2023 03:55:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699271704; x=1699876504; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=0lvjeJMZ5Z3vzScyAhd0JNzf6RjNdiewooYz+s8E+Mo=;
        b=IxG8Zu4w5kG0OGqDQcEdggmwT4vP6Cm5BoFips/TLwicbfYV3tWCOK5ccoZH15ZhnQ
         DsMvXsU+Y6NWDb6jGcpFErkL5pXsIjWokJwDnaLU/89DMLLOV2CrzubYkOOxnxwuJ5ug
         mIg+qEzkAALxcwP97iWQNGQSVMoJx/0tWFT3q4WkqSIUCC6u/BT3uGUb0ElgO+sD6DJR
         q/acNhBPsVa6zFcJ5+hCpacjI2ZU6kxXt3O1f4Iich3F2daFP5H4grYNl6GQJd7l6Ojj
         kBJk05Le8TRpKUH020PT0oCcfK4UeAQeXKBTLVHO4e/GhOBi47tHNvwURXjonQkjdpil
         CvZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699271704; x=1699876504;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0lvjeJMZ5Z3vzScyAhd0JNzf6RjNdiewooYz+s8E+Mo=;
        b=ZuapHwFJcla2EAQmz1ExiV+6CQobZkwe+PMmbCL472Fb7MR/Q6m6j71H3uhIPuQjD3
         IPKHKjE6LuBkqoJH87Odzaff9hRp5qYU+MUsontNW8aisIct7+X8e1CP1BwdLcGlJ60A
         ptD0uMUJC77HKtf3eTyCmNk3qSyWVKR3a06GSR1C2uTQPg9Nl+dZDtr0IoIA/cJESZQe
         Z8Q2c26QlAY9CWFCbz+viansV2qD6dAtLkDgRaEN3/myMxiBu6MS2/ccKEwbOeh+iH9e
         sDP+5fMVSs2CrJfUqVEHO99gnRbeliAvxjTc/FtOplU/neoUuHtiu5nzfulDeLa/l20Z
         0mlw==
X-Gm-Message-State: AOJu0YwgORq3+kcMTqA6mnwl3HNs3rTDR+kjWbfv0Tcp01dyIPFDiG/o
	/s9Cwo7+Bx+c2lGwSib12RYO8G5cMWo48K/zP6n7ZA==
X-Google-Smtp-Source: AGHT+IFrUdolTDqB2qWVKUbHuQAih3w13pnTWXfUwjZW6gMNyXVS9vqD2MJyPXUfRGJsFfWDUDOyEH1iAEkw6Gph070=
X-Received: by 2002:a0d:ebc5:0:b0:5a7:aa54:42b1 with SMTP id
 u188-20020a0debc5000000b005a7aa5442b1mr10277254ywe.28.1699271704503; Mon, 06
 Nov 2023 03:55:04 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231103184655.23555-1-quic_kbajaj@quicinc.com>
 <20231103184655.23555-3-quic_kbajaj@quicinc.com> <CAA8EJprNyu0r_mV9hbKA1fSvoEvTHuk5umxU8H64Voj_cnZcFQ@mail.gmail.com>
 <1830fc44-7bac-4db5-af59-112410d73a64@linaro.org> <af05dbdb-21bf-34f0-e9b3-9f6b9a0c3115@quicinc.com>
In-Reply-To: <af05dbdb-21bf-34f0-e9b3-9f6b9a0c3115@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 6 Nov 2023 13:54:52 +0200
Message-ID: <CAA8EJpq89g9EeyKcogU+Mt9ie6Bk-rmgi=GqyycYBm_291i1Bw@mail.gmail.com>
Subject: Re: [RFC PATCH 2/2] arm64: dts: qcom: qcm6490: Add qcm6490 idp and
 rb3 board
To: Mukesh Ojha <quic_mojha@quicinc.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Komal Bajaj <quic_kbajaj@quicinc.com>, 
	Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, quic_nainmeht@quicinc.com
Content-Type: text/plain; charset="UTF-8"

On Mon, 6 Nov 2023 at 13:41, Mukesh Ojha <quic_mojha@quicinc.com> wrote:
>
>
> On 11/5/2023 6:38 PM, Krzysztof Kozlowski wrote:
> > On 03/11/2023 23:22, Dmitry Baryshkov wrote:
> >> On Fri, 3 Nov 2023 at 20:49, Komal Bajaj <quic_kbajaj@quicinc.com> wrote:
> >>>
> >>> Add qcm6490 devicetree file for QCM6490 IDP and QCM6490 RB3
> >>> platform. QCM6490 is derived from SC7280 meant for various
> >>> form factor including IoT.
> >>>
> >>> Supported features are, as of now:
> >>> * Debug UART
> >>> * eMMC (only in IDP)
> >>> * USB
> >>>
> >
> > ...
> >
> >>> +
> >>> diff --git a/arch/arm64/boot/dts/qcom/qcm6490-iot-common.dtsi b/arch/arm64/boot/dts/qcom/qcm6490-iot-common.dtsi
> >>> new file mode 100644
> >>> index 000000000000..01adc97789d0
> >>> --- /dev/null
> >>> +++ b/arch/arm64/boot/dts/qcom/qcm6490-iot-common.dtsi
> >>
> >> I have mixed feelings towards this file. Usually we add such 'common'
> >> files only for the phone platforms where most of the devices are
> >> common.
> >> Do you expect that IDP and RB3 will have a lot of common code other
> >> than these regulator settings?
> >
> > I agree here. What exactly is common in the real hardware between IDP
> > and RB3? Commit msg does not explain it, so I do not see enough
> > justification for common file. Just because some DTS looks similar for
> > different hardware does not mean you should creat common file.
>
> @Dmitry/@Krzysztof,
>
> Thank you for reviewing the RFC, we wanted to continue the
> suggestion/discussion given on [1] , where we discussed that this
> qcm6490 is going to be targeted for IOT segment and will have different
> memory map and it is going to use some of co-processors like adsp/cdsp
> which chrome does not use.
>
> So to your question what is common between RB3 and IDP, mostly they will
> share common memory map(similar to [2]) and regulator settings and both
> will use adsp/cdsp etc., we will be posting the memory map changes as
> well in coming weeks once this RFC is acked.

Is the memory map going to be the same as the one used on Fairphone5?

Are ADSP and CDSP physically present on sc7280?

I think that your goal should be to:
- populate missing device in sc7280.dtsi
- maybe add qcm6490.dtsi which defines SoC-level common data (e.g. memory map)
- push the rest to board files.

I don't think that putting regulators to the common file is a good
idea. Platforms will further change and limit voltage limits and
modes, so they usually go to the board file.

>
>
> Thanks,
> Mukesh
>
> [1]
> https://lore.kernel.org/linux-arm-msm/d97ebf74-ad03-86d6-b826-b57be209b9e2@quicinc.com/
>
> [2]
> commit 90c856602e0346ce9ff234062e86a198d71fa723
> Author: Douglas Anderson <dianders@chromium.org>
> Date:   Tue Jan 25 14:44:20 2022 -0800
>
>      arm64: dts: qcom: sc7280: Factor out Chrome common fragment
>
>      This factors out a device tree fragment from some sc7280 device
>      trees. It represents the device tree bits that should be included for
>      "Chrome" based sc7280 boards. On these boards the bootloader (Coreboot
>      + Depthcharge) configures things slightly different than the
>      bootloader that Qualcomm provides. The modem firmware on these boards
>      also works differently than on other Qulacomm products and thus the
>      reserved memory map needs to be adjusted.
>
>      NOTES:
>      - This is _not_ quite a no-op change. The "herobrine" and "idp"
>        fragments here were different and it looks like someone simply
>        forgot to update the herobrine version. This updates a few numbers
>        to match IDP. This will also cause the `pmk8350_pon` to be disabled
>        on idp/crd, which I belive is a correct change.
>      - At the moment this assumes LTE skus. Once it's clearer how WiFi SKUs
>        will work (how much of the memory map they can reclaim) we may add
>        an extra fragment that will rejigger one way or the other.
>
>      Signed-off-by: Douglas Anderson <dianders@chromium.org>
>      Reviewed-by: Stephen Boyd <swboyd@chromium.org>
>      Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
>      Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
>      Link:
> https://lore.kernel.org/r/20220125144316.v2.3.Iac012fa8d727be46448d47027a1813ea716423ce@changeid
>
>
> >
> > Best regards,
> > Krzysztof
> >



-- 
With best wishes
Dmitry

