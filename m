Return-Path: <devicetree+bounces-13871-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B3E37E0F94
	for <lists+devicetree@lfdr.de>; Sat,  4 Nov 2023 14:24:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 72074B21124
	for <lists+devicetree@lfdr.de>; Sat,  4 Nov 2023 13:24:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF43818B02;
	Sat,  4 Nov 2023 13:23:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="c/cnOscc"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC3AC13F
	for <devicetree@vger.kernel.org>; Sat,  4 Nov 2023 13:23:54 +0000 (UTC)
Received: from mail-yb1-xb33.google.com (mail-yb1-xb33.google.com [IPv6:2607:f8b0:4864:20::b33])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C213D42
	for <devicetree@vger.kernel.org>; Sat,  4 Nov 2023 06:23:51 -0700 (PDT)
Received: by mail-yb1-xb33.google.com with SMTP id 3f1490d57ef6-d9ace5370a0so2764645276.0
        for <devicetree@vger.kernel.org>; Sat, 04 Nov 2023 06:23:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699104230; x=1699709030; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ihpTO3F03JzgacnLk5uBUsxe1t+WyOgXLtjj9fTyAZY=;
        b=c/cnOsccQ/fIrrcu/GNkooemVtQ1f2i7DGtv8dQQV+NN9/XTL0G5H7Z/byj7AtAGTg
         Nh5tNYpfeGxJl85qM9Ys5nybvZr7KA12IazlA2UDDOCvIVw/HMSskEQMDZXoQgy5JIUk
         A/R+AMFDzknrYWqSJF10Pk5FomwgdopsorBLidqxKi/puBx5zAD7wmGqJniXHBgq3Tvg
         XdoXng5jXbgwjWjd/0Uv7gHyXaRbTdhABSt6p/eyC2trhkHROlKBR4DydXN+YBdbBl+g
         tvei06BmxZslptmqnhc3kBqvNuQ9qnJsOdbBo+009iefbA2KhfmYXOhAI38niKyqnOnP
         MXWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699104230; x=1699709030;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ihpTO3F03JzgacnLk5uBUsxe1t+WyOgXLtjj9fTyAZY=;
        b=Ly6DPsmnpIzx60SumNdk1/l7c98vS/cCUxzUSkwQB5lhsVkO04ZsrxOZEwWw3n8zc2
         lLSIalFynsqslZLET5DPPk4oKriyjVdaRKTEfrQYUc978InwSafEOQrjiuZYv7xk0RDh
         sR7OlvS8DyDA+U5Grm2pViXLNjf9ppieb9/7kJq0Hj6pI2gtTXMAQJ5cp+EhU8FSW6DV
         gPDb2XoxfdLehJGXgLLEh8PAqMb/TCdKcMZAa9Pr4wYmJcjEVIAUsUKaPTcHspevaZF/
         eeDjVoxexg82mBFFUu2LP60O60yhjyRqlYbCTS3L2yGKxD0spD/B6qJD6zYbfdTBsOcA
         z39A==
X-Gm-Message-State: AOJu0YyCg7Bkcy0oEta4YbKV6VCmasWw4wLZS/6oCCnSzaaB2/p5BQpw
	6pYkYJrS9J/lePmatqmqDVY+0hNaWvXMb6kpDBPOtg==
X-Google-Smtp-Source: AGHT+IGVlWdeV8B/RVB/c5DH0WUIogCLxoudcchmyfPsPK9fAim8y9X901ML2K7hubgLTE5ct4OanZhXxd+HhodgcZg=
X-Received: by 2002:a25:dfc7:0:b0:d0f:846c:ef7b with SMTP id
 w190-20020a25dfc7000000b00d0f846cef7bmr21101785ybg.17.1699104230336; Sat, 04
 Nov 2023 06:23:50 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231027-sc7280-remoteprocs-v1-0-05ce95d9315a@fairphone.com>
 <20231027-sc7280-remoteprocs-v1-9-05ce95d9315a@fairphone.com>
 <12ea48bd-5022-4820-815a-89ef23ec9385@linaro.org> <CWMK0AQRL87L.1F9MIDVQ4J439@fairphone.com>
In-Reply-To: <CWMK0AQRL87L.1F9MIDVQ4J439@fairphone.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 4 Nov 2023 15:23:38 +0200
Message-ID: <CAA8EJpqCeW8NVcrpwo6JVn0kE2W-QMELB1YH7i7pgOH6qiPbCQ@mail.gmail.com>
Subject: Re: [PATCH 9/9] arm64: dts: qcom: qcm6490-fairphone-fp5: Enable WiFi
To: Luca Weiss <luca.weiss@fairphone.com>, Kalle Valo <kvalo@kernel.org>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>, Andy Gross <agross@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Mathieu Poirier <mathieu.poirier@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, cros-qcom-dts-watchers@chromium.org, 
	~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Rob Herring <robh@kernel.org>, 
	=?UTF-8?Q?Matti_Lehtim=C3=A4ki?= <matti.lehtimaki@gmail.com>, 
	linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

[Added Kalle to the CC list]

On Tue, 31 Oct 2023 at 12:31, Luca Weiss <luca.weiss@fairphone.com> wrote:
>
> On Mon Oct 30, 2023 at 8:26 PM CET, Konrad Dybcio wrote:
> > On 27.10.2023 16:20, Luca Weiss wrote:
> > > Now that the WPSS remoteproc is enabled, enable wifi so we can use it.
> > >
> > > Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> > > ---
> > >  arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts | 4 ++++
> > >  1 file changed, 4 insertions(+)
> > >
> > > diff --git a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
> > > index d65eef30091b..e7e20f73cbe6 100644
> > > --- a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
> > > +++ b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
> > > @@ -713,3 +713,7 @@ &venus {
> > >     firmware-name = "qcom/qcm6490/fairphone5/venus.mbn";
> > >     status = "okay";
> > >  };
> > > +
> > > +&wifi {
> > > +   status = "okay";
> > qcom,ath11k-calibration-variant?
>
> What value would I put there for my device? Based on existing usages
> (mostly for ath10k) I'd say "Fairphone_5"?

I think this is fine.

> And you mean I should add this property in dts before even looking into
> the firmware/calibration side of it?

From my experience some (most?) of the device manufacturers do the
wrong thing here. They do not program a sensible board_id, leaving it
as 0xff or some other semi-random value. The calibration variant is
the only way for the kernel to distinguish between such poor devices.

The kernel will do a smart thing though. If the device-specific
calibration data is not present, it will try to fall back to the
generic data.

-- 
With best wishes
Dmitry

