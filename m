Return-Path: <devicetree+bounces-272614-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iMOsFuy9rWla6wEAu9opvQ
	(envelope-from <devicetree+bounces-272614-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 19:20:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EEB823198E
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 19:20:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id EFEBD3002521
	for <lists+devicetree@lfdr.de>; Sun,  8 Mar 2026 18:20:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5AD0930CD81;
	Sun,  8 Mar 2026 18:20:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="V7hy7/S4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E71E42110E
	for <devicetree@vger.kernel.org>; Sun,  8 Mar 2026 18:20:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772994021; cv=none; b=mypPGUVo2ge3dTfnxFlEKuq5QOxUsZGPvpp74M2aNwIpcqm+k/xdBT9B616+JD3u8PqGjJOtDNk9im9Ic9iyXW+oenaUeAQSEw6VcyxSA5rctwdc32BfcNIzDnf924UENFn3twIEPoU0CsbkSetzZACwB8/CifG/1m7Q20GHAIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772994021; c=relaxed/simple;
	bh=Jy4NFTwiCpQ5Ymy/1VB5BryAZPUczW+7GPF6HVfH2Fs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QswJj2a2MDVyOXFFRXjL1HOfgBpXUBI/t8nQMvMprgYJ9tSlgTkJeeNpHyPlvf32BaMpzi+E658xQkwglrcYkb8soOut3m+Q3Z4sQfa5dxZkghEZ3BmjhXo1/dtIUYH8m+aUCRxHS3gT2RgNgfGwRvKyRIWOHb10VSXWx4Uj4Xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=V7hy7/S4; arc=none smtp.client-ip=209.85.128.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-798617c0ad5so60326467b3.1
        for <devicetree@vger.kernel.org>; Sun, 08 Mar 2026 11:20:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1772994019; x=1773598819; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ebNKnkiCdgWGG7d84Dx/mjbwarrbx79g9Rc6LzAJfuU=;
        b=V7hy7/S4G50K44iMdcGmiiRxaVbndhtzvvKYjKoFO+1Zow/8Sg66HdeyG9Wp8PqV0A
         jmwvBozDDGqKK6iAnppjK/rkS18txUKW5AxDV42qqNNVYmDLScfqkqL4FUyeashAB2iC
         A8VrERRcUkyS/lkCvNilNZJgCSxVLWAEAJUvFpctuEZhODvgP1uVKnJ4DQPVRBcuVLJl
         TKlA1eiwRJ742tXc5nw0Jxt0ZDa6uJdmFIcVEV6a0CBAoIoYaRsVlDwTP8lTwP9xVydD
         Z9QOgs+M9iNOWG/cyxDsWU/CFnU9xcUDTpQuxzqLDH1zKoVl48DxTdqqsMaseEA58Mro
         npIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772994019; x=1773598819;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ebNKnkiCdgWGG7d84Dx/mjbwarrbx79g9Rc6LzAJfuU=;
        b=UQzR2f9cGsie+rs0ezpkqrI9QQC9dgh5g7xY8CqUELx84OtURNN3ALN8srb3AGWXXA
         xa4tdadbbzvTnVXvIMv5DR6C019mCTtEYeiPESG01FJoG6rzQYSpHikSatyNJpMbMUAB
         jvCaLjnP+gTlCjegoJUhYHLwNClklezh3PNXYHcDDKPtoKIZ7ZzDqM8JcuERyRUbW1mr
         SkD07IyZC/HNFuvf3H1pleAK79uZq5vh/8r7hiyT4cDjMMiet+3BTOqmwXGrL6VXFB7V
         rJyTxl+PRGha93ep3OSNHAsoaumbeoG5liO1pUHqb+heuiw8iDDZVFLIn26EA8YrpI5I
         dxJg==
X-Forwarded-Encrypted: i=1; AJvYcCU7qb8zBcgmFUgCclWSK2fc83trpW7ziBx+RF9okVVdkDnhT07B49MDmdPTFwd/SKWvwVaXpWLImFWa@vger.kernel.org
X-Gm-Message-State: AOJu0YweA+hYYAzHt1jNXaCh+ZtrgNv+bc5aqtxjXtIbqVvctYo/9/Sz
	6D5aiHe//NPZQdbiPonA8lbpynayaAVompCLKLnkFbH1mMhacbAq4JDv3fqxRcYuRa4=
X-Gm-Gg: ATEYQzwy5HawZ76nUx80Isl3E+q7A9iXufyV/AEwOokp60/wwsNoXO0B30lpoKFUhEv
	Ce32O2+hKm3x+HSAUtBaKYzx04BA76xHznfKN32WXTAMOg5gOeuoBYSsYGm5wQqZEaAHOR2eoic
	6tJxrLJpYTCWdtsm7W3ZbeL7Mg0LJppPzhrCbqxjuZ3dLigfrJD8Upb7GKz8YOr4FHQLMnr6I3M
	S0YcPCA/0rFaFNHTtT23F99/QNqIGjp15Ff1fA02x6xUmXjObm4NHpLP21piEecTcfTgR0u+ecP
	DZQRsHO1w8Xy59jzzfegLYJEj1hSrUaBiXQe0KgQZI/TO4lOghukNRVeoOAEw5u47zbmtZQ2djB
	EGGLITloSDLR+kQ5hz80GJLCbvAM6cpu2Ir4FkRLRNhWOxbjxKMjXiZyI9Qmxvn2IYWGXLJUTO3
	XawZG7o0Vt75MNhmcqke5bLOhqrXXhZ7XXbaqMqiU3
X-Received: by 2002:a05:690c:6902:b0:798:d9a3:e723 with SMTP id 00721157ae682-798dd7433acmr81222947b3.49.1772994018987;
        Sun, 08 Mar 2026 11:20:18 -0700 (PDT)
Received: from [100.64.0.1] ([170.85.103.33])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-798dec8de45sm35617467b3.9.2026.03.08.11.20.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Mar 2026 11:20:18 -0700 (PDT)
Message-ID: <f1b541f4-6d34-4080-b322-f097c4e2f48d@sifive.com>
Date: Sun, 8 Mar 2026 13:20:17 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] riscv: cpufeature: Add ISA extension parsing for
 Supm
