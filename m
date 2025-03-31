Return-Path: <devicetree+bounces-162062-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 17F53A76B4F
	for <lists+devicetree@lfdr.de>; Mon, 31 Mar 2025 17:54:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4367A3B4338
	for <lists+devicetree@lfdr.de>; Mon, 31 Mar 2025 15:43:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB2AD21A453;
	Mon, 31 Mar 2025 15:39:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QVGvXaB2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CE9721A440
	for <devicetree@vger.kernel.org>; Mon, 31 Mar 2025 15:39:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743435590; cv=none; b=agyclgKs4lMdoaID957CqffVyLtCzg8IOoRDV9uhiN6lfK3Q468qhBwAHqZWqyzwwRZkgKDRfl8BUbHHTgwPl41Z4yaB3CWRSQifXo9hMRJVyB2qzc8civxPd4QoOPpooteiSj6Wh5U3WphMBt76SCt2iM9McL45svBdJzmsics=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743435590; c=relaxed/simple;
	bh=BZHR9fwBUr9R6ixWKgn1n8QQcRUqJhgpg4Wrsfh3w2M=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RgHnj2p92tfIUiweGt4emQlxUQXXRpvloUSld9piNsCEnctEX9yCWmsMO056oTM1PiPiHpTVLKSNJUJxiJRS1Ncu4nZkV9bTcmtI+kuAh3fCNmqsYMxfte1Enldv4Dl4PZO2X/1LVHeD8cM/+HDP2W/XTmWeN0KhiLpKPlJqyd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QVGvXaB2; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-43ce70f9afbso47610415e9.0
        for <devicetree@vger.kernel.org>; Mon, 31 Mar 2025 08:39:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743435587; x=1744040387; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=1sNg10NoCtirreV3RmWGt7kQXy82wXq+5oOziEES3k4=;
        b=QVGvXaB2G1y5CaHnn7Dl2zyOb6yE+UjC8mrDOZlFvNUVKruWOVaTtviKbgUJOrl+wh
         5aurhcNWSJmyyyQgFypeqejY2adtQx/woN7IyQX1geniONmy2LlCm/Yk63CWCMPm5fRN
         PQTPKnNMFAhVBey/mqrbpAxBojG9la1Btxyk602P7sQ5FGqp5/0UbnqyFT/sXAI+/d4I
         e19HiHeO2uRtUQwc75goVyV6X8jL/Mi2zOuiibm8/7RRl1LfmoQqcM1M3yzE3zM+w441
         KGzod9RAJKnH1IgVo6BIQQ9oeeQeIuM21zzL+Pq5j6abOuS9xunUMo+UAhnrv9bRHFDj
         mfvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743435587; x=1744040387;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1sNg10NoCtirreV3RmWGt7kQXy82wXq+5oOziEES3k4=;
        b=HpLZ9CERHTY4p+qBh5L/zoLzSrmdYshiuItXe9IZOnxAAXDKNnE9Zz+lGS0OSq6Ihd
         TwF8npC6SSrrt57w14U6rDztMNQR/EWJ53Xi3zhvkx8snfGG7HzOCgkV3bsR3W+TOO6g
         /RtJarymLmk+RKIIjsoM4KWyYrrX+OMwv2i7uEYWrpJcOIyv+3xcpzPlxupBcqBJVjeK
         wNac0BKq3z6tYBXZ0m5SffVRoFHH77kSkFseo/zFpsJk6nSYIcRHZqoiCiu2YztTF4f1
         Coy8/UxjJ1cDdMW1Ez6wwGYwWL3ilzeq2j6CN+hYyIliZ3j6M6ZIGYUh3JFJZ9eXVoTA
         15uQ==
X-Forwarded-Encrypted: i=1; AJvYcCXUFTLMTURkTucrZxXzb2HRbnYDilpEsRr/cZtzusXrhUZZZ7+FtOWaeQp/6mUuIfk5d1FcJnlIIEx6@vger.kernel.org
X-Gm-Message-State: AOJu0YyF3gisPqb/LeccQWn1gr4V0jYNIP1OtxIeNOPyyaAMdGf6NgRW
	GUnmiPANHzGpZJyBKDx2FuDKLkZu+U432Ec5lrbYCGthKSCrqU/H8NTclOnV9mhPMah2F2JsC50
	nnjo/gSQXyPqN6Kt/ZpXGDD4LlljfPE+g4HFDsQ==
X-Gm-Gg: ASbGncuZnu9kk6u+Z0SDl2Qk7wGQ/8sTMzUkSOyw+IHE5UonnNPuRoG5K/SkCMCcKBE
	KVE3tQzHoY6+7gIPaAfNYdYlwww2ii67MNOQPhHx3KR8/Iwm70CLXUYP+g9/CU5jKT2jKZKEQlo
	lUQRPsWGahcgxucO10pIZc5UTmF8Yx
