Return-Path: <devicetree+bounces-192667-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 46599AF73E3
	for <lists+devicetree@lfdr.de>; Thu,  3 Jul 2025 14:24:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 647D87BA1D0
	for <lists+devicetree@lfdr.de>; Thu,  3 Jul 2025 12:23:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BEC342EF640;
	Thu,  3 Jul 2025 12:20:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DJXzZJOk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34FB32EA74B
	for <devicetree@vger.kernel.org>; Thu,  3 Jul 2025 12:20:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751545212; cv=none; b=Bt8MbprodinUKc5LFPdGFA4fWcHpLVmlWsLY3D/GfoUhpXddP/AHxNXQUbEnDS+F0XVDYzKGXjAyCRZhGeo01iXZ+Bg9ffGZbIR969kLgmEX3d70qS3tM9txnnXhBkeFl2wFiOPhsaSJmQFFarP/9IvqPcbl9XLoORIPDOPchGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751545212; c=relaxed/simple;
	bh=H22Cm7fAW2Mgix3sRqzR1xLudwssIplbSErTvmzGv3A=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=iM25IHVJSjeUG1fZdhQpWbUat8Yw4xYbXQseOD5I2GiKU2AzATbLlKkInQrtG94DvcVatjGBD/8ori2ZACnrLgoVFp75ubUxfbrnPSFWJLXveGbll3JEy6iL59zEPWGOKfxo2tdDFpfijeheYSxZS6Er32KmJtsgtBtxCrws8Lw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DJXzZJOk; arc=none smtp.client-ip=209.85.219.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f181.google.com with SMTP id 3f1490d57ef6-e81a7d90835so4591236276.1
        for <devicetree@vger.kernel.org>; Thu, 03 Jul 2025 05:20:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751545210; x=1752150010; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=LJfwdzUcr077GDT95X0ikFnOKfcLc/LKi5CDyQoMdQA=;
        b=DJXzZJOkPLA0wrKmKvpP1dWoueX82Jqw0EKwkQaedkMPaDxW4DbktalE+5S84MdCg5
         rs6/mkLyOTPUM3ZvRGMU4J6GWkVtjslmdBFZtZsbVWSsRMDxXOo1MYKmF1nB5wiirX6Y
         7D/zMFmsGSfOrqa5AbzWMvgmQ5B6MgCBl9R6efXSChKRj0U91ervPfQ8v8HTa4OHHL16
         tPaDehHDkKvyPHQ6XxCvVKV93gPXPttOVWgMPzQIoTbyUispQf4kzfu7KPy2WA6Jgtt2
         lYpEsDyUXQcNDTnBbOLtVThfMh1sPOXuUgIoxKEhSBp5n1O1P3/i4FMPeuBu/TDwgqTO
         eDbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751545210; x=1752150010;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LJfwdzUcr077GDT95X0ikFnOKfcLc/LKi5CDyQoMdQA=;
        b=kCZxfOVOP+uVPSNyIjinyNO5y7h3GS/qLA0h+P0O0BYYBYwvQcag7op8aJdT03pkV5
         lkfHkZulapTjR2ONkPVkFuFjZtTsHNGzUysCcuewiu+nm+V187Oiu6WZbYVkQR8H0ziI
         5DZ0r92UIv4CucqwJSDf9XiZ4QBeSwCiBea50MoUJnPXlldnpvXf8zgzcysAFfGBz3FP
         5fCk29d7FDi5i51UnNa+o65td5HWoFBvT/IeFHXw3tK2A7LIbp2TxxzPZ1lEUI5ptP/n
         KL7bjlRGsayrl7VwNRLJw5dHvHsbYTlRQo0ijrrKRHkv3rf3NZXbP66abJdDnCEqrF1r
         rhGQ==
X-Forwarded-Encrypted: i=1; AJvYcCU35urcFQkMbUlq8+lr7m7amUcycYTwrdbF8rFVwYpdlG3YAsxyt1z4OdviipBtFX2OHIw/vX2i+3mL@vger.kernel.org
X-Gm-Message-State: AOJu0Ywchr8efioZf95OA3bIidqyfs7rYZlI1mz+anZ4Ge2GQlyVeblP
	dY1zrH8oPTzgTPOI4ZMwkvmloF9mpmaUOODOJ/zGfiVYKerYaBMJXKzl60n2cwzaFfwphmIANgQ
	7ll1yib2xDytg/utg+/nBgxcMJ8o3gI5xvBKBzz9ceMbvPTcAEcpg
X-Gm-Gg: ASbGncv1v75M8n6sjez1vErbdMba2fa6/R9jUnwxyd/LI788/DR+pgWELD15/RBvtrq
	TMjRBTBJUI5PVx04u/ttcSbwFBoQJBBZRdFhF3YqqyeDQy8EpAiQ533Rg8RbpouskHu/1hSe/fT
	uohlp7pvAN8Z5rZYmP7kLVAQ08Zh+8anKICU4jJQGFLZoobasBhVLPo5s=
X-Google-Smtp-Source: AGHT+IH5KK9d/YuYxQOB2tPs48I1FLMdjmeeJGaqw1PPBtxv5ff4Hj3lOd6N/27ae75D8h/sJhJCSFTlBM89Ljh9umw=
X-Received: by 2002:a05:690c:6ac2:b0:714:250:8355 with SMTP id
 00721157ae682-7164d26c4a8mr89863427b3.4.1751545210173; Thu, 03 Jul 2025
 05:20:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250702085927.10370-1-quic_sayalil@quicinc.com> <20250702085927.10370-2-quic_sayalil@quicinc.com>
In-Reply-To: <20250702085927.10370-2-quic_sayalil@quicinc.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 3 Jul 2025 14:19:34 +0200
X-Gm-Features: Ac12FXy4OCjuCOdO4kTz7sGzO0ku__i49w4Rk35FXh2a6GcbuOrgABPgI4LBfco
Message-ID: <CAPDyKFrP3EqozUObUZuS3D26YOwnViSrWSOcdNX8J6419TpPKg@mail.gmail.com>
Subject: Re: [PATCH V3 1/3] dt-bindings: mmc: Add sdhci compatible for qcs8300
To: Sayali Lokhande <quic_sayalil@quicinc.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-mmc-owner@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 2 Jul 2025 at 11:00, Sayali Lokhande <quic_sayalil@quicinc.com> wrote:
>
> Document the sdhci compatible for Qualcomm qcs8300
> to support function for emmc on the Soc.
>
> Signed-off-by: Sayali Lokhande <quic_sayalil@quicinc.com>

Applied for next, thanks!

Note that, you didn't send this to linux-mmc, hence it did not reach
the patchtracker. Please make sure to update the to/cc-list next time.

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/sdhci-msm.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
> index 2b2cbce2458b..5ba2da8dbc7d 100644
> --- a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
> +++ b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
> @@ -45,6 +45,7 @@ properties:
>                - qcom,qcm2290-sdhci
>                - qcom,qcs404-sdhci
>                - qcom,qcs615-sdhci
> +              - qcom,qcs8300-sdhci
>                - qcom,qdu1000-sdhci
>                - qcom,sar2130p-sdhci
>                - qcom,sc7180-sdhci
> --
> The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
> a Linux Foundation Collaborative Project
>
>

