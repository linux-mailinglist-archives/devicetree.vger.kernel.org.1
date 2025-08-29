Return-Path: <devicetree+bounces-210621-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A5D24B3C306
	for <lists+devicetree@lfdr.de>; Fri, 29 Aug 2025 21:29:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7078B5A0C9F
	for <lists+devicetree@lfdr.de>; Fri, 29 Aug 2025 19:29:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB717241673;
	Fri, 29 Aug 2025 19:29:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="MvyacE+V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f44.google.com (mail-oa1-f44.google.com [209.85.160.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 265B823BCF3
	for <devicetree@vger.kernel.org>; Fri, 29 Aug 2025 19:29:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756495745; cv=none; b=BDAW6uL63K5vO9INTG/StiaXPUwURLPfVlm1JQftn9DeezFNYDpb6ns6OFWeSZW7mNCCUe6yVIdohgjRvILIEwdcpkUe2yFBLEzTBwB//zIVu8isao2oQZBhc0jB2GPm7RNbQW8Og9l6ML/wuXFxykjW5upI2Jxi1opkFCadg9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756495745; c=relaxed/simple;
	bh=i+INH5PIUZ5fungsOczI6sZiAKm2LRX8A3qW19oUiZY=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=aHRsChNP+9dRSLAtNrxeQ+gqeoubOHuwcrA0na2XBgJCvLH6ejG2xFd65ZyZL5/Btf723GrucF1u0u26QQAy58GyJKcYFdwlS1Gzi4itIUYYtYkoQNWc94hSasYSf8T1jO57JQ6e8r4XWs4olujOboxglFO0zkw9K8UFR9W3U7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=MvyacE+V; arc=none smtp.client-ip=209.85.160.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f44.google.com with SMTP id 586e51a60fabf-315a297f9a3so1644927fac.3
        for <devicetree@vger.kernel.org>; Fri, 29 Aug 2025 12:29:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1756495742; x=1757100542; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=M2+wT5He58Nk4ycI9gGI+sEh59JOmnfZJky17dXY3FY=;
        b=MvyacE+VbzR/rlHHOyYqbkPUt5nGlFnChMysLkH8a3YxpttS96PxUHel1Q8eLws6eb
         m5gRpkTRonUzJ0BCBdr8CQ7ad4+JEOdVx5IJfbjGvsoJTm+10RdjMJyescrNvn3l0Ng+
         8sdEEcZN9Cxl7vYqEYvyrLL0lQTR15jyOcvBVFeEUX9pmmPdIfXlHW1hKARff++srJup
         H9qtx22ULnHgY0Travd7brxt7zPWzfBduUdBlOUMXt9TVzt6ONHc3K+Jll8xI78xubWe
         9Q5FWA5Dq44mOZa1gUueyyARb0BYM62tjay++0scQ7GqdIoeoTlbMJELN5mY7e1x2d5F
         bGxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756495742; x=1757100542;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=M2+wT5He58Nk4ycI9gGI+sEh59JOmnfZJky17dXY3FY=;
        b=DJOVY5wOHDaazOP/f/+d1D8omY4s1zsPyItw8sU1uqAMrGc3vZztJe5eYzVuS9Zq5p
         jNkgihXG13jwbKwEWFEyiQA6QPEEcjDhNy7OMSnE+4EDtkLrp9ADoIthFrfh3BvZqxqI
         M6z4tb7WJBqsUdCnTn0sFfY+5lI2m2hpSUkHoInqko8FteRYhqjSUGMaUL0G4oroYOIV
         SNlKAdpMxJVf2vOubTvmTJvMdnckY1nriGzWU7fRA5blEjr0fpGS1RGmSZycsw0Rb/0v
         E8rAMkkAr3qdZOBSnVRX1c4IGAYJa0aWKRDuILJRwRRpf3M9OM0jCIGjl9tpV4pXrwyG
         M8+g==
X-Forwarded-Encrypted: i=1; AJvYcCVeoFTax7xkCMtfaA+oeGk4DCfiYXSTtG1fsyrKnmLkcASLlYi7U5jR74YtEIMGep2ivY6tzY8EH27b@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6hbZJMAkPVqoGXlyuSFWpimoj21DaRqtRnMCsaefvEJIyCjEp
	a/z2DlxP8PkpuzPR75qxOtQj/dxEKIYUUDx/fbBUI8sSX6wsQmq+sYeU42nr82pzIiM=
X-Gm-Gg: ASbGncvYutzxn2/+znFL8V+wPRoYQMGR6pPV04hCux4eaZeiFfWOPYVZ6o0rjt4XjFc
	Znkto0LOBqIdVu5Xgrf2TC/dTy+e4lSk6MMDvHtc5eTCjPUj0dEuZ48oCGUkhwehKDYYYUGvon/
	2WdxkRtJDVv9yesZ2H2fCUQQ8RpgKTpIc80Zo5vGoTzXnjtQtSSFZy7aSqROvCzsxdxApw5+8cJ
	xKFMhWH8noGrPon2TBahpQO6ZuWmbQJYbMNJ4nrw5v0ONyZHbhjdJP/n7HwpLD5bi7XLAEUNk7X
	RMfAgTP4suFiq0umMvAsMCGzDVIjUjdOjLGBDNhfcv1L+vokDOjORXHsGuV14HE/KfQBXH+qagD
	tWAGlDlHH8qsKL0gKDb1f36HaE4SxtuuJld7WNNa0vw/gHgn/FnmRKt+HdA1up3hUnvGmIyLvsC
	iaUkCZREdJUQ==
X-Google-Smtp-Source: AGHT+IFUI0HBrruEpYPUGPVj0o1naQM5URQdPGR0MpXZecuoseh/XCOIleBc4ls6rYo0uNS6K9zvvA==
X-Received: by 2002:a05:6871:4:10b0:315:b558:1584 with SMTP id 586e51a60fabf-315b5582503mr1655470fac.21.1756495742127;
        Fri, 29 Aug 2025 12:29:02 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:8d0a:2553:5881:1318? ([2600:8803:e7e4:1d00:8d0a:2553:5881:1318])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-315afe62235sm1585849fac.23.2025.08.29.12.29.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Aug 2025 12:29:01 -0700 (PDT)
Message-ID: <9971205b-6e92-46f8-978d-31b074305410@baylibre.com>
Date: Fri, 29 Aug 2025 14:29:00 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 3/6] dt-bindings: iio: adc: add ade9000
To: Antoniu Miclaus <antoniu.miclaus@analog.com>, jic23@kernel.org,
 robh@kernel.org, conor+dt@kernel.org, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20250829115227.47712-1-antoniu.miclaus@analog.com>
 <20250829115227.47712-4-antoniu.miclaus@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20250829115227.47712-4-antoniu.miclaus@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 8/29/25 6:41 AM, Antoniu Miclaus wrote:
> Add devicetree bindings support for ade9000.
> 
> Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
> ---

...

> +  clock-names:
> +    items:
> +      - const: clkin
> +
https://lore.kernel.org/linux-iio/20250820205838.GA986565-robh@kernel.org/

Rob's comment about dropping clock-names was never addressed.


