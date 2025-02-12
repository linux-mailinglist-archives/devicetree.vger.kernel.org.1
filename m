Return-Path: <devicetree+bounces-145556-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A0843A31A1C
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 01:01:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 20972188A0D8
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 00:01:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCA6D27181B;
	Wed, 12 Feb 2025 00:01:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ezePk9VH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3CE11876
	for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 00:01:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739318475; cv=none; b=X3+NuSjpLcdV7pNoHkQy1/QrOQ8SWCB+7bVmTT/nnVkcAn8RHwS5bFflKA73ZXwcXsYamFGottdL4yqY+RGRrOFkmwX+/iT25GyHglY8RU+g3sM0CidPJ+TuvgBwXMRqB0CjWg3UweFyjPTpJwTHOFMvYVk6q3AqcqswGlJGDVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739318475; c=relaxed/simple;
	bh=sfiqhyC5KXkrQ7bt1jRVA16NcrjK/IIwrOgJPjQeFYQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PwLyc1bK0w3op/bKSzXfh411qBMLto1jaE2aIyNNPUm8LIuJCJboRsuJJPrYAIqCkqSS/WVk9dON4nDg0hCXyxrid8tJdiZ0pgegNJugR34TiUJM+uLxxNRyiIPG3muB05WwsmHDRpZVmGcOeVMgxfWsbvNFcb3DeCRfpv1QjyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ezePk9VH; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-308e92c3779so2819671fa.0
        for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 16:01:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739318472; x=1739923272; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=95tLd2a65K3uyAvTy76sH7lTP+WAFAT2AWBj4Cp36Os=;
        b=ezePk9VHq8LpqZ6MY/4cPEr1y834J4pYPPrudlONA8uOcHwuEbVSPbU5bVLmX5yr2n
         irPNvogQjdlVdhO4+KcC2pRAfe/eiGh5chAuIjq9kmArMfcmjE4pkdDluZB2Tku526LS
         +eZzMMaTBpT0LM/MfnnWu0bnuXepNDLs94/ffc5vOIyARoriJq1xxhRu2TKusBg6Yjfv
         QPh9fLbtoyKsC8sFFPHb1+JVqP9HMT27O9FtZrmkoxzPNeDMlxmQJnJPh3hm49tkxKSV
         nqbvxpHN4RfP85pCFKU2aCngarg1XW8FlMaQUEfg+z/6ZpOMKeWgfhZCAJUubSkS0uup
         MUUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739318472; x=1739923272;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=95tLd2a65K3uyAvTy76sH7lTP+WAFAT2AWBj4Cp36Os=;
        b=ZqSNXEDqGMSRh616oinfBcIhPT/6oT8K3VjGZq7eY1cKpL2JeQmM2jVB5QM5wTa5E1
         ysczNY6WPKaBJrVd6A3KstAi5QYfKOV/jolOT3Bj5ijg628RQsq3nyxqVW7pr0mYFf6h
         J1O2MumeKETfIYciKzJ7c0OO2eAgCm9X50bcWj7OC96bKnHAWiGI7ZEjR5EHcLV/mQ2x
         /vSikUasvePFZFTCjMXX/4/pVJE8/WzriDS1cY9LyTYd+QtxPbI8rsziPJXlHPw8WNsn
         0wI5R4bi0npA8ocDwKi7YPau/9rJU9utUkHErJkARGGNt9jXJNomCbyV8HM8b2JstaTa
         CkUw==
X-Forwarded-Encrypted: i=1; AJvYcCWeIsOz1Ri1onfD028pVYycaj5y1i3SYf7T+kb9O1a2XBOtzvK1+bECLE2lXHg9O95rfBQPWgW7CeSX@vger.kernel.org
X-Gm-Message-State: AOJu0YxXDtJfewFhIK5efNAZ5qO9jAC7Yw6s2gVTjynmgyjci15FuN0S
	mKmBR0py63/TdYFpJyOhjonyCESrWsE9RzaSt9LdxMDPacsMCMprncAPAbvKwCI=
