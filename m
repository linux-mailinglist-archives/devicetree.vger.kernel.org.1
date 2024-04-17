Return-Path: <devicetree+bounces-59946-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 572558A7BFC
	for <lists+devicetree@lfdr.de>; Wed, 17 Apr 2024 07:57:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 11F0B281C06
	for <lists+devicetree@lfdr.de>; Wed, 17 Apr 2024 05:57:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4C404EB5F;
	Wed, 17 Apr 2024 05:57:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oyQdX9OS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347A9537ED
	for <devicetree@vger.kernel.org>; Wed, 17 Apr 2024 05:57:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713333459; cv=none; b=BPXq9d6OU9jBQ1OeLfWoD5+uHg4pUHP5H/dH/NVMjZjtRRsfwLdqwtJJNcV9m317B1+R5ERp/FjNjjvCRKc7OibD+6gJpqOXbzxwC9WhRO3Bv62Xjh38YEqipBnv901bW1I35+R+qw/9LpcXoO2UgKnITYWRFTxycZY6ERs3obs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713333459; c=relaxed/simple;
	bh=+37MR6MdJMZsDizwLtZ66hNEIJ8H6WWiH+pKyVxVm+M=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HrRrD2qLIu3ZrfDh2CGf0IPC6coYK9pGxqoZH2qfTskMbEVB/Tl3qQPT0nqu7Je+9Blo1zRXH/BQFpOLAM/ofgotp8eGaRMdWMLilDyMF1CeMV3Fe9Y5dp80FCb8UDbboiClAFtwZ2JShkfWEj5BR3FcdUQXmrtPrIE3qM0TF+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oyQdX9OS; arc=none smtp.client-ip=209.85.219.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f181.google.com with SMTP id 3f1490d57ef6-ddaebc9d6c9so4747093276.0
        for <devicetree@vger.kernel.org>; Tue, 16 Apr 2024 22:57:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713333457; x=1713938257; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=rNcOWvfk3UIO9gpF1vedzWy9UX8ITuyEtwuAcYcPDTE=;
        b=oyQdX9OS3XwnqqvnV9Yo5QzeRKhxYMDPUxT8GAWmyl7Vow1SDMP3lKiOKPzpQmx7C+
         Ehkv+9pV8OUT82mLXxi2+8j/v4BwYw8NSv1zpMjzJiZkKhIf0vIRrtxPfouMvB3otU/D
         9ZgZiVh/yNkx6H4q5x3Ve8M/G8H48/lWzEIzWIg28P5H5dlyKmqOKsL5gKsQstQ3mF9z
         HjKa7XNBr9DpEtUfUazLaIJ+LMhSrDO0MO8GDeHZ4Wx2yTNXQ4VCvPJ0nbTs6a9MnvYG
         J3ITMn8MWPj/vaLGVmfpmnv9fSOGCBqOAaf3NsuH8T0+zRyo4BWKcLF1I0MEjIsTTRfc
         gg/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713333457; x=1713938257;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rNcOWvfk3UIO9gpF1vedzWy9UX8ITuyEtwuAcYcPDTE=;
        b=e9Uuj1DMeaIIbfjUOf1QQL6nKXbzBqj5RLaDx8G4PltBhYTClq2b/82M9kz5rL3fvd
         gyFKkafLGZky7CZ1LNzALOm3jNv0h41qy7l4Ti+mE2xOnl2vsEt2+OkxxHbMbc0JlWYX
         +xnQ7amkVZb55BQ6b7xS4EM/NvOAN4LO+2CfCEGC3WeLMZc0lgYRoOjSwaatYU12GZgv
         POGxAEHl2ZhYsR9S5rnQ4s9thRnGjyfC5Y0n1VI7fyMbueG+DRArWWchPnAoVlGWuFlY
         cIvBS5i7Rq6Uy0PUp1B34Rh2e+nwPpMw0JjeCcLnKd//Pe4yQkDJQO2M7TkcG4oxn0cU
         zRMQ==
X-Forwarded-Encrypted: i=1; AJvYcCVtkgkUHbPQWEjPlYjLI+X+QFu6G9oRvSu1QrGwlPiIyDSwhMatjmvYRX13GMffpccIPahfAo99UkHVue2nAoLtXP9gRliuJI2Qpg==
X-Gm-Message-State: AOJu0YxvDqrbj0sEYVv/lE8c99KWtTLK0riFqw46+VYA5g8a1bX2jo1a
	fH77vD/BpZajUDeWopnv943YzscAw8TB38oNR2tRa/NW/OTF9QInyftUil1IF177wGLUiDaevPQ
	Q/sfEN8bNj656mmGEODe4UdvtnWYmGhesmxdvGQ==
X-Google-Smtp-Source: AGHT+IFvUyY4VR6NF7RdZCvXFlEENeC2C1SHZuye8tqXC6fIwkIUmwR3VOt9Upi8bmgYZVnv+2wX6k4TBDNDViUqr10=
X-Received: by 2002:a25:81ce:0:b0:dcc:245b:690e with SMTP id
 n14-20020a2581ce000000b00dcc245b690emr8017444ybm.40.1713333457167; Tue, 16
 Apr 2024 22:57:37 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240415115603.1523974-1-github.com@herrie.org> <20240417045207.3594931-1-github.com@herrie.org>
In-Reply-To: <20240417045207.3594931-1-github.com@herrie.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 17 Apr 2024 08:57:26 +0300
Message-ID: <CAA8EJpo=nd8ywUzz2e42p7WAyuFm439yvNf6H=MD63LCV0xTnw@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: phy: qcom,usb-hs-phy: Add compatible
To: Herman van Hazendonk <github.com@herrie.org>
Cc: andersson@kernel.org, benwolsieffer@gmail.com, chris.chapuis@gmail.com, 
	conor+dt@kernel.org, devicetree@vger.kernel.org, kishon@kernel.org, 
	konrad.dybcio@linaro.org, krzk+dt@kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, me@herrie.org, 
	robh@kernel.org, vkoul@kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 17 Apr 2024 at 07:52, Herman van Hazendonk
<github.com@herrie.org> wrote:
>
> Adds qcom,usb-hs-phy-msm8660 compatible
>
> Used by HP Touchpad (tenderloin) for example.
>
> Signed-off-by: Herman van Hazendonk <github.com@herrie.org>
> ---
>  Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
> index f042d6af1594..ccf23170cd17 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
> @@ -15,6 +15,7 @@ if:
>        contains:
>          enum:
>            - qcom,usb-hs-phy-apq8064
> +          - qcom,usb-hs-phy-msm8660
>            - qcom,usb-hs-phy-msm8960
>  then:
>    properties:
> @@ -41,6 +42,7 @@ properties:
>        - enum:
>            - qcom,usb-hs-phy-apq8064
>            - qcom,usb-hs-phy-msm8226
> +          - qcom,usb-hs-phy-msm8960

This should probably be msm8660 rather than 8960

Note, nowadays the rule would be to use qcom,msm8660-usb-hs-phy
compatible, but I wonder if we should enforce this for such an old
platform or whether similarity wins.

>            - qcom,usb-hs-phy-msm8916
>            - qcom,usb-hs-phy-msm8960
>            - qcom,usb-hs-phy-msm8974
>


-- 
With best wishes
Dmitry

