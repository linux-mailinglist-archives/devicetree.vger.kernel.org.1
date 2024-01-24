Return-Path: <devicetree+bounces-34502-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9790383A01C
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 04:33:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 39DCC1F2CA37
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 03:33:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 984376123;
	Wed, 24 Jan 2024 03:33:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="n0VlnnG8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CC82BE74
	for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 03:33:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706067214; cv=none; b=KblY3slNxdk8mCIDVNauiCWTqD41pkcY9nNGAMsS8ffxoAQZ+6bEA28wcQ44w41pCcVtNvD0BZhkUpf7ufWCugblQRXnYqzhUjqZ9kVccsWu0qbI33cD0KkHlEuOypUHgduxgtEcmIxjzM+IJDx4EhDJPJlVOOVXWM7l4ph1YGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706067214; c=relaxed/simple;
	bh=g/m+1nEdRXifGhS61lWzGasqSDIMLxiCVv+HkeeLgRM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=EdbD5GYqQwlKs/OzOvrfBp8j18NYqDq5FLxqj/mqA6s7yPKUrbh0yoPGWH+df5t4PEKUsmkJkI8o5SzhZFXBOZiGqnkVjCA0Mm/DDqyvQK+7NOwf9iUfxfZLNkHA3vilg+h59wMrzzIYLXD1ihG2dD6yWcu1xY+79iuhhtaGcuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=n0VlnnG8; arc=none smtp.client-ip=209.85.219.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f181.google.com with SMTP id 3f1490d57ef6-dc25099b084so3252736276.0
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 19:33:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706067211; x=1706672011; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Wc0A1k/7YMLXea6xhKdK2KO1S9xlAAnHvAkEcbtMgWs=;
        b=n0VlnnG8xyfBICSrONnDAyzUUajrGXC4jC22lOzyOTLNHdq5P0VXI6175S43sslCLg
         8RN0Ihors804nU+ll0I+IT7W3s/EI3KpxBQignyp0ufPsDKvrRAJ1+ogi+ZzCKQYr6TA
         NN01/WvoGjP/iRorH36PldRQgCgybURAst885YBQ+cZRilbBYH+iCE2IlHKHfpHhFslx
         oljfdtcFcHS31njJr0PHRvgi/NyQHuk8FlBq2CnEJ6EzLCq9CCKeyW+JXDIuIXwsxZ0l
         Nbf21c4dxjFih0mG6x7rOsz+DdQZffMbetIjYn53YUI+90q5FUij16UkFCkeliPP9bH+
         tPJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706067211; x=1706672011;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Wc0A1k/7YMLXea6xhKdK2KO1S9xlAAnHvAkEcbtMgWs=;
        b=DCCEeIysa92kA2QZ4WBUbYASN8pc7/A8iKYLLXxR7AAWMxmUCOEngOgRwzOuz1wzBv
         Fdelr1bHpCrAQcXcQvlTxmyIylGABx6CLjBa1PX3JSkmC6uo1MQd51mp1QLWCgmoNsu6
         +16WyZQu1dYqnixoFYLHTnpnKlfIlw+OOrmIuVhKtIKEQz41KI/Pov7oXMoPr23o2dL0
         DCuEpk8bfCFjS1kJYtrNOojfahLa/d7giWIPwa7DgXy3e/4UnIU12N7I/VFsQiKr4Y/g
         Lza+DX4ZrcGPTkZxvjs3PVIFJsBbDMU7wVw4hL82zzTCuh/gqeGevf3lcinFzmhZO9X+
         mBeA==
X-Gm-Message-State: AOJu0Yy9dwK9kkRrMQF5U5hQzpLexT1UyXu6NNJ3XnCLlvEImoFOwYcY
	D0G8zuOqiEe+SEhEwdZN+ZCxXmbuGGyG8sM/k3abn4H5FaSWimbcfmcQ1+yz3ahS27zAWVed64m
	l6gs+3jj7cu+YFTZI3COaB6SifyyY5nIJRPVUhA==
X-Google-Smtp-Source: AGHT+IGdWzzO4xfUM06uANHv4YCY0KTFoCAf9r4oksDWnT70n9BD76/RrW4NMEBu4iEGHildUvFcJdMdvfNw9DZ7Slw=
X-Received: by 2002:a25:6b06:0:b0:dc2:466a:23bd with SMTP id
 g6-20020a256b06000000b00dc2466a23bdmr146538ybc.54.1706067211398; Tue, 23 Jan
 2024 19:33:31 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240124023305.15755-1-quic_tengfan@quicinc.com> <20240124023305.15755-2-quic_tengfan@quicinc.com>
In-Reply-To: <20240124023305.15755-2-quic_tengfan@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 24 Jan 2024 05:33:20 +0200
Message-ID: <CAA8EJpqkDcqjn-8HrK7=rRe49ycDY6fbNDCKKQOeUpa_EDjFtw@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: pinctrl: qcom: modify the wrong
 compatible name
To: Tengfei Fan <quic_tengfan@quicinc.com>
Cc: andersson@kernel.org, konrad.dybcio@linaro.org, linus.walleij@linaro.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, kernel@quicinc.com
Content-Type: text/plain; charset="UTF-8"

On Wed, 24 Jan 2024 at 04:33, Tengfei Fan <quic_tengfan@quicinc.com> wrote:
>
> Use right compatible name "qcom,sm4450-tlmm" instead of
> "qcom,sm4450-pinctrl".
>
> Signed-off-by: Tengfei Fan <quic_tengfan@quicinc.com>
> ---
>  Documentation/devicetree/bindings/pinctrl/qcom,sm4450-tlmm.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,sm4450-tlmm.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,sm4450-tlmm.yaml
> index bb08ca5a1509..bb675c8ec220 100644
> --- a/Documentation/devicetree/bindings/pinctrl/qcom,sm4450-tlmm.yaml
> +++ b/Documentation/devicetree/bindings/pinctrl/qcom,sm4450-tlmm.yaml
> @@ -17,7 +17,7 @@ allOf:
>
>  properties:
>    compatible:
> -    const: qcom,sm4450-pinctrl
> +    const: qcom,sm4450-tlmm

Fixes: 7bf8b78f86db ("dt-bindings: pinctrl: qcom: Add SM4450 pinctrl")

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


>
>    reg:
>      maxItems: 1
> --
> 2.17.1
>
>


--
With best wishes
Dmitry

