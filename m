Return-Path: <devicetree+bounces-6018-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B71967B9B1D
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 08:34:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id D82AD1C20847
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 06:34:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8716F4C60;
	Thu,  5 Oct 2023 06:34:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="L5IV3LnW"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93D9C7F
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 06:34:19 +0000 (UTC)
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3E4126A6F
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 23:34:18 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-307d58b3efbso583855f8f.0
        for <devicetree@vger.kernel.org>; Wed, 04 Oct 2023 23:34:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696487656; x=1697092456; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hAGnF6ivb9XCkOa0cJSmkl42J0d0u2NBYDWoXIvrcGA=;
        b=L5IV3LnWLMZdlbi5AOr0h0w+p/Rp4qQU3q1CD6x1KYACQ0tDqvYuqMY8nr/Tvvltml
         J5UzF1aaYEAEEoENq7j20LRzJepLoYzZMsdRQ4LXnCmoyIPO1Qbz7DZjPiVWttOptOp7
         k8htvW9bEdmnkxF7O73midHTCeI7ZiMQhsFFCNe00v+8kXo6R3slyrk/HcDqTZJ/0SJO
         h7d+yqrBIzVT3O7KOu+5aq9tYnl+U0kX3HJb/n3ST9bT40UZSq+qo2Qy1HYjsqxM5TYC
         KMVcVz/zxnq94NcYlSTr47vY0jmXPF7v6RASjf6fZTUHK2XqTfmtKEbY+fH1Pg2SIr2w
         ns3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696487656; x=1697092456;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hAGnF6ivb9XCkOa0cJSmkl42J0d0u2NBYDWoXIvrcGA=;
        b=cEnWzIPYFbmpgp/8M9rgBf5atRYdfTdYb62d1sl7pp2ViBbuppo4vLLo90R/wC3WPt
         NiPGlK3vO+wq3p389IT/8gLZFt15QZ1Ss4h+i1NcigI6WDXkO8GIb4Fs7xqH3P/+eeNu
         o8AJiIpAYcX9Gv+2Vu2HRZAobN3jZhxVnbBT6L3EK/H4FqHFKh44jdRvTnPPoAFODOAt
         eSKmy1MKTLgKrp4+y22XXdZdoI2w3uCBXw7Zw++s8fVzbSs1kjtrQW+yF/Qf8gs3HXVA
         LRhVtleiomZK/uKtwbObfcbWk3BdI+NgvMu2dgHP6jNZcIuvme2ZwzUGONs4o7iMqrE9
         FINg==
X-Gm-Message-State: AOJu0YxwgXs2P5jlYZm0LBiNS++ODAxCQX/c7wUyQdKJkeqx7YF+fzny
	Ax4lGvzgWK/JOf+OmC4AEFZffA==
X-Google-Smtp-Source: AGHT+IHfu1g/GRdrcugnUpqlXYMQCy3BPpNW7d/xBS1RRTEcQ3OcEzpLb8O0GphuzAvpN62W7P2H6g==
X-Received: by 2002:adf:d08e:0:b0:319:74b5:b67d with SMTP id y14-20020adfd08e000000b0031974b5b67dmr3741813wrh.66.1696487656662;
        Wed, 04 Oct 2023 23:34:16 -0700 (PDT)
Received: from [192.168.69.115] (tbo33-h01-176-171-211-120.dsl.sta.abo.bbox.fr. [176.171.211.120])
        by smtp.gmail.com with ESMTPSA id x14-20020a5d60ce000000b0032763287473sm946899wrt.75.2023.10.04.23.34.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Oct 2023 23:34:16 -0700 (PDT)
Message-ID: <9415563e-1429-8bca-25e2-12b474c3c5c8@linaro.org>
Date: Thu, 5 Oct 2023 08:34:13 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.15.1
Subject: Re: [PATCH 04/11] dt-bindings: Add vendor prefix for Mobileye Vision
 Technologies Ltd.
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
 <20231004161038.2818327-5-gregory.clement@bootlin.com>
From: =?UTF-8?Q?Philippe_Mathieu-Daud=c3=a9?= <philmd@linaro.org>
In-Reply-To: <20231004161038.2818327-5-gregory.clement@bootlin.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 4/10/23 18:10, Gregory CLEMENT wrote:
> Mobileye Vision Technologies Ltd. is a company developing autonomous
> driving technologies and advanced driver-assistance systems (ADAS)
> including cameras, computer chips and software.
> 
> Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
> ---
>   Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>   1 file changed, 2 insertions(+)

Reviewed-by: Philippe Mathieu-Daudé <philmd@linaro.org>



