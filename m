Return-Path: <devicetree+bounces-55835-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 982D48968B8
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 10:32:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4E3D3282469
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 08:32:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03E0469302;
	Wed,  3 Apr 2024 08:32:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zx58i6sK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D9A45B1E8
	for <devicetree@vger.kernel.org>; Wed,  3 Apr 2024 08:31:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712133119; cv=none; b=mk0BA1N4QaHiO+rgoY29yQ4OPFV/rWhE9uyBa7wfkNPjB48FimfDci9eHEgEh47flRQmvmYmSJwf74Ak8JmXU7OYGAv8TEn0+BmnQfoFkLHRpNKUdScPB8CZkPua1LV0izQwm//eeymq3fMFgLYxEbdHkCPzUc6FHTvBOqQmeEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712133119; c=relaxed/simple;
	bh=vmChG4RvS48/vCPeh8PPTRlNGv7OMCjK/SENk20N+WA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=oBlPvboKBoZ+ucmi72K2OeFW9/CzX6w7VsJyzJh8+wc1P1cK+5iF09S03N8aZuJ9353l4dGkri1sh02ujtPI9unEWHzQmxZ3KyPTeUX7IY0LUix8/d0616aDJem4jUpMx94F5mHiIbezBPLE1Uf+abHW2OKTrNzz0A4R9oN5GMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zx58i6sK; arc=none smtp.client-ip=209.85.128.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-6154a3df493so5398137b3.1
        for <devicetree@vger.kernel.org>; Wed, 03 Apr 2024 01:31:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712133117; x=1712737917; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=WbhmnXPIzCrrvRBigyA0rMaFB8Z2vGCr7i8pWlrM2Yc=;
        b=zx58i6sKToEcOZ43pghDKLV84Py21o0kots8ZLsZawV8+aZAQ8smWhUlNCP359ZRFJ
         Ch2P8/xkDtT1E9jPNFAzJP8ijRj0hVV5/L5ogVCIUY4WvsZwULCish18LB9AGDs9rqGr
         Yb3ncCiuWk4wA8dSnj27fNs0KEwdkkqQa2H8GSlxFFnfCF4bg3d7BQnOJxyPuUkYosNs
         vHepUeyYwk9cyhwoIC+A1P/k2z5C+6TkOYG049ZjgAYDhCSMm8t8NYCOr4j3yh1Jchms
         FzPN5djKjMd2CqF+9AONPDS2bopgkVZ2ICYcIaeJm3BVu2eemsCSWAk6uwJ6tVkVgake
         Hc3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712133117; x=1712737917;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WbhmnXPIzCrrvRBigyA0rMaFB8Z2vGCr7i8pWlrM2Yc=;
        b=Ty34443GM++LnCQgzraaxubZ+4nt9y3spsOHWnN6rdO41WKV0/5eTbXjm8yp7kyg+g
         Up3JGYOVthgCVRW3SlSeH2rPJOcDZIVykrnPepvGWxQU6GIthpswA39nrM0xxBxfPcTt
         bUlSv4nCoe1DryPt/yeJegegEJ9lDN5u0CrzpZIFc1AIMgs1lLdIVmXf3+EfFAcWuvDc
         m8aivUYevqvGaVCAW8E96oDNWfZ2ErUwvA9d4kXqpoJ/dJMkYShgp9z7eozTtkOVw2Ys
         ArXDUXnyRuVR9560ikh9eQjvGRqQ03IPvkG+A1vPwxE8bVZHn8zN6fHSr3eL2UslS/ll
         oDNA==
X-Forwarded-Encrypted: i=1; AJvYcCXzSATniH27566e+cO1OR+cpYta0oohTRfaRM+NK858I7z2RHL4ppIJGbt3H7+1+O6lBnFfxNmtFaodWzejstzQh+H0YdxBrpKE/g==
X-Gm-Message-State: AOJu0YzIjQzDMHAMfn9d/OSCfaTIhtybOw79Z2hWasPhFFk/9+oJ1eIS
	vfnGW2Dmrd9ciHfDOu0KlqTboOqKazFGClmmdqtYbiHizA91ybsyuj0GpsSAlPWvM5Jx2/sMqrJ
	0qhPynnzZVUpmRTjnoSf9zTk7F1YRNyFMnptlZQ==
X-Google-Smtp-Source: AGHT+IHr4jTRWEoNuM2h6y3D9jzRmSc1uZFtbFjviKvgAFWZderr88u5kxnVqxNds6WlZSXlbdPDRGzk85vcKjoUqDE=
X-Received: by 2002:a25:9102:0:b0:dcf:bf81:5f28 with SMTP id
 v2-20020a259102000000b00dcfbf815f28mr1242801ybl.0.1712133117093; Wed, 03 Apr
 2024 01:31:57 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240402-rb3gen2-gpu-v1-1-a51bb6080968@quicinc.com>
In-Reply-To: <20240402-rb3gen2-gpu-v1-1-a51bb6080968@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 3 Apr 2024 11:31:46 +0300
Message-ID: <CAA8EJprHq6vwVx3YvafG3QBRe4H3o5BqjmsxJrLnp2X+tfBEJA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: qcs6490-rb3gen2: Specify zap region for gpu
To: Bjorn Andersson <quic_bjorande@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Caleb Connolly <caleb.connolly@linaro.org>, Komal Bajaj <quic_kbajaj@quicinc.com>, 
	Naina Mehta <quic_nainmeht@quicinc.com>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 3 Apr 2024 at 06:33, Bjorn Andersson <quic_bjorande@quicinc.com> wrote:
>
> Without the zap region defined the enabled GPU will, if able to find the
> other firmware files, attempt to initialize itself without the zap
> firmware loading, which causes the rb3gen2 to freeze or crash.
>
> Add the zap-shader node and define the memory-region and firmware path
> to avoid this problem.
>
> Fixes: 04cf333afc75 ("arm64: dts: qcom: Add base qcs6490-rb3gen2 board dts")
> Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 7 +++++++
>  1 file changed, 7 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> index 63ebe0774f1d..5b81b5e0b4ce 100644
> --- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> +++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> @@ -471,6 +471,13 @@ &gcc {
>                            <GCC_WPSS_RSCP_CLK>;
>  };
>
> +&gpu {

Hmm, Is the GPU enabled by default? It should probably be fixed. I
think we usually do not enable the GPU by default on SoC.dtsi.

But now I understand, why it is marked with Fixes:

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> +       zap-shader {
> +               memory-region = <&gpu_microcode_mem>;
> +               firmware-name = "qcom/qcs6490/a660_zap.mbn";
> +       };
> +};
> +
>  &qupv3_id_0 {
>         status = "okay";
>  };
>
> ---
> base-commit: 727900b675b749c40ba1f6669c7ae5eb7eb8e837
> change-id: 20240326-rb3gen2-gpu-4343c5dc7e40
>
> Best regards,
> --
> Bjorn Andersson <quic_bjorande@quicinc.com>
>
>


-- 
With best wishes
Dmitry

