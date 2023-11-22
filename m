Return-Path: <devicetree+bounces-17847-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D35A87F448E
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 12:02:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8BBBA281588
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 11:02:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F3502206C;
	Wed, 22 Nov 2023 11:02:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VppQyigM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-x36.google.com (mail-oa1-x36.google.com [IPv6:2001:4860:4864:20::36])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 97F9812C
	for <devicetree@vger.kernel.org>; Wed, 22 Nov 2023 03:01:55 -0800 (PST)
Received: by mail-oa1-x36.google.com with SMTP id 586e51a60fabf-1f066fc2a2aso3114143fac.0
        for <devicetree@vger.kernel.org>; Wed, 22 Nov 2023 03:01:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700650915; x=1701255715; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=PFE8V0akmDhV9uHSFYH1mN8FnS2rSR9n1F1LBeYJA20=;
        b=VppQyigMPmmgIoYBSMyQSC6at4GaNvd3aLegkEeLdEcpHlarqTqS2vvsEd2R9szDMZ
         BCqm4tEhgloIuj30LC7kXSuDR5sUCRHsSKRe8OPEoDd7OPYcEDdGqZbE/T+hnQ4SYmoT
         QsjfPKvEzbMpipx0esTqlh7Sxagcn9wd04PPSQbF3qUHcuQ06EJUOvAuz/P7qOdtpZ/G
         EuSh24fqxsXpzxaDz5mSq24foUE+vm1tpVDzpMIYczRrVPkFaaH4U5YXzALxdablWIxu
         yHOizt4F2grISZrxt7XRgCDWQIIxKuqmA2jjBs9nkbbhaNE1uEnHPy8+Fifeo5ZX+8Bn
         yCCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700650915; x=1701255715;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PFE8V0akmDhV9uHSFYH1mN8FnS2rSR9n1F1LBeYJA20=;
        b=FnoEk/iqfcL220PSMGbS4enRKlNla72yIWjPsBa3TTsgdcJ2saz8rywqluSGEsJYio
         W5lGyqRKE79RSdCKGRsv/tC1hB8o/NQ0U1Pn+B9baI2HV8hUxR5J3k3noVWATtbqfFwC
         bPN6GYOpd794+wU1lfugvmDxxmnvGaO/2esafr36FNVJwDGPSx19AaGS8VINnHCGMOcg
         qVfvKtzYfyQJfoaDECz2swO/jJJrJ+zsjSDpMXNnj+VjAXaVrH7i38Tpne6fjgALTy8h
         IHmmA2lb8gf0lZDsknWXQm6GhZpMBm8KCSOMrdY8gVOvT5YlvF9BTGdiLOezuPiVAbJq
         VyLg==
X-Gm-Message-State: AOJu0YzuNiL+UN4DXxWG6G8JY8Nnom+vDYw1cufKhS0yXY9I6bEi875X
	GYwC9LKnjEtiPrV5rGe7pkN877azcbdgP+hD0JvwAg==
X-Google-Smtp-Source: AGHT+IFxH7sdOzJBY6zKxWc8FlDU8QSdgfsWOQ/oCSLnXUeoKO4tIZGuybTYw8pZH0Y0CYMbDI2kbVOkLaxffa86JNU=
X-Received: by 2002:a05:6870:7e13:b0:1f4:ecdb:fb2 with SMTP id
 wx19-20020a0568707e1300b001f4ecdb0fb2mr2651247oab.54.1700650914865; Wed, 22
 Nov 2023 03:01:54 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231122-phy-qualcomm-eusb2-x1e80100-v1-0-ce0991161847@linaro.org>
 <20231122-phy-qualcomm-eusb2-x1e80100-v1-2-ce0991161847@linaro.org>
In-Reply-To: <20231122-phy-qualcomm-eusb2-x1e80100-v1-2-ce0991161847@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 22 Nov 2023 13:01:44 +0200
Message-ID: <CAA8EJpoKEd8B7KTwVb0TEk+Yk3kRXfhvtcdk0QUirOOV4wnUYA@mail.gmail.com>
Subject: Re: [PATCH 2/2] phy: qcom: snps-eusb2: Add X1E80100 Compatible
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 22 Nov 2023 at 12:28, Abel Vesa <abel.vesa@linaro.org> wrote:
>
> Add the X1E80100 to the list of supported PHYs for eUSB2
> SNPS driver.
>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-snps-eusb2.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/phy/qualcomm/phy-qcom-snps-eusb2.c b/drivers/phy/qualcomm/phy-qcom-snps-eusb2.c
> index 1484691a41d5..6420f342dc85 100644
> --- a/drivers/phy/qualcomm/phy-qcom-snps-eusb2.c
> +++ b/drivers/phy/qualcomm/phy-qcom-snps-eusb2.c
> @@ -425,6 +425,7 @@ static int qcom_snps_eusb2_hsphy_probe(struct platform_device *pdev)
>
>  static const struct of_device_id qcom_snps_eusb2_hsphy_of_match_table[] = {
>         { .compatible = "qcom,sm8550-snps-eusb2-phy", },
> +       { .compatible = "qcom,x1e80100-snps-eusb2-phy", },

Do we need a separate compatible string or is it fully compatible with
sm8550? If it is the same IP block, maybe you can use a fallback
compatible instead?

>         { },
>  };
>  MODULE_DEVICE_TABLE(of, qcom_snps_eusb2_hsphy_of_match_table);
>
> --
> 2.34.1
>
>


-- 
With best wishes
Dmitry

