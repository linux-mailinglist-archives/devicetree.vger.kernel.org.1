Return-Path: <devicetree+bounces-241389-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C277AC7D42A
	for <lists+devicetree@lfdr.de>; Sat, 22 Nov 2025 17:57:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 967654E2324
	for <lists+devicetree@lfdr.de>; Sat, 22 Nov 2025 16:57:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0A1E28C84A;
	Sat, 22 Nov 2025 16:57:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="bi5xUGfn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f52.google.com (mail-oa1-f52.google.com [209.85.160.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C6A285CA9
	for <devicetree@vger.kernel.org>; Sat, 22 Nov 2025 16:57:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763830631; cv=none; b=BEra/64KD/f3nFnH2D3UHXHBWmFnQEBryFH0J4HHyxZB/O0c+2hUUMumIzxHrudUv5zU7V/IARPQJwxkX24dORUncstL49Ossx2ZDrK6qan78cYSvGvOm5aLsnNaQqAKwJ5KGZQkIH8ABaB67lZv7v1n1Ho2Njz0YcN3QWhB0s8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763830631; c=relaxed/simple;
	bh=KU49GyuiicIEUZngQEr/LeAOc8CyvB2hOuUp4uYqQPI=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=txsvMUI3NCNRFnyoKtM+S27wKYm036WCtZdjYBJKwFMQqO3dJO4ivpPia/CmxW2dLetYiv+DLWJqxFhRcT03nVt86Ic/59ytKBTfV5xnJkXHQlecUA6K5r3bWW3RSrFbK1ad7Y6Z0dylK2QMgpYF790AHHVHS/YP6l6W45QCJG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=bi5xUGfn; arc=none smtp.client-ip=209.85.160.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f52.google.com with SMTP id 586e51a60fabf-3ec3cdcda4eso2013429fac.1
        for <devicetree@vger.kernel.org>; Sat, 22 Nov 2025 08:57:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1763830627; x=1764435427; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=i48yrAPZ8Xqe0qNk6R5ngVE9StSi81SOfH4muZOsIJM=;
        b=bi5xUGfnwMcu8/+lN0EPTo93R398aoY1NNXbBzSkkfAZ3aq8uyUq91AIBbF49l0nqi
         vGw4AKAdCDLn9Keoj8fn4QE7qaWA5pj8DJkjSRQsYveu1OeUg22x+L2QCdxwWjIR1iwD
         lRPwJL1mZiXMNRgci2qsjqfp4lyz2JMWwOpm4rLsmmNeDPe9dXuLOsVKm4isscSMEI38
         X9JH4EsxK/KPKcjDWFaoUmvRPIY37V3kro6SWljXRDVXeTN0sLyOfDbTTFnfmcHQxtb8
         RGsxZOqJ09KZfojbIW8Gz5wxAPP6kyRJyOGRbIT/29n1x6XFPQA1uTGyRCQRVa34cWnw
         zG6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763830627; x=1764435427;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=i48yrAPZ8Xqe0qNk6R5ngVE9StSi81SOfH4muZOsIJM=;
        b=n43spfABue2Q15ER6ATqhzW0jNI6KHLvLwN8xc5Jv/alqvABtT33NulVQJU9LV0wHZ
         /O3m7CvOkDVwYK8NPJM8GJ6UwyGLRZTXgqENTmgb/chRiIcYCdiwrweIBwYNtd3dYRbu
         84hIB89S2OciNXBhDZo0yl/e9zc21QmPVoAqZnUBFApJ4W/ZBhukViiWYxhB00m5+SOs
         P80vk2IizwElpjPBuZLu34n0w2FmSQmk9jdDIOdfRoUl9FgomBo+RlXktr1EPnMR0tgb
         5UUoVsd9CaUC8RdRS7cAI7yLlzNoUlARjticeuBThoO3o5T5lLnxnBqvv9ddrwlyxs8K
         y8uQ==
