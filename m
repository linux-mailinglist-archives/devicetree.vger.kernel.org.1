Return-Path: <devicetree+bounces-102538-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DEA8497763F
	for <lists+devicetree@lfdr.de>; Fri, 13 Sep 2024 03:08:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 885B71F236E3
	for <lists+devicetree@lfdr.de>; Fri, 13 Sep 2024 01:08:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34D6828F1;
	Fri, 13 Sep 2024 01:08:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="Wa5D1vvl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C191C4A07
	for <devicetree@vger.kernel.org>; Fri, 13 Sep 2024 01:08:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726189687; cv=none; b=VB9EUF42/7CZYPGNV5+69gi2JilFIZYeFafkj2BARPD9nBmSjVpPdVW8VyA9R4nYdPxsqJXrmtpnLQCxI767Tc9xAXYuN4KS2BeXJ0FCuyMv4xH9dTl7gZEn1SsQuIJNcM3EaLyq5ZcLlTeD4TlhWo8JtiAXxdB2qFz2fcRli5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726189687; c=relaxed/simple;
	bh=sfxNjNVVbCk907WfBPsCeT0rdAN6XgsNVClIlhkDqVk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GA+ZpZ3nAnRimeWX02KhF4nGEe4Sz3jj6JLUJsJ7Y6cHdFjWsWyI4XWG3EoL91LX7N7DXbRSCr/Dtr0vrkAfEUrAnBLvZBxrug54YhXyXoCPvTLZLOJSTBDTLo3IV4x3iqFlGFMZnnXe+PbvBQqfvw4z2oMXTMxeSMZPmu/Mi84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=Wa5D1vvl; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-2057c6c57b5so9347405ad.1
        for <devicetree@vger.kernel.org>; Thu, 12 Sep 2024 18:08:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1726189684; x=1726794484; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=8rX91s/6lVMum4h31lglbcRQxW0xWM2VsFWKtsLlsc0=;
        b=Wa5D1vvlWVjClORg61/EvXR9HsQMLt+hHRlVW67Jrt9W7G0uUP2LsNBbPVMSI3zr7R
         iRh5ut4gE1xZxDeGTgfOSU3FebnIN4hhoXvZ5QiTyNgWBDR/B7w6ejYQu4KA5OVrdgD9
         rB6UkIqOq0O/UKwbKZgFTX649qeSdCxsSRVYfrarnG3y5MRF0f/U+1SC/bkXyBxu00dv
         B2mV/vrYKk6hfL6PPQ2F5Wg/BP7/DuvI5j/jEMJWzbUktYhUpZCgNQ/QtmHgummsWFCW
         CXXknxk++JIfnOwef0MCyY5v9/RKc5u1STjq8qBxEtxt6OaUrt8B0MVAFqYnY25hvWlr
         7CHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726189684; x=1726794484;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8rX91s/6lVMum4h31lglbcRQxW0xWM2VsFWKtsLlsc0=;
        b=NO+kMsaIj4/uE3ciVmfrhhAcISE7tNxjHyJe48x90uEOfZqOsKgbKXNZp3+/TB4El6
         1CZ72Zs00+FuGJ5v1WrmeP8H9Gj7F5gZAcn3jckr81A1ZWNgfoToij9avfcsOlZzhmn3
         gt6GUSkruW6iUxIixLDsT7fBm5tsZeg5Xb30ThHtns9V147Z5GVQ5pBa3DAaNmTp2Unh
         qKuuBAjKg5P2K7d0iLJcZo+mnY5D1g8tYxvbefFwgBc5hi9y5P3NOV7us2quHuldZuQa
         Ewu0dMweJQeRsfwUpr5367o4Cj8A0FpJwKwNp2VIG9V3iimjBHzYrZlZK+40Az5BSZBG
         QZrw==
X-Forwarded-Encrypted: i=1; AJvYcCWOR2qXCGbQBb4mUc/xiaEJKMvDfqksln3Yr9lIJj9nTMjUE2aGnw6m6sFPqzsWQudbJ54lVowZYmAG@vger.kernel.org
X-Gm-Message-State: AOJu0YxFGaE3cC4UoEbaP6cKF9xA5TjSg+2KhfX0/YQE1FcRyRgMNz5y
	R/51W4S2eUyGWYJvpClHRN12W2ODTeVpgqeJ2HV2kTeuaLkXFcp/Mjr9K0UM700=
