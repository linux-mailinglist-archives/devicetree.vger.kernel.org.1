Return-Path: <devicetree+bounces-32839-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 77B9A830C65
	for <lists+devicetree@lfdr.de>; Wed, 17 Jan 2024 19:06:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 01E531F21EEE
	for <lists+devicetree@lfdr.de>; Wed, 17 Jan 2024 18:06:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA6C922EF5;
	Wed, 17 Jan 2024 18:06:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PdkAAOxN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com [209.85.128.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 152F122EF4
	for <devicetree@vger.kernel.org>; Wed, 17 Jan 2024 18:06:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705514769; cv=none; b=loY0ZqiSU+ZKP28r80xnBG8Ozmrug9JIO7d1q/RURnegqJmAyv74JtD3wIouWjoe0ipCvXdvABtVmyG1uzW+WKWCSbMidRzuKHpRcomOnlRz9SP7melBaep43tfg8RWKQdS2kvfOIczlhBe2fgGKb+a4cLyMIEodq8UialujJjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705514769; c=relaxed/simple;
	bh=+xoMF1wZaHymim5riNdD9I4xLtRCnu68F4GVPtWeSYs=;
	h=Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Google-Smtp-Source:X-Received:MIME-Version:
	 References:In-Reply-To:From:Date:Message-ID:Subject:To:Cc:
	 Content-Type:Content-Transfer-Encoding; b=Il9O4oSMdjstlbE3W999uEwPCfLqMlap3gmre0xhqTnMhmlxeV6WKLA5C6ncra4fylSN7uJly3URhaGgDRg8CDhmHA3U6WNgC8lZ9m5+Jue9vJSTLFu/H9+Yy2GRgfa+HGA4xbwuuyEa9V9Lw8uwKLVZBkOzcWN96lTiUP53/j8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PdkAAOxN; arc=none smtp.client-ip=209.85.128.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-5ff821b9acfso812197b3.1
        for <devicetree@vger.kernel.org>; Wed, 17 Jan 2024 10:06:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705514767; x=1706119567; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YFkmgKfAYW4PQNSghqjXT5WrCqzlgmtfGOBlxJ300S0=;
        b=PdkAAOxNnROEac8xqoEQ5gHmw9pVfk+ESH9ed+iDxWv0ruNrX53PCP/q68f4ydhDt3
         YRnauDr9O6jfmymNvRLbtBvUHAuNXT6dpW6+Gid+Ag+hqpYreYrXyFSqzOMX/X8m5g2e
         eDLZ4VHGL7irAmEmwuEz35UhLM4ZLD5Z2QNODlBBhtJ7qviEfOL52bc9T20Tc1ix375t
         V6GtMXMOOHo5NkPwau17bWcqO4SCcUnvPENDGgEKg664CZV4KTdIQxqWcpSEOyMSGua6
         xPY9KhQSwlk6hsppMyymTUjN0vR3u9c7SwLlp+UE7JcNFKPLG9TWsdRvUGaVq/wj9ikE
         dldg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705514767; x=1706119567;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YFkmgKfAYW4PQNSghqjXT5WrCqzlgmtfGOBlxJ300S0=;
        b=HNfHAKkylmItFgp9Eb+KDihImqXGhEwGlKx4OZTkmm6nNZWm3WT3Pez6nIO5bqQi1s
         V6xz6T6vepAvucWYBuXYLif8KgUIl2CzXRi0ybrK1Vsq7Sv5WIZefgKZI0LTelwXKWVa
         Xp0vRWY0x6VYrmytxRloBxKWbGc2D5Nt9adSgMOyXorY81IcNAiugjGkUxt9Qn+CFvWt
         F7erD3SDLrSHaTCLhoHxj5FkaQlQwTwNHPJwXYqbBQRP4J3pFEtL4wnlOtrE2V/HsTd7
         qjXUMmgN6NL2H8o19mTvz2bHCaa3JcFKMvzcg4BjAP/ECTrt6YJ1HtpuoKcr2g/Y876I
         u2ug==
X-Gm-Message-State: AOJu0Yy/NihNJ3Dom/qZEiO7K6U90V5vl+mImRVWWSANSUoe12F+qrSx
	mq3aeLfnfsYmglmvHpu3ifxT2gIjD2Q6IcMTFJswn4CX6NFtSQ==
X-Google-Smtp-Source: AGHT+IFDfNBV5xuLrOdDKdl+6yxpolFF1sCHEtmZ0DxCyYUK0PFmo0Qg0krlc8DqAXWYyh3jmVvY9UrWsNi4UR3YQ3w=
X-Received: by 2002:a81:f80b:0:b0:5f7:c08:5c66 with SMTP id
 z11-20020a81f80b000000b005f70c085c66mr6443078ywm.81.1705514766990; Wed, 17
 Jan 2024 10:06:06 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240113-pmi632-typec-v2-0-182d9aa0a5b3@linaro.org>
 <20240113-pmi632-typec-v2-13-182d9aa0a5b3@linaro.org> <1d0d325d-d15e-4e86-b8e3-9f91b99e78bf@linaro.org>
 <CAA8EJpo7qH43FyvO-N9vFH=6K3rMdPpnGp9w6pGW2cz4bMK+0g@mail.gmail.com> <28e019ce-7612-4b10-8068-17c3fef4dba8@linaro.org>
In-Reply-To: <28e019ce-7612-4b10-8068-17c3fef4dba8@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 17 Jan 2024 20:05:56 +0200
Message-ID: <CAA8EJpoXUMehrcf8sXKPhk7qb4SGXT960SUFHX5AUt1wxxHepw@mail.gmail.com>
Subject: Re: [PATCH v2 13/15] arm64: dts: qcom: pmi632: define USB-C related blocks
To: "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>, Bjorn Andersson <andersson@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Guenter Roeck <linux@roeck-us.net>, 
	Heikki Krogerus <heikki.krogerus@linux.intel.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-phy@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 17 Jan 2024 at 19:23, Bryan O'Donoghue
<bryan.odonoghue@linaro.org> wrote:
>
> On 15/01/2024 10:43, Dmitry Baryshkov wrote:
> > On Mon, 15 Jan 2024 at 12:00, Konrad Dybcio <konrad.dybcio@linaro.org> =
wrote:
> >>
> >> On 13.01.2024 21:55, Dmitry Baryshkov wrote:
> >>> Define VBUS regulator and the Type-C handling block as present on the
> >>> Quacomm PMI632 PMIC.
> >>>
> >>> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> >>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> >>> ---
> >>>   arch/arm64/boot/dts/qcom/pmi632.dtsi | 30 +++++++++++++++++++++++++=
+++++
> >>>   1 file changed, 30 insertions(+)
> >>>
> >>> diff --git a/arch/arm64/boot/dts/qcom/pmi632.dtsi b/arch/arm64/boot/d=
ts/qcom/pmi632.dtsi
> >>> index 4eb79e0ce40a..d6832f0b7b80 100644
> >>> --- a/arch/arm64/boot/dts/qcom/pmi632.dtsi
> >>> +++ b/arch/arm64/boot/dts/qcom/pmi632.dtsi
> >>> @@ -45,6 +45,36 @@ pmic@2 {
> >>>                #address-cells =3D <1>;
> >>>                #size-cells =3D <0>;
> >>>
> >>> +             pmi632_vbus: usb-vbus-regulator@1100 {
> >>> +                     compatible =3D "qcom,pmi632-vbus-reg", "qcom,pm=
8150b-vbus-reg";
> >>> +                     reg =3D <0x1100>;
> >>> +                     status =3D "disabled";
> >>> +             };
> >>> +
> >>> +             pmi632_typec: typec@1500 {
> >>> +                     compatible =3D "qcom,pmi632-typec";
> >>> +                     reg =3D <0x1500>;
> >>> +                     interrupts =3D <0x2 0x15 0x00 IRQ_TYPE_EDGE_RIS=
ING>,
> >>> +                                  <0x2 0x15 0x01 IRQ_TYPE_EDGE_BOTH>=
,
> >>> +                                  <0x2 0x15 0x02 IRQ_TYPE_EDGE_RISIN=
G>,
> >>> +                                  <0x2 0x15 0x03 IRQ_TYPE_EDGE_BOTH>=
,
> >>> +                                  <0x2 0x15 0x04 IRQ_TYPE_EDGE_RISIN=
G>,
> >>> +                                  <0x2 0x15 0x05 IRQ_TYPE_EDGE_RISIN=
G>,
> >>> +                                  <0x2 0x15 0x06 IRQ_TYPE_EDGE_BOTH>=
,
> >>> +                                  <0x2 0x15 0x07 IRQ_TYPE_EDGE_RISIN=
G>;
> >> This differs from the downstream irq types:
> >>
> >> <0x2 0x15 0x0 IRQ_TYPE_EDGE_BOTH>,
> >> <0x2 0x15 0x1 IRQ_TYPE_EDGE_BOTH>,
> >> <0x2 0x15 0x2 IRQ_TYPE_EDGE_RISING>,
> >> <0x2 0x15 0x3 IRQ_TYPE_EDGE_RISING>,
> >> <0x2 0x15 0x4 IRQ_TYPE_EDGE_BOTH>,
> >> <0x2 0x15 0x5 IRQ_TYPE_EDGE_RISING>,
> >> <0x2 0x15 0x6 IRQ_TYPE_EDGE_RISING>,
> >> <0x2 0x15 0x7 IRQ_TYPE_EDGE_RISING>;
> >
> > I must admit, I copied the IRQs from the pm8150b rather than from the
> > vendor kernel.
> >
> > Bryan, any idea which set of flags is more correct?
>
> My =E2=82=AC says 1:1 with the downstream pmi632.dtsi
>
> qcom,typec@1500 {
>      reg =3D <0x1500 0x100>;
>      interrupts =3D <0x2 0x15 0x0 IRQ_TYPE_EDGE_BOTH>,
>                   <0x2 0x15 0x1 IRQ_TYPE_EDGE_BOTH>,
>                   <0x2 0x15 0x2 IRQ_TYPE_EDGE_RISING>,
>                   <0x2 0x15 0x3 IRQ_TYPE_EDGE_RISING>,
>                   <0x2 0x15 0x4 IRQ_TYPE_EDGE_BOTH>,
>                   <0x2 0x15 0x5 IRQ_TYPE_EDGE_RISING>,
>                   <0x2 0x15 0x6 IRQ_TYPE_EDGE_RISING>,
>                   <0x2 0x15 0x7 IRQ_TYPE_EDGE_RISING>;
>
>      interrupt-names =3D "typec-or-rid-detect-change",

My 2c say that EDGE_BOTH doesn't make sense for or-rid-detect-change
at least. It is an "or" of several _pulse_ interrupts, so there is no
need to detect the falling edge.

>                        "typec-vpd-detect",

both, correct in both cases

>                        "typec-cc-state-change",

pulse interrupt, raising.

>                        "typec-vconn-oc",

It is a 'level' interrupt, so we probably want to detect both rising
and falling edges.

>                        "typec-vbus-change",

"pulse" interrupt =3D> rising, not both, correct in PM8150B.

>                        "typec-attach-detach",

pulse interrupt, rising only.

>                        "typec-legacy-cable-detect",

level, should be both as in PM8150B.

>                        "typec-try-snk-src-detect";
> };

Pulse interrupt being raised when there is either successful or
unsuccessful try.SNK or try.SRC.

So, after consulting the documentation, I believe the flags being a
part of this patch (and in pm8150b.dtsi) are correct.

--=20
With best wishes
Dmitry

