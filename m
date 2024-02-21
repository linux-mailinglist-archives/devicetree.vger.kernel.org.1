Return-Path: <devicetree+bounces-44538-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AB27F85ED69
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 00:51:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2108C1F22273
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 23:51:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3996712D76C;
	Wed, 21 Feb 2024 23:50:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NhA3ETk3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com [209.85.219.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E0B512D756
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 23:50:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708559426; cv=none; b=j1sVPYRXEPlGiSASKJ5Qw7c7meIDRsRK45P/u/Sh0/NQQ9CUPpOdk2Ws+IDfnfAkVpEHhL68sKhWp2VDNU4QdhEMH56lZrqeHX55rQD5Z6H7me73GT55CIriv1Ty2SL+CdjaiEFkFexjKT6aIcB25xtik8i3iDFOx4LJfhvZ4+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708559426; c=relaxed/simple;
	bh=y3MIWBK0YFitBa1SLGaOLrvzg2gVwOMZAiNBj6d1t2M=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kQs0H0Qq9T/w9wBQ0Co8K6kV/1JJqffjQ3QOiLy0FbhbXpqxnmq6Ur/eXZDcT7n6C52mIY231y1W3VcEYgao6iG2tHpacjoIq2NVS7BHSkbQhRwyNGmSMTW0UCH+FmkF++EYGJyRUlLLUzRrvLR6O4+RiwwQIg/g+Des+LelC4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NhA3ETk3; arc=none smtp.client-ip=209.85.219.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f171.google.com with SMTP id 3f1490d57ef6-dcbcea9c261so6824650276.3
        for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 15:50:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708559423; x=1709164223; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/XpZt7hzwc3jNcQDwZUZ5vMVTQ3xQ4U9NKZbGKi742g=;
        b=NhA3ETk3NVvQ/4D4ROhT9QG3s9Ax5+t5GQuNDlKakQGiBJnR9NOEWkyYqYOTw5hlkN
         w0Y4qSSStdP7900XKsYL22AOoEO8IB/sNr/0Xb9EUL1uYg7JqqRUle8KeXcCeZT8lJCH
         k220zewx2vNIncGdPkbuxPSdaMMZx6zGegdkwi/fqzdWDEritXZFlYCH7sWhwb1htJFT
         0++fC0Lsya9GGAzuLQR1joLUy420z+u2cI2GKKnaxeaedSKbJF2Psxb978GRpGdlbb0Y
         D5VEDufNXFqzpInzOSmQn8i2bfI+Y+El2XWxRsdYFZFNy2Lkafa3trrzb+XZaqMUwfwD
         fKyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708559423; x=1709164223;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/XpZt7hzwc3jNcQDwZUZ5vMVTQ3xQ4U9NKZbGKi742g=;
        b=X/5JgnJrrvDAkhr7gWIq4Sjs+BA3OZE1FMBojT1eKL/6LMo9u5ZFYfATkOFDVivViW
         NZD6ImTt8BP5gONKN68CNRKkF3jUcaCpr6Ll3tmdWi2+uetq1InpYhh9YUpZkSNSi0SY
         1YyL6T7TfZqc7/2EqSf44zPZlNCp3Uu+RuW/ONXM2HmvoqOAY3A/Wcr6CCk6b/UQpPjO
         k/4mcV5Iz2dX1t81i4l7VVtEN4QYGB2BxUD981Q06+zL33n7B9WcG55Mdl8KD42RtbKx
         Q0x2ehxouHVYNrU6ffxhgGb5I+1DMEu6deixokQfLVrmBtjCcRHD1eB9JRBZ9u1Co82n
         gCVg==
X-Forwarded-Encrypted: i=1; AJvYcCWOzTi0Qd85kyFqgKj8I3j7cCrhhWtoabEKULwFkrbld2FzraRimNYQyHJJa7iSuB1IMFq7OwquMMeobxH2xWo/Z3n/bSzyiFrMIQ==
X-Gm-Message-State: AOJu0YyCdhDdj1Xs9AqZ4aF091mPMoXS32YGV+vASOC7YNU67/Fa8cmV
	23uPsQ06YawqdcXNDDghhauCIchcxKdL6R1nS6H96nj9aooEF1rBo4VgVwbdKGQeXdiYMgQSrq0
	wTPW8Dk5P9gvdqFmpudgGUzb/flKm6sS3EEAl1g==
X-Google-Smtp-Source: AGHT+IGFCpzYN9Tvhba/FP/G+LXkXROeoh+7TE5DeZAwGefezlUG4taS3kLJsE2C4lj2w55Q3QXgdigZ/ja3jgLbmO0=
X-Received: by 2002:a05:6902:220f:b0:dc7:48f8:ce2e with SMTP id
 dm15-20020a056902220f00b00dc748f8ce2emr1016956ybb.37.1708559423600; Wed, 21
 Feb 2024 15:50:23 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240221-rb3gen2-dp-connector-v1-0-dc0964ef7d96@quicinc.com> <20240221-rb3gen2-dp-connector-v1-6-dc0964ef7d96@quicinc.com>
In-Reply-To: <20240221-rb3gen2-dp-connector-v1-6-dc0964ef7d96@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 22 Feb 2024 01:50:12 +0200
Message-ID: <CAA8EJppAVehWUeLAqEAq8A3nq-o2g=8GK--XRVWtDV7-0BCskA@mail.gmail.com>
Subject: Re: [PATCH 6/9] arm64: dts: qcom: qcs6490-rb3gen2: Enable USB role switching
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
> With the ADSP remoteproc loaded pmic_glink can be introduced and wired
> up to provide role and orientation switching signals.
>
> Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 48 +++++++++++++++++++++++++++-
>  1 file changed, 47 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> index ab498494caea..079bf43b14cc 100644
> --- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> +++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> @@ -121,6 +121,41 @@ debug_vm_mem: debug-vm@d0600000 {
>                 };
>         };
>
> +       pmic-glink {
> +               compatible = "qcom,qcm6490-pmic-glink", "qcom,pmic-glink";
> +
> +               #address-cells = <1>;
> +               #size-cells = <0>;
> +
> +               connector@0 {
> +                       compatible = "usb-c-connector";
> +                       reg = <0>;
> +                       power-role = "dual";
> +                       data-role = "dual";
> +
> +                       ports {
> +                               #address-cells = <1>;
> +                               #size-cells = <0>;
> +
> +                               port@0 {
> +                                       reg = <0>;
> +
> +                                       pmic_glink_hs_in: endpoint {
> +                                               remote-endpoint = <&usb_1_dwc3_hs>;
> +                                       };
> +                               };
> +
> +                               port@1 {
> +                                       reg = <1>;
> +
> +                                       pmic_glink_ss_in: endpoint {
> +                                               remote-endpoint = <&usb_1_dwc3_ss>;

This should be connected to the QMP PHY rather than to the USB host.

Also it might be better to squash this patch with the patch 8. Or at
least to get redriver into the picture in this patch (and keep only
display-related parts in that patch).


> +                                       };
> +                               };
> +                       };
> +               };
> +       };
> +
>         vph_pwr: vph-pwr-regulator {
>                 compatible = "regulator-fixed";
>                 regulator-name = "vph_pwr";
> @@ -476,7 +511,16 @@ &usb_1 {
>  };
>
>  &usb_1_dwc3 {
> -       dr_mode = "peripheral";
> +       dr_mode = "otg";
> +       usb-role-switch;
> +};
> +
> +&usb_1_dwc3_hs {
> +       remote-endpoint = <&pmic_glink_hs_in>;
> +};
> +
> +&usb_1_dwc3_ss {
> +       remote-endpoint = <&pmic_glink_ss_in>;
>  };
>
>  &usb_1_hsphy {
> @@ -491,6 +535,8 @@ &usb_1_qmpphy {
>         vdda-phy-supply = <&vreg_l6b_1p2>;
>         vdda-pll-supply = <&vreg_l1b_0p912>;
>
> +       orientation-switch;
> +
>         status = "okay";
>  };
>
>
> --
> 2.25.1
>


--
With best wishes
Dmitry

