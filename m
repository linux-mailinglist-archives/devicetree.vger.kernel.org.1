Return-Path: <devicetree+bounces-209137-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DBA27B34EE6
	for <lists+devicetree@lfdr.de>; Tue, 26 Aug 2025 00:20:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 852983AC336
	for <lists+devicetree@lfdr.de>; Mon, 25 Aug 2025 22:19:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B1A51F55FA;
	Mon, 25 Aug 2025 22:19:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="YNFU7y2y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFF2F22CBCB
	for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 22:19:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756160397; cv=none; b=tB91WGpF5gaLzvjmTnG5j6jrnZvdImWr+x67IK/CM3lQjIQGfT4bswh5Kmj7p3lFqRNq31eqwDAYJNxO2SKsGEgfT61xP27ek+seaRmZzNC97PHWVyv2mwxtpa0ZAEkkc0r9C2sNJjDytvjXXdZEXsk1ijB254HYqi+1ZPfCgQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756160397; c=relaxed/simple;
	bh=pF5m4XVh5+kykGCQizUldzCrFgr+3qmcWGuNjVxySro=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=i3owrUUcELeRFvA+qzrhvyOiGnuULqy0b7sKpvRj27IglCWfmJtbfu1Dve8zGnJgkXPs+PBDI/1nScGvxmCQv1JTX5njee2glW/GlamEpu7pvvOLrQvOaTDlrV6g8hrniT8TCGZWR2f2LM0tE+QW248B2izJ2WPi++aAXo62ZSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=YNFU7y2y; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-7704f3c46ceso1666854b3a.2
        for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 15:19:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1756160395; x=1756765195; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/JpVTU3PWKRezYGNXaHQneZI3VniMUHuCsVrcgfQ/mw=;
        b=YNFU7y2y7zStDluE1E8zyp4nokpQ4jS0ZipW6DwTqqqti+NthkCLsP5bAeuIjxv7l8
         sg+j5/kr85OmM+rEU8bAqj+xnHh4ZzAvLQ0TsfRbyT3c9l96NVR9TFVUbHkFlJsuFlxO
         FFtaHLshuTGDYuVAKnghyS91ibQ1QptcnAucg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756160395; x=1756765195;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/JpVTU3PWKRezYGNXaHQneZI3VniMUHuCsVrcgfQ/mw=;
        b=uzjW5epsNadVBVoezd2xaG6wGE6yQNGlMSQADu+VKBFaQ2ohX42RxRprBG/8FRXRgD
         MRSk5bd6ButkVOVDMqBK51zOs/rQlmDQbwD4OmkLydV38RIQ8HZm7CzA4zys5NeO4mXr
         zvUh7Xi43h5gbrYjLjv4snO//ZLoZ68Fp2FunGmGHfLwzsxiL6c94ugTPU4ZtvMLsAtq
         P5jbVrTG2Uawd/brALpk2hPfzQ/rOLmjxOSmUf5eGqfIBVA7zKqyuskZw8lRN0iK4JJi
         +Q9/lIpaPm8bxQq1Wy4boZxpKL7tb+NZqZZ8m9UCuMleh4ibfIYlF6m/DZlEP0m25j82
         RQtQ==
X-Forwarded-Encrypted: i=1; AJvYcCVZjpZxYbMu9MO9euw2OAg8Pt4zQCJ6WTAV0lUxIZuDoAASzqQ0AF0867vgE6JS4CefSKseT/uTD9c/@vger.kernel.org
X-Gm-Message-State: AOJu0Ywt2TjCSOfLl+TCBXgcI8QiAFavdlxv4frE5KSQ0SpXJJMsq7wd
	9YdMRbL32zniiplVJkPNBCFoYcAiDHX8SwmHylVYFnOE3hMBv1QI7sKYN59Mp9ThvA==
X-Gm-Gg: ASbGncvzFqV027JC1pf+5Fvn8NhKxJpGb24F7C2DMuzm3yg5qSF5O1za2+WJX1mTnYo
	YGTYnH12cadx525lfpaOb/Euz/TLJ+VMAmrsV3xN3jEa7VK2/koxOAXvp+P4JWUKDydgI5ayxVX
	zErIUHdMQgYc2PlCs8US9w72KYLG9r4aaZ4FcNrjJYoFAUy0lCXwqgQp0SLDgIMQ+WxptKfg3kw
	vwvrwZiH3S1/RYCWNR/Gl+mtzN8bTleACGWggOEmdfv0KmjTyDY7mefhtLKGxDdX9SIuu61Palk
	IkN1NRP0aKamruS8jN6iwT/1vI8YBT1QRHjHIQhaYEGQ1+EnYLCyRHEwTErCRPd4ykpnJD8kEq2
	xgMxSUkkhJPsTkzmvINR6EwepLyzID0ZJ9lYUF/gB/L/YBmyElDDAT1qP+Q==
