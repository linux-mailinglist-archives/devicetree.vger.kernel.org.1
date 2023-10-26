Return-Path: <devicetree+bounces-12257-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C98757D88F9
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 21:33:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CD1731C20D44
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 19:33:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 691C43B2B4;
	Thu, 26 Oct 2023 19:33:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YbIsDHBB"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1B863AC35
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 19:33:18 +0000 (UTC)
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3304A187
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 12:33:17 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-507975d34e8so1917429e87.1
        for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 12:33:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698348795; x=1698953595; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=53j4yPzIfSUO3GQdaiPP9wavaCtvO+DP02lB52Y0HLs=;
        b=YbIsDHBBfHiG/bXtbIDodZ8Si+Z4x/J4UMIdsvc+grnMb+dinY48jlvis73DUOgXDj
         fXlAUxloBgxadEHM4kvi66PMjebqBICL0dB4akfswOjLHyNupNdPpL9irklnGa8K1tqM
         AMhlONS1le8enrPH5S9ymBkzCTDhVzkesQ08npCd2cGN3bfK+sVbzjBajuupe3dywKEH
         LjOxC3r780ROphPoQrI4G+buvbt1eJ7OLKv8ZPJCey7h2pqrUv3Zfr+DZsrTAn9RBO4l
         19y9GHloESJbossHs06XDwYde1cdcbhTIRffwU8gJNDnWBQkBq3zKBJJ4Mn3m1aK8ixH
         zodg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698348795; x=1698953595;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=53j4yPzIfSUO3GQdaiPP9wavaCtvO+DP02lB52Y0HLs=;
        b=GIs/BHH7B5t10mf4cRmNY1ZkFsvG/ojAbcvXuzWbJCv0gMeIDfrnpeu0jSlXfMSqmZ
         IO6sEeAzikF7OQ+fKsc7gmARis5e/WVFh0Y6GVEQhTkpU44H8MiAoI1E38y/wCiQ7C23
         wrYo8sxmhU5a5VsBhhnJRcYkXvwhzgcFg7K/D2pyVCeFM8Mc79LdZqJymVjRwM5dw2Og
         sym/xQVlytGlHr/nKdv844i+jZZSdK8YEER3Ku+QQHzhmoD//ocgICqBwGVGkWcwwTfK
         7+9YM+0ajmhQpb/RZnsWzAKLpW7YiQlUCBPEvPfHLFe7BeZ5lXC58dPEimMbC98iYXsc
         iXGw==
X-Gm-Message-State: AOJu0YzcGCS41Th6h92Fm4Hlu6aSrq23jcM2y9mybH1k+c/S3YlItwvo
	52o4tuzN2cKbc0zy/JHVueonuQ==
X-Google-Smtp-Source: AGHT+IF6uzK4XBidM0y36zrNA9siSxrCRCUxIwpLiq44IJ2QmjApG0ZdhT99lHUSRpDV92BbutG/yA==
X-Received: by 2002:a05:6512:3b10:b0:507:96a3:596d with SMTP id f16-20020a0565123b1000b0050796a3596dmr270688lfv.49.1698348795394;
        Thu, 26 Oct 2023 12:33:15 -0700 (PDT)
Received: from [172.30.204.84] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id j19-20020a056512345300b0050336e38735sm3107145lfr.92.2023.10.26.12.33.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Oct 2023 12:33:15 -0700 (PDT)
Message-ID: <a204b552-0162-45f3-a35c-04507c5150b3@linaro.org>
Date: Thu, 26 Oct 2023 21:33:14 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/6] arm64: dts: qcom: starqltechn: disable crypto
Content-Language: en-US
To: Dzmitry Sankouski <dsankouski@gmail.com>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org
References: <20231024154338.407191-1-dsankouski@gmail.com>
 <20231024154338.407191-6-dsankouski@gmail.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231024154338.407191-6-dsankouski@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 10/24/23 17:43, Dzmitry Sankouski wrote:
> Disable the crypto block due to it causing an SError in qce_start() on
> the starqltechn, which happens upon every boot when cryptomanager tests are
> enabled.
> 
> Same problem is on Lenovo C630, see
> commit 382e3e0eb6a8 ("arm64: dts: qcom: c630: disable crypto due to serror")
Would that still happen with this change:

diff --git a/drivers/interconnect/qcom/sdm845.c b/drivers/interconnect/qcom/sdm845.c
index b9243c0aa626..dd1a2b679098 100644
--- a/drivers/interconnect/qcom/sdm845.c
+++ b/drivers/interconnect/qcom/sdm845.c
@@ -1805,7 +1805,7 @@ static struct platform_driver qnoc_driver = {
         .driver = {
                 .name = "qnoc-sdm845",
                 .of_match_table = qnoc_of_match,
-               .sync_state = icc_sync_state,
+//             .sync_state = icc_sync_state,
         },
  };
  module_platform_driver(qnoc_driver);

?

Konrad

