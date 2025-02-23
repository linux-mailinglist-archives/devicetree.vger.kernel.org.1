Return-Path: <devicetree+bounces-150021-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DA9DA41051
	for <lists+devicetree@lfdr.de>; Sun, 23 Feb 2025 17:58:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C9814188D1F2
	for <lists+devicetree@lfdr.de>; Sun, 23 Feb 2025 16:58:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA2F678F37;
	Sun, 23 Feb 2025 16:58:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cxy91jOa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 841888C11
	for <devicetree@vger.kernel.org>; Sun, 23 Feb 2025 16:58:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740329902; cv=none; b=bfJmxyb61LarS2iN1d1b+uwwXGrGq8E8VsUDJt+43kutDNqRCJkrsaIinyPEbsOmBSiXGcniNHf37ZqOq73SpAGi4pr4v0w4FhXmXTIJBLKON7+2+O1OxZcBnGhNboLaHG6cTUUf4huTzlXUXltjvC1dS4j1cMXGFOSt2QOcDjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740329902; c=relaxed/simple;
	bh=QCsQ0u+SAc6TlicPRftn+NH/8ZOo7FYW8XnHA45KydE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pw5Dw5yPKGU+R8txj2RmU/dU9s/qpZmiT4SVMh8+UmZ9PsyIjX5N0TiLnTeGvNdqNKhExq8zM7Z4ifKvC/cs5HImKoxnIUQlbKLGWE2evTe5dNR383P7xn9MvSQdK7h7bBieSJDTfnJx4Q/u0y5eiU0dRUC5WZWIjRdB9GjQtrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cxy91jOa; arc=none smtp.client-ip=209.85.216.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f41.google.com with SMTP id 98e67ed59e1d1-2f44353649aso5387305a91.0
        for <devicetree@vger.kernel.org>; Sun, 23 Feb 2025 08:58:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740329901; x=1740934701; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9EGpteKkKO5lNSPCicYif8sBx0HN06bRRtVSVBOGESw=;
        b=cxy91jOa8PAZWUIHlLifsMbo+N1ZVSDGKoGmDuNXDYJhsf2lRgvCMwSspdDkjLMwG9
         jfrn4EvNpfmWzr1lq14ohUfk/2Ly53aHkxtgAmrx1co08efGkan/w2PsIf4t2WabRwKt
         qfUIoLiHTNkIf702AaoXQWy5hcrgrhyPJ4D08pA3QW2ZB5jIOKJ07RMtpJQuINAvQJB2
         B4HN492Dees1dUYel7o7MvMDdqpkc6zPEN5jElo2tNmaija+RRCQu6mssZeczEk7dEjK
         c3XRZBqxUCZVlvLeQYR9wLYBpT+H+35LSlTW4B6dpLR2AmvtDzjwA0cssDpOuj+xLgcj
         85zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740329901; x=1740934701;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9EGpteKkKO5lNSPCicYif8sBx0HN06bRRtVSVBOGESw=;
        b=Qn4uTMEjXV7RN9nsON9Jdo6DgokfczzdpNGDmSTzXXg6QD88B1r4zmk4oJQkdGcwVj
         9GLDHIjDJE2ZLifNzz99mRGYb/jm1TdajHUNz487egE5kmIXZwYbfUOL4ps1Ktj5UHvz
         9rCmwN+U3MNGdHLGgP+AhS+Nxiip3KncJJw6wJzsXXt2aOzWxyaDuytSRaIsBM1N7jkb
         1SvRr7YeISWtH83SdMCjEhMqlERAguPA4H0D4Yb+G4a/Fil9rwf5ZILVcM0N0/RQGS11
         yy8O0dpD3usifDsjM0U85i/R0Xr4tllNm9/8VoLq3nFMzHNgV2JUavRfGXLM7nNN9DbM
         JSsA==
X-Forwarded-Encrypted: i=1; AJvYcCU3Vr8ZXVTohynZJQIwWBm+xCuIWgY4fqEJBbH2yVf/GuZpbs8PSdQeGrhmaXlh0euW5rhSShlzTyHc@vger.kernel.org
X-Gm-Message-State: AOJu0YxRKyxYuCe5eJ3aFp2nXLUie9YCfShypQ31L+vDsO95sOkNbsU0
	SyclqPEs/Gc/fMOqt1koCrgc3ecrDRa8ntSZyBU7bm8yCubuE8Yp
X-Gm-Gg: ASbGncss0OhTZULoF8WHgxcIZR0w4pKo4NTca7a/6z89EtHxXb05vTjs4xGjEJIqvCI
	+stRO2vT2+BSb6whbzpYosTpgv3aAmeJWMMwZKABv1V85Lf7IVeWwofpnCY0xRZawXc0tmqxEKP
	b6IdNTjco2nDhl+epx9NDnPe0xhdvHqLnSKLbBkJ7coqUsIrmJRp5a2O160fkIKumX9MpHuTKSm
	kRwb1I72w0Erl3bxo0hyvGq1R54s6Uy60gkUgJcnhoB+C8JrgPxXkXRfLE4cv8gmsAQwL9II5oF
	VTYHQoWzyfsEybJ8LsWYSsJ4iu94CLOt/aeyxQZwJxscU4EYghzJ6HN2UjVu4W2x16+IGaKqXoY
	GiQ==
X-Google-Smtp-Source: AGHT+IHXAZ25HkqqX80WIfqWOaMr/ZBt00AQsjCyROwdSk9sUPpO/FNT5YIIgbZSuGIbUxzZe9RKhA==
X-Received: by 2002:a17:90b:2792:b0:2f4:465d:5c94 with SMTP id 98e67ed59e1d1-2fce78a33cfmr18547518a91.11.1740329900750;
        Sun, 23 Feb 2025 08:58:20 -0800 (PST)
Received: from ?IPV6:2600:8802:b00:ba1:8069:4a70:1a15:7c01? ([2600:8802:b00:ba1:8069:4a70:1a15:7c01])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2fceb07a2a8sm4823011a91.34.2025.02.23.08.58.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 23 Feb 2025 08:58:19 -0800 (PST)
Message-ID: <fb23aeaf-4e24-484c-a0ee-56781892fdda@gmail.com>
Date: Sun, 23 Feb 2025 08:58:18 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] ARM: dts: bcm2711: PL011 UARTs are actually r1p5
To: Stefan Wahren <wahrenst@gmx.net>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Florian Fainelli <florian.fainelli@broadcom.com>
Cc: Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org,
 bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org,
 Andrea della Porta <andrea.porta@suse.com>
References: <20250223125614.3592-1-wahrenst@gmx.net>
 <20250223125614.3592-2-wahrenst@gmx.net>
Content-Language: en-US
From: Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <20250223125614.3592-2-wahrenst@gmx.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 23/02/2025 04:56, Stefan Wahren wrote:
> From: Phil Elwell <phil@raspberrypi.com>
> 
> The ARM PL011 UART instances in BCM2711 are r1p5 spec, which means they
> have 32-entry FIFOs. The correct periphid value for this is 0x00341011.
> Thanks to N Buchwitz for pointing this out.

Should not that require warrant a Reported-by here?

> 
> Signed-off-by: Phil Elwell <phil@raspberrypi.com>
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>

Some people might consider this to be a bug fix, mind adding a Fixes tag?

Thanks!
-- 
Florian


