Return-Path: <devicetree+bounces-58071-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 571FB8A0223
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 23:32:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 830001C227AC
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 21:32:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A843D1836FC;
	Wed, 10 Apr 2024 21:32:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="ULAVZ628"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E3521836EF
	for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 21:32:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712784765; cv=none; b=UewwThsX3gauN4FqjZ+bPzaPdk2oyHjMfhml9ANdNEaTK7U3XNz6CbCrwoWHh/CirsX2odMq5CuuqL9uKIvz7hFlYJYdbIUYOnpcmSuDW0GoW7K+LckiROdXqpEj0JrxkjoyJwb5HjEOUg+GqJm/dVXU3RGRST6c5hDFOfkb89Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712784765; c=relaxed/simple;
	bh=WZ6f8pq5LAs2d/D3LGFzHCxodGA7vKuwHI5jQj/3Iec=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OqG6VN74BZgNCxm7+p9+7Tcq+VBhTHY/Bj+wlnS2R5PmjO4YCKqq6X+Rcn6Px/68kbCUjwE46A4haF5pSwpLJNO+LqszNwluKeTxSBTBw8d7D4MfVqKeIvuW1xjIQNfiUaDpD81rCabIDA/LPzuftHbPt8i7QrZabmhpsp7upNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=ULAVZ628; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-6ecec796323so6743205b3a.3
        for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 14:32:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1712784763; x=1713389563; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=z/gmMU/A0Yd0PYrsEGoyRAws1U1MCAqzm8TivoV2wjk=;
        b=ULAVZ628fDKYTcl41Bj+v3YYJh64ncAGRB5MrG9iwUTfJ+LUR4BIW7iqeAz9W5ltp3
         8DTdEu/JwT1WY/F+GVbgMwSE0Nhd3oM3+OwVx3Ak431vrgK/q1OUmu/flPkUG+GktzLt
         5EtBRORORrXBgqftkYb0MUTxqY6mVYQhMQ66v2oY5fh9wDIdHl4xcWIksfWPSFSLsuqv
         9kqLel6+2oCD2P5lDMrHaJe6hEUM95TUCPA2RWkbr0OLKQKwXXS0Rok0oO2qRADrrUoG
         Z0lduOSpsDnRkzaYWjAeAMumbJLJcirCZT1eMMc/gFw0cUIQfGz/XaS5nCCOeWKJoVnv
         0wXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712784763; x=1713389563;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=z/gmMU/A0Yd0PYrsEGoyRAws1U1MCAqzm8TivoV2wjk=;
        b=uzRqRwmjQkbGGY49XjC3Qrx2c2PFxMhbd7z/izV6fE3vHJJX0r5bpQCJED/097E4rn
         Q+0uv1Pzwf91IjxoezFez4Lv+K7xkloKH9w7BV/Vs5H21DPa/Ouj8VgLqdb03xZMwP4f
         VCzIdNDJINjkCn2wPpD0t2todJI3LPHkk1KJIsF0xvmsjDgeY+mU0OanXpnLvIMw7Wsr
         0GZdn/PHtxLXiSArYtOFKRwC0c7GvelrrfBMnls+1SJ3qTZh7JUMIbmA2PyMunirrk2e
         JGfH/fdVh4HXF6K0mKtifc38Jri7lpq4QZ7cfLXTdymyfp8jjRJ5lGJUAo/ooxxns2ov
         o3rg==
X-Forwarded-Encrypted: i=1; AJvYcCW9zXhZTnxDie7gcy/ZGxsB3jX5lRReth2GsseYt5A1xOPs0dxWXBeRpPS8/A3z+97W/Aq9yFYxwVzDLdqRxJu8/Q0juE17KombCg==
X-Gm-Message-State: AOJu0YzAmFnCfF1SDhX7A4+R8D6DRtDhf/ipKrs+ski4+5+lPN9Zq47P
	XsVFvprxLicmL82YI4FIkec+e4QWoppRXXezxf3uChsorUaKZTpaIsNyCW7rutU=
