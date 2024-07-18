Return-Path: <devicetree+bounces-86664-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ACFD937128
	for <lists+devicetree@lfdr.de>; Fri, 19 Jul 2024 01:39:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C5E6EB21DD8
	for <lists+devicetree@lfdr.de>; Thu, 18 Jul 2024 23:38:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41EA7146D60;
	Thu, 18 Jul 2024 23:38:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="IOP7tBAV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com [209.85.166.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD9EC14659C
	for <devicetree@vger.kernel.org>; Thu, 18 Jul 2024 23:38:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721345928; cv=none; b=Bxhz9E/jqSQpy4GBobosfrsifj9d+f9+5DYTMarBqfMBYeG61Q4OS1AiqPNjME8L0uAdhvUoqfDzTPCPUbqd1Oxec21cRuOxhi2Td4Mp6QhCRUn4VMrbu37CmLa4Kct5+ZK7goyHk37ot31sFmnY1dHWz7tVlxSAwKNrPbkAW60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721345928; c=relaxed/simple;
	bh=mdmnaCDZYFykkp8P60f5Qr3sXWLsG8Use+1CQ/rGOoQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eY/Gsq6SfzKB8qF7NNe25E3RE5OptveyziWYthl6apoasCXeMjq7/OuLTrcO8LrsR8MThxS7/zG6onLgyEMdqYnK691fFcc6UaAdEkuzaSsluJC0HLSOpfV+VFIUDeZYLDUS/VhPE0/mvnWvl4HYvKxKlgbVJDX7ks796VqA680=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=IOP7tBAV; arc=none smtp.client-ip=209.85.166.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-io1-f48.google.com with SMTP id ca18e2360f4ac-807687b6652so61670139f.0
        for <devicetree@vger.kernel.org>; Thu, 18 Jul 2024 16:38:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1721345925; x=1721950725; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nvIns0vPchcCSpiwT/Cr//HZT6luVmkYPX5bZikjiSM=;
        b=IOP7tBAVjmmCqM0yaqd6WfKf+8TaOMn7Atn/jNRHw6uRu4xx8y51lqDiw7oUYjbzGN
         tuxFudCtAWiWSzLQz/7rHJN+QslwE5Y2jGcSdZo8RuaqiX3OZKUabiapY3ZS+IcuoPav
         dfgopp4MLYKKswU3+icsygWxBkVpmIPgOg/KfvXtrvtmTE+1n5IYhQkQAmg7dBMA3Aop
         Q7UBXeghNZwkjj1wvX6zCKastw147syZuTiM7xIAOXzCNX1+UrRVtpMcJvif/SMuag0A
         H/aQnLhZDBvgwSU8cs9NEC0BI1lVC+vLOnOGc54Nyemd74VWaOnGtk4trkv3A7m+9kK0
         3C7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721345925; x=1721950725;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nvIns0vPchcCSpiwT/Cr//HZT6luVmkYPX5bZikjiSM=;
        b=nLZLLOPR/gF6tkyhzrvp+EFfCcsy2hi7O5PaeSLlHM6aNIRaNIa5JTHdNP+gBTe7bO
         bPc3PjZaBolir3QLPjAbL9QvdKSNay+4qmujtCPVCYMa4WDVwnY9kvuap/3Sps+01NCl
         /LugQ50fxxzfGWCfdyPRU7UdkESoxwPLVkKy64GTBaWAA0zGLMoN1xwmknxyWQCqx/hW
         fPgS0J29iTzcLqusV+F3zAn8nEku8MY2rexfriqcj5T6PRmHPdRLvODu6eho9OXLVKMo
         Yo4KMpXjdKla6XScqj+1aoA32k7kYeuCm/IdU1ExSdMEzgJ8k4wAhfkTm7d8RnX/OQWY
         pKGg==
X-Forwarded-Encrypted: i=1; AJvYcCWcXPS4ijoH8hS1MayWD5r6XslQR2X7c9p2ldIVHeZbDFN8kLOHJ/h4TinKD9ux115yszS5kzcxCaaJOrbvNJCpOEDwouuwM8uzpg==
X-Gm-Message-State: AOJu0YyJHOz/P2ykOq56X/LAWitfn0JAJ6hvYRunnXJ9qpUgHd2A3XLM
	6yLVJoDW9CrXNXDvWk4Us/TfqcN8Zn2PfLf+/ntD2PfGdSSVO/3t4GPW6qNLeiI=
