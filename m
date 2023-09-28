Return-Path: <devicetree+bounces-4388-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D72B7B2531
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 20:24:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id E9D6C28272F
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 18:24:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7448D516CB;
	Thu, 28 Sep 2023 18:24:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6058051226
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 18:24:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D9D28C433B8;
	Thu, 28 Sep 2023 18:24:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695925487;
	bh=h9io9sW/9EKNfXuhbVDmG/ERea8sgTVkea3CXbxpcMM=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=aAdZvCdpTxtSZe7T3jbt37NB8EhqfCnx/8i1HWRu9uqCjCUq7iPbdaQ4od2pz/EKo
	 cR/ZfEwnJ6heg0PqVJCAqwE9llx6nUjocN7gHvKhcMBSd7KZhF2AIdPZw6liFjPj1Q
	 sbuN88hyxQdkcRYBeSsqvCzJ9DN9zQwoEJktVc52eymvWE8jtCSLCTQJ0DaH5setXF
	 kcJbpWcXJHnDdk+tpvsOr4c3kOzc8LkLxpfk+K9qZq0Hx5Go+yJWYj0qwpLYg969CE
	 59qxx2dg0VoX/96mNpYEWsboAtdT+nLVsiRWUt0cnKVSg06WS+a5QRc4trB775fjxn
	 FbC2Kkym6D08A==
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-5041cc983f9so21262839e87.3;
        Thu, 28 Sep 2023 11:24:47 -0700 (PDT)
X-Gm-Message-State: AOJu0YxTFa8mVXh+J3zbggtx+cXIEOWB2hbzRbe8PODpZi/SYW+QZaoZ
	cdIbdPuc9W87UIOvwwtILGwW21AYWi+gBwQCrA==
X-Google-Smtp-Source: AGHT+IFIjVbmeOmoi1Ex9wWzryBy0huO5vhLMaCPZ42y3Diqs0tyk+JP/B6O/jxBFtqJcFlDkre6GZiUXkBPfrtKulA=
X-Received: by 2002:a05:6512:234a:b0:500:7fc1:414b with SMTP id
 p10-20020a056512234a00b005007fc1414bmr2158838lfu.25.1695925485862; Thu, 28
 Sep 2023 11:24:45 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230723-sm6125-dpu-v4-0-a3f287dd6c07@somainline.org> <20230723-sm6125-dpu-v4-17-a3f287dd6c07@somainline.org>
In-Reply-To: <20230723-sm6125-dpu-v4-17-a3f287dd6c07@somainline.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 28 Sep 2023 13:24:33 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJymkURYKONU4b9g7QHi7LzpbhLmo8i1WEHy995vfdS6w@mail.gmail.com>
Message-ID: <CAL_JsqJymkURYKONU4b9g7QHi7LzpbhLmo8i1WEHy995vfdS6w@mail.gmail.com>
Subject: Re: [PATCH v4 17/17] arm64: dts: qcom: sm6125-seine: Configure MDSS,
 DSI and panel
To: Marijn Suijten <marijn.suijten@somainline.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Krishna Manikandan <quic_mkrishn@quicinc.com>, Loic Poulain <loic.poulain@linaro.org>, 
	Konrad Dybcio <konrad.dybcio@somainline.org>, ~postmarketos/upstreaming@lists.sr.ht, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Martin Botka <martin.botka@somainline.org>, 
	Jami Kettunen <jami.kettunen@somainline.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Krzysztof Kozlowski <krzk@kernel.org>, linux-clk@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	Lux Aliaga <they@mint.lgbt>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Jul 23, 2023 at 11:09=E2=80=AFAM Marijn Suijten
<marijn.suijten@somainline.org> wrote:
>
> Enable MDSS and DSI, and configure the Samsung SOFEF01-M ams597ut01
> 6.0" 1080x2520 panel.
>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> Signed-off-by: Marijn Suijten <marijn.suijten@somainline.org>
> ---
>  .../dts/qcom/sm6125-sony-xperia-seine-pdx201.dts   | 59 ++++++++++++++++=
++++++
>  1 file changed, 59 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/sm6125-sony-xperia-seine-pdx201.dts=
 b/arch/arm64/boot/dts/qcom/sm6125-sony-xperia-seine-pdx201.dts
> index 82b0da5bb794..62c3e6d8147c 100644
> --- a/arch/arm64/boot/dts/qcom/sm6125-sony-xperia-seine-pdx201.dts
> +++ b/arch/arm64/boot/dts/qcom/sm6125-sony-xperia-seine-pdx201.dts
> @@ -179,6 +179,43 @@ &i2c3 {
>         /* Cirrus Logic CS35L41 boosted audio amplifier @ 40 */
>  };
>
> +&mdss {
> +       status =3D "okay";
> +};
> +
> +&mdss_dsi0 {
> +       vdda-supply =3D <&pm6125_l18>;
> +       status =3D "okay";
> +
> +       panel@0 {
> +               compatible =3D "samsung,sofef01-m-ams597ut01";

This needs to be documented.

Rob

