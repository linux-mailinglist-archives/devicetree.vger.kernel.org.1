Return-Path: <devicetree+bounces-27370-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 413D681A0F6
	for <lists+devicetree@lfdr.de>; Wed, 20 Dec 2023 15:19:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 741C01C22DED
	for <lists+devicetree@lfdr.de>; Wed, 20 Dec 2023 14:19:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC9C338F9B;
	Wed, 20 Dec 2023 14:18:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZKX3SwHk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 058563A266
	for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 14:18:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-5e76948cda7so22072997b3.3
        for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 06:18:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703081936; x=1703686736; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=0dJ/uTYOAXQ9/VO+SpE3eiUrHkLtjwxggeQpM/8y8I0=;
        b=ZKX3SwHkhxRkpt2AZ0SJxa/dcXoE42aLpXzmYzxyVkWrwqga54YEZJfApXi9Sm0pAq
         89zkA9pVJhnaUo2C4Bl/M9Wwh2iNjDHtTz0UzUQ311Cee3rN8dKw7pZWkYFQW+2wYqq+
         XWos3gFdTEkLRUqSTmseG5OSfg/NfM9XklLm1Bjye3qqujZ14k+Ks0uGYcazZ5XXDgvX
         MTANkztdbj6bZakjooAWdNauPIMK9+Lu/dD0NGyUYqVWYeb5Wk0RKsPrrC1ZBvYpgPq7
         ngl7jtYPN2sbYqas3gRTTRtGvOJaLSCSW5gGt+++uuPfPB+w4eoZPeJAG/LpEaCK8i9R
         /lZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703081936; x=1703686736;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0dJ/uTYOAXQ9/VO+SpE3eiUrHkLtjwxggeQpM/8y8I0=;
        b=LQp4Q9Yu/lLEHOoUfqerfJhDSCqR2UDuu9b/xnqnBHo5fz7WUxggGsjzESgxzOzcFs
         sghHz0QXaUeFMhzalCMqEXEbY5v7wIc1vV2ul5lc/UPWm0XDItK3DKvl0bDooukrc6u8
         nEOWujKB9V/covFTJdDuapjlTFHsp22rPSNOjrocCiuUxyo0JbJvF41n9oWSqcpJdz8U
         8rjAZ0Vp6AY57LVfZTvhAzoPtM8+rf6iFHnKdxrhbcGeZWWrS0BaN4SbPjomaUvlicFL
         Ubdp9dxMyeTB1oUgkVTIRH0yTnThM5UAfFbRhLqAw7nm1AaC7vTv2eDGSwX1wqaMJZya
         ZsLw==
X-Gm-Message-State: AOJu0Yww1YFvfY5aV3bpMLDNJI4+TPK9yccrPNIb/IUjkIMkNRpbzZL4
	VW5XtdPhXxNTyEjp0G0i55gDf6P4bRZloNyEvBGJdQ==
X-Google-Smtp-Source: AGHT+IGYeV0v/WtQuzYBXkz8MyIbFUmMaWaLwF2L65FzaM7MvZgbusGiiqhH18ISHE/cxMHp63q9EolKbR34g5Yw7zE=
X-Received: by 2002:a81:5b45:0:b0:5d9:36ee:50a8 with SMTP id
 p66-20020a815b45000000b005d936ee50a8mr15930266ywb.2.1703081935494; Wed, 20
 Dec 2023 06:18:55 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231220-fp5-pmic-glink-v1-0-2a1f8e3c661c@fairphone.com> <20231220-fp5-pmic-glink-v1-2-2a1f8e3c661c@fairphone.com>
In-Reply-To: <20231220-fp5-pmic-glink-v1-2-2a1f8e3c661c@fairphone.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 20 Dec 2023 16:18:44 +0200
Message-ID: <CAA8EJprW-ZTf8azegjb6H-tx01JGRgifL+AeKiPW_pc+k4PPhQ@mail.gmail.com>
Subject: Re: [PATCH 2/3] usb: typec: ucsi: Add qcm6490-pmic-glink as needing
 PDOS quirk
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, cros-qcom-dts-watchers@chromium.org, 
	~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 20 Dec 2023 at 12:04, Luca Weiss <luca.weiss@fairphone.com> wrote:
>
> The QCM6490 Linux Android firmware needs this workaround as well. Add it
> to the list.
>
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  drivers/usb/typec/ucsi/ucsi_glink.c | 1 +
>  1 file changed, 1 insertion(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