X-Google-Smtp-Source: AGHT+IHGJg8be7xU6VaEaBVE+3EWYZ4SopGxSXLSailrKgYeCMuf54WK7If+tDGPHqm1jXQLMQoqYA==
X-Received: by 2002:a05:6a00:14c7:b0:770:5987:5b3a with SMTP id d2e1a72fcca58-77059879144mr6483981b3a.16.1756160395127;
        Mon, 25 Aug 2025 15:19:55 -0700 (PDT)
Received: from localhost ([2a00:79e0:2e14:7:230e:95:218f:e216])
        by smtp.gmail.com with UTF8SMTPSA id d2e1a72fcca58-770401b01b2sm8327239b3a.64.2025.08.25.15.19.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Aug 2025 15:19:54 -0700 (PDT)
Date: Mon, 25 Aug 2025 15:19:52 -0700
From: Brian Norris <briannorris@chromium.org>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Georgi Djakov <djakov@kernel.org>,
	Odelu Kukatla <quic_okukatla@quicinc.com>,
	Douglas Anderson <dianders@chromium.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh@kernel.org>, cros-qcom-dts-watchers@chromium.org
Subject: Re: [RFC PATCH] arm64: dts: qcom: sc7280: Drop aggre{1,2}_noc QOS
 clocks on Herobrine
Message-ID: <aKzhiPIDszlMocIQ@google.com>
References: <20250823123718.RFC.1.Idebf1d8bd8ff507462fef9dc1ff47e84c01e9b60@changeid>
 <3i7pdzata6gxsc3svb3eygubfdfmnetlekxdd25bb4ljkdrlh7@bvufiwmdusqz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3i7pdzata6gxsc3svb3eygubfdfmnetlekxdd25bb4ljkdrlh7@bvufiwmdusqz>

Hi Dmitry,

Thanks for the response.

On Mon, Aug 25, 2025 at 12:22:03PM +0300, Dmitry Baryshkov wrote:
> On Sat, Aug 23, 2025 at 12:37:18PM -0700, Brian Norris wrote:
> > Specifically, they fail in qcom_icc_set_qos() when trying to write the
> > QoS settings for qhm_qup1. Several of the previous nodes (qhm_qspi,
> > qhm_qup0, ...) seem to configure without crashing.
> > 
> > I don't really know what's unique about Herobrine systems vs other
> > sc7280 systems that presumably work fine. I'd guess there's some
> > conflict with something configured by the boot firmware.
> 
> I think it well might be that Herobrine's TZ doesn't export QoS regions
> to Linux.

That may be. I don't really know what to look for to verify that without
a lot of research, aside from crashes like this though. I'm fine with
assuming this though.

> > I'm submitting as an RFC just to get thoughts from people who hopefully
> > know better than me what might be going wrong here.
> > 
> > Fixes: fbd908bb8bc0 ("interconnect: qcom: sc7280: enable QoS configuration")
> > Fixes: 2b5004956aff ("arm64: dts: qcom: sc7280: Add clocks for QOS configuration")
> > Signed-off-by: Brian Norris <briannorris@chromium.org>
> > ---
> > 
> >  arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi | 10 ++++++++++
> >  1 file changed, 10 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi b/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
> > index 2ba4ea60cb14..59203ce58c61 100644
> > --- a/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
> > @@ -394,6 +394,16 @@ &vreg_l2c_1p8 {
> >  
> >  /* ADDITIONS TO NODES DEFINED IN PARENT DEVICE TREE FILES */
> >  
> > +/* QoS seems to have conflicts with boot firmware on these devices. */
> > +&aggre1_noc {
> > +	/delete-property/ clocks;
> 
> While it might be enough for Linux to make it skip the QoS, I think a
> more correct fix would be to remove the 'reg' instead / in addition.

That should work too. However, besides simply violating
Documentation/devicetree/bindings/interconnect/qcom,sc7280-rpmh.yaml
(which is easy enough to tweak), that also violates basic simple-bus
rules:

arch/arm64/boot/dts/qcom/sc7280-herobrine-crd.dtb: soc@0 (simple-bus): interconnect@16e0000: 'anyOf' conditional failed, one must be fixed:
	'reg' is a required property
	'ranges' is a required property
	from schema $id: http://devicetree.org/schemas/simple-bus.yaml#
[...]

> On the other hand, having those boards used by only a few people it
> might be easier to just pick up the simple fix rather than implementing
> a 'proper' one.
> 
> Nevertheless, this would require changing the schema too, see
> Documentation/devicetree/bindings/interconnect/qcom,sc7280-rpmh.yaml

Sure, I've tested out a change just to tweak the clock requirements.
I'll plan on submitting that if no solution arises for the 'reg' schema.

Brian

