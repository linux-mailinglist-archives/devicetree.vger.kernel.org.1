Return-Path: <devicetree+bounces-144401-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3916CA2DF20
	for <lists+devicetree@lfdr.de>; Sun,  9 Feb 2025 17:29:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2912F3A5A2D
	for <lists+devicetree@lfdr.de>; Sun,  9 Feb 2025 16:29:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C89351DFE02;
	Sun,  9 Feb 2025 16:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lu/dJc34"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4E201A2C27
	for <devicetree@vger.kernel.org>; Sun,  9 Feb 2025 16:29:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739118594; cv=none; b=NrX3idIjt6BRvypkQR4372Nbfa2MgnIc1kW3WJW+eZGRXcJVim9VqW13gSbB1qlTt333Hl9p5bA243orpkU6w8Tjk0PKD+SxrdsXakMCsKNOs+ZUhLfLIevYFtaAdN0UtPdER1i7OAD239ZKJYN7XulCSRkuuXs0KLvuQRBHPuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739118594; c=relaxed/simple;
	bh=DtQdODobD5Mx3g14PsoAutzDTfvkFPnqEOr4yL6UY8o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KmKQSACtPXSyZZX2CmjKvWxChJKziIKcGhQk4ZVdt2FJdnz8c2WtEVPN53pGyZYQ1ZHIBoEAG8aJmvvpABiTmdJS5j8YRonyv8qTb0je9dxKGbCq0yplnuxQTaDizGOtyWP04kzScnaXm6cDxAriJQ+XZsRbdluSejTb+Ywl9yo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lu/dJc34; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-54504f5cfe9so1144988e87.0
        for <devicetree@vger.kernel.org>; Sun, 09 Feb 2025 08:29:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739118591; x=1739723391; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=CBBaxSpqSP+CW1UdUykgwYZL/97FlmN6t4SFUigusvk=;
        b=lu/dJc34nlf+tNhk5b65pDeHJahy0uc6eYaueWXMoF7Q5kmZ/bYqfGVDIiiHrQuUo1
         Sc60EKVpjPpiWjcQ05eIoxno2/iNrERr2GWkY9laSYHFxkcB3wuAV4gTG/CO9kgW/kTc
         d0FI+jpQQw64qcWYtlu5bNjsaI7vyWqtudByuf46RYi89K5tlUJXyX2kXbvjMPSHl40t
         XLIvIANt56AVNDMJfdh4wIk90/oqfsLxzhKsbxKIXrOBSm21ikQZLpwUKg8obFzJm5Bb
         ZjHA1B3AlL8v9d10mu9R2ZIWstsb6zma1pTkkXboeKty6ZzJLjQbfUvgtIxffMsaXHmg
         yV/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739118591; x=1739723391;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CBBaxSpqSP+CW1UdUykgwYZL/97FlmN6t4SFUigusvk=;
        b=FYnkeTs1lhcAryqg5J1gOlIgIaNQQ6+DEFzGe2CZB3flK8KoMO8lHzjzzoOj7qEpYQ
         OemLUggwOJuvmT6iDwDMzsFqJrVFd3Ch+60ZhI1Ce2vYxTb7HSKx3eWTYdPz+9MMdAE5
         BYylAJPxE3cSwWRcm6NfjlSKYOqk/uHcjK/0q5fdqE9ffoWbjI8MBONGOp+ECThVWZoX
         JedCCmvXcBVI0y6CgT7dBB/hvOAA2KsUO7AuanLUGFlbgviEIr9ECA0bzK7k+GlLrQKw
         4ry7Dd2vVh1RXF68km5RqIXMf/4oR6Wydy/ARxNJrJSdhSwiKOloOgbcZZtp1djD2kE2
         qfsw==
X-Forwarded-Encrypted: i=1; AJvYcCX+Aca0/dil0HgUxy97CLkDlNvtSSuTamtGqXoZ6rEuIubYvsanc+SOTA47OLGzE8YE5accmOpEk0BF@vger.kernel.org
X-Gm-Message-State: AOJu0YwaRKi8Rp3OJqhDRiutFEI2N7tLzV1/mDFvvZdJCVxTOjNawLJL
	XXaiCe+Oaw/avfAisvNLZvAchmfAtFOyWRc5WXmjZifF/dX6wN0njC3IPSH6Zhc=
