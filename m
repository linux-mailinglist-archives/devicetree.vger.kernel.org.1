Return-Path: <devicetree+bounces-27331-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B8FFF819F1D
	for <lists+devicetree@lfdr.de>; Wed, 20 Dec 2023 13:35:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 58B781F27C3B
	for <lists+devicetree@lfdr.de>; Wed, 20 Dec 2023 12:35:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8ACB225A5;
	Wed, 20 Dec 2023 12:35:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iYfBydBf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f43.google.com (mail-oa1-f43.google.com [209.85.160.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 359CD24B24
	for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 12:35:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oa1-f43.google.com with SMTP id 586e51a60fabf-1efabc436e4so3575595fac.1
        for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 04:35:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703075700; x=1703680500; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Za/srdZEvydkDd9GP57FYexKc8cVGgvI7UMEoZsAbSI=;
        b=iYfBydBf6S5WgS/GLXJG/dG3YWdZUpq+oIkQrEoA+Lukg3QjYxsnP8mq7W9dSom7jI
         bMJFznG/+CuDxv0jL77viKwKD4UFvAhQx7LZqZMfRrFpOGDmymP/EQ2ud3pUU0OTY90B
         VlD8zhHQ1q8aS9UHZG4ZtxDdxvJbYBj6DHE+lKyOARaPgTrRk6nFeCf+ntyve3tQZhSz
         sXqZdxvqIQsiKubDiPbfbbV53d9hoP4/gJmUsU2aW8yLS7drWc+PT0IroBsm5EFWiMih
         neqpRLm6fLvQkHz5fXScs2yT4kizF1Mun7wuFOPnnJ7t692YfIAViS22nL0KhXjIYXP0
         qZVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703075700; x=1703680500;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Za/srdZEvydkDd9GP57FYexKc8cVGgvI7UMEoZsAbSI=;
        b=vGXFOZdrfW13pvR9XCsnbpFsQShcjyyzhJvvCHV+iUr+F7Vh89V5NwBpqkZUXiDKWC
         12/++TTA+RSWgzN+QOyY8SiPuwoSLXoPwMtj76CSzkVuilrUihom2gXRzI3TpazJdSDy
         Hewtobn04/TJSsRITd0CIkVPOhLk2KmjV5JOVUjF9H86S1qxtzHjFJ0L/31qcCzxJz9I
         sezCKEW9CnAv27ZWm7RGKU8P6yG+/rXGUMruRs7a3qgCKLtu4T6FqT5dZvXkzo2POy/b
         cj6gKrjB2cfXUI9VtvVceG0sGxiD59853nepXZVXbT5FMr5Q6LHydpsQowIgC4CE4Cy9
         1bZA==
X-Gm-Message-State: AOJu0Ywi0Hw9HpvTZ0BWG1gzFoeqMf55iBRcx9rTjCP6paS1A6aSR4Hg
	/RhHwj2UNdj/UBF9tw8t5Kc1KQeJM3TJDm2V7SOQSw==
X-Google-Smtp-Source: AGHT+IGxXsV+UOWI6/zxUOXBRP2qxFCt2iJsyon10EsYM//jKSJ+bnMC3b7Q3+MN4DCHoPJu9jD4vWdbCP4Da9UIZHE=
X-Received: by 2002:a05:6871:5211:b0:204:13cd:74d4 with SMTP id
 ht17-20020a056871521100b0020413cd74d4mr408167oac.18.1703075700321; Wed, 20
 Dec 2023 04:35:00 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231220114225.26567-1-quic_kbajaj@quicinc.com>
 <20231220114225.26567-2-quic_kbajaj@quicinc.com> <d7ae374a-7269-4992-ad44-18b2516cad42@linaro.org>
 <CAA8EJppYuXpqKpTcUda1LBFfBmm40-VpC+3heJqoL82kS=+erA@mail.gmail.com> <519138d9-2434-4357-abec-f400b87755c6@linaro.org>
In-Reply-To: <519138d9-2434-4357-abec-f400b87755c6@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 20 Dec 2023 14:34:49 +0200
Message-ID: <CAA8EJpoEwU_S05EdO+sXekE355d5vAQCO+Vt3iH9yibhqOhH_A@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: dts: qcom: qcm6490-idp: Enable various remoteprocs
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Komal Bajaj <quic_kbajaj@quicinc.com>, 
	Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 20 Dec 2023 at 14:29, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
> On 20.12.2023 13:18, Dmitry Baryshkov wrote:
> > On Wed, 20 Dec 2023 at 13:46, Krzysztof Kozlowski
> > <krzysztof.kozlowski@linaro.org> wrote:
> >>
> >> On 20/12/2023 12:42, Komal Bajaj wrote:
> >>> Enable the ADSP, CDSP, MPSS and WPSS that are found on the SoC.
> >>>
> >>> Signed-off-by: Komal Bajaj <quic_kbajaj@quicinc.com>
> >>> ---
> >>>  arch/arm64/boot/dts/qcom/qcm6490-idp.dts | 20 ++++++++++++++++++++
> >>>  1 file changed, 20 insertions(+)
> >>>
> >>> diff --git a/arch/arm64/boot/dts/qcom/qcm6490-idp.dts b/arch/arm64/boot/dts/qcom/qcm6490-idp.dts
> >>> index 03e97e27d16d..ad78efa9197d 100644
> >>> --- a/arch/arm64/boot/dts/qcom/qcm6490-idp.dts
> >>> +++ b/arch/arm64/boot/dts/qcom/qcm6490-idp.dts
> >>> @@ -419,6 +419,26 @@ &qupv3_id_0 {
> >>>       status = "okay";
> >>>  };
> >>>
> >>> +&remoteproc_adsp {
> >>> +     firmware-name = "qcom/qcm6490/adsp.mdt";
> >>
> >> Why MDT not MBN?
> >
> > I agree here. NAK until this is .mbn. Please follow the example of
> > other boards when you write patches.
> >
> >>
> >> I don't see these files in linux-firmware and your cover letter did not
> >> explain anything around their submission. What's the status on that part?
> >
> > This isn't usually required, is it? I mean, the firmware can come from
> > linux-firmware, from the device partition or in any other way. With
> > the FW_LOADER_USER_HELPER this becomes just the key string used to
> > identify firmware to be loaded.
> I think Krzysztof referenced the fact that the Qualcomm-made boards
> usually came with redistributable firmware.
>
> As far as my 5 cents go, not submitting the files to linux-firmware.git
> only harms the user experience, so I'd always advocate for it, whenever
> that is actually possible.

Me too. I think this is work in progress on the Qualcomm side, see the
discussion at https://github.com/Linaro/meta-qcom/pull/551 .

-- 
With best wishes
Dmitry

