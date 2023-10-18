Return-Path: <devicetree+bounces-9653-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8209B7CDC54
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 14:53:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 17056B20FAA
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 12:53:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31550347BC;
	Wed, 18 Oct 2023 12:53:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="RDwVreNM"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFCE0339B4
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 12:53:11 +0000 (UTC)
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com [IPv6:2607:f8b0:4864:20::630])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC161106
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 05:53:09 -0700 (PDT)
Received: by mail-pl1-x630.google.com with SMTP id d9443c01a7336-1c9d132d92cso17195975ad.0
        for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 05:53:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1697633589; x=1698238389; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=V4bV1pYZhN5D0dbLwFy/u3ve1RaIEgwcUfBCkqo2+yE=;
        b=RDwVreNMpjT2BzmCZS/supJ+Z14aNLOcz3x7dq+Dm9ZrX6p4lJOFnLU2Xbcu334/ZB
         sTpF4Ypq6yva4/WLspPPoyhseEYolAHNHHh026LyhssQovjzW8aeWmV+zhNQ2aAQJHwK
         zOq5IQuFiGSZxm7G6+5qW5Zggh0VPVQHBKm0o2+Tvtux3SObYibYWmtLFFVmrcegMT3r
         ZhkfQ1tDdULOZxTwc/9nDZ2u18FZcnFAQJYHpqVCdAIHGy7HLXDfNcgS20Nws6P4VU4Q
         kbpigX19nWYphmVducjum0e6OOLNo+KLlrH5FtTWoWw1/tXXuKeiFN9dM60v8g0hX3OY
         izjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697633589; x=1698238389;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=V4bV1pYZhN5D0dbLwFy/u3ve1RaIEgwcUfBCkqo2+yE=;
        b=ZNs9+b/qHunHJ0qgep3KcBciPxMW2VxhO3TblLJkHbw/inlp+l95NcLxcO2EYIIERw
         le7GsBcKz/S8cDH2ueI5ZKQeJT3m4jQtPFye1uA41r/GkUvbrSrd4JOduUEeOaUST9Ea
         iLUwkiVe1N+GQ1DJqLhAYCFEKIzMDLwhfn8fevYeiY32KKiH8A4XnZu9wQtf5A4/TKb/
         FqtirXR9ywbZNG95YGkXelHyN7W8aNhUkbCHMcpyBpUIHg8oyB99tNt9avRCpsl4NO42
         gohcpp9s0TGPhWaOYGvRgp5Ev0BPhzcNk3ss4c5Gj2u6WmEnFxvoez9ALJjjT8CCmYfa
         k/Vg==
X-Gm-Message-State: AOJu0YyNMbwvIqCrM8cFIqmMsszEwhegC9xibMe+TAPj+rF4Mu1fuxoL
	OkpaIi5kn7wiJlVO+BSjDaZE+w==
X-Google-Smtp-Source: AGHT+IFPDreTmEhnjLsKBJ/2zlFkymtjnnL8MnaU8RHtshB63uY79+49cBh7Lw0owZ4sNW4yui5n8A==
X-Received: by 2002:a17:902:f154:b0:1bf:349f:b85c with SMTP id d20-20020a170902f15400b001bf349fb85cmr5148024plb.1.1697633589226;
        Wed, 18 Oct 2023 05:53:09 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:999:a3a0:fde2:480:5b62:f2d2? ([2a01:e0a:999:a3a0:fde2:480:5b62:f2d2])
        by smtp.gmail.com with ESMTPSA id p9-20020a170902bd0900b001b8b2b95068sm3437763pls.204.2023.10.18.05.53.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Oct 2023 05:53:08 -0700 (PDT)
Message-ID: <af785f0f-9de7-4548-9cdb-f392cde1cc2b@rivosinc.com>
Date: Wed, 18 Oct 2023 14:52:55 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 05/19] riscv: add ISA extension parsing for vector
 crypto extensions
To: Jerry Shih <jerry.shih@sifive.com>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org,
 Palmer Dabbelt <palmer@rivosinc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Albert Ou <aou@eecs.berkeley.edu>, Jonathan Corbet <corbet@lwn.net>,
 Andrew Jones <ajones@ventanamicro.com>, Evan Green <evan@rivosinc.com>,
 Conor Dooley <conor@kernel.org>, Samuel Ortiz <sameo@rivosinc.com>
References: <20231017131456.2053396-1-cleger@rivosinc.com>
 <20231017131456.2053396-6-cleger@rivosinc.com>
 <DA8B4610-D514-4733-B875-C247FFCCC7AA@sifive.com>
Content-Language: en-US
From: =?UTF-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <cleger@rivosinc.com>
In-Reply-To: <DA8B4610-D514-4733-B875-C247FFCCC7AA@sifive.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 18/10/2023 03:45, Jerry Shih wrote:
> On Oct 17, 2023, at 21:14, Clément Léger <cleger@rivosinc.com> wrote:
>> @@ -221,6 +261,22 @@ const struct riscv_isa_ext_data riscv_isa_ext[] = {
>> 	__RISCV_ISA_EXT_DATA(zkt, RISCV_ISA_EXT_ZKT),
>> 	__RISCV_ISA_EXT_DATA(zksed, RISCV_ISA_EXT_ZKSED),
>> 	__RISCV_ISA_EXT_DATA(zksh, RISCV_ISA_EXT_ZKSH),
>> +	__RISCV_ISA_EXT_DATA(zvbb, RISCV_ISA_EXT_ZVBB),
>> +	__RISCV_ISA_EXT_DATA(zvbc, RISCV_ISA_EXT_ZVBC),
>> +	__RISCV_ISA_EXT_DATA(zvkb, RISCV_ISA_EXT_ZVKB),
> 
> The `Zvkb` is the subset of `Zvbb`[1]. So, the `Zvkb` should be bundled with `Zvbb`.

Hi Jerry,

Thanks for catching this, I think some other extensions will fall in
this category as well then (Zvknha/Zvknhb). I will verify that.

Clément

> 
> +	__RISCV_ISA_EXT_DATA(zvbb, RISCV_ISA_EXT_ZVBB),
> +	__RISCV_ISA_EXT_DATA(zvbb, RISCV_ISA_EXT_ZVKB),
> +	__RISCV_ISA_EXT_DATA(zvkb, RISCV_ISA_EXT_ZVKB),
> 
> or
> 
> +	__RISCV_ISA_EXT_BUNDLE(zvbb, riscv_zvbb_bundled_exts),
> +	__RISCV_ISA_EXT_DATA(zvkb, RISCV_ISA_EXT_ZVKB),
> 
> [1]
> https://github.com/riscv/riscv-crypto/blob/main/doc/vector/riscv-crypto-vector-zvkb.adoc
> 
> -Jerry

