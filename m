Return-Path: <devicetree+bounces-7980-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ADDE7C6624
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 09:15:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A71C41C20A59
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 07:15:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71932DF4D;
	Thu, 12 Oct 2023 07:15:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="hDewP4PB"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6D09DDDB
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 07:15:53 +0000 (UTC)
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 83AC690
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 00:15:50 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-406aaccb41dso2338855e9.0
        for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 00:15:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1697094949; x=1697699749; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KXCX0IrmSUAHDEC+IloTWKmfzlKX5kVqCGXqvzJraC0=;
        b=hDewP4PBYrmftFZlJqTRZmmPM0wynRvkFH2AGWmNpEZHaOsLRKLPEXJk2Tluu8W4VF
         an+V7rFmrvY87N4lgrz89l0QUTg+20sBENn+UzLtJ5pY056y31F8HWYjUwAJ/Wnl8Flz
         sEMeIqNFs6k4HOSq0h9QQyYKRSO8Gbo60vlZesG4p0PhzwPto+FL41/kIl9jtyW0K7NS
         ly0QLU7gL9E8XvHWblRPfpMngjlcR+I52lnnO1l2nX+J+myiTcNx8S+5bLw3YuS/iwP1
         tzlqhZNfQ+hg+/xSOF6NhJrdnK7K0TtEvhBzeVrEjlQT/SY0AwBpLUxZpHx/pHjt6H+F
         vb3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697094949; x=1697699749;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KXCX0IrmSUAHDEC+IloTWKmfzlKX5kVqCGXqvzJraC0=;
        b=weAi1T35+xez/DaDACH7kaeT6Qy+CzNXraTIpHpWu6wm/HWd9yVxHGP0NhMTwBUn4Y
         AQ1Vr0ZabKuWLloaDTEX+3iKznBgn9rq+iWgW43z7UvO7gPIKLcz1pL00/2QXEwT6+nE
         /dlHlgtWnuDDG5Pq3rK0P/yfvJMZ4m5FNyl/lnWJTcWL8kzA7ArLWmEnQQ8Z/gueNVks
         qo+EPKrMjxlqsj7UQwju1cxAjFmUd+0zKbcrcq3/hda4XMqIcL+ij9GaxZ4hzM/T5bVH
         uS2UKqVbu+IsmTAONDm2UB8C4V6xZZiR0rQz8O5SAxAYVf9IlCo7VBaLZwT9OSUyhCzV
         gTvA==
X-Gm-Message-State: AOJu0Yx3qhWERl2VX8QhBhgefFNEdZxA8QMiNK87qhmFg//hwSod1q+G
	FVMWfO0zjNtNPeju2UJ90oPcLw==
X-Google-Smtp-Source: AGHT+IF8ZVCCfIFHscwR+LhyeBNqMXqYxxa5f++Vy8Gg5L6iDKMU8VQSX5qkaLQ8psvTbqv+62pjxw==
X-Received: by 2002:a05:600c:214f:b0:406:513d:738f with SMTP id v15-20020a05600c214f00b00406513d738fmr20891443wml.2.1697094948360;
        Thu, 12 Oct 2023 00:15:48 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:999:a3a0:3fed:c1e5:145f:8179? ([2a01:e0a:999:a3a0:3fed:c1e5:145f:8179])
        by smtp.gmail.com with ESMTPSA id l16-20020a7bc450000000b0040536dcec17sm20897533wmi.27.2023.10.12.00.15.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Oct 2023 00:15:47 -0700 (PDT)
Message-ID: <11d6a463-4e00-4407-9d93-2f9d190c4be3@rivosinc.com>
Date: Thu, 12 Oct 2023 09:15:46 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 00/13] riscv: report more ISA extensions through
 hwprobe
To: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org
Cc: Palmer Dabbelt <palmer@rivosinc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Albert Ou <aou@eecs.berkeley.edu>, Jonathan Corbet <corbet@lwn.net>,
 Andrew Jones <ajones@ventanamicro.com>, Evan Green <evan@rivosinc.com>,
 Conor Dooley <conor@kernel.org>
References: <20231011111438.909552-1-cleger@rivosinc.com>
Content-Language: en-US
From: =?UTF-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <cleger@rivosinc.com>
In-Reply-To: <20231011111438.909552-1-cleger@rivosinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On second thought, maybe it would make more sense to squash all logical
commits together (dt-bindings, hwporobe, etc) with all the ISA
extensions in each. Tell me if you think it would be better.

Clément

On 11/10/2023 13:14, Clément Léger wrote:
> In order to be able to gather more information about the supported ISA
> extensions from userspace using the hwprobe syscall, add more ISA extensions
> report. This series adds the following ISA extensions support:
> 
> - Zfh[min]
> - Zvfh[min]
> - Zihintntl
> - Zvbb
> - Zvbc
> - Zvkb
> - Zvkg
> - Zvkned
> - Zvknh[ab]
> - Zvksed
> - Zvksh
> - Zvkn
> - Zvknc
> - Zvkng
> - Zvks
> - Zvksc
> - Zvksg
> - Zvkt
> 
> Clément Léger (13):
>   riscv: fatorize hwprobe ISA extension reporting
>   riscv: add ISA extension probing for Zv* extensions
>   riscv: hwprobe: export Zv* ISA extensions
>   dt-bindings: riscv: add Zv* ratified crypto ISA extensions description
>   riscv: add ISA extension probing for Zfh/Zfhmin
>   riscv: hwprobe: export Zfh/Zfhmin ISA extensions
>   dt-bindings: riscv: add Zfh/Zfhmin ISA extensions description
>   riscv: add ISA extension probing for Zihintntl
>   riscv: hwprobe: export Zhintntl ISA extension
>   dt-bindings: riscv: add Zihintntl ISA extension description
>   riscv: add ISA extension probing for Zvfh[min]
>   riscv: hwprobe: export Zvfh[min] ISA extensions
>   dt-bindings: riscv: add Zvfh[min] ISA extension description
> 
>  .../devicetree/bindings/riscv/extensions.yaml | 127 ++++++++++++++++++
>  Documentation/riscv/hwprobe.rst               |  65 +++++++++
>  arch/riscv/include/asm/hwcap.h                |  21 +++
>  arch/riscv/include/uapi/asm/hwprobe.h         |  21 +++
>  arch/riscv/kernel/cpufeature.c                |  21 +++
>  arch/riscv/kernel/sys_riscv.c                 |  53 ++++++--
>  6 files changed, 294 insertions(+), 14 deletions(-)
> 

