Return-Path: <devicetree+bounces-87441-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 204209397C2
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2024 03:10:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 54E7AB217B3
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2024 01:10:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 193A913211F;
	Tue, 23 Jul 2024 01:10:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pfCcvHWK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com [209.85.128.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D5E73EA83
	for <devicetree@vger.kernel.org>; Tue, 23 Jul 2024 01:10:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721697007; cv=none; b=EPhTki+jiuC8tzONXMRWJNVe7zSOhD0zRF2dYjASee2aUxRNMri22AKxGWMsp4DGpe5V5SaIBnJ8GG729DnRecrV/bmsMSDK/SbltjQkmKsEX/Y3I3y/hILPX6t+BNAyLHt/TE7ZW1bGfT8dsjIvh5xVS+2O6XS1zcgEGlSRupc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721697007; c=relaxed/simple;
	bh=F/YVPIt96eiD4fDEqIVV0BjgbhD3AMknFfl6Pf7/Seo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kBU+5FzVfP60AksLE35yEiRK2GjahLQcqi8SrbRnLPkROC4DE8WP0jomX2cnwbbPjo+ybAIHO2i5Q97fF1oD7JvjTcKub133j8xfRqIBgisha4gRKg06YF0tPhf6Ye61c9kiIo5IkMrOJv9mTnQXYXoOa1v3T8cqfrwc7+oClhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pfCcvHWK; arc=none smtp.client-ip=209.85.128.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-6634f0afe05so54758787b3.0
        for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 18:10:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721697003; x=1722301803; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=M+1mttumgraTmz8as/o8R81jMF1pkFas9HuIkAF6YD8=;
        b=pfCcvHWKnncLvDK77wOZxrlYBUxm4zUEWiym7FZUc4hLGCfIZusQgzm/EuvrqrMZmf
         fxUZFGn4ZgNKNkFbtjdAH5SirzedHAI5SSq7eKRFI8SiRWAhnS2yJ8D0upOPR/DziyON
         UDBc5Ukzlx2LRSZCTkSx6q2yHOIKmnbppzjbKENRtNGpWnux86axCDc0qcJg+oE7PEVi
         hTJ77yFXvsWtjR8cCjWPhI21hPLziqVEJX7QS4k0O6qzgXf5hvv3X40ppnjxouPU+Z9V
         26XldUzrLd/U4PsNqkiOgagsBTrnJs7r0bF/GHcrRUxgdlSpsiGlIQqffVLTAtV2YG8/
         5+1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721697003; x=1722301803;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=M+1mttumgraTmz8as/o8R81jMF1pkFas9HuIkAF6YD8=;
        b=tgytdi3MyNGiukSQFsiFNCvjJpNXhtxFAc/uMdmpM7wq92sl6QFWdnpaV1yniUQVrK
         tyYzxtOO4QcRizFHY+bwO//nxE2IgDzCbKcE96u8mkveshfQUqW1jEdl80uZum9sXnBV
         /Gxu28V/oYEhyX1SWnFeD2fKkW/JXAZdHxusklJzW8qDw8w/VEnZG2MF+aVuNyd+mLB5
         pykWU50oL7sq+dlGwslr/0bs6hnoT82hWMomom3JxuYgbOU5R5crA/J/ZQTqUXAdlw+1
         /tnrKpL1aWHOum7uR8M5g+kHDVOTRzGGT+GJJtwE3P1ojPb0p6x+dS7S/vzBwM6d28Tm
         KX5Q==
X-Forwarded-Encrypted: i=1; AJvYcCXtuHqQQRQIJLwvhz+f9XB7mcHzmbu2o5JSU28UmTxabRqEfLwy0byDg3iPNnmuQEl2kSxgQN77mObNEJPiOgpSXwwQ1X969+PB1w==
X-Gm-Message-State: AOJu0YwBd8y9tWidvK1DSv1oixu27mt8MZTwXa2OA5UYKPjyyvqBXeN2
	IXuC1OaExGSkuGoNJ5XYINVx6rUpvni20LAnupz8w535JkBDef6KYMJX4u2FIimE1KqIqjzUZZ0
	Vu7rv92EfETQDsxuLXAQdkibh4yAVYy1+n0sOHQ==
X-Google-Smtp-Source: AGHT+IFWh7F9HmWfROqNp44wr2VtiezP9UnvrKwkDXP8VHIqTEKzjfkOOrND9UfYVARn0ktR6qDNF/AN9J+nSHMSp2M=
X-Received: by 2002:a05:690c:4087:b0:651:a00f:698a with SMTP id
 00721157ae682-66a65e6516amr86737777b3.38.1721697003132; Mon, 22 Jul 2024
 18:10:03 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240722-miix630-support-v1-0-a6483cfe8674@linaro.org>
 <20240722-miix630-support-v1-1-a6483cfe8674@linaro.org> <cac3d7ba-2a62-479d-94c2-c6dc4d7a5ba2@linaro.org>
In-Reply-To: <cac3d7ba-2a62-479d-94c2-c6dc4d7a5ba2@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 23 Jul 2024 04:09:52 +0300
Message-ID: <CAA8EJprROf-aJgJvUMb3D+dCzOUO-eRzM3khM6ZY8b+z+_gByA@mail.gmail.com>
Subject: Re: [PATCH 1/4] arm64: dts: qcom: msm8998-lenovo-miix-630: enable touchscreen
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jeffrey Hugo <quic_jhugo@quicinc.com>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 23 Jul 2024 at 02:22, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
> On 22.07.2024 1:57 PM, Dmitry Baryshkov wrote:
> > There is no point in keeping touchscreen disabled, enable corresponding
> > i2c-hid device.
> >
> > 04F3:2608 Touchscreen as /devices/platform/soc@0/c179000.i2c/i2c-0/0-0010/0018:04F3:2608.0001/input/input1
> > 04F3:2608 as /devices/platform/soc@0/c179000.i2c/i2c-0/0-0010/0018:04F3:2608.0001/input/input2
> > 04F3:2608 as /devices/platform/soc@0/c179000.i2c/i2c-0/0-0010/0018:04F3:2608.0001/input/input3
> > 04F3:2608 Stylus as /devices/platform/soc@0/c179000.i2c/i2c-0/0-0010/0018:04F3:2608.0001/input/input4
> >
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >  .../boot/dts/qcom/msm8998-lenovo-miix-630.dts      | 28 ++++++++++++++++++++++
> >  1 file changed, 28 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/msm8998-lenovo-miix-630.dts b/arch/arm64/boot/dts/qcom/msm8998-lenovo-miix-630.dts
> > index a105143bee4a..118c55f5bcfd 100644
> > --- a/arch/arm64/boot/dts/qcom/msm8998-lenovo-miix-630.dts
> > +++ b/arch/arm64/boot/dts/qcom/msm8998-lenovo-miix-630.dts
> > @@ -11,6 +11,24 @@ / {
> >       chassis-type = "convertible";
> >  };
> >
> > +&blsp1_i2c5 {
> > +     clock-frequency = <400000>;
> > +     status = "okay";
> > +
> > +     tsc1: hid@10 {
> weird (and unused label)
>
> very non-specific node name too
>
> > +             compatible = "hid-over-i2c";
> > +             reg = <0x10>;
> > +             hid-descr-addr = <0x1>;
> > +
> > +             interrupts-extended = <&tlmm 125 IRQ_TYPE_LEVEL_LOW>;
> > +
> > +             pinctrl-0 = <&i2c5_hid_active>;
> > +             pinctrl-names = "default";
> > +
> > +             wakeup-source;
>
> double tap to wake? tap to wake?
>
> > +     };
> > +};
> > +
> >  &blsp1_i2c6 {
> >       status = "okay";
> >
> > @@ -35,3 +53,13 @@ &remoteproc_mss {
> >  &sdhc2 {
> >       cd-gpios = <&tlmm 95 GPIO_ACTIVE_HIGH>;
> >  };
> > +
> > +&tlmm {
> > +     i2c5_hid_active: i2c5-hid-active-state {
> > +             pins = "gpio125";
> > +             function = "gpio";
> > +
> > +             bias-pull-up;
> > +             drive-strength = <2>;
>
> Since there are no other pin definitions, you can do better and not
> copy the old rotten style ;)

Both node and pinctrl were c&p from c630. But was is rotten here?


-- 
With best wishes
Dmitry

