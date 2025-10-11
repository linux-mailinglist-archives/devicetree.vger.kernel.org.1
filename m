Return-Path: <devicetree+bounces-225552-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 65A28BCEE49
	for <lists+devicetree@lfdr.de>; Sat, 11 Oct 2025 03:51:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 030F93505E8
	for <lists+devicetree@lfdr.de>; Sat, 11 Oct 2025 01:51:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F34ED13C8E8;
	Sat, 11 Oct 2025 01:51:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DKYErxSn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C91086340
	for <devicetree@vger.kernel.org>; Sat, 11 Oct 2025 01:51:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760147498; cv=none; b=N92BQCX39/pxsNZL8Ad9Yil0QMHduE/I02RWaM9U26c8IvXn4B1M9Sr+YPkABWSfODDF7wPvkKVZyi3dsMX8yMG8P5HUm/yNUv3cKLYPzLftcMScrYuR5BXVDhKQyxSFoDD6M3Lyp4FqAXZt+5ul1qYV/YyvbWn6rOFXnlR5vyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760147498; c=relaxed/simple;
	bh=pU/iDesyCnVT5h+Bir1cF5MtBRvEVNTZLxYcIueRX4w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=C5LzVFDTwuvUWGP6AOtz4M5gIFyd9yyfpKFW9vfS3WxtLjBaQ+Im0Bq0/Epd9rG9d6x19PHKh15adYhS93pSJ0km6EtlRQb88/dgNJHlGDptcRHYuaQdZKhSBgYwjJu9h76DoD5jL8hBlkNd24CtldZS/tFlIB+7MoIrk2jMX0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DKYErxSn; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-273a0aeed57so45687025ad.1
        for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 18:51:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760147495; x=1760752295; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=teUHmj8fooMBhuzCTm7slxnW8DwXWVkNHJT/VXMMwXk=;
        b=DKYErxSnJXt0m9o7YgRHxk8Wiey/LKMV59opc6Qd6RYpHjCG4WPSRy0cUOvHKeKYrA
         g+dSwCKlsw4A06PF99kADDnxCUCsoS/3csxUtm+qZbleC6weiufauK+fZC4Bt7HaZiuh
         Y6h6K+SI8OV45DZS9ahkPSPp7yshIHrVoFM4JeZkbBOrIkkAebrmcUDmFwC8M+TFdyXw
         dCa3YZHvvPCNiRiBhrRb8M2WdQMkA/pqDqFzKoo8HfvAXs9o8TEinr055tmJlPHqqEA6
         NkeyHdQOxFLEXEIYPlMHeGgoVHiLbeDW/Qm6KblbSQTQpg49OqECbhNlxOEpXpqj7Mb1
         CTSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760147495; x=1760752295;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=teUHmj8fooMBhuzCTm7slxnW8DwXWVkNHJT/VXMMwXk=;
        b=SFqwvCRSzyDOG2Xg0zYOOx12laUEZIMlY2fgTs9kM7yfK22lu7Ckiy51eUTJz3Ehu2
         aG0KRk6PrO8qtWIP2flp3Y6UujioUuv++JOiwJIVYTm6Ccwugyij94FrpSvJjZHVr158
         K10r467p7YF4NQHDgYysd+NJsLUqBGiSV1/mV4DJtGv36VIY/Wj1F8FyL85KsBbG65JJ
         WOvjyJDzU+nQOI/3FX8xRLiO4eMzBiA3CDfvjYy8pcNl5s6lXawpll2Me8fO6pag0b1e
         Ajy4qkKB9b+046yPzuVjA6dFYKAobRbK1mXeUcnEEsj1ECQpiugKUUkhc4yb1jaMn/38
         QYDA==
X-Gm-Message-State: AOJu0YwRfiJIYoppvywmAPRpTQW0vaEjpY13DdMKP/dnSePbJE5fZBmJ
	dxPNltyAhd5dWVPCec5KI6MbIzTQyu2jxOID8b4FDX4ia6ogOj6/9f+R
