Return-Path: <devicetree+bounces-47965-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2418786F6FF
	for <lists+devicetree@lfdr.de>; Sun,  3 Mar 2024 21:17:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4B4401C209E5
	for <lists+devicetree@lfdr.de>; Sun,  3 Mar 2024 20:17:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D115479DBE;
	Sun,  3 Mar 2024 20:17:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WaISdvOo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com [209.85.219.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2103067C4B
	for <devicetree@vger.kernel.org>; Sun,  3 Mar 2024 20:17:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709497062; cv=none; b=qwqoZWLMPTFI+Z5smuUbyIR6DMaE5IR/t/pZoiP3LhmFxIlzc2zTCSizTFwTk4/5aVMEfnQN/HdPY9qDFoREZ9ufVG6sSxik68Of96UdtcdZYn7QVTog0Taj7RaX5N+mM7GvYOO5z6ocnObwBY2YOVkHr9biurkUZ/C0yh51P7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709497062; c=relaxed/simple;
	bh=Pr/EGbS52tudhJ/h/9+tZQSoXN2fkwJrEeJMk/YQ648=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tHhf9/E7rHrBiv41HkLN2G8Ddb2F6ITkkE95ZRMJGKVjWBCisbJnyxkvIL7dGh6jXMpbNwr6TFMFovJz2mD31IJ2QG6oct7yNwpCsHnPM+qYvl0yRL7Ptg6Br3wugnX7fbjufjmWyuM2p5PfL4Wk+tM+L3/cs7iSHvu3QsDjzJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WaISdvOo; arc=none smtp.client-ip=209.85.219.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f169.google.com with SMTP id 3f1490d57ef6-dcbcea9c261so3830393276.3
        for <devicetree@vger.kernel.org>; Sun, 03 Mar 2024 12:17:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709497060; x=1710101860; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=0oLMJ7QyQW9M1dcmvX6Tku2vCY05PL1Xxf4L46VwXmk=;
        b=WaISdvOoxG3aBepSnEyZUPAWYtz/cshUCQKS7IoB/uq3FfvAZdKXObpIwdLPf9BHtk
         1bHDpWL/QfiGLTLfDvrUQLtUgRovgSMf4xJKKOReHp6swyzOIXSGDey/7sqcRdlnY98V
         TEqDcy2LqRpx4EBnXfYZt1wi21I54LeBllBmORD5VukpFoqVWk8ZbpEeQZFIzwHI3YIb
         V9dva1VV8/bX9GF1vtPVLCj0AdpFwG4J0mYMhtFrOAT90+4dqJt1k9BBHjiO+lvCaurB
         w4slsIHibjSDRYRjC7zg3M2OT2Mr6QKta1XAKd0a83s6gdEAbrciFX+p5kzbPGTyN7Hm
         gfAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709497060; x=1710101860;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0oLMJ7QyQW9M1dcmvX6Tku2vCY05PL1Xxf4L46VwXmk=;
        b=WdwLuBAFBzgXp3Oj2bLc8y7sQY6uWsHDny/ZDy/eMU+jvHN4lBe2/a2CEnxdU6cnWk
         AFnc17ud0WimiCQHMmnsv15k9MjosJ9hWiOGcKn+PA/SN5GfJ/o2bLM+TIVEuDnlUFVb
         oj3FPFkR/lSixYMOCd6cxvmY5OzlvLZeIpDJUrCVt4CTK3Mi7i/rczU/zaoIFXbjf5+/
         k7Tj2tHTK5M4sz02ce0+xfddtJOtUpLuAEOl6a1LRwnzdjdj+qGhtSwW3gF+NC+l0T3F
         3qCSe+dNDD1+STCioloroBiK4tfjIl9MawM9uRjuTF6pBuvUq1XSR4pIe9FXT69QXyBj
         4DRA==
X-Forwarded-Encrypted: i=1; AJvYcCWWF1N/Z9u/62q3anELE9wafjzNVJs1kQOVUb2BSFELed0qNPLry/AdEt1RBqVT7UQDHdWuKDTfuLc8mISand2WQi0ytkLwojOBqA==
X-Gm-Message-State: AOJu0YxX09+4u2nLqBulClpQOpj6senmOchtY23JkTRxvDmfiB/uGFiW
	t6unequgKToYRS+7JDxgLALfhbDk1HAvtrPIbyIHwKg6m+kXNVXFSmIkFqOC57mZbhzKXZ+9g78
	at7cXg2F5EoTn1ONijWouJvgwMN9JaJvi07lA+Q==
X-Google-Smtp-Source: AGHT+IFPY9ZyADmDsmR9SjEm5ehQQZqmjmvwRGcwPSo1nZrtoYE3mGo81maMBFS4xRF5pgWyRBvOsVR35VN7iVyETrc=
X-Received: by 2002:a81:4744:0:b0:608:b5e4:9576 with SMTP id
 u65-20020a814744000000b00608b5e49576mr4921561ywa.45.1709497059898; Sun, 03
 Mar 2024 12:17:39 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240222-x1e80100-display-refactor-connector-v2-0-bd4197dfceab@linaro.org>
 <20240222-x1e80100-display-refactor-connector-v2-1-bd4197dfceab@linaro.org>
 <a90dcd83-d158-4ec1-9186-0658c108afef@linaro.org> <20240301175205.GB2438612-robh@kernel.org>
In-Reply-To: <20240301175205.GB2438612-robh@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 3 Mar 2024 22:17:28 +0200
Message-ID: <CAA8EJppVhMyA_QK_RzC_+M3dniBrm5wxUKeoeh0Dg2w++JoZ2g@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: display: msm: dp-controller: document
 X1E80100 compatible
To: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Abel Vesa <abel.vesa@linaro.org>, 
	Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Kuogee Hsieh <quic_khsieh@quicinc.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Johan Hovold <johan@kernel.org>, 
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 1 Mar 2024 at 19:52, Rob Herring <robh@kernel.org> wrote:
>
> On Tue, Feb 27, 2024 at 04:45:25PM +0100, Krzysztof Kozlowski wrote:
> > On 22/02/2024 16:55, Abel Vesa wrote:
> > > Add the X1E80100 to the list of compatibles and document the is-edp
> > > flag. The controllers are expected to operate in DP mode by default,
> > > and this flag can be used to select eDP mode.
> > >
> > > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > > ---
> > >  Documentation/devicetree/bindings/display/msm/dp-controller.yaml | 6 ++++++
> > >  1 file changed, 6 insertions(+)
> > >
> > > diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> > > index ae53cbfb2193..ed11852e403d 100644
> > > --- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> > > +++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> > > @@ -27,6 +27,7 @@ properties:
> > >            - qcom,sdm845-dp
> > >            - qcom,sm8350-dp
> > >            - qcom,sm8650-dp
> > > +          - qcom,x1e80100-dp
> > >        - items:
> > >            - enum:
> > >                - qcom,sm8150-dp
> > > @@ -73,6 +74,11 @@ properties:
> > >        - description: phy 0 parent
> > >        - description: phy 1 parent
> > >
> > > +  is-edp:
> > > +    $ref: /schemas/types.yaml#/definitions/flag
> > > +    description:
> > > +      Tells the controller to switch to eDP mode
> >
> >
> > DP controller cannot be edp, so property "is-edp" is confusing. Probably
> > you want to choose some phy mode, so you should rather use "phy-mode"
> > property. I am sure we've been here...
>
> phy-mode belongs in the phy node though. Not that you couldn't look in
> the phy node and see, but everyone likes all the properties they need
> nicely packaged up in their driver's node.
>
> > Anyway, if you define completely new property without vendor prefix,
> > that's a generic property, so you need to put it in some common schema
> > for all Display Controllers, not only Qualcomm.

Is there a generic schema for DisplayPort controllers? I think there
is none at this point. We can probably add it, declaring is-edp
property, link-frequencies, etc.
However Mediatek already uses a different option to specify supported
link frequencies.

>
> I'm trying to unsee what the driver is doing... Hard-coding the
> connector type and some instance indices. Uhhhh! I'm sure I'm to blame
> for rejecting those in DT.

Once this patchset is accepted (in this or that or whatever else
form), we will cleanup most of those hardcoded types.

>
> I've suggested connector nodes in the past. More generally, whatever is
> attached at the other end (as it could be a bridge rather than a
> connector) knows what mode is needed. It's simple negotiation. Each end
> presents what they support. You take the union of the list(s) and get
> the mode. If there's more than one, then the kernel or user gets to
> choose.

It's not that easy. First, probing of the bridge chain differs
slightly depending on whether the controller is eDP or DP controller.
eDP should use AUX BUS, while DP (currently) doesn't use it. More
importantly, error conditions differ too. For example, in the DP case
it is perfectly fine to have nothing attached to the controller. It
just means that the display chain needs no additional handling and the
HPD pin will be handled by the controller itself. In the eDP case if
neither a panel nor a bridge are attached, it is considered to be an
error and thus the driver will return probe error.

> Qualcomm is not the only one with this problem. Solve it for everyone...

-- 
With best wishes
Dmitry

