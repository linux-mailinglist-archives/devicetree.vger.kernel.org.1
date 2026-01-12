Return-Path: <devicetree+bounces-254076-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F7E6D13C86
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 16:48:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1DF85302EF70
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 15:42:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0FA234252C;
	Mon, 12 Jan 2026 15:42:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b="jjBNwUEt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B50E43612F2
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 15:41:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768232522; cv=none; b=Flx3HJeOZCIkD8624XPYEWy9IFkau+M8hUGx1fOTmy/H+r19jjb6lZgWEMAXwFMRDoUyS3JAWkJSdDZbexbudaWfSZMiNZcw+nAsdqGdhXPpgtsE2dQKvtSNeKwYEt8IBXpHb+EExmaFP6wk6KSextIVaLvLBWQ8dqiGxAVxQHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768232522; c=relaxed/simple;
	bh=0ixE+47sZp1DnXkk6AGHLM9Dm9yYyGa9dqQnhmIhPVg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JtW5GSqrg4imKvybyoTILl1a8TW8W8Upk0dkk+VL624Tj/+ZcsiIz2Qp5qzLepEfw/2DbCrl+EYL2/gEhTHIdDtpYOKlSnDqEjVsGlw4QXoZijIWvYe4MDi7rLJBKyxWhsvj5mEIcZc+ChNcjxLVO+MJC8CTfRKUjPZZpWpjqho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org; spf=fail smtp.mailfrom=beagleboard.org; dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b=jjBNwUEt; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=beagleboard.org
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-7b22ffa2a88so3190311b3a.1
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 07:41:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=beagleboard-org.20230601.gappssmtp.com; s=20230601; t=1768232519; x=1768837319; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bqhlDu/L75Ix3r8QYS6oa0up7nb4YKhVtDS4khl9pXc=;
        b=jjBNwUEtRDVApahO6r5CjtaIF+SXfqv0SEksH3Px3eBXrkmHg91iP4lkJ9RQ+iLnOx
         6MYTTBJ9DrDrX1e3jzrObCgr/2Aa+rDCLGSoXAt/A8G+sTIjicVzAd07FcX6pJSpBul9
         ZRZ0POVpyIXFB0d72kmrhX7LzCFsVDys/6tcOMocczuhU0qOY2oWY89fGGI953P/XByt
         38ppsG4noFf1wjBJwITuPRcPSNgbBoUi/8aNIPVzmyLiD9S3JlmdKaZERNh/2fOdv13Z
         +60yWOPKW4aTFojPtWQl1YeYkq5WNzeG6mycI24TTKkQMk7xHzSX9OnDBIKL+df5Adwk
         OcJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768232519; x=1768837319;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bqhlDu/L75Ix3r8QYS6oa0up7nb4YKhVtDS4khl9pXc=;
        b=CuIbITT2ZJxRK9l7bHiYkyYtqQr/P58/Q7cTlmqNfB7np5eM39EAPWuIpFiEGc9Uhk
         sxagCFeP0WzeCnUYcCIU2XMc3scI9EyxVGy2JztUfFPlRu8VQ1ShJX7JMddeg8yRB4/P
         YrhE4K1TEhPIp9XcZ4pn3tBuMBMPTYSI9OhNxUja6tKqIxeHJvm4ShfHRiieFOuIRMJ/
         3AwilAi62PpnFb7trGvf9nEqfbzgQjzbvVPyFgjGvf+pxO86plzug2azqn9vphLAGpHI
         pN+2ypg5YpYutEfXfRfJvgFCnVQfVkCTDqA5JZrXB4ekRa+j2O8GOzceu47qr/KoT6TH
         scRQ==
X-Forwarded-Encrypted: i=1; AJvYcCVCdAGTMPuPT3BD6lkltnytcNMzRcOWNDaYZru5EfaHTECTdkKCdEbno5f/m0ritnf/bGVc/zZA9IO+@vger.kernel.org
X-Gm-Message-State: AOJu0YxddOnbQ+WiOX3C6NS4QRkUVocobKHcUFzGLdD3pwy6yOwsWmfn
	6V3XHdQa+lsRpjrzHyxgsRNlaV2q9H74K+afLlUOSAp/6hirKVkGCV6EhHTqBYuAvw==
X-Gm-Gg: AY/fxX4Za/8tZ89dTnhHDWKPdUBrHpIqICF5RESA2MMisgciF+NcSf1dE4gHNq5UIBK
	ymvApn13zBMC2fhSB6jyek0hpngmIfoOE+iMX89pJyAwPCCwD3RhwY+TbZgESh+U3uSifw5zL1s
	+1j3m8PessmykcDdnHQ8lnRCQhsqsC+HGApzr7RTeGb5Z/RRDEglRgPaxm9uhCSY3YO7RT/CPU7
	otVzP8lv7FSwNtNr87MXX163mYY39gy4otf6uVz/V+VR9B2u8+WT4xtIioQQYPdnEK4kE1k8FSK
	YY0abmJzteU6FhaMIU/lFv9lgTPKX1pdw+Lot+cqpXy02YocyxSiLSC/xxF6Ifd+RcX55/crvAt
	8eyTTHXc+7SOTLPZRUcfDfx5waAoQj289lsYLGDa5Danl9kNAUBb9B/7gChRKnen6KjUORO+i4d
	CjEkMeC1tNAiDcrnMFC5lhz7be9hk+TBZ443+1i2YIhmH6ZOz87DPBi8u2+T6gG2xS/Teh6ROx
