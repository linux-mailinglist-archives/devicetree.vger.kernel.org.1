Return-Path: <devicetree+bounces-208562-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A8B96B32ACB
	for <lists+devicetree@lfdr.de>; Sat, 23 Aug 2025 18:22:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 00F4D1C24E37
	for <lists+devicetree@lfdr.de>; Sat, 23 Aug 2025 16:17:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 768152EA499;
	Sat, 23 Aug 2025 16:13:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="SD2dEGj6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 886812E9EA3
	for <devicetree@vger.kernel.org>; Sat, 23 Aug 2025 16:13:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755965590; cv=none; b=tIIGhjMhA7GaPXN7WaxnG3Yzn2QNF+1s804Imxx5uUOFwxwnxcXdkjbpIF9wxHtQlc0jfP37Qwl6nfpFcqDFiw2p4SrPSFNQv5S6uomArzZEsgGNGYvkoZ3x8gBwCcSmUtghZnXenm/ZuxQsQQ66na5U/zhqDKz9okMl5hLdIaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755965590; c=relaxed/simple;
	bh=RTjb+iVn+TsdR5py4kgHTkw66OYfI4TTybYyhR6vIxE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kqohLSbO6NWVq3/YMgN1fy2kLb7by3w4SOj10XFYlX5tMnzd37KQ/bOEpJSZWaNbHYcKbokYQ7rQvsfdmUfnWORKRjIPD8fDVVYrEQXQNg1NE1lA2suMtPZhHBXZzqcTWSGAsuqHZeCSL1wMne5eXU7NZFAIiW/7T50xOrDQgNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=SD2dEGj6; arc=none smtp.client-ip=209.85.210.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f45.google.com with SMTP id 46e09a7af769-74381df8cf1so1004207a34.0
        for <devicetree@vger.kernel.org>; Sat, 23 Aug 2025 09:13:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1755965587; x=1756570387; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0qSJXIx/Az+pQiYKBZLEErDNdCpixl/qOO1S4KvmcYg=;
        b=SD2dEGj6I/bkm8wsam5Ocpak+T3zPbOXZWavljpQm/Uj+ppPY/wHMzgdrh8hhnTmzr
         7m7iODT5FJnXof4ytniyd13reS2YCMKTSVfLVTsqz/6SKCCjLlIds2uD/bMX+RTT8D1O
         /CMtH4j7cLwCqVpYdmDDpfNkS17vTfJp4jl3HTXy+kLLNXdXDSyK3o92OVOCPtWYpR6b
         UkP+fqLqlup9hU/X4CW8Ftp2lG9VFh9C/PRKTZMzNpGKBxGEHVFoWLEXhuIj2QrCGKdm
         7+b9IVDSErk/naWKL3AX3NdcnVNFVlZgHwpoTv3mN9h18107HCqAIJ/dnhO2nZl0oAsS
         Vp/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755965587; x=1756570387;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0qSJXIx/Az+pQiYKBZLEErDNdCpixl/qOO1S4KvmcYg=;
        b=AFo9kLyzVQ0Cc5jZI01Pcprb/ZKvkErt0bTA/dBISep/eBhbuMryslB/ZHjBywClgM
         97sXe8YeBX7ZFV8UpMFnaSDAbqSBAyl4OeVAfkflb2j3q8TaRzRdz678E82aIm8TsIyd
         zfpjOSI+ceG+yUiF20WJqnOeQTIfhWG3cz66MJQCRuyJEhYkbOb+R5569+eFhlSPo/rn
         FUA/dShd+GNQ0LdbD4vlJrv4SDNYa7AAlaoxVOehzafaV8rrsJuU72KXSIHnH7OUBNsf
         ikNOazrSAg6NBq2yo0cGYALxlIXi8QzP7FZQdqAyfGbLt2N1xfzMFCMq8CiAgemzFmFE
         yRZg==
X-Forwarded-Encrypted: i=1; AJvYcCVEMc38SoE8ivnrX1ic93v4NMaySY/LDD82JFHPcPD4EiZtui7Q3s74KdYCWFVFEP7LgbWQlPdEglr4@vger.kernel.org
X-Gm-Message-State: AOJu0YwK4935UkJNFb/8DxMQ+tmHbuTFm+SkYtKpquz1UTXsoak7AB/W
	oSy9Vnlh8ft+gv9e1/qIPjPNcBc/cPOF79Z2W11qTNDOB+eEvPSkdwMDC+37o9OvQZc=
X-Gm-Gg: ASbGncso7w62gH7JyA7SyTPICvbZhfZGPhumlb22nAv0AkWFwNtRalIDPMsSlTiN44K
	G0YvwavaU4hmJ/d3tdOn/BRDPtIXmwuvO2chjThWX5TlwoDgasQ0SJ6+7OXX/BJWV5OJZ8Y59Ik
	SXCwJr6qT0H1KTr6uQxHSgeWq2gjOVpb7GaApya9RqMpi4xj+ulPPs+94UOdVCzpD6X7LS2+SPY
	3xakZIFO35aZtYSg57QqzapUoOGm47YKMnA8f6ZOb99zTN7uMb5JOUpGkUtygQoc2UlAQw8BkkK
	W1VDHo+47ZhZ9fz2Kk6Elr5jN2g8fiHjofibjFk3u/QcXlDH+iWUEiN+4+jHtIHDOb/JRaWook1
	uvXOen5cIwYM6lmQnuJDoMpVnKP70ntYp35AnMYKIiuFPbiBmMuHwqESwvEHWNkGr9M+8LHfx
X-Google-Smtp-Source: AGHT+IHi+cV4E+X1M0r2JR6jBROtlJPHA685XBWxXWqnrw1xyZGt7gGfo8sipwJMU4bNKZjw4ng8ZA==
X-Received: by 2002:a05:6830:f94:b0:744:f0db:a1a1 with SMTP id 46e09a7af769-74500a8b38fmr3364972a34.29.1755965587401;
        Sat, 23 Aug 2025 09:13:07 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:4d25:af10:67ec:53d? ([2600:8803:e7e4:1d00:4d25:af10:67ec:53d])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7450e26887csm663095a34.3.2025.08.23.09.13.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Aug 2025 09:13:07 -0700 (PDT)
Message-ID: <e61c2e01-cd8d-4193-afcf-5ddaef34300e@baylibre.com>
Date: Sat, 23 Aug 2025 11:13:06 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] MAINTAINERS: Update xilinx-ams driver maintainers
To: Salih Erim <salih.erim@amd.com>, conall.ogriofa@amd.com, jic23@kernel.org
Cc: nuno.sa@analog.com, andy@kernel.org, michal.simek@amd.com,
 krzk@kernel.org, linux-iio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20250820100519.2272509-1-salih.erim@amd.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20250820100519.2272509-1-salih.erim@amd.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 8/20/25 5:05 AM, Salih Erim wrote:
> Anand left AMD/Xilinx some time ago. Salih and Connall are new
> maintainers of xilinx-ams driver.
> 
> Signed-off-by: Salih Erim <salih.erim@amd.com>

Looks like you forgot to pick up all of the trailers from v1.

Also, there should be a changelog of what changed from v1 to
v2. Just rewording the commit message, I assume.



