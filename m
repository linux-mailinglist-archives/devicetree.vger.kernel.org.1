Return-Path: <devicetree+bounces-14198-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C2327E2A79
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 17:56:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BAA9028147F
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 16:56:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A8A62941E;
	Mon,  6 Nov 2023 16:56:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="aOvqtD/f"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD1EA1D69B
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 16:56:18 +0000 (UTC)
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D801CD45
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 08:56:16 -0800 (PST)
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-5079f9675c6so6258031e87.2
        for <devicetree@vger.kernel.org>; Mon, 06 Nov 2023 08:56:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1699289774; x=1699894574; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=alAxQ7E5oSuVFPStBPyKJDDCOhb3s2DIeYQfUTb7TAs=;
        b=aOvqtD/f1FjuoFeG41m8/2sC36igUqfQt5RLQzL6kLULTY3uQ1RXLsbC4t4jFGyVgY
         XpucJTgUnzTIm/0gs8+/CD3jMDArft+r5XFB/wj436h8RPSzYWQa8RVVlMT/9C2poI7X
         qaH6a83bMFK4+KPmKuJcfX33dTizL1PQoRRuQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699289774; x=1699894574;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=alAxQ7E5oSuVFPStBPyKJDDCOhb3s2DIeYQfUTb7TAs=;
        b=De8+RhG5+zYs9p6QT//h4BaYOlI2txHvZNXxQvCUk3YjhwdjUBB0zJ+k8ODNkVioUg
         SMQeNDSLPV4W7/MAR+2fVYxd4YU6g21DF5QOQfxTBjUafSY9G1d+RzPYCOiZOloeMFL/
         zeRdpE50NnXWlE3iWEsSo6s189IK3aOrfivq2XefDGWQnyHCREBHuXUJTgXG+e2pf26j
         /Mwbw2ooNvkDUkb5zo3yh89V4woMaPPXf4AWzeW+N8xiu7bpId4eECIeDn3mkzf/e13z
         rsPKMZ5tuoJ8xTvlsRuMQ07lwH+ab34skorT3VKVbbLrcrDXIAuIvdsvxRGZewmfPfzx
         xOoA==
X-Gm-Message-State: AOJu0YzgCcu1+Efpa1hKUFTzZVJu2yKrjHzZSiZ4BKvABuSqgjpZ8DAF
	Yi3UfHczKYV0YIOUjaD8ypRctgS2QxHrLJTunjrgzTEw
X-Google-Smtp-Source: AGHT+IERgNQvEMg89hTp2tb0UPapDIyaxKMOTweqjcRDw1PTzhkcgAkCUKEPUQnO3kDMFkd8L+9VpA==
X-Received: by 2002:ac2:4a79:0:b0:503:90d:e0df with SMTP id q25-20020ac24a79000000b00503090de0dfmr21049570lfp.34.1699289774340;
        Mon, 06 Nov 2023 08:56:14 -0800 (PST)
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com. [209.85.167.43])
        by smtp.gmail.com with ESMTPSA id u25-20020ac24c39000000b00507a22cba79sm23838lfq.291.2023.11.06.08.56.13
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Nov 2023 08:56:13 -0800 (PST)
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-507c9305727so5961e87.1
        for <devicetree@vger.kernel.org>; Mon, 06 Nov 2023 08:56:13 -0800 (PST)
X-Received: by 2002:a05:6512:2806:b0:505:6e12:9e70 with SMTP id
 cf6-20020a056512280600b005056e129e70mr156923lfb.6.1699289773464; Mon, 06 Nov
 2023 08:56:13 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231103105440.23904-1-quic_anshar@quicinc.com> <feca8e74-6653-4cec-943d-47302431e1fc@linaro.org>
In-Reply-To: <feca8e74-6653-4cec-943d-47302431e1fc@linaro.org>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 6 Nov 2023 08:56:01 -0800
X-Gmail-Original-Message-ID: <CAD=FV=VTCXSQo3Bo3G7oJ48qA-fUet5rHAzT8WLM1Hx70KyYMA@mail.gmail.com>
Message-ID: <CAD=FV=VTCXSQo3Bo3G7oJ48qA-fUet5rHAzT8WLM1Hx70KyYMA@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: qcom: sc7280: Add capacity and DPC properties
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Ankit Sharma <quic_anshar@quicinc.com>, cros-qcom-dts-watchers@chromium.org, 
	agross@kernel.org, andersson@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, quic_ashayj@quicinc.com, 
	quic_atulpant@quicinc.com, quic_rgottimu@quicinc.com, 
	quic_shashim@quicinc.com, quic_pkondeti@quicinc.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Sat, Nov 4, 2023 at 4:52=E2=80=AFAM Konrad Dybcio <konrad.dybcio@linaro.=
org> wrote:
>
>
>
> On 11/3/23 11:54, Ankit Sharma wrote:
> > The "capacity-dmips-mhz" and "dynamic-power-coefficient" are
> > used to build Energy Model which in turn is used by EAS to take
> > placement decisions. So add it to SC7280 soc.
> >
> > Signed-off-by: Ankit Sharma <quic_anshar@quicinc.com>
> > ---Hi, thanks for this patch
>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
>
> I performed a quick grep in arch/arm64/boot/dts/qcom and noticed
> that at least one of these values is missing for:
>
> rg -l --files-without-match dynamic-power-coeff $(rg cpu@ -l) | sort
> ipq5018.dtsi (homogeneous cluster)
> ipq5332.dtsi (homogeneous cluster)
> ipq6018.dtsi (homogeneous cluster)
> ipq8074.dtsi (homogeneous cluster)
> ipq9574.dtsi (homogeneous cluster)
> msm8916.dtsi (homogeneous cluster)
> msm8939.dtsi
> msm8953.dtsi
> msm8976.dtsi
> msm8994.dtsi
> msm8996.dtsi
> msm8998.dtsi
> qcs404.dtsi (homogeneous cluster)
> qdu1000.dtsi (homogeneous cluster)
> sa8775p.dtsi
> sc7280.dtsi
> sc8180x.dtsi
> sc8280xp.dtsi
> sdm630.dtsi
> sm4450.dtsi
> sm6125.dtsi
> sm6375.dtsi
> sm8350.dtsi
> sm8450.dtsi
>
> rg -l --files-without-match capacity-dmips $(rg cpu@ -l) | sort
> ipq5018.dtsi (homogeneous cluster)
> ipq5332.dtsi (homogeneous cluster)
> ipq6018.dtsi (homogeneous cluster)
> ipq8074.dtsi (homogeneous cluster)
> ipq9574.dtsi (homogeneous cluster)
> msm8916.dtsi (homogeneous cluster)
> msm8939.dtsi
> msm8994.dtsi
> qcs404.dtsi (homogeneous cluster)
> qdu1000.dtsi (homogeneous cluster)
> sa8775p.dtsi
> sc7280.dtsi
> sm4450.dtsi
> sm6375.dtsi
> sm8350.dtsi
> sm8450.dtsi
>
> Where platforms with a single, homogeneous cluster likely don't
> benefit from EAS..
>
> Is there any chance you could dig up the correct values, for at least
> some of these platforms? Or would you know whom to ask?
>
> FWIW the one we're missing the most is sc8280xp..

FWIW, I wrote up a longwinded commit message when I added these values
for sc7180. See commit 82ea7d411d43 ("arm64: dts: qcom: sc7180: Base
dynamic CPU power coefficients in reality").

The short of it is that if you have hardware and a basic "smart
battery" to measure power consumption it's pretty easy for anyone to
add some reasonable numbers.

-Doug