X-Gm-Gg: ASbGncsrk2dNzAgAk38U5TegfHp4IrN7hKiQuKFG7PkYNrdQQ82zk6LPor9/mfDC6lL
	r1kUSKbKMOY3Y8cjpbFvDxOOuQD9yqSyDQC4u10Ztw5L63pGM02gwpj2uK7Wz5KQPkpg+kPUP+t
	Y1MdvTl5FN/d97hyKYecNhsXej6yiioha9KEbBsnXi/HBMUV5Ux9aXk23MjA+5FhikGaPUdz0OZ
	Et7CAR5xchWbgtXRd9SsC4xaIEAtPjsRoE0F5nbGoAloCVipCa+YEhZ4FdCFrD0vhx8acF9fwr/
	3wMQnIh4ELl3OgqXqEXZCZxXimr1c+GdD0LhqOyo060jk9zEbDy5p+tmtDfsqCjsoFYuwRI=
X-Google-Smtp-Source: AGHT+IH/ZusE/nmTKQwFY64ppd0MMt5jL1ccy9acwns9FM9u2M/3kJwIx3fnSmtuKJScor3EBvhJ1g==
X-Received: by 2002:a2e:965a:0:b0:308:eb31:df9c with SMTP id 38308e7fff4ca-308f90eb27fmr16259151fa.1.1739318472098;
        Tue, 11 Feb 2025 16:01:12 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-308ed7e8621sm8024891fa.87.2025.02.11.16.01.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Feb 2025 16:01:10 -0800 (PST)
Date: Wed, 12 Feb 2025 02:01:08 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
	Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 3/4] arm64: dts: qcom: sm8550: add missing cpu-cfg
 interconnect path in the mdss node
Message-ID: <ysk2lewb6qjhmrznt7xc7i3u7kczqliph2dzfg566aoj5cowks@qlbyk6nqakp4>
References: <20250210-topic-sm8x50-mdss-interconnect-bindings-fix-v3-0-54c96a9d2b7f@linaro.org>
 <20250210-topic-sm8x50-mdss-interconnect-bindings-fix-v3-3-54c96a9d2b7f@linaro.org>
 <a3f7bef6-bfc8-4a2e-b979-4aac7908306f@oss.qualcomm.com>
 <fcde9fab-b28a-4e09-b77b-f7c6c3840710@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <fcde9fab-b28a-4e09-b77b-f7c6c3840710@linaro.org>

On Tue, Feb 11, 2025 at 10:07:07AM +0100, Neil Armstrong wrote:
> On 10/02/2025 17:32, Konrad Dybcio wrote:
> > On 10.02.2025 10:32 AM, Neil Armstrong wrote:
> > > The bindings requires the mdp0-mem and the cpu-cfg interconnect path,
> > > add the missing cpu-cfg path to fix the dtbs check error.
> > > 
> > > Fixes: b8591df49cde ("arm64: dts: qcom: sm8550: correct MDSS interconnects")
> > > Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> > > ---
> > >   arch/arm64/boot/dts/qcom/sm8550.dtsi | 5 +++--
> > >   1 file changed, 3 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> > > index eac8de4005d82f246bc50f64f09515631d895c99..702b55296b18ff2f8ea62a3391b7de2804aa9f65 100644
> > > --- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
> > > +++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> > > @@ -3020,8 +3020,9 @@ mdss: display-subsystem@ae00000 {
> > >   			power-domains = <&dispcc MDSS_GDSC>;
> > > -			interconnects = <&mmss_noc MASTER_MDP 0 &mc_virt SLAVE_EBI1 0>;
> > > -			interconnect-names = "mdp0-mem";
> > > +			interconnects = <&mmss_noc MASTER_MDP 0 &mc_virt SLAVE_EBI1 0>,
> > 
> > QCOM_ICC_TAG_ALWAYS
> > 
> > > +					<&gem_noc MASTER_APPSS_PROC 0 &config_noc SLAVE_DISPLAY_CFG 0>;
> > 
> > QCOM_ICC_TAG_ACTIVE_ONLY
> > 
> > w that
> 
> So it depends how it articulates with https://lore.kernel.org/all/20250115-topic-sm8x50-upstream-dt-icc-update-v1-0-eaa8b10e2af7@linaro.org/
> 
> I can rebase on top of it, it would be simpler, but then the Fixes tag won't work anymore.

It works, it's just that the backporter would need to be slightly more
careful.

> 
> > 
> > Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> > 
> > Konrad
> 

-- 
With best wishes
Dmitry

