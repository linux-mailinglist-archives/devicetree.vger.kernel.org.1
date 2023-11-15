Return-Path: <devicetree+bounces-13913-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A5E17E15CA
	for <lists+devicetree@lfdr.de>; Sun,  5 Nov 2023 19:25:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E5D45B20D97
	for <lists+devicetree@lfdr.de>; Sun,  5 Nov 2023 18:25:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 379E8171AE;
	Sun,  5 Nov 2023 18:25:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACF0F10940
	for <devicetree@vger.kernel.org>; Sun,  5 Nov 2023 18:25:17 +0000 (UTC)
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A55E0BE;
	Sun,  5 Nov 2023 10:25:16 -0800 (PST)
Received: by mail-ot1-f46.google.com with SMTP id 46e09a7af769-6ce2c71c61fso1975863a34.1;
        Sun, 05 Nov 2023 10:25:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699208716; x=1699813516;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=A4y1IraQYh3H6lxTiJ29Tx+EfGHZDN1CM++p6MjOMyQ=;
        b=ubA1qNkcrr1oXVt2WZhldHJLVKrbrRSbYkJ56wLf2VE/zfVNvDJYeLsEPT9wtMPWnW
         BVBrt4jYmkGNbSeWAHO2tRZj1gAosR/Qf2FhW627W9m3e/JdkW4XD10U1CiL63//N44z
         nKxsLWBnaHoeYuXmUET6EfwuD802EKApm/o3Mj5t6Xs0iS+tPBVdD5sxB1BdDsOY93D5
         5+RQl0Ixmj3NtpCe94mru3AegkXQS7xFJq/gEON6vzJ0aVNpMBHF18rEnT/byA1wtpvr
         dZKDVGY1seLAqT8ZmyxxOPe+Y1947zV97344XujyfcPxXqhvKCVzjplAXcSr1B8SaG1W
         udog==
X-Gm-Message-State: AOJu0Yws2LITbaXQRxHeQ9BzPZlG1DdF5CRdjggGMeQvUYGuJ0WCUCS4
	Y1oDqtdc6n/Cfjl8vxjCGQ==
X-Google-Smtp-Source: AGHT+IF3HbEEGHEXV5dgj5RM8rXJl21RMytOnVR9czMyioFRoUl0OUSu2mcz4KNZRXxseJD3Iy+jGQ==
X-Received: by 2002:a9d:7d8c:0:b0:6b9:9bcd:32fe with SMTP id j12-20020a9d7d8c000000b006b99bcd32femr23214919otn.17.1699208715753;
        Sun, 05 Nov 2023 10:25:15 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id r9-20020a9d7cc9000000b006b96384ba1csm992643otn.77.2023.11.05.10.25.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Nov 2023 10:25:15 -0800 (PST)
Received: (nullmailer pid 1778778 invoked by uid 1000);
	Sun, 05 Nov 2023 18:25:13 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Todor Tomov <todor.too@gmail.com>, Robert Foss <rfoss@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, linux-arm-msm@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, Andy Gross <agross@kernel.org>, hverkuil-cisco@xs4all.nl, Rob Herring <robh+dt@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, matti.lehtimaki@gmail.com, Bjorn Andersson <andersson@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, laurent.pinchart@ideasonboard.com, vincent.knecht@mailoo.org, devicetree@vger.kernel.org, quic_grosikop@quicinc.com, Conor Dooley <conor+dt@kernel.org>
In-Reply-To: <20231105-b4-camss-sc8280xp-v3-1-4b3c372ff0f4@linaro.org>
References: <20231105-b4-camss-sc8280xp-v3-0-4b3c372ff0f4@linaro.org>
 <20231105-b4-camss-sc8280xp-v3-1-4b3c372ff0f4@linaro.org>
Message-Id: <169920871369.1778750.12101674904903495174.robh@kernel.org>
Subject: Re: [PATCH v3 1/6] media: dt-bindings: media: camss: Add
 qcom,sc8280xp-camss binding
Date: Sun, 05 Nov 2023 12:25:13 -0600


On Sun, 05 Nov 2023 17:45:00 +0000, Bryan O'Donoghue wrote:
> Add bindings for qcom,sc8280xp-camss in order to support the camera
> subsystem for sc8280xp as found in the Lenovo x13s Laptop.
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  .../bindings/media/qcom,sc8280xp-camss.yaml        | 581 +++++++++++++++++++++
>  1 file changed, 581 insertions(+)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/media/qcom,sc8280xp-camss.example.dts:26:18: fatal error: dt-bindings/clock/qcom,sc8280xp-camcc.h: No such file or directory
   26 |         #include <dt-bindings/clock/qcom,sc8280xp-camcc.h>
      |                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
compilation terminated.
make[2]: *** [scripts/Makefile.lib:419: Documentation/devicetree/bindings/media/qcom,sc8280xp-camss.example.dtb] Error 1
make[2]: *** Waiting for unfinished jobs....
make[1]: *** [/builds/robherring/dt-review-ci/linux/Makefile:1427: dt_binding_check] Error 2
make: *** [Makefile:234: __sub-make] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20231105-b4-camss-sc8280xp-v3-1-4b3c372ff0f4@linaro.org

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


