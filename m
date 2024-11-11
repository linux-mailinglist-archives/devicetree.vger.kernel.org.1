Return-Path: <devicetree+bounces-120804-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BFEA9C4365
	for <lists+devicetree@lfdr.de>; Mon, 11 Nov 2024 18:17:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B53C31F223D6
	for <lists+devicetree@lfdr.de>; Mon, 11 Nov 2024 17:17:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71F671A4F0A;
	Mon, 11 Nov 2024 17:17:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XngVegXb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC3971A302E
	for <devicetree@vger.kernel.org>; Mon, 11 Nov 2024 17:17:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731345466; cv=none; b=MSFjsG85DpR/TGdIWtE9yw47OyJ4avCjd7U5c1bqrWJFiHiWYdawJ5Mig4787FfIMlNui3x5e7p5oZcssIhlpcRbId8tqfWExbSW6Cv+hh0+fQx1nN33eLmFEX8vhEvoQgUEohm6ogscOlBa3WWmXoga/xfcVJ4m0cw7lxgWRww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731345466; c=relaxed/simple;
	bh=EDZ3mHnLpjUN9aHt8g/8fj2vRwXsfUyj8HSmBX+UHAA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=UvbWL/SQZsn+Ldzy9SXpt3u1SfBUgT9gp+Js2jPUUB9uQV2UbrtPjlmvYS0mZ7y0JoHDNzZrwuPJUB7xV/JonBYh7sAQKGz5gap5vSUJVx6UBvELOTnnpn8iSEUK1UKycgLASL9/cF5TmrvaHP/AwpscAgGmuRiLjP0N1a9zpmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XngVegXb; arc=none smtp.client-ip=209.85.219.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f180.google.com with SMTP id 3f1490d57ef6-e291f1d659aso4466023276.3
        for <devicetree@vger.kernel.org>; Mon, 11 Nov 2024 09:17:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731345464; x=1731950264; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EVAoKlYuwhpxemTCYwh1Tkj7l1J7a1J0FZ6n/pZvepA=;
        b=XngVegXby8CiBbvSREBpcITB2/01b72froGCUbGGzuBgxO5CRHvcn/HwtGLKpW32om
         VdQacOJXtPx5RThT06bWtIdOUxLNhMvo3Gbie7Yweb0cG/pYkY4xYOheZ8RKjR1g14gg
         CaELrnXf7bdD+E33xZkiJ/XGuSulFhMzZtNOLyIUuDygHkVIQek42XbLs9+Kp2Y1Vt3e
         hdVE9KlQ5FPRwV0Y1w/jMnoysa0MHFD7hBbVAnV+vlY+75LvLxss5ECRK/ND33KRMDzc
         ngh9vfSiQHx4EQ9HjHvNZc+BklAB2A0XPfnyEirRqvHEEViA2RdGgNlP2lIlkdDTxBf/
         NjMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731345464; x=1731950264;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EVAoKlYuwhpxemTCYwh1Tkj7l1J7a1J0FZ6n/pZvepA=;
        b=lhBfEvZ7WI3jlLFD9//Ly63TV+cieHg9bro/ChJrx+eKkYUVZBh5m2A9dY2Dy2jhiN
         LW+xwwKEHO8fCgD2FGqPFsU66da4WhriCjuCjc4IDTwV8U4iF/8Wg4S8/n1YEKHtTUib
         K+qS+OVGuIHpyqNtyMOD+7K8kkaaUiQ5LtV9dhDTaQtGqdhnzDZr1Gh3/WHVznMTZ4PK
         R0A5rcGn2J1lIv/7COmuWXRB1WLnjPIvjpeQzVJWeupcOLNoyrFDrGUArWwAcxHQm8M3
         Y4c6+dFhnWL1nfGpGErAjyVYqm1sze2oS33FskotdYSMmw+ANblWQOzUEPj6mGkZ3WdJ
         qplw==
X-Forwarded-Encrypted: i=1; AJvYcCXxlnl1TuH+0aEpdqbQbDJaVNvSTQjVQk6XtXR3VdnXHiLgdRIvfQY9c9f8ma5MSM8AdRGHwLk6o9sM@vger.kernel.org
X-Gm-Message-State: AOJu0YwWw7RPkK0yOD1VF6+BaCF22b+5YqDD3aCiL8IaP8MQdlpe6YBL
	FUWZc7aWB4yS5KlgrUaRz5c9U88IwUvtdwd3Y9K9j7iWk8Wgn34RysOTZ//ov1YpTjEcHg+r4sY
	R+I6PiEQGZle/swb/Xk+5hw+DokMAJS+kDlZktQ==
