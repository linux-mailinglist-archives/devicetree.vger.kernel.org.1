Return-Path: <devicetree+bounces-17856-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A70CE7F44A3
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 12:03:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 475ABB20E5E
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 11:03:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 157A83D989;
	Wed, 22 Nov 2023 11:03:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SrQwfrir"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-x112c.google.com (mail-yw1-x112c.google.com [IPv6:2607:f8b0:4864:20::112c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7CB40112
	for <devicetree@vger.kernel.org>; Wed, 22 Nov 2023 03:02:56 -0800 (PST)
Received: by mail-yw1-x112c.google.com with SMTP id 00721157ae682-5caf387f2aaso27881697b3.3
        for <devicetree@vger.kernel.org>; Wed, 22 Nov 2023 03:02:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700650975; x=1701255775; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=judoGuVj96yz0cfO1+LrQgdiCfR9oKHOka9ldKzU/iQ=;
        b=SrQwfrirV/5VWQilXkyfyRtt5jvd+FoLmuNpVWivxbn5oUnX+jRa2MOecV/oU9La3v
         ZYH3iVBOSwd9FwY+YKEPqVMEUmxNF/GnAmWAsDKXDDwaNg6Wq8KO9yeIB4xqR1UnTmtI
         qeHFlJmciGDxuNA9QIN3z6uAQ01dbiT7dF2/ILFTee76YpuZMFdn/cW2uTxyfY13LZrx
         i+M9OAegEWqsVY/mULJWzRt9Qv8qOlbI9MNoAGxB2ZnsG/eayPJhGb8sUyJG/DiqG3Wb
         EEq2G+u8yh6yu6QTI6YKdnQqNhw9NkNsm29/ccsyPGqxBC/JHEyN5Uzg2DYSuL8Fkjl3
         gMRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700650975; x=1701255775;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=judoGuVj96yz0cfO1+LrQgdiCfR9oKHOka9ldKzU/iQ=;
        b=UwHFHQZ4w1BqIQOjUNmN6VWCQEd93WfLiMjd5JgptHHfa03AOXRSIYyJDpgwBJAfFq
         Yi6jCKE8xY/Zpiq/yxhNzxaUaYp9ANNe5vrU+b7kooaSg0q14qyLcZLNTTF0v3rIGimV
         6e034XKO5CEgZ/sPJnQ9itYcSNOEemr9hMgjQ1GnmnTOIk9dGIvmPSX+K6Lb8xlTC5Y8
         FbiS7xZmDAk/wctHYIubMwRT5F0lHEEU/crgwlU/db/YEih1gtAzlnHYyzkfBim2bTA2
         gmIwizxpVbtOAwezt7lNEbvALur8AlNuVE4G0+iUXe6XHD3bqfo/Gjg8/RbpsYS09wj3
         76nQ==
X-Gm-Message-State: AOJu0YyO3M6rwm6R25R/Gx+wp9mhZ4pTKvCQ+eSOk2Lu5ibd2dE5zXkP
	424uFOE8NQ7v+o7LfEOpP3G5fYMtofRa9F+ww3023A==
X-Google-Smtp-Source: AGHT+IG7QtdXMD/IbuQvfyaSezE4/wn9Rzi9wEyWCao4R2S63hXyZv7aDlf2lJ46E658E4CV4osFbPqMxC2QwFZs1R8=
X-Received: by 2002:a81:93c4:0:b0:5a8:2037:36d9 with SMTP id
 k187-20020a8193c4000000b005a8203736d9mr1961750ywg.25.1700650975747; Wed, 22
 Nov 2023 03:02:55 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231122-phy-qualcomm-eusb2-x1e80100-v1-0-ce0991161847@linaro.org>
 <20231122-phy-qualcomm-eusb2-x1e80100-v1-1-ce0991161847@linaro.org>
In-Reply-To: <20231122-phy-qualcomm-eusb2-x1e80100-v1-1-ce0991161847@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 22 Nov 2023 13:02:44 +0200
Message-ID: <CAA8EJppov1ZtJvxyiXwik77bs5=dDfE_k_Wv8-DyzYtoEzvv4Q@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom: snps-eusb2: Document the
 X1E80100 compatible
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
> Add the X1E80100 compatible to the list of supported PHYs.
>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
> index 8f5d7362046c..ea1809efbf56 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
> @@ -21,6 +21,7 @@ properties:
>                - qcom,sm8650-snps-eusb2-phy
>            - const: qcom,sm8550-snps-eusb2-phy

Ah, I think this answers my question for patch2. Can we instead reuse
the existing compat string as it was done for sm8650?

>        - const: qcom,sm8550-snps-eusb2-phy
> +      - const: qcom,x1e80100-snps-eusb2-phy
>
>    reg:
>      maxItems: 1
>
> --
> 2.34.1
>
>


-- 
With best wishes
Dmitry

