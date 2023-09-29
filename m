Return-Path: <devicetree+bounces-4521-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AA3EE7B2E42
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 10:44:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 5B3F62842C4
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 08:44:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31DE1111BC;
	Fri, 29 Sep 2023 08:44:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B28511713
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 08:44:08 +0000 (UTC)
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C879D10FA
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 01:44:06 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-406402933edso55088285e9.2
        for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 01:44:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695977045; x=1696581845; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=b6Qp6y9nYtGfWeIZZkb4YL1o7pvTbfFEpaXOlB4gSy4=;
        b=Fji4YadnkHqXTKx9dVJVTK2taQY5IfSMYPmyG7Eazl8meAleJBsSLRWkJ5e50ew56w
         MB74PJtqSb4ZrUp90yJPsoQGHhTzmSYL41zQk+UiRiybHFRcTUv0w8YLNaqq2VXYzCBi
         m9ZkYGf1eq/+eUcbiU80gyz7If0OnPlS/8aP0oZsH3RzVFEqCDfZO+Bg2iIrj8LF3ufd
         Dw6BTn3v3GtaM1KBPRzDaI+8Oab4CGZvbe4kYKrnsIDvdYNYyNRbWWIObeYnGRuEzfho
         /GkF1tE7y+P99ha8n7cuWSya3feMwgllVxiCYoUHPxVGdwhZU5PIWU1GrNhMORbsAOkn
         UsyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695977045; x=1696581845;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=b6Qp6y9nYtGfWeIZZkb4YL1o7pvTbfFEpaXOlB4gSy4=;
        b=LSpOHEdePxhwHl15EHEl3l2w894lm/2r8jvCVLof2XRJwdK5xFS4OdzSpBqCdy2+Ze
         xUJHpUHHpOd2azQbmVFiXc/+DRxVBEA0Mu+YrEd8wyQEkjwfp4ja9nIVY/1gu+Y4uijB
         lC9WnEulcDdxEyRuuztKMjr+3FeufQiS9ChRsi22xVocpCcBEWjX+605YBoGKlGebdO/
         tiMunhMFMVBNyttFM2x3ImgzGby6WBwg5vVk1IZFQxLKnSzE2sCFCAOUcX3mN9bje/Y0
         miSX39vmx2kodTbYTI5MW4brgJrOQzIT2jMWIp8OqOWrweljc0HKuYOkHFpCMIQa6h3A
         4qlw==
X-Gm-Message-State: AOJu0YyJpCtvvSSafutjLQT2aTxqzdTsu1AD3L513OlHArXFAA/co2OJ
	XxkFOtvfJK3UV4QEVs7PICpKxg==
X-Google-Smtp-Source: AGHT+IHUEB1LQYQGWJ4qw3MkH7TU+QOAa6gnK1NDNZI1/qGzE2+ETeE+sqUe+xgafIdK1bdFgFk5cQ==
X-Received: by 2002:adf:fe42:0:b0:317:5747:b955 with SMTP id m2-20020adffe42000000b003175747b955mr3131037wrs.17.1695977045118;
        Fri, 29 Sep 2023 01:44:05 -0700 (PDT)
Received: from [192.168.0.162] (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id o11-20020a5d4a8b000000b0031ffb51f6f9sm21113634wrq.30.2023.09.29.01.44.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Sep 2023 01:44:04 -0700 (PDT)
Message-ID: <686dc4d4-778b-4fd6-93e9-e25fd71fc75a@linaro.org>
Date: Fri, 29 Sep 2023 09:44:04 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: qcom: qcm6490-fairphone-fp5: Enable venus
 node
Content-Language: en-US
To: Luca Weiss <luca.weiss@fairphone.com>,
 Stanimir Varbanov <stanimir.k.varbanov@gmail.com>,
 Vikash Garodia <quic_vgarodia@quicinc.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 cros-qcom-dts-watchers@chromium.org, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20230929-sc7280-venus-pas-v1-0-9c6738cf157a@fairphone.com>
 <20230929-sc7280-venus-pas-v1-3-9c6738cf157a@fairphone.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20230929-sc7280-venus-pas-v1-3-9c6738cf157a@fairphone.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 29/09/2023 09:38, Luca Weiss wrote:
> Enable the venus node so that the video encoder/decoder will start
> working.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>   arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts | 5 +++++
>   1 file changed, 5 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
> index 2de0b8c26c35..d29f10f822c9 100644
> --- a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
> +++ b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
> @@ -665,3 +665,8 @@ &usb_1_qmpphy {
>   
>   	status = "okay";
>   };
> +
> +&venus {
> +	firmware-name = "qcom/qcm6490/fairphone5/venus.mbn";
> +	status = "okay";
> +};
> 
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