X-Google-Smtp-Source: AGHT+IEIoaaRXy0Um8nUPOglEs3ZnOloxeKDVGZgw8a7UQi1E33LPlNqKhP4N06l+qm+Tlu0m2n/3Q==
X-Received: by 2002:a05:6602:1347:b0:807:28a5:aa47 with SMTP id ca18e2360f4ac-817125e17eamr804148139f.18.1721345924786;
        Thu, 18 Jul 2024 16:38:44 -0700 (PDT)
Received: from [100.64.0.1] ([147.124.94.167])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4c2342f15ccsm80150173.67.2024.07.18.16.38.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Jul 2024 16:38:44 -0700 (PDT)
Message-ID: <727b966a-a8c4-4021-acf6-3c031ccd843a@sifive.com>
Date: Thu, 18 Jul 2024 18:38:42 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 2/4] dt-bindings: riscv: Add Svade and Svadu Entries
To: Yong-Xuan Wang <yongxuan.wang@sifive.com>, Conor Dooley <conor@kernel.org>
Cc: greentime.hu@sifive.com, vincent.chen@sifive.com,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org, kvm-riscv@lists.infradead.org,
 kvm@vger.kernel.org
References: <20240712083850.4242-1-yongxuan.wang@sifive.com>
 <20240712083850.4242-3-yongxuan.wang@sifive.com>
Content-Language: en-US
From: Samuel Holland <samuel.holland@sifive.com>
In-Reply-To: <20240712083850.4242-3-yongxuan.wang@sifive.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 2024-07-12 3:38 AM, Yong-Xuan Wang wrote:
> Add entries for the Svade and Svadu extensions to the riscv,isa-extensions
> property.
> 
> Signed-off-by: Yong-Xuan Wang <yongxuan.wang@sifive.com>
> ---
>  .../devicetree/bindings/riscv/extensions.yaml | 28 +++++++++++++++++++
>  1 file changed, 28 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
> index 468c646247aa..e91a6f4ede38 100644
> --- a/Documentation/devicetree/bindings/riscv/extensions.yaml
> +++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
> @@ -153,6 +153,34 @@ properties:
>              ratified at commit 3f9ed34 ("Add ability to manually trigger
>              workflow. (#2)") of riscv-time-compare.
>  
> +        - const: svade
> +          description: |
> +            The standard Svade supervisor-level extension for SW-managed PTE A/D
> +            bit updates as ratified in the 20240213 version of the privileged
> +            ISA specification.
> +
> +            Both Svade and Svadu extensions control the hardware behavior when
> +            the PTE A/D bits need to be set. The default behavior for the four
> +            possible combinations of these extensions in the device tree are:
> +            1) Neither Svade nor Svadu present in DT => It is technically
> +               unknown whether the platform uses Svade or Svadu. Supervisor
> +               software should be prepared to handle either hardware updating
> +               of the PTE A/D bits or page faults when they need updated.
> +            2) Only Svade present in DT => Supervisor must assume Svade to be
> +               always enabled.
> +            3) Only Svadu present in DT => Supervisor must assume Svadu to be
> +               always enabled.
> +            4) Both Svade and Svadu present in DT => Supervisor must assume
> +               Svadu turned-off at boot time. To use Svadu, supervisor must
> +               explicitly enable it using the SBI FWFT extension.
> +
> +        - const: svadu
> +          description: |
> +            The standard Svadu supervisor-level extension for hardware updating
> +            of PTE A/D bits as ratified at commit c1abccf ("Merge pull request
> +            #25 from ved-rivos/ratified") of riscv-svadu. Please refer to Svade

Should we be referencing the archived riscv-svadu repository now that Svadu has
been merged to the main privileged ISA manual? Either way:

Reviewed-by: Samuel Holland <samuel.holland@sifive.com>

> +            dt-binding description for more details.
> +
>          - const: svinval
>            description:
>              The standard Svinval supervisor-level extension for fine-grained