X-Google-Smtp-Source: AGHT+IFZBbWkrMsFlNLP4i0ZlHtJh5hiqPGMGHChZ4tL7JbCR2OzFzA8h4o1YnA4MyIHgbnWJTDA5A==
X-Received: by 2002:a05:6a00:2355:b0:6e7:8322:ff8e with SMTP id j21-20020a056a00235500b006e78322ff8emr4200583pfj.30.1712784763268;
        Wed, 10 Apr 2024 14:32:43 -0700 (PDT)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id gx21-20020a056a001e1500b006e72c8ece23sm99920pfb.191.2024.04.10.14.32.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Apr 2024 14:32:42 -0700 (PDT)
Date: Wed, 10 Apr 2024 14:32:41 -0700
From: Deepak Gupta <debug@rivosinc.com>
To: =?iso-8859-1?Q?Cl=E9ment_L=E9ger?= <cleger@rivosinc.com>
Cc: Jonathan Corbet <corbet@lwn.net>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Conor Dooley <conor@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Anup Patel <anup@brainfault.org>, Shuah Khan <shuah@kernel.org>,
	Atish Patra <atishp@atishpatra.org>, linux-doc@vger.kernel.org,
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, kvm@vger.kernel.org,
	kvm-riscv@lists.infradead.org, linux-kselftest@vger.kernel.org
Subject: Re: [PATCH 07/10] riscv: add ISA extension parsing for Zcmop
Message-ID: <ZhcFeVYUQJmBAKuv@debug.ba.rivosinc.com>
References: <20240410091106.749233-1-cleger@rivosinc.com>
 <20240410091106.749233-8-cleger@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240410091106.749233-8-cleger@rivosinc.com>

On Wed, Apr 10, 2024 at 11:11:00AM +0200, Cl�ment L�ger wrote:
>Add parsing for Zcmop ISA extension which was ratified in commit
>b854a709c00 ("Zcmop is ratified/1.0") of the riscv-isa-manual.
>
>Signed-off-by: Cl�ment L�ger <cleger@rivosinc.com>
>---
> arch/riscv/include/asm/hwcap.h | 1 +
> arch/riscv/kernel/cpufeature.c | 1 +
> 2 files changed, 2 insertions(+)
>
>diff --git a/arch/riscv/include/asm/hwcap.h b/arch/riscv/include/asm/hwcap.h
>index b7551bad341b..cff7660de268 100644
>--- a/arch/riscv/include/asm/hwcap.h
>+++ b/arch/riscv/include/asm/hwcap.h
>@@ -86,6 +86,7 @@
> #define RISCV_ISA_EXT_ZCB		77
> #define RISCV_ISA_EXT_ZCD		78
> #define RISCV_ISA_EXT_ZCF		79
>+#define RISCV_ISA_EXT_ZCMOP		80
>
> #define RISCV_ISA_EXT_XLINUXENVCFG	127
>
>diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
>index 09dee071274d..f1450cd7231e 100644
>--- a/arch/riscv/kernel/cpufeature.c
>+++ b/arch/riscv/kernel/cpufeature.c
>@@ -265,6 +265,7 @@ const struct riscv_isa_ext_data riscv_isa_ext[] = {
> 	__RISCV_ISA_EXT_DATA(zcb, RISCV_ISA_EXT_ZCB),
> 	__RISCV_ISA_EXT_DATA(zcd, RISCV_ISA_EXT_ZCD),
> 	__RISCV_ISA_EXT_DATA(zcf, RISCV_ISA_EXT_ZCF),
>+	__RISCV_ISA_EXT_DATA(zcmop, RISCV_ISA_EXT_ZCMOP),

As per spec zcmop is dependent on zca. So perhaps below ?

__RISCV_ISA_EXT_SUPERSET(zicboz, RISCV_ISA_EXT_ZCMOP, RISCV_ISA_EXT_ZCA)


> 	__RISCV_ISA_EXT_DATA(zba, RISCV_ISA_EXT_ZBA),
> 	__RISCV_ISA_EXT_DATA(zbb, RISCV_ISA_EXT_ZBB),
> 	__RISCV_ISA_EXT_DATA(zbc, RISCV_ISA_EXT_ZBC),
>-- 
>2.43.0
>
>

