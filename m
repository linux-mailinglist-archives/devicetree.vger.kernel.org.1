Return-Path: <devicetree+bounces-16307-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 020CA7EE433
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 16:28:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A88CA1F24CB8
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 15:28:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9543E33061;
	Thu, 16 Nov 2023 15:28:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dQwVOEE/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-xb2a.google.com (mail-yb1-xb2a.google.com [IPv6:2607:f8b0:4864:20::b2a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AAD52126
	for <devicetree@vger.kernel.org>; Thu, 16 Nov 2023 07:28:05 -0800 (PST)
Received: by mail-yb1-xb2a.google.com with SMTP id 3f1490d57ef6-da7ea62e76cso946362276.3
        for <devicetree@vger.kernel.org>; Thu, 16 Nov 2023 07:28:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700148485; x=1700753285; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=XbQyuv98++24BgGDt8H4Wvh2xIc39NqFPTht4ua8dxA=;
        b=dQwVOEE/Zy3pUtFvWhyTR0qcpqTr5kkpKN7Vdiu5iBoS2kRDkC1enK3Ww/5TkXwDpm
         r2xHQH9hw5Pj9tGlpHkkOxPRJQqUyijj+yik3lLCZrSUqiM9sCcNPOjb6Q0QjHOlS0Zq
         bepkUeylH36g3OZ3++xw0uY+DckkaAFaBag3NT01CsNDVFhnYrDL1q2ln2dPWilJYUjg
         SwZeDpIj8Ar8oHw2gGIsTy91AXd2pp0z0YddiYpCUMMO5DK5x8qZZh4/Nqb5nAgPycM+
         Bq2BC4X6SzHRWqcX33HilQuWZhysWEcoaLqWtgcs68hMtjUmZ9plMwEq8V9wygLMTOCC
         3SXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700148485; x=1700753285;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XbQyuv98++24BgGDt8H4Wvh2xIc39NqFPTht4ua8dxA=;
        b=RpKRhRh0CGGkC3wpxh2iUb6Tnx85HROy+7uu04Tn7pPGGtAkzWWr988i3La7pB7eSo
         Q0p3mCrx+3YBgKM8pcAhCTk86JoFQTpfgHKt6qTndLiNyz0A/v0DZSN2WbmVEPkGnCJR
         R5SeuxlsbYu751JWKYdmlrsMGpgNPAdvuItwudoOchb2/Ozub+suQsQLwfmGOJv/GY/g
         7eBosW0v23X1xl9OJKevFRYcx/imgukDeX0J80gNpQr2vFdZY0E8bAMfjENF+3DG6eJl
         CmelR440IdeO2+94zDoJS7tiFBU1y6aUod1tDFWpiYzhPObQUgN/hWow7ozILGqk4QRQ
         ub4A==
X-Gm-Message-State: AOJu0Yyw62aYwKZ5MvvDnmj6El+eqnIqs/VfLiSYGJg2miZuxRO4r5ke
	2ngVPfGK6RHXsTfFcWe7WilGWDXrZK5/kjtA+xubrQ==
X-Google-Smtp-Source: AGHT+IGWS1tsiAv66z5V1gCYE+nGUFQ0gxoi/k71NwlWQQguiLtl6Q3qrrPBu3fNc4Ew6ZcZxspdMLaia8OHgAfzKks=
X-Received: by 2002:a25:c792:0:b0:d9a:5895:2c74 with SMTP id
 w140-20020a25c792000000b00d9a58952c74mr14868240ybe.42.1700148484865; Thu, 16
 Nov 2023 07:28:04 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231116032644.753370-1-quic_jprakash@quicinc.com>
 <20231116032644.753370-2-quic_jprakash@quicinc.com> <f7065032-206f-423e-bb03-0b808ff16868@linaro.org>
In-Reply-To: <f7065032-206f-423e-bb03-0b808ff16868@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 16 Nov 2023 17:27:53 +0200
Message-ID: <CAA8EJprn7NfYAPGygus-Yxyu=kCiGYyEksVv9S3QkP5HNwVzVg@mail.gmail.com>
Subject: Re: [PATCH V2 3/3] dt-bindings: iio/adc: Move QCOM ADC bindings to
 iio/adc folder
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Jishnu Prakash <quic_jprakash@quicinc.com>, jic23@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, agross@kernel.org, 
	andersson@kernel.org, konrad.dybcio@linaro.org, daniel.lezcano@linaro.org, 
	linus.walleij@linaro.org, linux-arm-msm@vger.kernel.org, 
	andriy.shevchenko@linux.intel.com, quic_subbaram@quicinc.com, 
	quic_collinsd@quicinc.com, quic_amelende@quicinc.com, quic_kamalw@quicinc.com, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	marijn.suijten@somainline.org, lars@metafoo.de, luca@z3ntu.xyz, 
	linux-iio@vger.kernel.org, lee@kernel.org, rafael@kernel.org, 
	rui.zhang@intel.com, lukasz.luba@arm.com, cros-qcom-dts-watchers@chromium.org, 
	sboyd@kernel.org, linux-pm@vger.kernel.org, 
	linux-arm-msm-owner@vger.kernel.org, kernel@quicinc.com
Content-Type: text/plain; charset="UTF-8"

On Thu, 16 Nov 2023 at 13:44, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 16/11/2023 04:26, Jishnu Prakash wrote:
> > There are several files containing QCOM ADC macros for channel names
> > right now in the include/dt-bindings/iio folder. Since all of these
> > are specifically for adc, move the files to the
> > include/dt-bindings/iio/adc folder.
> >
> > Also update all affected devicetree and driver files to fix compilation
> > errors seen with this move and update documentation files to fix
> > dtbinding check errors for the same.
> >
> > Signed-off-by: Jishnu Prakash <quic_jprakash@quicinc.com>
> > ---
> >  .../devicetree/bindings/iio/adc/qcom,spmi-vadc.yaml       | 4 ++--
> >  Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml | 2 +-
> >  .../devicetree/bindings/thermal/qcom-spmi-adc-tm-hc.yaml  | 2 +-
> >  .../devicetree/bindings/thermal/qcom-spmi-adc-tm5.yaml    | 6 +++---
> >  arch/arm64/boot/dts/qcom/pm2250.dtsi                      | 2 +-
> >  arch/arm64/boot/dts/qcom/pm6125.dtsi                      | 2 +-
>
> NAK, bindings are always separate from the other changes.

In this case I'd even try to appeal :-)
They are doing `git mv` and then fixing the failouts. I think this
should be fine.

>
> Please run scripts/checkpatch.pl and fix reported warnings. Some
> warnings can be ignored, but the code here looks like it needs a fix.
> Feel free to get in touch if the warning is not clear.
>
> Best regards,
> Krzysztof
>


-- 
With best wishes
Dmitry

