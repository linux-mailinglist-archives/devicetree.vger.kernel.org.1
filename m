Return-Path: <devicetree+bounces-112576-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F34A9A2C29
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 20:27:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C6FCC2839E0
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 18:27:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C44A1E0B7D;
	Thu, 17 Oct 2024 18:27:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TKXSEj/A"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB9381E00AD
	for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 18:27:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729189638; cv=none; b=iHUktK/qtjEyMkfR/NH2o68tk3k/xix5UZ/OU1OUbxq7244WJJ4DCof7NGdFMjfakXEN/1Gengw9KV5dEsZEJCL/D45zicvNMNCyNZwkPWapR62Ci2yTr0JnIbPKst7UL6xaGxNS10DOWICnm2mID3/zlrOJ1hjogMnBqfR9ePM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729189638; c=relaxed/simple;
	bh=hb7ga30lPrrAOxRByClB2ldtT2Wkqy4TGWkBSn5WR44=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tOaYLTH6gPDlC2Imr9esRvikXv62UXCPRb7twdKVRU+6ANbPqfel12lw2KKq4dqmZIvgSUd5H0AUif5GuOWFfqt+26nHNS8svgQ1nuFU+h9c/I1F0eM9DqRuQlV4TJ2aLNUY/xPn5Z7ke+j5DQdIVh9oRz0gv+8treC86qNAMl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TKXSEj/A; arc=none smtp.client-ip=209.85.216.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pj1-f46.google.com with SMTP id 98e67ed59e1d1-2e2b9480617so1024938a91.1
        for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 11:27:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729189632; x=1729794432; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=lcOVFkyx88H+mC/bq0EZCpI9upDma/Jw5+qbBpyx8bU=;
        b=TKXSEj/AGcWIlhUScc08S5qFpo6/K2wBUA5pdwy5nNWUDvGvQgC0hszIm3b0naSEMq
         0/UY2YN6QiUhtxHsMY1C5Nau048X/haOzMHyWNiPJNDoz3r5XmsFRVDpM06n2bDwm5VT
         c87F3+aDqYBLfwblLzlZofEHgMUUyzFPJyKLISTRXjrg5Gn1v5+UAM756MK7FN7qQOGK
         HPbnLFIsPFyW3HrqCldgEWp40fMVBPNtALnqWRPNMKT+HHlNl1APc76YwJ5PYTEI1I+k
         u+spmr5jhSc6dZPHufP1b0nFia+X2NS3M6ooC8DHQw1yrpY08hi+JaK4ZZlo8v/QWRev
         NwVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729189632; x=1729794432;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lcOVFkyx88H+mC/bq0EZCpI9upDma/Jw5+qbBpyx8bU=;
        b=fB1QENnwnxu3TNjnAy9Di4Y8FcouY9sWOa1f01tyb2NSnPEwWmNRejBKy4UiRHUF0p
         lJh/4bEY+eqX6t73uMAYvFdx/TUYPj0q94sNIoCBspt+b2q1gAeqcN5uCzbm6OkBDf7s
         emrsFR+09vPb7msEBknGVVNVQq9DvsdmP87qKZ6l0Oq68kbi6zykBa7J1+U1nR9dP8go
         LT5eqqX7AEAbKqgvWNlq/d1acCEJlO+s/SXOAsDSsR08MKTI82R8x1uOh7nod4DmzsSm
         beFnLu8Ufi/FdY7bX2sLqGAmGouD6ti09yNXvNh3yWjUVK7/Md+iizX7eOCRQ9JN3O6V
         PyRA==
X-Forwarded-Encrypted: i=1; AJvYcCU73Wrrmi68ok0apQEBcUhiEOlapDMDPykewRyOJnFSOqy47mfPI3l4kdntNVRJPLC8/16aKzVx7G8z@vger.kernel.org
X-Gm-Message-State: AOJu0YzSdPpHeUT79vsEJEv+R0y9vPZ1HwFqG67PCmsUp9E9iw8TmuTq
	6tyHaBj2ZI2J4LQFnHn/F2Uu1B8o7d/AsZDUggQY97X4FROqwX4cmSfFZ3009I7K2INy3iqrUaN
	FUnJTPXkJQkA/QE7bs/B62yPISnZLyh8jP+dRgQ==
X-Google-Smtp-Source: AGHT+IHq42uS45Aa2zsUDZ2QLKAl8iW2NZgItryZE9nh9Tm5rzwutObVfbkmZNaI/67kuCJcXJFjr+dtin3hgfaxKyk=
X-Received: by 2002:a17:90b:1241:b0:2e2:857e:fcfb with SMTP id
 98e67ed59e1d1-2e2f0b09d89mr24643105a91.19.1729189632162; Thu, 17 Oct 2024
 11:27:12 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241017130701.3301785-1-quic_kriskura@quicinc.com> <20241017130701.3301785-6-quic_kriskura@quicinc.com>
In-Reply-To: <20241017130701.3301785-6-quic_kriskura@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 17 Oct 2024 21:27:00 +0300
Message-ID: <CAA8EJprcOU6qeJvHH+MVoPnQ+mGcos=pDOVBSeSUfBGw-KR6tA@mail.gmail.com>
Subject: Re: [PATCH v2 5/5] phy: qcom: qmp-usbc: Add qmp configuration for QCS615
To: Krishna Kurapati <quic_kriskura@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Bjorn Andersson <quic_bjorande@quicinc.com>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, Konrad Dybcio <konradybcio@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, linux-usb@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-phy@lists.infradead.org, 
	quic_ppratap@quicinc.com, quic_jackp@quicinc.com
Content-Type: text/plain; charset="UTF-8"

On Thu, 17 Oct 2024 at 16:07, Krishna Kurapati
<quic_kriskura@quicinc.com> wrote:
>
> Provide PHY configuration for the USB QMP PHY for QCS615 Platform.
>
> Signed-off-by: Krishna Kurapati <quic_kriskura@quicinc.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

After checking platform details,

Unreviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Please perform global s/QCS615/SM6150/ and s/qcs615/sm6150/

> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> index d4fa1063ea61..c56ba8468538 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> @@ -1123,6 +1123,9 @@ static const struct of_device_id qmp_usbc_of_match_table[] = {
>         }, {
>                 .compatible = "qcom,qcm2290-qmp-usb3-phy",
>                 .data = &qcm2290_usb3phy_cfg,
> +       }, {
> +               .compatible = "qcom,qcs615-qmp-usb3-phy",
> +               .data = &qcm2290_usb3phy_cfg,
>         }, {
>                 .compatible = "qcom,sdm660-qmp-usb3-phy",
>                 .data = &sdm660_usb3phy_cfg,
> --
> 2.34.1
>


-- 
With best wishes
Dmitry

