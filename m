Return-Path: <devicetree+bounces-44534-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 876DE85ED3D
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 00:42:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B8E4D1C22B3A
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 23:42:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07D6712C539;
	Wed, 21 Feb 2024 23:42:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="n+5r/B/8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ECBE81726
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 23:42:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708558944; cv=none; b=eVY5xxfaZ2uavNG0RsmMiFHZ0Gv2UgZKJB3mY96mqcbeYtD/1aRVf6iklb7QDBPyEFzFVJbSvVQlywjdsmLVsOQ+tqEgoHJCoReqzoHw+8Jo/X7Qr9uTuxvLbL7K+8lSqNgf1I/z+XIndTHkzZfsWFG+gg7B3ZvYe2zBRw//7dY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708558944; c=relaxed/simple;
	bh=R30h1HMhJTW2Hl0gQhY0c5uAgK3flvLTGgjb/74w7kk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rnFTuVV0dbRy162qXILTARghpRRWb1g3ich+8k1whWwjko8ixTDvnQweD6UeRF71q+x0Z3HdUnH1tgzJYm7KNdKXNTlbKcweEdgdFPW8I1O6s8CBigyCTG7GAU4DJt6gTtgsP58i7jclTvhMNXiIZHIbf9/yf5OxoUDxBI/RCxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=n+5r/B/8; arc=none smtp.client-ip=209.85.219.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f180.google.com with SMTP id 3f1490d57ef6-dc74e33fe1bso7037061276.0
        for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 15:42:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708558941; x=1709163741; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=C/dj756VosTuwMpPJNGyW3MhpcrxAFO76cK11lx7rxo=;
        b=n+5r/B/8QsPnDxmK1oO/9JxDKxfbmgeikWZefanD8qDfeFviUkPQNYQ2IopWBIvI4v
         0IRWihrLavCxR7/g6TJaKjnC624DeE1EnhdVpnQYP8J/Zn2KFQ2dzqDPQsmKDBhqDwQ+
         Htclg7dIu14I2+bdEluF8zrQMuXSDnHxvtLsiHDWY9T/HAW+2m5qhrWnuJoQ1pEUURMV
         xzRMkCHAExFQ8m+uyazB+tqzUPibS63Hm5dEXAcwyGsRUuGdsCezKGflQz6raJG5A8tF
         EddIjVogMs3o5o8l9CPKROyQwO4NvzSL/6TjHj/auy30+jtBSBc6IEfPBuhaI7/psAVx
         VZGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708558941; x=1709163741;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=C/dj756VosTuwMpPJNGyW3MhpcrxAFO76cK11lx7rxo=;
        b=KesuhZd4E393mIlanclbLEOQauhs5mgcNWeCxPyngrflX+JBg8Q0UJjoKWIzCKL9z4
         cH9wck6CVRBeM5D/zrt2z03I49gBmbdXAQQ+BwYDE82mnhVlrvHBLlg3RUYHbDR6s/iI
         nQHrxEY1ki25Tj2FaJhhbW3C3ihk5hZTeiaBkr9LHnT2TJ9ZQWj/LvyeOUGtWKw2fSjn
         KkSbyiXpXeIUwbEBXdtHhfUG3rQasa16MnOEk7rYbtmIg3trWgv5eoeMa/BGD4xaNzje
         d3R1TcbdLn2E7cOceFTLaoCk6b+B02sOt63JkKIA1d3RR5hBQa9PJ160n9nGJ7bv1LRT
         18iw==
X-Forwarded-Encrypted: i=1; AJvYcCVlLB+xcZq1jfzGiNnd1UtbgHRenIAdGPwBDjeZYPcVCuYcx1uyKXq4O3Ln6yXIfrd6Vw/4ermT7HONg4Er2Ask33Ly4UrhaCLp2A==
X-Gm-Message-State: AOJu0YyTi0vQ9DhvoyR2h3lWsV1Hd40CrrTeWxtkXbC3zb8z219yVrDG
	ciofqUEGM71J3xKDxQR7WE0HIkJ1q4CsitU6SCm6Ali4Z6cGweDU4JB8PPShFQXeXnLxO0J1RpP
	hVi1BC3cEL5jHXl0jA7sigZa8S8WyAtmc1ee9iw==
X-Google-Smtp-Source: AGHT+IEPTkax+cblPH2B3OK6zkJGmVKi10jTkKNhhoD5CPKfbwC59MAyFljD4sz8HRB3ajKPgQOsU016PTTq8M/17rY=
X-Received: by 2002:a25:1e41:0:b0:dcc:67a7:430 with SMTP id
 e62-20020a251e41000000b00dcc67a70430mr834243ybe.15.1708558941152; Wed, 21 Feb
 2024 15:42:21 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240221-rb3gen2-dp-connector-v1-0-dc0964ef7d96@quicinc.com> <20240221-rb3gen2-dp-connector-v1-5-dc0964ef7d96@quicinc.com>
In-Reply-To: <20240221-rb3gen2-dp-connector-v1-5-dc0964ef7d96@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 22 Feb 2024 01:42:10 +0200
Message-ID: <CAA8EJpqtj-+PaUWeXH32_jfNaOUM+V-H0j5mZSW+rcaAQTdMzg@mail.gmail.com>
Subject: Re: [PATCH 5/9] arm64: dts: qcom: qcs6490-rb3gen2: Enable adsp and cdsp
To: Bjorn Andersson <quic_bjorande@quicinc.com>
Cc: Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, cros-qcom-dts-watchers@chromium.org, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 22 Feb 2024 at 01:19, Bjorn Andersson <quic_bjorande@quicinc.com> wrote:
>
> Define firmware paths and enable the ADSP and CDSP remoteprocs.
>
> Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 10 ++++++++++
>  1 file changed, 10 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> index 32313f47602a..ab498494caea 100644
> --- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> +++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> @@ -451,6 +451,16 @@ &qupv3_id_0 {
>         status = "okay";
>  };
>
> +&remoteproc_adsp {
> +       firmware-name = "qcom/qcs6490/rb3gen2/adsp.mbn";

This should be either

       firmware-name = "qcom/qcs6490/adsp.mbn";

or

       firmware-name = "qcom/qcs6490/Vendor/rb3gen2/adsp.mbn";


> +       status = "okay";
> +};
> +
> +&remoteproc_cdsp {
> +       firmware-name = "qcom/qcs6490/rb3gen2/cdsp.mbn";
> +       status = "okay";
> +};
> +
>  &tlmm {
>         gpio-reserved-ranges = <32 2>, /* ADSP */
>                                <48 4>; /* NFC */
>
> --
> 2.25.1
>


-- 
With best wishes
Dmitry

