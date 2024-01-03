Return-Path: <devicetree+bounces-29341-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B898822639
	for <lists+devicetree@lfdr.de>; Wed,  3 Jan 2024 02:05:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E8AED1C21AD2
	for <lists+devicetree@lfdr.de>; Wed,  3 Jan 2024 01:05:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71A227E8;
	Wed,  3 Jan 2024 01:05:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jcDX0A8V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F21B10EE
	for <devicetree@vger.kernel.org>; Wed,  3 Jan 2024 01:04:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-5edf3780534so48189017b3.0
        for <devicetree@vger.kernel.org>; Tue, 02 Jan 2024 17:04:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704243897; x=1704848697; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=TQSx9psUw9oTbZGR+KHCIwReL7n5ZCIfgzIPIKpKg1M=;
        b=jcDX0A8V4fgFW+iVVwPYvDijnona7Ju+cR0jBvKC0lebNUdt5m9f5T+dPZjvnZE2+o
         gXJIx0OE4UC8xam7bWvHGhtiRq3bwjs6EqLVyaHKJ0OVp3WrixEBoQ2Cf2ahhNCfaBka
         LcNCBZNa5G7++ON8HSV/SIgoHU51E1m24nxj/o3SYSunHcuszU5qrGFFAJNppdABVGZG
         +e/jt/OmQaCaumMvXSW5F858S7hr5hV6WYQ2fXrMhsPYsU4cI6f2fhYx8FKn0xJuFG76
         u60Mg0JAk6/ljv/xKq5HzV1w+d+oh/v/Bc3OkPmpEXgs1ujDYgWuDUJxdJkCpOnPd5Ru
         k7cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704243897; x=1704848697;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TQSx9psUw9oTbZGR+KHCIwReL7n5ZCIfgzIPIKpKg1M=;
        b=n7+yziMjJE7fnl1yhRjJeExvVQ1vJdXowiYAU/9R5a27KuW+86Y8tPNMS+O+sMMU1t
         Ae12m8LdYSBcBieavbmR1Z4vAdQDYQ2f7+lNUmb01IqlSN8ROoniYSd/sZWKS7ReMs51
         LJRIigtRV0yn/WAxA7342FL/FQbYo1jOtb5B45QOJlGuUczyI0y2kREosORTyQq8LPI9
         O/PJzwOREmaFIJ540sZCBVzWxg/9x2dGxLAf1M9YFMd7kfAlDomhW5LhB3ub8663j4Yq
         sBmH6zgUm4c/i+3v+evOiwOW2lOa9legFi/A5ikfThoAaj4f9z33AFFQiO68Xrn5hRC+
         V/sw==
X-Gm-Message-State: AOJu0YzpVIuJYOPKqi4LWGIZf2Hk/EWPWZh9pOwygAAzOWsRGV2vb54D
	ECnByFwnfqDsn1YMTO4HkMg3GzlZOdsUPL9KgozGAHvMAFD5IQ==
X-Google-Smtp-Source: AGHT+IG5PG1R+n1LmMee/LvkPlexxf/e36Gs+fr/vMs1zvzGXA2xFnirJcEViDaAogqMYLkyvifTh5m0vmHSz9oLG3E=
X-Received: by 2002:a0d:fec4:0:b0:5e7:e672:fe47 with SMTP id
 o187-20020a0dfec4000000b005e7e672fe47mr11403301ywf.72.1704243897097; Tue, 02
 Jan 2024 17:04:57 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240102-topic-gpu_cooling-v1-0-fda30c57e353@linaro.org> <20240102-topic-gpu_cooling-v1-1-fda30c57e353@linaro.org>
In-Reply-To: <20240102-topic-gpu_cooling-v1-1-fda30c57e353@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 3 Jan 2024 03:04:46 +0200
Message-ID: <CAA8EJpoCTF4mAWJv_4ZGS0eMGpic66vSJWqkjzqkyNU_1V7Npw@mail.gmail.com>
Subject: Re: [PATCH 01/12] arm64: dts: qcom: msm8916: Hook up GPU cooling device
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Marijn Suijten <marijn.suijten@somainline.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 2 Jan 2024 at 15:35, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
> In order to allow for throttling the GPU, hook up the cooling device
> to the respective thermal zones.
>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/msm8916.dtsi | 9 +++++++++
>  1 file changed, 9 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

