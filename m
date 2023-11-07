Return-Path: <devicetree+bounces-14351-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D83037E3AF0
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 12:17:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 79296B20B3B
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 11:17:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B87552D05C;
	Tue,  7 Nov 2023 11:17:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Y4NFr1pQ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB3F02D05A
	for <devicetree@vger.kernel.org>; Tue,  7 Nov 2023 11:17:50 +0000 (UTC)
Received: from mail-yb1-xb2d.google.com (mail-yb1-xb2d.google.com [IPv6:2607:f8b0:4864:20::b2d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 42E8C11F
	for <devicetree@vger.kernel.org>; Tue,  7 Nov 2023 03:17:49 -0800 (PST)
Received: by mail-yb1-xb2d.google.com with SMTP id 3f1490d57ef6-da0359751dbso4770872276.1
        for <devicetree@vger.kernel.org>; Tue, 07 Nov 2023 03:17:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699355868; x=1699960668; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=4ydvL0o1CmH6mf7K0w8mZfuazbRVH1fDLTN8b3rtk8E=;
        b=Y4NFr1pQzI472JRjuHXlAOdN9HNgaQgS+zfZzjTXYwZ4GY/eO3qC6xKvgAX0sWpLtc
         3tm9tEwGPve62PHyDZO5g7rZYjeO/NZSSnPKq/J8jC5sc7d4NjxPVZT/bbcgVvmCn3Am
         dtS99s4YMg/VQSkwOsCjrq+jGI6gnG9ic3lmZBfkB70j06GvMMHuLWdS/qZd6tXY2TAk
         eJc9ibmW3NB9uh0/GcVKIiYtnTFsfXMt/0HrbyS7DWjXLbDaVALH0FunARo/5CvdaElQ
         dVTt8quPIpsyc3WNfgFaXYK9bVnOS95UEB4RJbhsDfr0II7wEjVo1atN6As9C6tsb3G6
         yhDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699355868; x=1699960668;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4ydvL0o1CmH6mf7K0w8mZfuazbRVH1fDLTN8b3rtk8E=;
        b=jXi3iiLYHj5ibeijlV5th5n+PDUQ5mw9xAnGfPEVC9zaOyHgRjf5UZlpIT614frT1o
         UWN9O/FcPQuXZ7HUIM0qpGIehN+o09Trq/PQml2rGJqcrGllZO/ewWn03r8J2OOEaTFU
         dOuP212S1g7eQ+7Ex2P0MmlmpW+lZH7o4Zu58xEKA1lm+j9beyqg/bxqP+lQJqU0D58B
         5iJwPB1/hXq1LXurQxjepoK0HvDJDbtXJcczj0twNH2M8PWHmULd94H9uPl49brjwccA
         Jp9a5m5s33m5dpo5Zv3yXJuYTV2AK2uW5FAgqTQghSST1mtj01SJNOsOIhCx1za+MZM8
         AnOA==
X-Gm-Message-State: AOJu0YxLt8/oK3iHVcPkxIlF4FdN8vt+3tzYZLPK3yBh1NiJbgADPgfR
	1kDDSSiglkOVdi0U7c/eJ9as21MmCVdFCjnrV4Afzg==
X-Google-Smtp-Source: AGHT+IG1vN6zYMpeJ5WEK+n+SDm+pr9crueNXcCRYtyecm2T33jO7z1XTVsAQX2OJcNh1gijTFjzuM1eyJHUCvFnsyc=
X-Received: by 2002:a25:d457:0:b0:da0:ce42:e609 with SMTP id
 m84-20020a25d457000000b00da0ce42e609mr1754971ybf.8.1699355868469; Tue, 07 Nov
 2023 03:17:48 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231107103540.27353-1-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20231107103540.27353-1-krzysztof.kozlowski@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 7 Nov 2023 13:17:37 +0200
Message-ID: <CAA8EJpo4GXTLtEY2AgD8y+33dHtENGTcTr_ma88wfdhRzFF-ig@mail.gmail.com>
Subject: Re: [PATCH 1/3] arm64: dts: qcom: sc8180x-primus: drop
 sound-dai-cells from eDisplayPort
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 7 Nov 2023 at 12:35, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> Qualcomm MDSS Embedded DisplayPort bindings do not allow
> sound-dai-cells:
>
>   sc8180x-primus.dtb: displayport-controller@ae9a000: #sound-dai-cells: False schema does not allow [[0]]
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sc8180x.dtsi | 2 --
>  1 file changed, 2 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