X-Forwarded-Encrypted: i=1; AJvYcCVKjTAZAYNFtkHnkctzcRp2a55uP6sSMiUGhZgpvfwOZNjiYVY8TYmfzvjjU627noZnjooeww91ToAs@vger.kernel.org
X-Gm-Message-State: AOJu0YxAwAeuCmEUF/0ULcBdQwJDHHvVx51DWKeSiX8SWoSzAQVvBpvQ
	y90cSabrhZRYQwTc3CkOHgrHDadxVMF0FbzD3j1yEIg0248euMINA6j4pFhh+2DH70g=
X-Gm-Gg: ASbGncsHTZjZXiWH3fQxxEnUscH36fPjXo6O3LUpDdtXhu7ieKDpYsOgctSnwkPxNwX
	SdBMM4W/cyARSZX/PfcUHjTxe6JdOIDj4IFpgYuVVu4QWH4TfLjYNZJYAsu7ObCD0kc4rgeXh1c
	KiQn+Rb7R7KCAdtlHPGxzPwwzet7neKNIL558BumTY0IQHJA2BW6LmvypwnDoWEPq6AuoWpGIwV
	eNYqQHx+G4uKmupK8pR0rsSJzRnl4K0V6fbHZy5poLWUK4ruaxOiJA3dN6fxrgn/FkO7D1fizoO
	1s8qqCQOCPtrSeE3cAbEBDoiuk7zSfc31cMseND4vRVQnbmGMhz3qhOGB6L0ekFl5IaiAyfvXaW
	vsZL9yJ2s5dNqYEvlXl29LdkjFpaxQQSwssx3mvVGZNxNj8cJuGq12BRnRssOX2tcr72BBvtwsN
	IuEkTnZOZmObOIne8rz1q4Q4/CLWAPS9bYnUcB2pcs9XT70T9tTCApLGpENBJYBqas9p3h6oE=
X-Google-Smtp-Source: AGHT+IGQVghKnkpbLYaT3scrqN+Wey48lVkwLs2TAkvO6IKygoP39K4MsYAJ17pvkp/XW+9haZPUaw==
X-Received: by 2002:a05:6808:22a6:b0:450:bab2:4ae9 with SMTP id 5614622812f47-45112cde5f9mr2394898b6e.36.1763830627185;
        Sat, 22 Nov 2025 08:57:07 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:e782:93d8:7c2f:f9df? ([2600:8803:e7e4:500:e782:93d8:7c2f:f9df])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-450fffbb78fsm2522270b6e.15.2025.11.22.08.57.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 Nov 2025 08:57:05 -0800 (PST)
Message-ID: <37d15b55-4483-428f-9950-46f1b0ab2a56@baylibre.com>
Date: Sat, 22 Nov 2025 10:57:05 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND PATCH v2 0/2] iio: frequency: adf4377: add clock provider
 support
To: Antoniu Miclaus <antoniu.miclaus@analog.com>, jic23@kernel.org,
 robh@kernel.org, conor+dt@kernel.org, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20251121095933.19032-1-antoniu.miclaus@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20251121095933.19032-1-antoniu.miclaus@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 11/21/25 3:59 AM, Antoniu Miclaus wrote:
> This series adds clock provider functionality to the ADF4377 frequency
> synthesizer driver to address user requests for controlling output
> frequencies from userspace.
> 
> While implemented as an IIO driver, the ADF4377 is commonly used as a
> clock source. This patch series enables it to function as either:
> - A traditional IIO device (when #clock-cells is not specified)
> - A clock provider (when #clock-cells is present in device tree)
> 
> The implementation provides standard clock framework integration with
> rate control, enable/disable support, and maintains backward
> compatibility with existing IIO configurations.
> 
> Antoniu Miclaus (2):
>   dt-bindings: iio: frequency: adf4377: add clk provider
>   iio: frequency: adf4377: add clk provider support
> 
>  .../bindings/iio/frequency/adi,adf4377.yaml   |   8 ++
>  drivers/iio/frequency/adf4377.c               | 119 +++++++++++++++++-
>  2 files changed, 125 insertions(+), 2 deletions(-)
> 

When doing a RESEND, please add a note that says why.

Also, you still didn't include the clock mailing list or maintainers,
so I don't expect this to progress since the last time.