X-Gm-Gg: ASbGncu7ghgBTE2vLu91lRcXx0D0Tzju4Z26HRUun0z71p8grr2qwt4l4xlTcenX20u
	SZLHsDK+vWKFUyq063qno7srkxK72VnCeCf6NcAXcY3LK0UkKXfgQxeAtTNXNNXzl9fQVVsX8JP
	K2yG8VX9gVBW59R6KwXs0P9XUGBLIeKN+RG8BeXnFXlO9golkqyxpwfmrPbr/69Haxc1Vacy82i
	+eZ6d1aNUtfW+EPwLJFD2RIxUgLl2A/Dlh2KZ7uSrO4t3mJdafX34clIav/grSSjYUIPfkKGT/K
	H7ocKlWbo7dfrJXl4J69Vzd9N2Jq73H2vEX+iMsNjC+/a+gKXChEHDfjlfGqUlJCOjyBAe8=
X-Google-Smtp-Source: AGHT+IFzize2yKjpIdEHEa0CzVZP+PJ8P5Q3H+Z4nzXrwEuHJD8mwDugjc4mCpltXZ8b6WnzCOQMjA==
X-Received: by 2002:a05:6512:12c7:b0:545:d70:93f1 with SMTP id 2adb3069b0e04-5450d709519mr22207e87.11.1739118590771;
        Sun, 09 Feb 2025 08:29:50 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5450a76bc6fsm182100e87.241.2025.02.09.08.29.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 Feb 2025 08:29:49 -0800 (PST)
Date: Sun, 9 Feb 2025 18:29:46 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Akhil P Oommen <quic_akhilpo@quicinc.com>
Cc: Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>, 
	Konrad Dybcio <konradybcio@kernel.org>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Connor Abbott <cwabbott0@gmail.com>, linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	Puranam V G Tejaswi <quic_pvgtejas@quicinc.com>
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: sa8775p-ride: Enable Adreno 663
 GPU
Message-ID: <ah6nusoouth7ziu3iscxmafm6cxuwwebxt44ixsjmesp5adwc4@e5lnbztds2xd>
References: <20241030-a663-gpu-support-v3-0-bdf1d9ce6021@quicinc.com>
 <20241030-a663-gpu-support-v3-2-bdf1d9ce6021@quicinc.com>
 <4cfd1ebc-1a95-43d4-b36a-8b183c6dfd16@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4cfd1ebc-1a95-43d4-b36a-8b183c6dfd16@quicinc.com>

On Wed, Nov 13, 2024 at 02:18:43AM +0530, Akhil P Oommen wrote:
> On 10/30/2024 12:32 PM, Akhil P Oommen wrote:
> > From: Puranam V G Tejaswi <quic_pvgtejas@quicinc.com>
> > 
> > Enable GPU for sa8775p-ride platform and provide path for zap
> > shader.
> > 
> > Signed-off-by: Puranam V G Tejaswi <quic_pvgtejas@quicinc.com>
> > Signed-off-by: Akhil P Oommen <quic_akhilpo@quicinc.com>
> > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >  arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi b/arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi
> > index 0c1b21def4b6..4901163df8f3 100644
> > --- a/arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi
> > @@ -407,6 +407,14 @@ queue3 {
> >  	};
> >  };
> >  
> > +&gpu {
> > +	status = "okay";
> > +};
> > +
> > +&gpu_zap_shader {
> > +	firmware-name = "qcom/sa8775p/a663_zap.mbn";
> > +};
> > +
> >  &i2c11 {
> >  	clock-frequency = <400000>;
> >  	pinctrl-0 = <&qup_i2c11_default>;
> > 
> 
> Bjorn,
> 
> Please ignore this patch for now. This is probably not the right
> platform dtsi file where gpu should be enabled. I am discussing about
> this internally. Will send a revision or a new patch based on the
> conclusion.

Akhil, any updates on this?

-- 
With best wishes
Dmitry

