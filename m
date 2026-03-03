Return-Path: <devicetree+bounces-270745-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YAZDENY9p2kNgAAAu9opvQ
	(envelope-from <devicetree+bounces-270745-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 21:00:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 187241F68CC
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 21:00:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2E5F13006982
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 20:00:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 217713890F6;
	Tue,  3 Mar 2026 20:00:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Z+AH/Fwr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D01F938655E
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 20:00:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772568017; cv=none; b=ALwxNjibKH4szYfqxwzyxya2hlaYvmuuhJXm07fJxj+74TPW0/qBuBExWRx7k9eLFYUFEoy+A0zq1D+HUiYHRGa6E5U6p3ARZuOble+jhmWO7HXVK0GFOgx5TclazA197yHOlJAe25tcQHNcFJ9JPIQwVJNzR3L/cr/HqIPqLEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772568017; c=relaxed/simple;
	bh=hWwivSsmttOdBiwD/tUkaDCdWccb5O3I93SN3eCnZrc=;
	h=Message-ID:Date:From:To:Cc:Subject:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OJWCtT0u8CD0saRcFhTIwB5yLKQPM6k0MESifjdb6B+wSJMGiaoPCv7IvWy7oww5bQwrQgcjyOP1vAVJwVC+xppkrMpbq8IS1XVmL5Dz/iufP6GD8Z6DPXdU2KWXwIfiqESgls0Fm73aF+0LTEgqjtNw7D/nYiA3zFU88cc4sHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Z+AH/Fwr; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-48372efa020so53668885e9.2
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 12:00:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772568014; x=1773172814; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=LrVCaQvW0iEI3otUrXDkdYdjfZQ36uxHWa4/LArwCVM=;
        b=Z+AH/Fwro2zRlEE6SGawGziy8ZtT6fglsKGxWTK4HvmK+ObP8sojlQO8zza7NEG2U1
         JxKn+o+zqJ5WN6+pZ+TLVyiacL/4JSte1r7m5wiRGz969oFBJopXHSrnE0nzlDlhkGoK
         YpD35J/Hs/u/j49u3oKxIgGIsT8uSrJENTeWLFvRjaUNvBiHDg88thNiIrPfo1anEAQG
         SLZG31VCK82pnpCKdYnebdIf5ZptEaVVAy9Zkua2VVKVCftBiqaLIZN9o4YU0MdL3ef5
         4pcjEqe3pVTBl1U0g5Yq8zl7pFZmYMqdpL+4FRUNp0pCPfJ9VSPFdonAco96iyt1y4bB
         /YOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772568014; x=1773172814;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LrVCaQvW0iEI3otUrXDkdYdjfZQ36uxHWa4/LArwCVM=;
        b=oyXdKNVxu824lGq+MaNimQDEt8uhsOBM5/YArN+CjwPDGL2+0JY/JU0RVQOGEYZkBh
         ZvoP/Dmc2+iJVSBjDi1ZSy/+HpMLLgB3icXbWDr0lyPzZdDLpcK9XPwfeySpCT7QEZnb
         ECTY3Lo/MRvjD9AEdrRKaamYrzTHQ2Eejs5G6QlLwGLp/lkxIinelBCRqcymoOYonyBW
         CZ3BrhjHfAEWFfSD5tfxcaDAfbo/DZqK9bnPRANn5SnfywawknF383SURU5ZG88GcKAf
         1Bp3I46pE0q93ebSFddlx67sg3epGmNxM7tQAYlV/gQhkn/pubZAgMZ1q0lha7sokrm6
         IJqA==
X-Forwarded-Encrypted: i=1; AJvYcCXD/csjuaJ8WMUYY18mnBkMfIK4zJhA6jdNNGT4LsF3Iu9+HBirjvScOKLlShxsBundfdnwsxsVbH00@vger.kernel.org
X-Gm-Message-State: AOJu0YzlGoJOjDBTM7SpQr7aiuFvurHYvSMA28rB+akfFKBfhKdKz6Wr
	HURQfhDjX7OLaKpsg6Xd1uj4bb5J/PrxT6TjcsDckEatdpYgfJLDh+6I
X-Gm-Gg: ATEYQzwYgb1PJclL/zlUSHW0KSrIhoVJQb2jKMps2SfTdyyKKYbalBaX/9LFf07N0Gv
	2FGV1fCPaQi5eqPOHXDymKMsMEcK8alrWeCntvaeY8a2XTOrRdGHF5aOsfZg9WT9QaJjgUQUVWD
	7R4U9LDAXcYj+04LEhqWeY0Nc2UqpURQt3QwodmCFEI8BMDG4a/9Yo2/UkmYTezvCEP0xPso6ie
	DKw9FApFakDyKaL/ObU4g/yp0LtYTxJOo69cvDyd5SyxBO2HwtEOznjaIPYAHthE/c+mGXU6o1w
	cjVoH6J7MASD8mMyznajoNzAZNLnSFjd8LnO06Y+sLMTwYSEkXPz8Wf6F7cuIBRZMm42kKnPo1d
	baT6puUh2igIbmZEKmL2qqFdRz/EFPb3xvxxnJSeEYMSX03AoXQLedTFGQnP7xExdww/L/zklYn
	y6Sxfb3W5/zsoqQscTM/q/ub0Jseg/6ADeX4TZg1I+J0XPUUltD7F8dA==
X-Received: by 2002:a05:600c:3b22:b0:477:a978:3a7b with SMTP id 5b1f17b1804b1-483c9bff7b0mr280384695e9.22.1772568013945;
        Tue, 03 Mar 2026 12:00:13 -0800 (PST)
Received: from Ansuel-XPS. (93-34-88-122.ip49.fastwebnet.it. [93.34.88.122])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-485133a91b1sm21667245e9.12.2026.03.03.12.00.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 12:00:13 -0800 (PST)
Message-ID: <69a73dcd.7b0a0220.1ac46b.9bfc@mx.google.com>
X-Google-Original-Message-ID: <aac9yrt6MhSXBSbO@Ansuel-XPS.>
Date: Tue, 3 Mar 2026 21:00:10 +0100
From: Christian Marangi <ansuelsmth@gmail.com>
To: Aleksander Jan Bajkowski <olek2@wp.pl>
Cc: herbert@gondor.apana.org.au, davem@davemloft.net,
	matthias.bgg@gmail.com, angelogioacchino.delregno@collabora.com,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	lorenzo@kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-crypto@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: airoha: en7581: add crypto offload
 support
References: <20260303193923.85242-1-olek2@wp.pl>
 <20260303193923.85242-2-olek2@wp.pl>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260303193923.85242-2-olek2@wp.pl>
X-Rspamd-Queue-Id: 187241F68CC
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270745-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[wp.pl];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[gondor.apana.org.au,davemloft.net,gmail.com,collabora.com,kernel.org,lists.infradead.org,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ansuelsmth@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.995];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[wp.pl:email,1fbf0200:email,1e004000:email,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,1faa1000:email]
X-Rspamd-Action: no action

On Tue, Mar 03, 2026 at 08:39:18PM +0100, Aleksander Jan Bajkowski wrote:
> Add support for the built-in cryptographic accelerator. This accelerator
> supports 3DES, AES (128/192/256 bit), ARC4, MD5, SHA1, SHA224, and SHA256.
> It also supports full IPSEC, SRTP and TLS offload.
> 
> Signed-off-by: Aleksander Jan Bajkowski <olek2@wp.pl>
> ---
>  arch/arm64/boot/dts/airoha/en7581.dtsi | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/airoha/en7581.dtsi b/arch/arm64/boot/dts/airoha/en7581.dtsi
> index ff6908a76e8e..4931b704235a 100644
> --- a/arch/arm64/boot/dts/airoha/en7581.dtsi
> +++ b/arch/arm64/boot/dts/airoha/en7581.dtsi
> @@ -300,6 +300,18 @@ rng@1faa1000 {
>  			interrupts = <GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>;
>  		};
>  
> +		crypto@1e004000 {
> +			compatible = "airoha,en7581-eip93",
> +				"inside-secure,safexcel-eip93ies";
> +			reg = <0x0 0x1fb70000 0x0 0x1000>;
> +
> +			clocks = <&scuclk EN7523_CLK_CRYPTO>;
> +
> +			interrupts = <GIC_SPI 44 IRQ_TYPE_LEVEL_HIGH>;
> +
> +			resets = <&scuclk EN7581_CRYPTO_RST>;

I guess you can drop the extra new line between clocks interrupts and resets.

Does the driver supports these property tho? For example the clock is just
enabled or tweaked to a specific frequency? Same question for resets.

> +		};
> +
>  		system-controller@1fbf0200 {
>  			compatible = "airoha,en7581-gpio-sysctl", "syscon",
>  				     "simple-mfd";
> -- 
> 2.47.3
> 

-- 
	Ansuel

