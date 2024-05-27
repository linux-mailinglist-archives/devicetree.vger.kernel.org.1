Return-Path: <devicetree+bounces-69500-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D44B38D0018
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 14:33:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 906B8284B65
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 12:33:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0EBE15E5DD;
	Mon, 27 May 2024 12:33:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xzdbb6fq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39DE015E5CC
	for <devicetree@vger.kernel.org>; Mon, 27 May 2024 12:33:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716813190; cv=none; b=nTRVO6JGG7mmQ/1jZMbTZ/X8wQwkL6SpVy6aG4fVwLKiPd8N1KkE3hOhlFEDBnJqk+rN3tTb8Mqxbk3ACy1w5nSWiNcw0T/C9/X+batz1PN+n5oCNK5KJqcDy502I90ve4EtOovlgR2OTwWj+Xm9Rf4YQJKTUWNwqGM8mEOWc0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716813190; c=relaxed/simple;
	bh=6gpy4QnlXfn+3VfnJIdKkS3eQTcH5CkCvAbl/LBAL7Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iFALIpsQl7GrRXUlrqKizrNdZfmfanslQ3JpsEsopHx/KbRskets37veIjGFsIdpL0KU0cLoOumvv269wSWhJ7wMgE3qW5tsu2vWIdjAhXM6pXYZ204FNP+MPTWsO53iQ1e0h4wz/sfoc4LJcOIG0S80+q0zusHk9N36Qia3ufU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xzdbb6fq; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-354de97586cso6494524f8f.0
        for <devicetree@vger.kernel.org>; Mon, 27 May 2024 05:33:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716813186; x=1717417986; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4PbKr6F4qyJEGh68m1meo5rRQR6WxkeJ7FMZXKENRV0=;
        b=xzdbb6fq0LJntuZkZBwLuTISb20CAGSt8MJhSIqpmOu0fbKFrJBjur2YzKCkG/3zlF
         BieO76tfiki5EqA4MN6au6YEbknU+cWfL5ElLfvjUsfgWmSndXJn3IjbWeH0FTxTXto1
         6b/j3y7CSxSspyexMO3FV8dqakGw6w8kN5MUjDSSSZJaF8+JppoAeYKklOjZVq+xqk/b
         sLoKvZqjE9pf4cwpxEkwrFiqm6B/dEjLB1O/EcDzO3sunHSD7gISnWUIWaUphIkNZYK1
         oOl7tpzlZxe2iuoNgrvVeNLiTyHlyu/HMZy/beD6Vm1ssbxsd1ZPHSKqhoUTSM7I1T0L
         ciCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716813186; x=1717417986;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4PbKr6F4qyJEGh68m1meo5rRQR6WxkeJ7FMZXKENRV0=;
        b=DUxPTvIzvlzxAEcjADFGTWGk5YKyb2KHhj01vYusK7vDkBZo+sGtxZJLDkgLz34r5q
         oNSB5q/wPSgCEdchFoppbRP5zJqHvfuBXHDpBFaaU7OIlEmUOuQxuW1Aa/XOLg0UglQh
         c4Kl6k0uxJSxq7bvpKYFa/q6+VGjbF9Dy//iYlCIZy7EaHidk7dxg0NIVjNYgcs7mj/Y
         UjOznLCWJzNtE9JtmLCf1IUNOoD8hMbY/S+l6CdQxIb4dL4B199UQRiWqb5Y6JV/KNna
         uObJB9mbsIG++dA6e+VmdH0jvE8R7iaKpiFNMdoOET8EWitk5cu8Vr6wiSTxuttRgmbs
         pgQQ==
X-Forwarded-Encrypted: i=1; AJvYcCVYfjviUGYE0wjtqHInBRjSpVZumOdcOdTS2UAm4UqItHRzvZJg7CJYMiAzsONtIb8VavM2dFuCTay6zF9J5JlFm4ja6kdcOeO19Q==
X-Gm-Message-State: AOJu0YwEi4++qesy9I3kuryWZD7eLbt/d1pF12nfuzGQRmWSQ7s8PB5z
	p53aIbEhakhEq+7GTqa6ae5i7myHKWlXykZoGjwf+CF9YHimt2R9+H8Hsa87Mn0=
X-Google-Smtp-Source: AGHT+IF3YzofNuY7fs0Qc1CTGRPqO/DtJKUbJFULuqF8piYQueCYqw+R3VAn7929Wkj5lhKwclJHmw==
X-Received: by 2002:adf:eccf:0:b0:349:eb59:c188 with SMTP id ffacd0b85a97d-35526d67290mr6935711f8f.5.1716813186518;
        Mon, 27 May 2024 05:33:06 -0700 (PDT)
Received: from [192.168.69.100] ([176.176.152.134])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3557a08cc1bsm9025986f8f.45.2024.05.27.05.33.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 May 2024 05:33:06 -0700 (PDT)
Message-ID: <bcca84a0-f12b-490c-a61f-b10a9fa0395d@linaro.org>
Date: Mon, 27 May 2024 14:33:04 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] MIPS: Loongson64: Include bootinfo.h in dma.c
To: Jiaxun Yang <jiaxun.yang@flygoat.com>, Huacai Chen
 <chenhuacai@kernel.org>, Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Aleksandar Markovic <aleksandar.qemu.devel@gmail.com>,
 Paolo Bonzini <pbonzini@redhat.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-mips@vger.kernel.org, kvm@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20240507-loongson64-warnings-v1-0-2cad88344e9e@flygoat.com>
 <20240507-loongson64-warnings-v1-2-2cad88344e9e@flygoat.com>
Content-Language: en-US
From: =?UTF-8?Q?Philippe_Mathieu-Daud=C3=A9?= <philmd@linaro.org>
In-Reply-To: <20240507-loongson64-warnings-v1-2-2cad88344e9e@flygoat.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 7/5/24 20:51, Jiaxun Yang wrote:
> dma.c defined function plat_swiotlb_setup, which is declared in
> bootinfo.h.
> 
> Fixes warning:
> arch/mips/loongson64/dma.c:25:13: warning: no previous prototype for ‘plat_swiotlb_setup’ [-Wmissing-prototypes]
>     25 | void __init plat_swiotlb_setup(void)
>        |             ^~~~~~~~~~~~~~~~~~
> 
> Signed-off-by: Jiaxun Yang <jiaxun.yang@flygoat.com>
> ---
>   arch/mips/loongson64/dma.c | 1 +
>   1 file changed, 1 insertion(+)

Reviewed-by: Philippe Mathieu-Daudé <philmd@linaro.org>