X-Google-Smtp-Source: AGHT+IFq8kefn/iwjp3s9ms0HQTK+BhHSf0ZsbQcmKw5Vm41+dOdUlPBBEt/0fVmInccDrEv7cwRoXPu9DZcYcXNgvM=
X-Received: by 2002:a05:600c:3485:b0:43d:2230:300f with SMTP id
 5b1f17b1804b1-43dabe237f8mr100927755e9.0.1743435586577; Mon, 31 Mar 2025
 08:39:46 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250327-wip-obbardc-qcom-t14s-oled-panel-v3-0-45d5f2747398@linaro.org>
 <20250327-wip-obbardc-qcom-t14s-oled-panel-v3-1-45d5f2747398@linaro.org> <Z-pJP4PMwPo3L3Og@hovoldconsulting.com>
In-Reply-To: <Z-pJP4PMwPo3L3Og@hovoldconsulting.com>
From: Christopher Obbard <christopher.obbard@linaro.org>
Date: Mon, 31 Mar 2025 17:39:35 +0200
X-Gm-Features: AQ5f1JoEit7j_TzMlyZa7QbfN6E0NDm9GuAOKbUqEfVJoM1pbPZfw3UrD5vfGmY
Message-ID: <CACr-zFA_oSySRnA2VaSQk2ND_AHeyt3v=RuPTbABPM7SYown6g@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] arm64: dts: qcom: x1e78100-t14s: add hpd gpio to
 eDP panel
To: Johan Hovold <johan@kernel.org>
Cc: Douglas Anderson <dianders@chromium.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Jessica Zhang <quic_jesszhan@quicinc.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, dri-devel@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	Rui Miguel Silva <rui.silva@linaro.org>, Abel Vesa <abel.vesa@linaro.org>, devicetree@vger.kernel.org, 
	"Bryan O'Donoghue" <bryan.odonoghue@linaro.org>
Content-Type: text/plain; charset="UTF-8"

Hi Johan,

On Mon, 31 Mar 2025 at 09:50, Johan Hovold <johan@kernel.org> wrote:
>
> On Thu, Mar 27, 2025 at 04:56:53PM +0000, Christopher Obbard wrote:
> > The eDP panel has an HPD GPIO. Describe it in the device tree
> > for the generic T14s model, as the HPD GPIO property is used in
> > both the OLED and LCD models which inherit this device tree.
>
> AFAICT, this patch is not correct as the hotplug detect signal is
> connected directly to the display controller on (these) Qualcomm SoCs
> and is already handled by its driver.
>
> Describing it as you do here leads to less accurate delays, see commits:
>
>         2327b13d6c47 ("drm/panel-edp: Take advantage of wait_hpd_asserted() in struct drm_dp_aux").
>         3b5765df375c ("drm/panel: atna33xc20: Take advantage of wait_hpd_asserted() in struct drm_dp_aux")
>
> Perhaps you lose some other functionality too.
>
> > Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> > Signed-off-by: Christopher Obbard <christopher.obbard@linaro.org>
> > ---
> >  arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi | 11 +++++++++++
> >  1 file changed, 11 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
> > index 962fb050c55c4fd33f480a21a8c47a484d0c82b8..46c73f5c039ed982b553636cf8c4237a20ba7687 100644
> > --- a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
> > @@ -980,8 +980,12 @@ &mdss_dp3 {
> >       aux-bus {
> >               panel: panel {
> >                       compatible = "edp-panel";
> > +                     hpd-gpios = <&tlmm 119 GPIO_ACTIVE_HIGH>;
> >                       power-supply = <&vreg_edp_3p3>;
> >
> > +                     pinctrl-0 = <&edp_hpd_n_default>;
> > +                     pinctrl-names = "default";
> > +
> >                       port {
> >                               edp_panel_in: endpoint {
> >                                       remote-endpoint = <&mdss_dp3_out>;
> > @@ -1286,6 +1290,13 @@ hall_int_n_default: hall-int-n-state {
> >               bias-disable;
> >       };
> >
> > +     edp_hpd_n_default: edp-hpd-n-state {
> > +             pins = "gpio119";
> > +             function = "gpio";
> > +             drive-strength = <2>;
> > +             bias-pull-up;
> > +     };
>
> I checked the firmware configuration for this pin on my T14s, which
> does not match what you have here. Instead the function is set to
> "edp0_hot" which forwards the signal to the display controller which
> already handles the signal on panel power on. (And there is also no
> internal pull up enabled).
>
> We may want to describe this pin configuration somewhere, but that's a
> separate issue.

Thanks for your review, I will send another version in coming days and
drop this first patch (adding hpd to the T14s DTSI).

As a consequence I will need to add no-hpd property to the panel node.
I will add a short comment about how the hpd signal is handled by the
driver already.

Thanks!

Chris

