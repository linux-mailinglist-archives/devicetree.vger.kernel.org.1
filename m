Return-Path: <devicetree+bounces-8178-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 925DA7C6FD7
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 15:58:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AFF301C2096C
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 13:58:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89F752E650;
	Thu, 12 Oct 2023 13:58:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="bS1KB5al"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA6AB2E641
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 13:58:25 +0000 (UTC)
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A7290B7
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 06:58:23 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-40651b22977so2503895e9.1
        for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 06:58:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1697119102; x=1697723902; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BcZvz58OosH2lGDIuEl6DlOcic+0phQ3UfuxYsqp/eA=;
        b=bS1KB5alZItqEXsKSpKZChPuetxarSfDefIQlPQUL5Ay2HjljtHTOvIbq5kngcbdwN
         TJp3vQMcLSL4GQdxeY5eMJ9wovKknNP3zZzSOyFG/jKczvQ7hi0x6VtFyMj8D3BDzmTb
         FIjvo4epH31IG5ABKQu+qBDdLofOerMFih0Avxh/2HLYtmRdkOPoTUcr05V50R8YdaVf
         pDX7wKtqbMARDULUEhnQy00dEr3X7FQE4ERiVr3m1NOtIhouwmYQzew2IxCc8437pMA3
         JUdCnlLBZJhW8i6lCUT3cE4rFWXpqzhxoKtcQqr1Q2CsmlAQjugkj9LS+LIdiaUxsxrm
         8HDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697119102; x=1697723902;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BcZvz58OosH2lGDIuEl6DlOcic+0phQ3UfuxYsqp/eA=;
        b=ZM3JH8EatAJh1eA4wawRzlhYqkWEuVfRHwGloNZGAW87HSVxiQUZfUB8etzptT8bW+
         YCQI8VE3yKQJ+HYGMqnhLZb+qPObl4xYZhReuYJlP7eqgCcApGiMSa4vbJzf+2Czj6sl
         qTH4dfUpGQTW4eLJtFzltoaz0Rd/lA1O4i0GTNWOvHLZdRMPKVKa0JqifzLEoN474AfH
         SvD29rX9dkYoIGmWmFwhL0zPGngm+o694ph5gkjDHv7BCqoHEA8OYWS6Pm3HUCBgQcVB
         hWyL9MtxAp/jzrvgzN8nfAUXnvwq+0nC6cN9/ErStUpHBougTn2RvQYOuDNOTEmC2xyn
         KRIg==
X-Gm-Message-State: AOJu0YxShfPiX0dpRovPKI7CxSNVQ42QNDgJI0H5II8H3rKTNdJ7wS9r
	o6MaEVK6ENJecAKottIm5BHiZg==
X-Google-Smtp-Source: AGHT+IEX4nDwJ5QBbqXM1eRAqAHPm4dDRQbr5bVhX7vDfoHgWUlVU7DOUB46kNI1sT4S5KCCp8cx2w==
X-Received: by 2002:a05:600c:1d18:b0:404:72f9:d59a with SMTP id l24-20020a05600c1d1800b0040472f9d59amr21765331wms.0.1697119101941;
        Thu, 12 Oct 2023 06:58:21 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:999:a3a0:3fed:c1e5:145f:8179? ([2a01:e0a:999:a3a0:3fed:c1e5:145f:8179])
        by smtp.gmail.com with ESMTPSA id g7-20020a5d5407000000b00327df8fcbd9sm18598356wrv.9.2023.10.12.06.58.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Oct 2023 06:58:21 -0700 (PDT)
Message-ID: <3f4784c7-a6a6-4567-bd80-7e3e82abed16@rivosinc.com>
Date: Thu, 12 Oct 2023 15:58:20 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 10/13] dt-bindings: riscv: add Zihintntl ISA extension
 description
Content-Language: en-US
To: Conor Dooley <conor@kernel.org>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org,
 Palmer Dabbelt <palmer@rivosinc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Albert Ou <aou@eecs.berkeley.edu>, Jonathan Corbet <corbet@lwn.net>,
 Andrew Jones <ajones@ventanamicro.com>, Evan Green <evan@rivosinc.com>
References: <20231011111438.909552-1-cleger@rivosinc.com>
 <20231011111438.909552-11-cleger@rivosinc.com>
 <20231012-ambiguity-angular-d8c69cc01535@spud>
From: =?UTF-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <cleger@rivosinc.com>
In-Reply-To: <20231012-ambiguity-angular-d8c69cc01535@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 12/10/2023 15:50, Conor Dooley wrote:
> On Wed, Oct 11, 2023 at 01:14:35PM +0200, Clément Léger wrote:
>> Add description for Zihintntl ISA extension[1] which can now be
>> reported through hwprobe for userspace usage.
>> 
>> [1]
>> https://drive.google.com/file/d/13_wsN8YmRfH8YWysFyTX-DjTkCnBd9hj/view
>
>> 
> Ditto. Who is even hosting this google drive anyway? I'd rather see 
> GitHub links to docs from the releases, but since youre pointing at
> the ISA manual I suppose those do not really exist.

Acked, I'll fix all these as "Links:"

Regarding the pdf sources themselves, I actually used the links as
referred on the RISC-V wiki [1] which is the wiki mentioned from the
riscv.org website [2]. I do not like it but there does not seems to have
a proper specification release website...

Maybe pointing only to a specific commit on the github repo that
mentioned that the extension was ratified is better.

Thanks,

Clément

[1] https://wiki.riscv.org/display/HOME/Recently+Ratified+Extensions
[2] https://riscv.org/technical/specifications/

> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> 
> Thanks, Conor.
>> 
>> Signed-off-by: Clément Léger <cleger@rivosinc.com> --- 
>> Documentation/devicetree/bindings/riscv/extensions.yaml | 6 ++++++ 
>> 1 file changed, 6 insertions(+)
>> 
>> diff --git
>> a/Documentation/devicetree/bindings/riscv/extensions.yaml
>> b/Documentation/devicetree/bindings/riscv/extensions.yaml index
>> 4c923800d751..70c2b0351357 100644 ---
>> a/Documentation/devicetree/bindings/riscv/extensions.yaml +++
>> b/Documentation/devicetree/bindings/riscv/extensions.yaml @@ -247,6
>> +247,12 @@ properties: The standard Zihintpause extension for pause
>> hints, as ratified in commit d8ab5c7 ("Zihintpause is ratified") of
>> the riscv-isa-manual.
>> 
>> +        - const: zihintntl +          description: +
>> The standard Zihintntl extension for non-temporal locality hints,
>> as +            ratified in commit 0dc91f5 ("Zihintntl is
>> ratified") of the +            riscv-isa-manual. + - const: zihpm 
>> description: The standard Zihpm extension for hardware performance
>> counters, as -- 2.42.0
>> 

