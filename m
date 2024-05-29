Return-Path: <devicetree+bounces-70694-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A6618D4126
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 00:10:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 24C6F28953E
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 22:10:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56C601C9EC7;
	Wed, 29 May 2024 22:10:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="gsCkJM17"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE8C11A0B06
	for <devicetree@vger.kernel.org>; Wed, 29 May 2024 22:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717020637; cv=none; b=U2uDvnqWwid9HJt/mmS+hqwV6DRD86S9AhSf/mHSK9DiwsDjQyUS7WOOY1Do4+s6ovakRap1s5RflcRG6RmF7y6l+J8yWw4rLQ40XxVMd3lEGjs8nzEx5onnGvWhHk3X3SCwpLlpw1t6BnKqsOgrNY+/VXUWmqC5Dh4ZpmQuNpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717020637; c=relaxed/simple;
	bh=QuEnVBRxaxmVOCS92xgH+2N6PGcTBUbaO5iCtxsNXWI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CfK0CbTA3Tk9MT687awblX/8r3ddycLw53PnyMIMFS5kgP7fEoNJyC1NY8e4QXJmoEF31JeV7v+TLu72IfzweMASKpGrXQC2aPyet2IXNHjaumXNunoD9xCE7+ikpsDrXqTw2ybMYv2KyiqV7gYyRxC5/8yQyrgwTkUInuxKoWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=gsCkJM17; arc=none smtp.client-ip=209.85.216.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-2bdd8968dabso163583a91.3
        for <devicetree@vger.kernel.org>; Wed, 29 May 2024 15:10:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1717020635; x=1717625435; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=e+fbNuxAx3WZmFzqMqAqWViMBWTStqdh1s3mW/5wrdE=;
        b=gsCkJM17dTeR4HLzJEl1hY3G4Za79ziIIH9UDG0/LTJieq+lvLhOtnNKJhKYNVCAoX
         ya/Xgpiu645VexBKar/ZqGQbwo7M1+mCTxGepOjY7tE9Gt3ZSp9DIQMTy6mdukjh+SII
         I2IWVHJOmVRVBsQ1IbwAPPdFGuN9STcC5lB1l/3iyjYazazpG0Eb6MSUbbO9B3yGLcAz
         M3ImXgAFaH3bZhKSGj0VTPrnTGwozCRQolbkyu6WxNWHiB0dKeeAh0kDGQsDWf/5rfYY
         P0u7PdpjYgrdne0pUVWdOAuFPBszSt0LIuv7yURgTfCfWmxes1JZfH8TYxtweZpmPqHE
         lCTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717020635; x=1717625435;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=e+fbNuxAx3WZmFzqMqAqWViMBWTStqdh1s3mW/5wrdE=;
        b=Z8WmnKzDYwtyJdjw/6N53EK6gi/wzcm/mXJuSYOT9N4ElO82WtygZI2F5pLu4LN+9G
         kyTYAdajIGn5bb9w+dBNZd6b68M0MZXRfY4yADQfK/BS6XezwxOhKrc5bzlazGSbTy0o
         h5xi4teMlijUyuQ6HwHisa7eDQINHyHKt02XF8fDS3YRZYDRAcZkCF68SzkJ8FYBns31
         ttm2d6aFST7xailqCs+OoT+Nlrpw4tyfZkK70/qd6be0SVabEI9jqIsmBfVREKlZHL+v
         K0GrWcOsOKLlgfBIMTI1fQVokNj8TGVcnSoq7eEFaFSmj56nopUNjF9yA0RH+/EeRZ4g
         ITQw==
X-Forwarded-Encrypted: i=1; AJvYcCXjeeAdsoHHhzqW1xu7DYQjxbJOtDMY7UxtCgj4EdSi7PUVBR970eTvor+3UUhlz1bYNgImpW192RjyRTMLeEkwRxg/7EpSEfc1QA==
X-Gm-Message-State: AOJu0Yx79oJY2MKNMfb27Pep3np5pZwYz93wIKhLLvUR9g13qj81gLoG
	L5hzIDS97fkPsxYkaCL8eVQqpus5/ijNJmfxTGE/wfjUHRF5KuvFDUu65alKwrM=
X-Google-Smtp-Source: AGHT+IGB2IuW8qeBair3I30nTxYXl3h2Wp+x/ksnoaod2z/+/aYYn9Gy8Js/qgGb7n5+xXapJsQdmQ==
X-Received: by 2002:a17:90a:c798:b0:2ae:7f27:82cd with SMTP id 98e67ed59e1d1-2c1ab9e39a3mr414491a91.7.1717020635249;
        Wed, 29 May 2024 15:10:35 -0700 (PDT)
Received: from ghost ([2601:647:5700:6860:32f9:8d5b:110a:1952])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2c1abebfbdbsm121966a91.55.2024.05.29.15.10.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 May 2024 15:10:34 -0700 (PDT)
Date: Wed, 29 May 2024 15:10:32 -0700
From: Charlie Jenkins <charlie@rivosinc.com>
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
Subject: Re: [PATCH v5 01/16] dt-bindings: riscv: add Zimop ISA extension
 description
Message-ID: <Zlen2LmttEdaqAGm@ghost>
References: <20240517145302.971019-1-cleger@rivosinc.com>
 <20240517145302.971019-2-cleger@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240517145302.971019-2-cleger@rivosinc.com>

On Fri, May 17, 2024 at 04:52:41PM +0200, Clément Léger wrote:
> Add description for the Zimop (May-Be-Operations) ISA extension which
> was ratified in commit 58220614a5f of the riscv-isa-manual.
> 
> Signed-off-by: Clément Léger <cleger@rivosinc.com>
> ---
>  Documentation/devicetree/bindings/riscv/extensions.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
> index 99d2a9e8c52d..b9100addeb90 100644
> --- a/Documentation/devicetree/bindings/riscv/extensions.yaml
> +++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
> @@ -363,6 +363,11 @@ properties:
>              ratified in the 20191213 version of the unprivileged ISA
>              specification.
>  
> +        - const: zimop
> +          description:
> +            The standard Zimop extension version 1.0, as ratified in commit
> +            58220614a5f ("Zimop is ratified/1.0") of the riscv-isa-manual.
> +
>          - const: ztso
>            description:
>              The standard Ztso extension for total store ordering, as ratified
> -- 
> 2.43.0
> 
> 
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

Reviewed-by: Charlie Jenkins <charlie@rivosinc.com>


