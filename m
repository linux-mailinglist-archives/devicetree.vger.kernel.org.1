Return-Path: <devicetree+bounces-52017-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 54460881714
	for <lists+devicetree@lfdr.de>; Wed, 20 Mar 2024 19:04:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 09EAC1F217A0
	for <lists+devicetree@lfdr.de>; Wed, 20 Mar 2024 18:04:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D3BC6A358;
	Wed, 20 Mar 2024 18:04:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="AbLPR7uA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB75669E16
	for <devicetree@vger.kernel.org>; Wed, 20 Mar 2024 18:04:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710957879; cv=none; b=AkOYw5MTkYV1TVkkb5lr9AQcvAlCwsz8ocBuYLqP+niqRxlCxAyIUo3sdtu+M/wO1faBUAhd4thzwKrJ64zEWFQGdhwPUlGiNSqArNjs2T5+dyL1ML8AgPx+FkD+iBBTVtcm7Y/dDN8bhdNmb5ZbixDBMHL1XbZ8Ketriorg3z8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710957879; c=relaxed/simple;
	bh=VOZ4WmYYmAeIBgjFbfFvP+4vvCJ36utbFzgoapDF8SQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kyxqkZB9qyqr4QFZ1foi8PdYEGmBebu2QO5AwucsesrwfYUgzUjg8f3mGxWFEuMYUQ5mSybYyh2L8fk9Ho67Mnq/mFcQKBBy6LpxU880zQ5BU/yw50OZs8nhc8g7IyH1mz9agJlAL8u7AacS7nA9BLKrgLbo9ocYt2TXLQTInKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=AbLPR7uA; arc=none smtp.client-ip=209.85.128.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-609408d4b31so848317b3.0
        for <devicetree@vger.kernel.org>; Wed, 20 Mar 2024 11:04:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1710957877; x=1711562677; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6TmgB7TOmDIH1+NUxCse+KiCTmMgVy8/EkD7jAnjwO8=;
        b=AbLPR7uA6qgMLQH6Nb2BEnJSVKVSZKag7WPNxfyQXJ5vi0ZROOxsPF6/oW4inTv/eT
         43wD7mfoJ4sF0BC5zJOxQNIDxz4fWJzmPsZG1ADMj4lru8OP/Ov65/etsXXym9Sa6+5r
         qF1I7LNw7z2Pcxu/52Hdd3Id7Aj7WaQK9D/3LOlV9tJp/Pr5D3QW77hgm/M2d8bg7/Eo
         +l5YeBIsmQBl3Y1XB/6K38bqan7VWiVkDezfIgFs+CzXM6L14dc6UDm1Yc0A4zcJXAGS
         +mH/6l+EiDfQcMZs4Sf7kARefRs6IOQx5ENMue7sC3YNzhdsTfpctTIVWqVeSICf5QEN
         l/bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710957877; x=1711562677;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6TmgB7TOmDIH1+NUxCse+KiCTmMgVy8/EkD7jAnjwO8=;
        b=P0puazouv8B4xvSII4eOXDRNu9+wPpPSvO5kX0pdI8cakiyQzgO2b3Uq4bzAfg97y+
         lnPlc0ofWG6WoDEJ+DfTy490a4301e92lga/eNxehY2KBUQoUQMGaTa73euzAKs+kaP9
         PYG20cAanBv4biwIXAu54pyLuYlU2u73hZLUN5lB4NqintDaj3QSJ/7yeP7JvTW8Mbcl
         rDg3yD5D/eh4je3TJEX7mx69JjiJDrY0SfFoO9sWDrcL76hP7vhwVN3zl2E/LuSAkhK/
         JX7wxqTdAMrpW+UL+mdQDVDUVbt7tBBMAhQhMacWwZrB9/oCIFQJHaaCwKnZkD/5yw3s
         6SXw==
X-Forwarded-Encrypted: i=1; AJvYcCXE/0hFOpSHB4mqi7xJNe3hqNA3VgX7yWtk0yv2DVTPV9PHVYX7X/Rf08q/5WWAZZCal8U3qNAGyykqxs04o6NKPaQVAT/Ry+I3Yg==
X-Gm-Message-State: AOJu0YysEHLHPagAdYnZ4bt9JtSu153A2SqzAr1RYaDDvIq8pSsiOzsd
	yDfsRPNXttHTF8Jafxk27IqYktDYyGI/zjS6b+2EJsnGF5n2Maq6QG2gHtxY1GA=
X-Google-Smtp-Source: AGHT+IEjNFRrCRHpqrhxdo3V77FEmF7Rpc9yb5igu4d1kI5oiVdJtqEevCyIKfRdNiyO251T+F0HDQ==
X-Received: by 2002:a81:a50f:0:b0:610:c904:842b with SMTP id u15-20020a81a50f000000b00610c904842bmr2791022ywg.46.1710957876657;
        Wed, 20 Mar 2024 11:04:36 -0700 (PDT)
Received: from [100.64.0.1] ([136.226.86.189])
        by smtp.gmail.com with ESMTPSA id o1-20020a81ef01000000b0060a304ca3f4sm2832865ywm.19.2024.03.20.11.04.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Mar 2024 11:04:35 -0700 (PDT)
Message-ID: <1ffad954-63bb-497a-af10-0b319a0831b7@sifive.com>
Date: Wed, 20 Mar 2024 13:04:33 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH 9/9] selftests: riscv: Add a pointer masking test
Content-Language: en-US
To: Conor Dooley <conor@kernel.org>
Cc: Palmer Dabbelt <palmer@dabbelt.com>, linux-riscv@lists.infradead.org,
 devicetree@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, tech-j-ext@lists.risc-v.org,
 kasan-dev@googlegroups.com, Evgenii Stepanov <eugenis@google.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Albert Ou <aou@eecs.berkeley.edu>,
 Shuah Khan <shuah@kernel.org>
References: <20240319215915.832127-1-samuel.holland@sifive.com>
 <20240319215915.832127-10-samuel.holland@sifive.com>
 <20240320-handpick-freight-ec8027baa4d1@spud>
From: Samuel Holland <samuel.holland@sifive.com>
In-Reply-To: <20240320-handpick-freight-ec8027baa4d1@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Conor,

On 2024-03-20 12:21 PM, Conor Dooley wrote:
> On Tue, Mar 19, 2024 at 02:58:35PM -0700, Samuel Holland wrote:
>> This test covers the behavior of the PR_SET_TAGGED_ADDR_CTRL and
>> PR_GET_TAGGED_ADDR_CTRL prctl() operations, their effects on the
>> userspace ABI, and their effects on the system call ABI.
>>
>> Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
>> ---
>>
>>  tools/testing/selftests/riscv/Makefile        |   2 +-
>>  tools/testing/selftests/riscv/tags/Makefile   |  10 +
>>  .../selftests/riscv/tags/pointer_masking.c    | 307 ++++++++++++++++++
> 
> I dunno much about selftests, but this patch seems to produce some
> warnings about gitignores with allmodconfig:
> tools/testing/selftests/riscv/tags/Makefile: warning: ignored by one of the .gitignore files
> tools/testing/selftests/riscv/tags/pointer_masking.c: warning: ignored by one of the .gitignore files

This is because the "tags" directory name is ignored by the top-level
.gitignore. I chose the name to match tools/testing/selftests/arm64/tags, but I
am fine with renaming it to avoid the warning.

Regards,
Samuel