To: Guodong Xu <guodong@riscstar.com>
Cc: Paul Walmsley <paul.walmsley@sifive.com>, Conor Dooley
 <conor@kernel.org>, devicetree@vger.kernel.org,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Heinrich Schuchardt <heinrich.schuchardt@canonical.com>,
 Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
 Evan Green <evan@rivosinc.com>, Andrew Jones <ajones@ventanamicro.com>,
 Conor Dooley <conor.dooley@microchip.com>
References: <20260125-supm-ext-id-v2-0-1e3b9714c860@riscstar.com>
 <20260125-supm-ext-id-v2-2-1e3b9714c860@riscstar.com>
From: Samuel Holland <samuel.holland@sifive.com>
Content-Language: en-US
In-Reply-To: <20260125-supm-ext-id-v2-2-1e3b9714c860@riscstar.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 5EEB823198E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[sifive.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[sifive.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272614-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[sifive.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[samuel.holland@sifive.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.977];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,sifive.com:dkim,sifive.com:mid,microchip.com:email]
X-Rspamd-Action: no action

Hi Guodong,

On 2026-01-24 7:36 PM, Guodong Xu wrote:
> Supm has been ratified in the RISC-V Pointer Masking specification
> (Version 1.0, 10/2024) and is mandated in RVA23 Profiles (Version 1.0,
> 2024-10-17) for RVA23U64. Supm indicates userspace pointer masking
> support.
> 
> Remove the previous macro aliasing of Supm to Ssnpm/Smnpm in hwcap.h,
> treating Supm as a distinct RISC-V ISA extension ID.
> 
> Add ISA parsing logic for Supm, and implement a validator to ensure
> that Supm is only reported as available if Kconfig allows it and the
> underlying Ssnpm (for supervisor mode) or Smnpm (for machine mode)
> extension is present. Supm relies on Ssnpm or Smnpm to provide the
> underlying hardware implementation.
> 
> With this change, "supm" will be reported (when available) in
> /proc/cpuinfo as part of the "isa" and "hart isa" string.
> 
> Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
> Link: https://lore.kernel.org/lkml/20260101-legume-engraved-0fae8282cfbe@spud/#r [1]
> Link: https://lore.kernel.org/all/4ebbe14b-2579-4ba6-808d-d50c24641d04@sifive.com/#r [2]
> Signed-off-by: Guodong Xu <guodong@riscstar.com>
> ---
> v2: Add Reviewed-by from Conor.
>     Update RISCV_ISA_EXT_SUPM id to solve rebase conflict.
> ---
>  arch/riscv/include/asm/hwcap.h |  3 +--
>  arch/riscv/kernel/cpufeature.c | 35 +++++++++++++++++++++++++++++++++--
>  2 files changed, 34 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/riscv/include/asm/hwcap.h b/arch/riscv/include/asm/hwcap.h
> index 7ef8e5f55c8d..aa2af21f3bd3 100644
> --- a/arch/riscv/include/asm/hwcap.h
> +++ b/arch/riscv/include/asm/hwcap.h
> @@ -112,6 +112,7 @@
>  #define RISCV_ISA_EXT_ZCLSD		103
>  #define RISCV_ISA_EXT_ZICFILP		104
>  #define RISCV_ISA_EXT_ZICFISS		105
> +#define RISCV_ISA_EXT_SUPM		106
>  
>  #define RISCV_ISA_EXT_XLINUXENVCFG	127
>  
> @@ -120,10 +121,8 @@
>  
>  #ifdef CONFIG_RISCV_M_MODE
>  #define RISCV_ISA_EXT_SxAIA		RISCV_ISA_EXT_SMAIA
> -#define RISCV_ISA_EXT_SUPM		RISCV_ISA_EXT_SMNPM
>  #else
>  #define RISCV_ISA_EXT_SxAIA		RISCV_ISA_EXT_SSAIA
> -#define RISCV_ISA_EXT_SUPM		RISCV_ISA_EXT_SSNPM
>  #endif
>  
>  #endif /* _ASM_RISCV_HWCAP_H */
> diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
> index 1734f9a4c2fd..e1f7ad882289 100644
> --- a/arch/riscv/kernel/cpufeature.c
> +++ b/arch/riscv/kernel/cpufeature.c
> @@ -317,6 +317,27 @@ static int riscv_cfiss_validate(const struct riscv_isa_ext_data *data,
>  	return 0;
>  }
>  
> +static int riscv_ext_supm_validate(const struct riscv_isa_ext_data *data,
> +				   const unsigned long *isa_bitmap)
> +{
> +	if (!IS_ENABLED(CONFIG_RISCV_ISA_SUPM))
> +		return -EINVAL;
> +
> +	/*
> +	 * Supm requires Ssnpm for S-mode or Smnpm for M-mode to provide
> +	 * pointer masking for the U-mode execution environment.
> +	 */
> +	if (IS_ENABLED(CONFIG_RISCV_M_MODE)) {
> +		if (__riscv_isa_extension_available(isa_bitmap, RISCV_ISA_EXT_SMNPM))
> +			return 0;
> +	} else {
> +		if (__riscv_isa_extension_available(isa_bitmap, RISCV_ISA_EXT_SSNPM))
> +			return 0;
> +	}
> +
> +	return -EPROBE_DEFER;
> +}
> +
>  static const unsigned int riscv_a_exts[] = {
>  	RISCV_ISA_EXT_ZAAMO,
>  	RISCV_ISA_EXT_ZALRSC,
> @@ -450,6 +471,15 @@ static const unsigned int riscv_c_exts[] = {
>  	RISCV_ISA_EXT_ZCD,
>  };
>  
> +/*
> + * Smnpm and Ssnpm provide pointer masking for the next lower privilege mode
> + * (U-mode), thus enabling Supm. Both extensions imply the same subset.

If Linux is running in S-mode, then Smnpm does _not_ imply Supm. So this list
cannot be shared between Ssnpm and Smnpm. (When running Linux in M-mode, I think
we assume S-mode isn't supported, so the opposite case isn't possible. If you do
run M-mode Linux on M/S/U hardware, I think there are other things that explode
spectacularly, since we will touch for example the wrong envcfg register.)

> + */
> +static const unsigned int riscv_supm_exts[] = {
> +	RISCV_ISA_EXT_XLINUXENVCFG,
> +	RISCV_ISA_EXT_SUPM
> +};
> +
>  /*
>   * The canonical order of ISA extension names in the ISA string is defined in
>   * chapter 27 of the unprivileged specification.
> @@ -577,12 +607,13 @@ const struct riscv_isa_ext_data riscv_isa_ext[] = {
>  	__RISCV_ISA_EXT_DATA_VALIDATE(zvkt, RISCV_ISA_EXT_ZVKT, riscv_ext_vector_crypto_validate),
>  	__RISCV_ISA_EXT_DATA(smaia, RISCV_ISA_EXT_SMAIA),
>  	__RISCV_ISA_EXT_DATA(smmpm, RISCV_ISA_EXT_SMMPM),
> -	__RISCV_ISA_EXT_SUPERSET(smnpm, RISCV_ISA_EXT_SMNPM, riscv_xlinuxenvcfg_exts),
> +	__RISCV_ISA_EXT_SUPERSET(smnpm, RISCV_ISA_EXT_SMNPM, riscv_supm_exts),
>  	__RISCV_ISA_EXT_DATA(smstateen, RISCV_ISA_EXT_SMSTATEEN),
>  	__RISCV_ISA_EXT_DATA(ssaia, RISCV_ISA_EXT_SSAIA),
>  	__RISCV_ISA_EXT_DATA(sscofpmf, RISCV_ISA_EXT_SSCOFPMF),
> -	__RISCV_ISA_EXT_SUPERSET(ssnpm, RISCV_ISA_EXT_SSNPM, riscv_xlinuxenvcfg_exts),
> +	__RISCV_ISA_EXT_SUPERSET(ssnpm, RISCV_ISA_EXT_SSNPM, riscv_supm_exts),
>  	__RISCV_ISA_EXT_DATA(sstc, RISCV_ISA_EXT_SSTC),
> +	__RISCV_ISA_EXT_DATA_VALIDATE(supm, RISCV_ISA_EXT_SUPM, riscv_ext_supm_validate),

I don't think this quite matches what we want either. We don't want to accept
Supm from the devicetree at all, so it shouldn't be in this array (just like
Xlinuxenvcfg is not in this array). You'll need new code in riscv_resolve_isa()
(or its callers) to set the RISCV_ISA_EXT_SUPM bit under the right conditions.

Regards,
Samuel

>  	__RISCV_ISA_EXT_DATA(svade, RISCV_ISA_EXT_SVADE),
>  	__RISCV_ISA_EXT_DATA_VALIDATE(svadu, RISCV_ISA_EXT_SVADU, riscv_ext_svadu_validate),
>  	__RISCV_ISA_EXT_DATA(svinval, RISCV_ISA_EXT_SVINVAL),
> 


