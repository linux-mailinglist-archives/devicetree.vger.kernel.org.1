Return-Path: <devicetree+bounces-11147-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B94557D4848
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 09:18:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 06C84B20E3F
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 07:18:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2422F13FEF;
	Tue, 24 Oct 2023 07:18:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="jqHhOdEI"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B817D13AEE
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 07:18:36 +0000 (UTC)
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 50FA798
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 00:18:34 -0700 (PDT)
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-2c508e76eb4so8934481fa.0
        for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 00:18:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1698131912; x=1698736712; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KRIlhtIeb1YFd4JwPYh+w2xPq7Nr26Cx3E5/ZUd7zEA=;
        b=jqHhOdEIuadN41MJVGii+Nssy5T7Ll9nxoxV4NeMj2wgKlOJfZt9W8zMxeaAoI8Ffa
         yknFvVzEuabK5oJQd75u1YXB6jfwM5Sy80LWLI6AlXRlj/sJ1N8weQIcQ/UhmPdploeQ
         GfItyqDuLDQnZEoR2CIB8hZpEVUtix/76FqlUrbasg0t9MzHSbdGqYADDWZRwn/tRai6
         xEoGZt6wNQiqCXn6+p3GQ3fC9gwaEwrQTGV3yZAfayXbkmU5N/UUGpENLThP78vzyBKc
         qipUBCoanXnNmAQwBFJDlZLJDDvNvbZnau/XixIZj78iJPfaSawEkc/DmtML7Zs9UvSA
         +JWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698131912; x=1698736712;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KRIlhtIeb1YFd4JwPYh+w2xPq7Nr26Cx3E5/ZUd7zEA=;
        b=pAKBKplObxlsvTlE15mUerl31IbNQjkl5/GOOkeKYM6TZSMxUvzBKdUgZhKL6wqnO6
         N55qjQwon7EZnT+kh2oBzNs6PHG/DHR+ZK4fPa09rCFB8eSSFhAbnCeAek/I7vutbCcc
         HuIuXYp7zo8UuT36rnX+SGTXrLRevgBv3mCwI8UG2J4IMkUQMj6GDqJ+5wZMSOIYAkoo
         gc5BLCmxgUfTEFMFpZFq2ELU+VHQEnJIx6utq99kh/osW03YgAD+VeGY70f9H7dIvhl9
         f2eHTkLWSYeQGmEnKh5ark3e3Iley0Lxjm6MT+RdmEAnPZsmV5izENOBqCKx+uB3WAHA
         JIiA==
X-Gm-Message-State: AOJu0YyVnqrJ3yr89yRrzRtaPTqagI+LnSC1WrWzExPf1Jhnmcm4FwzJ
	bbxx/aObGwuU/DCu7VJE9+00jQ==
X-Google-Smtp-Source: AGHT+IFC45ilAg3tRrLMb0mEc7pz2FsUd3r5wo9psNP7TVo1+HLGBSK/Yy4GORF6XAP+cC+mEVQGng==
X-Received: by 2002:a2e:91c1:0:b0:2c5:18a0:6c2e with SMTP id u1-20020a2e91c1000000b002c518a06c2emr8406164ljg.0.1698131912513;
        Tue, 24 Oct 2023 00:18:32 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:999:a3a0:9f43:3ca4:162c:d540? ([2a01:e0a:999:a3a0:9f43:3ca4:162c:d540])
        by smtp.gmail.com with ESMTPSA id p7-20020a5d4587000000b0032db430fb9bsm9278279wrq.68.2023.10.24.00.18.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Oct 2023 00:18:32 -0700 (PDT)
Message-ID: <d0ea4996-5c48-47b4-99b0-f4211276e0b2@rivosinc.com>
Date: Tue, 24 Oct 2023 09:18:30 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 02/19] riscv: add ISA extension parsing for scalar
 crypto
Content-Language: en-US
To: Evan Green <evan@rivosinc.com>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org,
 Palmer Dabbelt <palmer@rivosinc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Albert Ou <aou@eecs.berkeley.edu>, Jonathan Corbet <corbet@lwn.net>,
 Andrew Jones <ajones@ventanamicro.com>, Conor Dooley <conor@kernel.org>,
 Samuel Ortiz <sameo@rivosinc.com>, Conor Dooley <conor.dooley@microchip.com>
References: <20231017131456.2053396-1-cleger@rivosinc.com>
 <20231017131456.2053396-3-cleger@rivosinc.com>
 <CALs-HssmufWCKzaGy7BwWz4n4hfwV9NjjRD-O_JeupM-p=Ov+w@mail.gmail.com>
From: =?UTF-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <cleger@rivosinc.com>
In-Reply-To: <CALs-HssmufWCKzaGy7BwWz4n4hfwV9NjjRD-O_JeupM-p=Ov+w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 23/10/2023 18:21, Evan Green wrote:
> On Tue, Oct 17, 2023 at 6:15 AM Clément Léger <cleger@rivosinc.com> wrote:
>>
>> From: Evan Green <evan@rivosinc.com>
>>
>> The Scalar Crypto specification defines Zk as a shorthand for the
>> Zkn, Zkr and Zkt extensions. The same follows for both Zkn, Zks and Zbk,
>> which are all shorthands for various other extensions. The detailed
>> breakdown can be found in their dt-binding entries.
>>
>> Since Zkn also implies the Zbkb, Zbkc and Zbkx extensions, simply passing
>> "zk" through a DT should enable all of Zbkb, Zbkc, Zbkx, Zkn, Zkr and Zkt.
>> For example, setting the "riscv,isa" DT property to "rv64imafdc_zk"
>> should generate the following cpuinfo output:
>> "rv64imafdc_zicntr_zicsr_zifencei_zihpm_zbkb_zbkc_zbkx_zknd_zkne_zknh_zkr_zkt"
>>
>> riscv_isa_ext_data grows a pair of new members, to permit setting the
>> relevant bits for "bundled" extensions, both while parsing the ISA string
>> and the new dedicated extension properties
>>
>> Co-developed-by: Conor Dooley <conor.dooley@microchip.com>
>> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
>> Signed-off-by: Evan Green <evan@rivosinc.com>
>> Signed-off-by: Clément Léger <cleger@rivosinc.com>
> 
> My tree might be out of sync, but in my search for riscv_isa_ext, I
> also found a use in print_isa() (cpu.c) where we're reaching into
> riscv_isa_ext[].id and assuming it's always valid. If that's still in
> there we'll want to fix up that spot too, since now with bundles .id
> may or may not be valid.

Oh indeed, the array is visible outside of this compilation unit :/.
I'll check that before sending V3.

Clément

> 
> -Evan

