Return-Path: <devicetree+bounces-1763-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BF3D7A8334
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 15:23:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9C8241C2087C
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 13:23:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 099DD36B15;
	Wed, 20 Sep 2023 13:23:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFB001643E
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 13:23:02 +0000 (UTC)
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8CAC691
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 06:23:00 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-5041335fb9cso1076596e87.0
        for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 06:23:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695216178; x=1695820978; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EnrQziMxAJShzzQ4GKaXTl7CTescsLkh1jNpmbrLCHU=;
        b=EI0ulgjQkxLhvpfxYPXHgOWBc+C3f5LTMsAq1w06UVk+wSwrcJAjNQmLCm16ng4TEg
         5g8+adu7WHxUWtSxgM2u8KhP6x3C9CA6rCKFPVWKdbsTOn5uAJzsy6KW6LjTnhzF+z5V
         PHFoAZubfMRQS3X+OT0HdVsL5onAWOQZA+yjmefQ14DMU9exetdNwNEpFNeWBvmbiBup
         Z6u/MXzUlu8xBlMcaSf6hDECRGq5gM9yVRNTC5Uhk6gEtPo76/4Ru3um6vh5zqgZIqEa
         0pn4fJ81tUVwBEKA0f80bsIT95RX4Bi8l8sdI3ZEksIw2GxEB8B3jVT49lLf8YJbsFKL
         lqzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695216178; x=1695820978;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EnrQziMxAJShzzQ4GKaXTl7CTescsLkh1jNpmbrLCHU=;
        b=X2CYCoEHcTRuSXL1TGHGmgeGCMmB5qx7Q8ZTYg37YnILpQ7V1B8UjHvvWnlHgj/Bm4
         5ftw33hgkiGsjPD0nXL84qQjtdrOyFJiecN4e+iOG6d8GOZh5fa5Z+5zP4wYmqTLoKnl
         WEmO/ZzZoEozlO7yf5NTpaUDvT9XfO+kaM+BSV3Ykbd+bwndv5YcbRcAXVXAPG7LSQTl
         t6vO0sFKl7Jn9CcVJZ91CRMo6LiNG6DzQpz/M23aFWtenOElVzD8RVwgxf+guuHoIT71
         f/h6waSmjPKGlAv2fozHpCiT2SNUc0s14dxeTYBtiRQp/eSFqVHsPFuEMkUooSsbnR0P
         CdJg==
X-Gm-Message-State: AOJu0YxXWXLwLiYsyxIeuAxvYUA/uelBcNZ90if5XAeorvtPJgelJC8T
	LvyOdMDiKLWoS8BU+RHh4/n4Eg==
X-Google-Smtp-Source: AGHT+IFzGIhbM5fJ3qPoRY3Pzdp2jgx9b+4iH+ylHlPNnoK0tDCjPODgH4DBWWjPT50Eh4WaWrataw==
X-Received: by 2002:a05:6512:3d25:b0:503:35af:3058 with SMTP id d37-20020a0565123d2500b0050335af3058mr2855080lfv.52.1695216178277;
        Wed, 20 Sep 2023 06:22:58 -0700 (PDT)
Received: from [172.20.24.238] (static-212-193-78-212.thenetworkfactory.nl. [212.78.193.212])
        by smtp.gmail.com with ESMTPSA id r25-20020aa7d599000000b0052a1c0c859asm8949381edq.59.2023.09.20.06.22.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Sep 2023 06:22:57 -0700 (PDT)
Message-ID: <a30ffeb5-d43a-f450-0fed-1669a1925ece@linaro.org>
Date: Wed, 20 Sep 2023 15:22:55 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH 3/5] dt-bindings: perf: fsl-imx-ddr: Add i.MX8DXL
 compatible
Content-Language: en-US
To: Xu Yang <xu.yang_2@nxp.com>, Frank.li@nxp.com, corbet@lwn.net,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 will@kernel.org, mark.rutland@arm.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org
Cc: festevam@gmail.com, conor+dt@kernel.org, linux-imx@nxp.com,
 linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20230920102004.886599-1-xu.yang_2@nxp.com>
 <20230920102004.886599-3-xu.yang_2@nxp.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230920102004.886599-3-xu.yang_2@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 20/09/2023 12:20, Xu Yang wrote:
> Add a compatible for i.MX8DXL which is compatile with "fsl,imx8-ddr-pmu".
> 
> Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
> ---
>  Documentation/devicetree/bindings/perf/fsl-imx-ddr.yaml | 3 +++


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