X-Google-Smtp-Source: AGHT+IF5L6tJGqxt6ISyibGjC5vs/5m2udlyE6OKfyZue9WunKzM/AXevZet1WqxTKzozG9VKoF3LA==
X-Received: by 2002:a17:903:22c9:b0:205:6a64:3144 with SMTP id d9443c01a7336-2074c798c92mr160035315ad.27.1726189683676;
        Thu, 12 Sep 2024 18:08:03 -0700 (PDT)
Received: from ghost ([50.145.13.30])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2076afdd268sm19438885ad.172.2024.09.12.18.08.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Sep 2024 18:08:02 -0700 (PDT)
Date: Thu, 12 Sep 2024 18:08:00 -0700
From: Charlie Jenkins <charlie@rivosinc.com>
To: Samuel Holland <samuel.holland@sifive.com>
Cc: Palmer Dabbelt <palmer@dabbelt.com>, linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	Catalin Marinas <catalin.marinas@arm.com>,
	linux-kernel@vger.kernel.org, Anup Patel <anup@brainfault.org>,
	Conor Dooley <conor@kernel.org>, kasan-dev@googlegroups.com,
	Atish Patra <atishp@atishpatra.org>,
	Evgenii Stepanov <eugenis@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	"Kirill A . Shutemov" <kirill.shutemov@linux.intel.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v4 01/10] dt-bindings: riscv: Add pointer masking ISA
 extensions
Message-ID: <ZuOQcNTVUZ5/LFOP@ghost>
References: <20240829010151.2813377-1-samuel.holland@sifive.com>
 <20240829010151.2813377-2-samuel.holland@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240829010151.2813377-2-samuel.holland@sifive.com>

On Wed, Aug 28, 2024 at 06:01:23PM -0700, Samuel Holland wrote:
> The RISC-V Pointer Masking specification defines three extensions:
> Smmpm, Smnpm, and Ssnpm. Document the behavior of these extensions as
> following the current draft of the specification, which is frozen at
> version 1.0.0-rc2.
> 
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
> ---

Looks like only aesthetic changes were made, but the spec was updated to
1.0-rc3 (interestingly the second 0 was dropped).

Reviewed-by: Charlie Jenkins <charlie@rivosinc.com>

> 
> (no changes since v3)
> 
> Changes in v3:
>  - Note in the commit message that the ISA extension spec is frozen
> 
> Changes in v2:
>  - Update pointer masking specification version reference
> 
>  .../devicetree/bindings/riscv/extensions.yaml  | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
> index a06dbc6b4928..a6d685791221 100644
> --- a/Documentation/devicetree/bindings/riscv/extensions.yaml
> +++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
> @@ -128,6 +128,18 @@ properties:
>              changes to interrupts as frozen at commit ccbddab ("Merge pull
>              request #42 from riscv/jhauser-2023-RC4") of riscv-aia.
>  
> +        - const: smmpm
> +          description: |
> +            The standard Smmpm extension for M-mode pointer masking as defined
> +            at commit 654a5c4a7725 ("Update PDF and version number.") of
> +            riscv-j-extension.
> +
> +        - const: smnpm
> +          description: |
> +            The standard Smnpm extension for next-mode pointer masking as defined
> +            at commit 654a5c4a7725 ("Update PDF and version number.") of
> +            riscv-j-extension.
> +
>          - const: smstateen
>            description: |
>              The standard Smstateen extension for controlling access to CSRs
> @@ -147,6 +159,12 @@ properties:
>              and mode-based filtering as ratified at commit 01d1df0 ("Add ability
>              to manually trigger workflow. (#2)") of riscv-count-overflow.
>  
> +        - const: ssnpm
> +          description: |
> +            The standard Ssnpm extension for next-mode pointer masking as defined
> +            at commit 654a5c4a7725 ("Update PDF and version number.") of
> +            riscv-j-extension.
> +
>          - const: sstc
>            description: |
>              The standard Sstc supervisor-level extension for time compare as
> -- 
> 2.45.1
> 
> 
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