X-Gm-Gg: ASbGnct+7revHQwT3tSqhz9g45qm7wZPhNSIhIy089uMkoKd45RB2aZWhlniv/78So0
	+wmA+RSDetCrTfU8dQVmsSNno7X1R8wFWBVo+DgV6PSH9UarhG4fnVjiyiQ32Lz2CGeEz3CWg2a
	bD9c7fWcPGQXzqozWU78SuLRXlVWhYtPU2nigAnfxsiqDmQ0wATtodJoGfS+t0k7j8L9tj+XhNp
	27SCuQvP9r5MD0s7iLKi0wcd2Kqe8KCFL1HuxtZFnvtpsnSdoMjq88FKh9+W4tD8hj+yvD8Nu42
	lM572UbEoHl+M9E8D8PmiUk6G8WWwT1S1Xsp3pokpU1bMDsajzydCZlPM4/rxquzLUdtQ4qYvWo
	9/5e3o7ldBFtg7sR2mCymAW6n+4Jk6TzEBxP/yWLn
X-Google-Smtp-Source: AGHT+IE3K6gFip9wxGITzlqymiDh7UAUD0eWbAaJZOHiLQbKOsh6fbE3Epzbc5CedugnlKFm2bUpCg==
X-Received: by 2002:a17:903:2f4b:b0:271:bd13:7e73 with SMTP id d9443c01a7336-28ec9c97605mr196969385ad.19.1760147495504;
        Fri, 10 Oct 2025 18:51:35 -0700 (PDT)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with UTF8SMTPSA id d9443c01a7336-29034f362efsm69922305ad.89.2025.10.10.18.51.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Oct 2025 18:51:35 -0700 (PDT)
Date: Sat, 11 Oct 2025 09:50:53 +0800
From: Inochi Amaoto <inochiama@gmail.com>
To: Joshua Milas <josh.milas@gmail.com>, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, unicorn_wang@outlook.com, 
	inochiama@gmail.com, paul.walmsley@sifive.com, palmer@dabbelt.com, 
	aou@eecs.berkeley.edu, alex@ghiti.fr, alexander.sverdlin@gmail.com, 
	rabenda.cn@gmail.com, thomas.bonnefille@bootlin.com, chao.wei@sophgo.com, 
	liujingqi@lanxincomputing.com
Cc: devicetree@vger.kernel.org, sophgo@lists.linux.dev, 
	linux-riscv@lists.infradead.org
Subject: Re: [PATCH 1/3] dt-bindings: soc: sophgo: add Milk-V Duo S board
 compatibles
Message-ID: <fdysolp3ogf4ra2kpr565xtkwspk3yqj6ydbkxl67wi7fviabp@x4owynopb6s4>
References: <20251011014811.28521-1-josh.milas@gmail.com>
 <20251011014811.28521-2-josh.milas@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251011014811.28521-2-josh.milas@gmail.com>

On Fri, Oct 10, 2025 at 09:48:09PM -0400, Joshua Milas wrote:
> Document the compatible strings for the Milk-V Duo S board [1]
> which uses the SOPHGO SG2000 SoC [2] on the ARM64 side. The RISCV
> side uses the SOPHGO CV1812h [3].
> 
> Link: https://milkv.io/duo-s [1]
> Link: https://en.sophgo.com/sophon-u/product/introduce/sg200x.html [2]
> Link: https://www.sophgo.com/sophon-u/product/introduce/cv181xh.html [3]
> 
> Signed-off-by: Joshua Milas <josh.milas@gmail.com>
> ---
>  Documentation/devicetree/bindings/soc/sophgo/sophgo.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/soc/sophgo/sophgo.yaml b/Documentation/devicetree/bindings/soc/sophgo/sophgo.yaml
> index 1c502618de51..63773811b80f 100644
> --- a/Documentation/devicetree/bindings/soc/sophgo/sophgo.yaml
> +++ b/Documentation/devicetree/bindings/soc/sophgo/sophgo.yaml
> @@ -25,12 +25,17 @@ properties:
>        - items:
>            - enum:
>                - sophgo,huashan-pi
> +              - milkv,duo-s

Why? I know no duo S board use cv1812h.

>            - const: sophgo,cv1812h
>        - items:
>            - enum:
>                - milkv,duo-module-01-evb
>            - const: milkv,duo-module-01
>            - const: sophgo,sg2000
> +      - items:
> +          - enum:
> +              - milkv,duo-s
> +          - const: sophgo,sg2000
>        - items:
>            - enum:
>                - sipeed,licheerv-nano-b
> -- 
> 2.51.0
> 

