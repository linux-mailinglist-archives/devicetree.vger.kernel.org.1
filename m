Return-Path: <devicetree+bounces-3246-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 52E857ADDE7
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 19:39:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id E92562815CA
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 17:39:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBD15210ED;
	Mon, 25 Sep 2023 17:39:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B11E9D297
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 17:39:03 +0000 (UTC)
Received: from mail-qv1-xf34.google.com (mail-qv1-xf34.google.com [IPv6:2607:f8b0:4864:20::f34])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D5C2810E
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 10:39:01 -0700 (PDT)
Received: by mail-qv1-xf34.google.com with SMTP id 6a1803df08f44-65b0557ec77so18902366d6.0
        for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 10:39:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1695663541; x=1696268341; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hTbKVRUtifK600GcTuB6H5T7Hq7nQwjgpsYUbwhLkRs=;
        b=I4Y8z1B8TwdY5poWjHnCoXf7zaKCfgKCV4w5ZoUi6fs1t2eZjaEwX+sqQN1ez1XWWo
         elUuSLZmz7EcOoFe6CAMbmoaSw/KNIqghLTrqfyNqCfpJQJengNgb7F4vMubg3McHb7G
         rKtsoA9c38K6V2iAXWm6yfRX/fQTqkDD+V8OGwQbpUexI+nGVzTlV6xXZjiFKbB5Vvgk
         UNzTC6+VrPJo0/jCAslOrcEPpeOA+SfRU6U9Ty97HcghVEjLMTWooqFdXnjstRNgywrl
         L7IKYmgmQs55sIXMbYDc2XdC2Nc+Yf+JU4PoSzPcj3oiGJv9OzMYlASYBYamNoEjVCn3
         hsCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695663541; x=1696268341;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hTbKVRUtifK600GcTuB6H5T7Hq7nQwjgpsYUbwhLkRs=;
        b=pNygXWE0Aty9RA+ExpA/iJsU/UC5J5GKShpBX17g7vtiAZ6rdEJQOK3hC4etX/MNIb
         c4Qzsj3fX3CNiUyhceKDLpzViGMCW+Hgl+UiSv/jsa9ehvHeL4eSbaQ2oK0GzxDdcQjW
         Eh+uiaj8b0epj8rwPCxeN467wsoJQTPVs0v/0V4a/qjDpU10Z+VRg6HKvEY44B3goD20
         3bLgsX7aG8A87n19AqA0Xal1+yOEjp8REZUCDsKFhmt4D2BrqXEdS9A3YYAyZaKoa1GK
         Mbv4AooLe7Da7OEX0HoAlvmcIpYJF9wFQBRplVwQq1YB07okjuez8QZYAl9dDONhdkHJ
         oHSg==
X-Gm-Message-State: AOJu0YxwkAGAzRHhfd+BTYzuYc/NKjEvDjnMe6YDb5UL5xNj8vptbaZq
	Z2w40jTbiT+oRFbJfS7nEfQguw==
X-Google-Smtp-Source: AGHT+IG+tSQcs5F1udgePekSyNFg4nS/3ON6TuwwuW4o4BqlQE4HXLo3X3tpbTYJLPBv/LJ1Cwr8Wg==
X-Received: by 2002:a05:6214:4307:b0:647:22cc:1784 with SMTP id oe7-20020a056214430700b0064722cc1784mr8149193qvb.15.1695663540981;
        Mon, 25 Sep 2023 10:39:00 -0700 (PDT)
Received: from ?IPV6:2600:1700:2000:b002:75e1:d26a:c179:14a3? ([2600:1700:2000:b002:75e1:d26a:c179:14a3])
        by smtp.gmail.com with ESMTPSA id ph7-20020a0562144a4700b00655ebd053dcsm3167034qvb.82.2023.09.25.10.38.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Sep 2023 10:39:00 -0700 (PDT)
Message-ID: <a43ef21e-ce26-45ee-be28-526238e3e88f@sifive.com>
Date: Mon, 25 Sep 2023 12:38:58 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC v2 2/6] riscv: dts: sifive: convert isa detection to new
 properties
Content-Language: en-US
To: Conor Dooley <conor@kernel.org>, linux-riscv@lists.infradead.org
Cc: Conor Dooley <conor.dooley@microchip.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>,
 Daire McNamara <daire.mcnamara@microchip.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>, Emil Renner Berthing <kernel@esmil.dk>,
 Jisheng Zhang <jszhang@kernel.org>, Guo Ren <guoren@kernel.org>,
 Fu Wei <wefu@redhat.com>, Chen Wang <unicorn_wang@outlook.com>,
 devicetree@vger.kernel.org, linux-sunxi@lists.linux.dev,
 linux-renesas-soc@vger.kernel.org
References: <20230922081351.30239-2-conor@kernel.org>
 <20230922081351.30239-4-conor@kernel.org>
From: Samuel Holland <samuel.holland@sifive.com>
In-Reply-To: <20230922081351.30239-4-conor@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 2023-09-22 3:13 AM, Conor Dooley wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
> 
> Convert the fu540 and fu740 devicetrees to use the new properties
> "riscv,isa-base" & "riscv,isa-extensions".
> For compatibility with other projects, "riscv,isa" remains.
> 
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---
>  arch/riscv/boot/dts/sifive/fu540-c000.dtsi | 15 +++++++++++++++
>  arch/riscv/boot/dts/sifive/fu740-c000.dtsi | 15 +++++++++++++++
>  2 files changed, 30 insertions(+)

Reviewed-by: Samuel Holland <samuel.holland@sifive.com>


