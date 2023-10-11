Return-Path: <devicetree+bounces-7877-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F8FA7C5EEC
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 23:12:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F1E822821B9
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 21:12:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E9721CA9D;
	Wed, 11 Oct 2023 21:12:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cVV9h7EE"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B46712E5E
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 21:12:02 +0000 (UTC)
Received: from mail-vs1-xe2a.google.com (mail-vs1-xe2a.google.com [IPv6:2607:f8b0:4864:20::e2a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1516F90;
	Wed, 11 Oct 2023 14:12:01 -0700 (PDT)
Received: by mail-vs1-xe2a.google.com with SMTP id ada2fe7eead31-4547428694dso139115137.3;
        Wed, 11 Oct 2023 14:12:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697058720; x=1697663520; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YTJgUBsEDgw3EwITvedxgQnZju+WIdhLKpc2sUgYqNQ=;
        b=cVV9h7EEGGCAYywa/DmknV04wUu6h1ooEyoN5zozoM960obFmvg7bye6Pq5am/GHaU
         b2RCXyvsoP/i9zCqcamZThoy85n1T6DbQdAgcjzNR8zTr72JgFfqVcuLfYft4errsDOy
         ELQrIgKevxdl7tMkR3ROWjhivmqe93Q6BAilQL4eq9kSpl9Ec5q+DU4C6n4V5hRmntAQ
         094Pwlb0prvZW0ViOcet2Et3hEawQfiw9qKupJzPl8GnpXwAhKwwpYg/bIG6y5CUJDHv
         UlZG/hMEvz3nPslt7FiBanpe2NwAZB6xGfmb+HJbPLYWd6VsPhd7LJhU1ne/GojMASFh
         ISpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697058720; x=1697663520;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YTJgUBsEDgw3EwITvedxgQnZju+WIdhLKpc2sUgYqNQ=;
        b=v1Ap2wVZHKGJ6bQkv1cF0UC6iRh+IH7eY303rKeiTTLm6Bb4grRoE6e5jppP7W5IVD
         tiUvRRZACtOl6LiW52EqSiN7nU9u9Iq8i5mW50WJ2yVgSHXW5oNW5i1A/ZmTXmC3vrLE
         fJUuG0pQ/eR42jKVqP6cQ0t167Q/eEDjYUDQdjGz0OKqQLBgM1gBjAH7Hw1BHLGzPjsQ
         2iyeKNPpo0ixMJFJaqhnKDFEBqQ5BhuY8p/9l9xVn14iTvLUwDmFrn1KDsujtPT2c+2N
         8G9MxHNpCzC+1YoZKgU1X/bANGhoV50Ji+mm4yAver5BSkSbblyhkVQmf6Eg2sHevuK/
         LA1g==
X-Gm-Message-State: AOJu0YzcU8QphLaqRx/MGG1jfShZ929b/5QD/dbQC2CR5FMlSryx49Ia
	4IlYyYdTCRyatM0ez5kkvFA=
X-Google-Smtp-Source: AGHT+IEhzL9pYbprvKsWEvifTi+UPyiYXdxsRjmaYhVJCJqENioxoFav5oMfnynC3Vjvy6gewz0dFQ==
X-Received: by 2002:a67:f78b:0:b0:44e:89bd:9a5c with SMTP id j11-20020a67f78b000000b0044e89bd9a5cmr21664572vso.10.1697058720124;
        Wed, 11 Oct 2023 14:12:00 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id i7-20020a67c207000000b004546cebc078sm137359vsj.12.2023.10.11.14.11.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Oct 2023 14:11:59 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Wed, 11 Oct 2023 14:11:57 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Luca Weiss <luca@z3ntu.xyz>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sai Prakash Ranjan <quic_saipraka@quicinc.com>,
	linux-arm-msm@vger.kernel.org, linux-watchdog@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Matti =?iso-8859-1?Q?Lehtim=E4ki?= <matti.lehtimaki@gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: watchdog: qcom-wdt: Add MSM8226 and
 MSM8974 compatibles
Message-ID: <8f6c897d-d835-46eb-b2b6-dc4561c62749@roeck-us.net>
References: <20231011-msm8226-msm8974-watchdog-v1-0-2c472818fbce@z3ntu.xyz>
 <20231011-msm8226-msm8974-watchdog-v1-1-2c472818fbce@z3ntu.xyz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231011-msm8226-msm8974-watchdog-v1-1-2c472818fbce@z3ntu.xyz>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Wed, Oct 11, 2023 at 06:33:13PM +0200, Luca Weiss wrote:
> From: Matti Lehtimäki <matti.lehtimaki@gmail.com>
> 
> Add compatibles for the MSM8226 and MSM8974 platforms to the Qualcomm
> watchdog binding.
> 
> Signed-off-by: Matti Lehtimäki <matti.lehtimaki@gmail.com>
> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> ---
>  Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml b/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
> index 5046dfa55f13..c12bc852aedc 100644
> --- a/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
> +++ b/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
> @@ -21,6 +21,8 @@ properties:
>                - qcom,apss-wdt-ipq5018
>                - qcom,apss-wdt-ipq5332
>                - qcom,apss-wdt-ipq9574
> +              - qcom,apss-wdt-msm8226
> +              - qcom,apss-wdt-msm8974
>                - qcom,apss-wdt-msm8994
>                - qcom,apss-wdt-qcm2290
>                - qcom,apss-wdt-qcs404
> 
> -- 
> 2.42.0
> 