X-Google-Smtp-Source: AGHT+IHOB4LYJU5QTAG2Ul6rg9vyz3AWxpUuvs8avyxsKiTX32XGDXkc1itlFYqjbE+2xfhlFG+XTw==
X-Received: by 2002:a05:6a00:450a:b0:81f:44f9:7c1a with SMTP id d2e1a72fcca58-81f44f98a4fmr5072782b3a.3.1768232519053;
        Mon, 12 Jan 2026 07:41:59 -0800 (PST)
Received: from ?IPV6:2401:4900:1f3f:e311:7179:901d:930c:942? ([2401:4900:1f3f:e311:7179:901d:930c:942])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-81f43dfd462sm5574405b3a.27.2026.01.12.07.41.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Jan 2026 07:41:58 -0800 (PST)
Message-ID: <ceaa0a9a-8d72-44c0-943d-dc212f1aa5db@beagleboard.org>
Date: Mon, 12 Jan 2026 21:11:52 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH 05/77] fdtdump: Change FDT_PROP prob handling to ease
 future addition
To: Herve Codina <herve.codina@bootlin.com>,
 David Gibson <david@gibson.dropbear.id.au>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Geert Uytterhoeven <geert@linux-m68k.org>,
 devicetree-compiler@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree-spec@vger.kernel.org,
 Hui Pu <hui.pu@gehealthcare.com>, Ian Ray <ian.ray@gehealthcare.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
References: <20260112142009.1006236-1-herve.codina@bootlin.com>
 <20260112142009.1006236-6-herve.codina@bootlin.com>
Content-Language: en-US
From: Ayush Singh <ayush@beagleboard.org>
In-Reply-To: <20260112142009.1006236-6-herve.codina@bootlin.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 1/12/26 7:48 PM, Herve Codina wrote:

> In order to ease future tags addition, perform operation related to
> FDT_PROP when the tag is explicitly FDT_PROP instead of relying to a
> kind of default value case.
>
> Handle the FDT_PROP tag exactly in the same way as it is done for
> other tags.
>
> No functional modification.
>
> Signed-off-by: Herve Codina <herve.codina@bootlin.com>
> ---
>   fdtdump.c | 34 ++++++++++++++++++----------------
>   1 file changed, 18 insertions(+), 16 deletions(-)
>
> diff --git a/fdtdump.c b/fdtdump.c
> index ec25edf..95a2274 100644
> --- a/fdtdump.c
> +++ b/fdtdump.c
> @@ -129,23 +129,25 @@ static void dump_blob(void *blob, bool debug)
>   			continue;
>   		}
>   
> -		if (tag != FDT_PROP) {
> -			fprintf(stderr, "%*s ** Unknown tag 0x%08"PRIx32"\n", depth * shift, "", tag);
> -			break;
> +		if (tag == FDT_PROP) {
> +			sz = fdt32_to_cpu(GET_CELL(p));
> +			s = p_strings + fdt32_to_cpu(GET_CELL(p));
> +			if (version < 16 && sz >= 8)
> +				p = PALIGN(p, 8);
> +			t = p;
> +
> +			p = PALIGN(p + sz, 4);
> +
> +			dumpf("%04"PRIxPTR": string: %s\n", (uintptr_t)s - blob_off, s);
> +			dumpf("%04"PRIxPTR": value\n", (uintptr_t)t - blob_off);
> +			printf("%*s%s", depth * shift, "", s);
> +			utilfdt_print_data(t, sz);
> +			printf(";\n");
> +			continue;
>   		}
> -		sz = fdt32_to_cpu(GET_CELL(p));
> -		s = p_strings + fdt32_to_cpu(GET_CELL(p));
> -		if (version < 16 && sz >= 8)
> -			p = PALIGN(p, 8);
> -		t = p;
> -
> -		p = PALIGN(p + sz, 4);
> -
> -		dumpf("%04"PRIxPTR": string: %s\n", (uintptr_t)s - blob_off, s);
> -		dumpf("%04"PRIxPTR": value\n", (uintptr_t)t - blob_off);
> -		printf("%*s%s", depth * shift, "", s);
> -		utilfdt_print_data(t, sz);
> -		printf(";\n");
> +
> +		fprintf(stderr, "%*s ** Unknown tag 0x%08"PRIx32"\n", depth * shift, "", tag);
> +		break;
>   	}
>   }
>   


This seems reasonable refactor independently from the rest of the patch 
series.


Reviewed-by: Ayush Singh <ayush@beagleboard.org>


