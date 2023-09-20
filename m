Return-Path: <devicetree+bounces-1733-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B22DC7A7C14
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 13:57:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A221C1C20998
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 11:57:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4B2E28E00;
	Wed, 20 Sep 2023 11:57:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCF702AB21
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 11:57:41 +0000 (UTC)
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5106DC6
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 04:57:39 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-2b9338e4695so108954001fa.2
        for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 04:57:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695211057; x=1695815857; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=w1DviYvLqEA/sZL5Xm7Eug1cL8OIq39bt8izdUeklRY=;
        b=qOExDvC2m+AG5X4z8cSJxMjs9+Cq+RBI6LIIEAE7zGGcu8xz4mMWMQZVLJ59RvC004
         vt4pzrNziRUAm/ZcKZPS1b2w09xQCKBQ5rWxlNVcD2zxn5L9idy/+mQbfG8k1gMJKIf2
         Fc601MB/PngswpawwwBlI68JYR8vC14eJifb1mEQNsSIEAiyUADgigJgY8jOk+PzVIl0
         To0Fx1H6f17MIy7zRnF/pT6tMCBvkwR9omAJ8xXLVxeTSbW2GEO2J9hGmLsNBnObd/na
         Wsvv+ZJoZ/NdA2BSHrKORpn2OEEOViKSSM2QAPnAR5Z4sBO+aLGGhDwIrFyFNklsGBVY
         rWOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695211057; x=1695815857;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=w1DviYvLqEA/sZL5Xm7Eug1cL8OIq39bt8izdUeklRY=;
        b=jV/Zd8AYBPOwIb9xyOEbYXUGsoAvhUT14Rk1u6bjoRYxaqhgS3eOOOjyN8SnmtCeAu
         gRDgON/1xH5uWfECOasgB34VG8DHR13vs1M+F9PqlPJSEbfF6sqqGkO6FcyF7XzJZdlF
         ohKp2DckKIq26uA79Hx/y3SlsiF/ExpuAOsl8YjFQZygZyNbX3By7ujQRvQVQtLD5wZz
         20ySg6XW84V0eyW5g6VNFBUNfzPeXbaRb+jctl884z9zgHWUYyN3Lr1D8L4oaiCqZRc5
         HXIV3cziRgY4ZnyYZj7ZeR0iJWPDWn63y/xsJsLYZl2leIQinmHBYDJF7qOAh6IRaIyH
         /KYA==
X-Gm-Message-State: AOJu0YxZe1n7n/P8POIpf6lyIJfcKPulVp/598eS3Eq5MfpI5qmPjp+x
	vSTW8pvizmzEt6Zv1Y6ao1WlvQ==
X-Google-Smtp-Source: AGHT+IHi2kpY9k3ikgCwNoko87/nzsnTiOCoDw3bl/xpeTq0iM230cVrxJbvaiXRPxFgp6S5vX6VBw==
X-Received: by 2002:a2e:2c12:0:b0:2bd:1f83:8d4 with SMTP id s18-20020a2e2c12000000b002bd1f8308d4mr2147021ljs.22.1695211057552;
        Wed, 20 Sep 2023 04:57:37 -0700 (PDT)
Received: from [172.20.24.238] (static-212-193-78-212.thenetworkfactory.nl. [212.78.193.212])
        by smtp.gmail.com with ESMTPSA id u1-20020a1709064ac100b009934855d8f1sm9177212ejt.34.2023.09.20.04.57.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Sep 2023 04:57:37 -0700 (PDT)
Message-ID: <0b84ef92-f6b7-f3bc-fd51-8f61cbc91ff8@linaro.org>
Date: Wed, 20 Sep 2023 13:57:35 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v2 06/11] dt-bindings: timer: Add Sophgo sg2042 clint
Content-Language: en-US
To: Chen Wang <unicornxw@gmail.com>, aou@eecs.berkeley.edu,
 chao.wei@sophgo.com, conor@kernel.org, devicetree@vger.kernel.org,
 emil.renner.berthing@canonical.com, guoren@kernel.org, jszhang@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org, palmer@dabbelt.com,
 paul.walmsley@sifive.com, robh+dt@kernel.org, xiaoguang.xing@sophgo.com
Cc: Inochi Amaoto <inochiama@outlook.com>, Chen Wang <wangchen20@iscas.ac.cn>
References: <cover.1695189879.git.wangchen20@iscas.ac.cn>
 <55865e1ce40d2017f047d3a9e1a9ee30043b271f.1695189879.git.wangchen20@iscas.ac.cn>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <55865e1ce40d2017f047d3a9e1a9ee30043b271f.1695189879.git.wangchen20@iscas.ac.cn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 20/09/2023 08:39, Chen Wang wrote:
> From: Inochi Amaoto <inochiama@outlook.com>
> 
> Add two new compatible string formatted like `C9xx-clint-xxx` to identify
> the timer and ipi device separately, and do not allow c900-clint as the

Why?

You received comment about it, so please provide proper explanation in
the commit msg.

Same device does not get two different compatibles.

You also did not respond to my comments, so you basically ignored it and
send the same.

NAK

Best regards,
Krzysztof


