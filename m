Return-Path: <devicetree+bounces-6017-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 529E97B9B18
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 08:31:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 0122E281875
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 06:31:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 724F42113;
	Thu,  5 Oct 2023 06:31:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JqZhlby9"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3B387F
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 06:31:36 +0000 (UTC)
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 094146A60
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 23:31:35 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-40651a726acso5358725e9.1
        for <devicetree@vger.kernel.org>; Wed, 04 Oct 2023 23:31:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696487493; x=1697092293; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Q5W+5km9oY3CezrKFXltA7PDU8akry8lgWTdEDkyo4E=;
        b=JqZhlby9mRmDNUZGRtv+4Pxy/lzBHMDdoHmYzJUq6kzUP96peVrOBWHILfG9B6Pvjq
         rmHCIREdLx4x6mO7bcFQpcOPM3r4UeiFvY7Q69c1vO0J5ZeW0SsMJ6SuQxB6urD2qPWP
         MJpGPFviPlF3b7j3YLy45WOQbnkxoOPPMbWUjMQuGfgPWqxxa1Ve1cSRea1e5Bn2wuA2
         DSY68wPIVpfIqM+hVDrsZQnNx/DhUbDp0yKIcL2Anpb+TvGM7ljBbOEfYxU/4KdFSPXk
         an4AwXFIiRBUsk8qrDhJG9HPRTCysuQrW+bjJjqq0U7Yobfq/+Es9kH0pEx6wMue/It7
         OTog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696487493; x=1697092293;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Q5W+5km9oY3CezrKFXltA7PDU8akry8lgWTdEDkyo4E=;
        b=kG1WkIuhG+cV3E3icuuzfXJ8vUNxDkWTP7ZgBCOvu4yAPSD36tkm9m2m7tXTr5CFQN
         keVD3k+cVfV5DvoG9dPPZ629oodyNcTfv5GRQqm2YZtbfouEaAlgCmokzAH6MHXpNQsA
         QeduyEwDfwNPkHJxLQNH+INR/xgH8jGFn7TxjYb8bqMwzo6/G6qJJnJ7GcaV+G+oQQzB
         rg5Lwc+JMuAJgcAKqrfR1uzLY44ceM3c1Z3GBjk+A8Ub3Vvk/9lvXXlZG3yzUOTmc/XB
         dlX/4sUyLVvDPDR18vY3Zrijdwi5TT4Ikb+xre6fiQR7Dbq7xe5yTg7IHrZcEWyAiqp3
         u+Qw==
X-Gm-Message-State: AOJu0YwpG5TgSYw6B+KrP5bTagNMS9fhfVLxQ3eInDyF8Cjsnxtw1DAt
	XErqiTZnVCt4vXVpVFrjgCH7tQ==
X-Google-Smtp-Source: AGHT+IF4ixdIQfW3FK081CqPPePUbhMJmhpRDt6pintjSlT07UJabiR7lKPTEYKF9KJP1v7iLMdJUA==
X-Received: by 2002:a05:6000:100e:b0:320:485:7010 with SMTP id a14-20020a056000100e00b0032004857010mr4128536wrx.67.1696487493496;
        Wed, 04 Oct 2023 23:31:33 -0700 (PDT)
Received: from [192.168.69.115] (tbo33-h01-176-171-211-120.dsl.sta.abo.bbox.fr. [176.171.211.120])
        by smtp.gmail.com with ESMTPSA id y17-20020a5d6151000000b0031f82743e25sm939874wrt.67.2023.10.04.23.31.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Oct 2023 23:31:33 -0700 (PDT)
Message-ID: <ebd12a11-551f-f66b-293b-f7fc2dfee31d@linaro.org>
Date: Thu, 5 Oct 2023 08:31:31 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.15.1
Subject: Re: [PATCH 05/11] dt-bindings: mips: cpu: Add I-Class I6500
 Multiprocessor Core
Content-Language: en-US
To: Gregory CLEMENT <gregory.clement@bootlin.com>,
 Paul Burton <paulburton@kernel.org>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, linux-mips@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Vladimir Kondratiev <vladimir.kondratiev@intel.com>,
 Tawfik Bayouk <tawfik.bayouk@mobileye.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 =?UTF-8?Q?Th=c3=a9o_Lebrun?= <theo.lebrun@bootlin.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
References: <20231004161038.2818327-1-gregory.clement@bootlin.com>
 <20231004161038.2818327-6-gregory.clement@bootlin.com>
From: =?UTF-8?Q?Philippe_Mathieu-Daud=c3=a9?= <philmd@linaro.org>
In-Reply-To: <20231004161038.2818327-6-gregory.clement@bootlin.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 4/10/23 18:10, Gregory CLEMENT wrote:
> The MIPS Warrior I-class I6500 was announced by Imagination
> Technologies in 2016 and is used in the Mobileye SoC EyeQ5.
> 
> Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
> ---
>   Documentation/devicetree/bindings/mips/cpus.yaml | 1 +
>   1 file changed, 1 insertion(+)

Reviewed-by: Philippe Mathieu-Daudé <philmd@linaro.org>