X-Google-Smtp-Source: AGHT+IEIfKEgS8SXTmAU6JUeTqa2pA45BLVA8WQCryDvQyLebwuTTv0iL8Ym7trTq+NnT9YNlkjR5YyXNUj+tHbLJUc=
X-Received: by 2002:a05:690c:dc7:b0:6e3:34b9:961d with SMTP id
 00721157ae682-6eaddfbe812mr106611157b3.38.1731345463717; Mon, 11 Nov 2024
 09:17:43 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241009-patchv3_1-v4-0-cd683a9ca554@quicinc.com>
 <20241009-patchv3_1-v4-1-cd683a9ca554@quicinc.com> <ugkiv4m3etpydvosjkyzwr4qus74xnwccow7xrpvr77kzcx6bv@odlz7dzldqc5>
 <CAL_JsqJ0zoyaZAgZtyJ8xMsPY+YzrbF-YG1vPN6tFoFXQaW09w@mail.gmail.com>
In-Reply-To: <CAL_JsqJ0zoyaZAgZtyJ8xMsPY+YzrbF-YG1vPN6tFoFXQaW09w@mail.gmail.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 11 Nov 2024 19:17:32 +0200
Message-ID: <CAA8EJppkv-BoiX-UQZ2S6iL5KQZMBAMREarHxxhc45dEq5U84g@mail.gmail.com>
Subject: Re: [PATCH v4 1/5] dt-bindings: display/msm: Document MDSS on SA8775P
To: Rob Herring <robh@kernel.org>
Cc: Mahadevan <quic_mahap@quicinc.com>, Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Kalyan Thota <quic_kalyant@quicinc.com>, 
	Jayaprakash Madisetty <quic_jmadiset@quicinc.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 11 Nov 2024 at 19:06, Rob Herring <robh@kernel.org> wrote:
>
> On Fri, Oct 18, 2024 at 6:00=E2=80=AFAM Dmitry Baryshkov
> <dmitry.baryshkov@linaro.org> wrote:
> >
> > On Wed, Oct 09, 2024 at 08:02:01PM +0530, Mahadevan wrote:
> > > Document the MDSS hardware found on the Qualcomm SA8775P platform.
> > >
> > > Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > > Signed-off-by: Mahadevan <quic_mahap@quicinc.com>
> > > ---
> > >  .../bindings/display/msm/qcom,sa8775p-mdss.yaml    | 241 +++++++++++=
++++++++++
> > >  1 file changed, 241 insertions(+)
> > >
> > > diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sa877=
5p-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sa8775p-m=
dss.yaml
> > > new file mode 100644
> > > index 0000000000000000000000000000000000000000..37c04ae6876f873c2cddc=
51b5160b1f54e2b5118
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/display/msm/qcom,sa8775p-mdss=
.yaml
> >
> > [...]
> >
> > > +
> > > +        display-controller@ae01000 {
> > > +            compatible =3D "qcom,sa8775p-dpu";
> > > +            reg =3D <0x0ae01000 0x8f000>,
> > > +                  <0x0aeb0000 0x2008>;
> > > +            reg-names =3D "mdp", "vbif";
> > > +
> > > +            clocks =3D <&gcc GCC_DISP_HF_AXI_CLK>,
> > > +                     <&dispcc_ahb_clk>,
> > > +                     <&dispcc_mdp_lut_clk>,
> > > +                     <&dispcc_mdp_clk>,
> > > +                     <&dispcc_mdp_vsync_clk>;
> > > +            clock-names =3D "bus",
> > > +                          "iface",
> > > +                          "lut",
> > > +                          "core",
> > > +                          "vsync";
> > > +
> >
> > It's been more than a week since Rob reported issues with the bindings.
> > Any updates? Obviously I can not pick up patches with binding errors.
>
> Well, someone picked up this version rather than v5 which appears to
> have fixed it. So, probably need an incremental patch to fix the
> warning in linux-next.

Well, I picked up v5, [1]. I will check if there are warnings and send
a patch targeting linux-next / msm-fixes.

[1] https://gitlab.freedesktop.org/lumag/msm/-/commit/409685915f00


--=20
With best wishes
Dmitry

