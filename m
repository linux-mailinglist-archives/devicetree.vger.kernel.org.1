Return-Path: <devicetree+bounces-60280-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 560DA8A8B06
	for <lists+devicetree@lfdr.de>; Wed, 17 Apr 2024 20:26:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E97DC1F24383
	for <lists+devicetree@lfdr.de>; Wed, 17 Apr 2024 18:26:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE908173352;
	Wed, 17 Apr 2024 18:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cQFpYVCe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3A4A171062
	for <devicetree@vger.kernel.org>; Wed, 17 Apr 2024 18:25:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713378354; cv=none; b=m8nJNCpt+iC/VzePgFF+N6i7jwaV1vWBgZy2nCt6lbOWcxIhK1sBtwQFA/lwr0SlXOJ1LxpDWbUoa6ZLRc0mh11MWL0c8ULoEd8/kazqXLUe1mLxPvMRbYvrdncuFg/mUw4i1h927mTfqANTN7BZj8t1W6t+aymEg1rIiNAyabw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713378354; c=relaxed/simple;
	bh=iiQLaL7b913aQ4z6/ivZCDreLLoJ4wNRNa/JjNa+94k=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=R2giF8NegIJVLEPXpyj4OdWFAkr9YjdYHR8gEgYt9rlpOOXRdrMnvg1D4YawXXmARdKiABVD3/usm9kLH2Z/WXWWzzCR77yTZHr461hRDsM7LoMdxPwgXus6nfEHzacyMTstb9Vs8seaI2pALfkw2vARAKa7yrv7g0S/dh+jscY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cQFpYVCe; arc=none smtp.client-ip=209.85.219.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f177.google.com with SMTP id 3f1490d57ef6-dc25e12cc63so1164798276.0
        for <devicetree@vger.kernel.org>; Wed, 17 Apr 2024 11:25:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713378352; x=1713983152; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=vnxByDMxHaJ/yp+U1go7qjtuLDX7LgOj9TU8bRJJnlA=;
        b=cQFpYVCeXRL+sPY8Mmw8+b1ZozEeX7I4KAqycaXISDDqg5SaIbZ59gKff1ZI/sZKH9
         ZSops/xfbGv7Q73105GtczYO/PsCUiYkV3fsSF/CFzdAG1UygQlqMWqOJt2GN2mCQmnA
         JivlH5ZjaLyEZ1huaL8CKv1/MHUHT6cLAA6YZFLsKpYTjkFE69KGNFUVSKn0bjGwtiYe
         k10AdgROrDnrWslkcS8JFBpOHd5PT4fDUzT22ILj0lnc6clJstDFK2AoK5gJwk3czGaD
         3c/0OX2cX8iqLfLtAR9CQY0Rirx6M173ulEWM7+26MCMzZ9+JHkNIOdLjxUojfvLMe9l
         mYDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713378352; x=1713983152;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vnxByDMxHaJ/yp+U1go7qjtuLDX7LgOj9TU8bRJJnlA=;
        b=GLi5zP3k7ZKX4Kww8I4Hj1+btqhYQC0cu5RxymxloCyGL9QRF3XSbXhzaPjwp97G5w
         PPNhklNej34fDbfvindMDFITc6qtCpSVRhDv9pzHoNa+gzTeMv2a0vsYvSyIGpAfTEw2
         kjcSarLwgHDR8qvnpKRbnC8mayDVyUaaH2CBnp1PcOwpBfJRrD/q16Yj1NXPr350wM6q
         xGn4RK+ysgCYBcAH4eoCmxrKYK7ELW0psNdYIy/qYQhKtmEQ+QiI0f+JqA6ZZXurhXBA
         kWPF9zgiMNXN7gOZjRGa03JPpsuqpbwszPCnIkOcjthTD6fzfxWMP/J9ggFgo8TA1oMW
         MULg==
X-Forwarded-Encrypted: i=1; AJvYcCVSbRWHrlKGajSD+WlwaBvRLr6svu61egfQJ/LyP5A8ZxLAxu2I7V9tW/JD6zEMRT6pc9fknswkapo8UzmOgdSbP8TOgFAXtPLgFg==
X-Gm-Message-State: AOJu0YwFJP0rTJrlCJsjr7JsG0h/Fz3T/6VedCQBi7TofJOwyQSB8+t0
	vTBh3F18s2liMFJzEdvyxkrXceyfcNfjCYFO9W5gkq8qg375KQ1IXxc0VxNkicDvpo4uUKDcydc
	DuIHb6wwYXmu+5wRO2FET1ZvVCqM6vhxBJlMIyQ==
X-Google-Smtp-Source: AGHT+IG5X85eRnbEWZuj/J/DWMBMjP9X7Ftox8ChGo4OUxp+VDFrWQS+EVuzjA7/OcnTXygpMOOtNH8E2Fim/3e4ftE=
X-Received: by 2002:a25:800e:0:b0:dcc:6894:4ac0 with SMTP id
 m14-20020a25800e000000b00dcc68944ac0mr234809ybk.20.1713378351697; Wed, 17 Apr
 2024 11:25:51 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240417120928.32344-1-quic_kbajaj@quicinc.com> <20240417120928.32344-2-quic_kbajaj@quicinc.com>
In-Reply-To: <20240417120928.32344-2-quic_kbajaj@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 17 Apr 2024 21:25:40 +0300
Message-ID: <CAA8EJpqWW9PH8jHRm0PmmjAXEq6VDn3_0GwDCUQJHg2y4djDbg@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] arm64: dts: qcom: qcm6490-idp: Enable various remoteprocs
To: Komal Bajaj <quic_kbajaj@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <quic_bjorande@quicinc.com>, quic_tsoni@quicinc.com, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 17 Apr 2024 at 15:11, Komal Bajaj <quic_kbajaj@quicinc.com> wrote:
>
> Enable the ADSP, CDSP, MPSS and WPSS that are found on the SoC.
>
> Signed-off-by: Komal Bajaj <quic_kbajaj@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcm6490-idp.dts | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/qcm6490-idp.dts b/arch/arm64/boot/dts/qcom/qcm6490-idp.dts
> index f8f8a43f638d..01ea64b16969 100644
> --- a/arch/arm64/boot/dts/qcom/qcm6490-idp.dts
> +++ b/arch/arm64/boot/dts/qcom/qcm6490-idp.dts
> @@ -580,6 +580,26 @@ &qupv3_id_0 {
>         status = "okay";
>  };
>
> +&remoteproc_adsp {
> +       firmware-name = "qcom/qcm6490/adsp.mbn";

Is there a difference between qcm6490 and qcs6490 firmware files? If
there is none, can we use the existing paths?

I assume that modem is the only difference there. In such a case,
please use "modem_nm.mbn" for the not-modem mpss and plain "modem.mbn"
for the standard one.

> +       status = "okay";
> +};
> +
> +&remoteproc_cdsp {
> +       firmware-name = "qcom/qcm6490/cdsp.mbn";
> +       status = "okay";
> +};
> +
> +&remoteproc_mpss {
> +       firmware-name = "qcom/qcm6490/modem.mbn";
> +       status = "okay";
> +};
> +
> +&remoteproc_wpss {
> +       firmware-name = "qcom/qcm6490/wpss.mbn";
> +       status = "okay";
> +};
> +
>  &sdhc_1 {
>         non-removable;
>         no-sd;
> --
> 2.42.0
>
>


-- 
With best wishes
Dmitry

