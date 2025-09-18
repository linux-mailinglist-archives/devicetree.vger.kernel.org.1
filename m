Return-Path: <devicetree+bounces-218671-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CF719B82FF5
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 07:21:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4BECF1C2094F
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 05:21:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C95F284888;
	Thu, 18 Sep 2025 05:21:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jz4Ugklq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 865E7283C82
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 05:21:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758172865; cv=none; b=gdKxreN5EvAQfiDDvsdgOa8MYNxsQhICHkc4CXUiy5JdGrI1YTV2yEUy0e0z2jwaFpsulxspvD+518u2/AM1aRTUupdlsDDpLCMrVtkliCUOKCuZX7bvVZAF/72YKQim55wklCyT+7v70EZH/4alyqcjEBS7XvaKyh155ziNVoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758172865; c=relaxed/simple;
	bh=VlZfdXR3lsbR1JersIgSGwrbA24V8Egn83KZp1071Y0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oYk/ywGMyVHMob80CHod4ho4V9g8VUZTyNtlgZiEeXq0OI7+f6jQ69FH3yEi/m++qiSi7ZqIYxuYSUbehrznQ+28CJpxWBP3pu+f3L6EYPEcUKeEZ82c51qWxR7HtkrwTqITxFNfG6OMpfHJTrs+LPlpJqGNZRx6sDAnMDz3BGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jz4Ugklq; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-7725de6b57dso850309b3a.0
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 22:21:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758172863; x=1758777663; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=U8q+skG1jvZaT2QTqM1Ble+WKtm67jvJs09CSnVBwRY=;
        b=jz4UgklqcyQnzlj4IlYqnVv9+fw1GzJ3RSmpRrXaLAP18ZBkF3YtO93z4NIUl5zSx5
         TBGSl6b+vnx4ZtbNKHf1Ovg39RfjTK8WGL2Mb1Mb+DN7Xk9guw7mfJ2CakQzMUaD59Nr
         L7QHyUaJ+GnUlIDNKs2aiS/W58zdWXfH/N6TH0GE61Ayy/0kGtXhszpaztAkOOSEi2WM
         58MQsgYxSzhPPR86JGMU+mUGkrVtCP9L7MTt8S3nwkc42AuXgFdoLhE+hEqGEPcX6hgH
         xcG0CH68bWq/4hTl6h2V7F06FD8a1AJIs+g+xmwQ7wHaGJ02EAF1FB81ebfQ9PaIo53E
         0ncQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758172863; x=1758777663;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=U8q+skG1jvZaT2QTqM1Ble+WKtm67jvJs09CSnVBwRY=;
        b=vLr7/1LN+PhnsruhHZo7AHIhrsw8uDfvQDU2XXcbjdtKv3tehX/IH6qgPLSTOvstSo
         Kb9Bz8kdBh+4kVlADtASFMj7uTM3jZvpRPKKtQskhpDmTXacUUCthfbabDuXjlJ06Mih
         lim66I7aZxfq7vd7BP5B3n1MCxIpJkKf6mEDs1OaNV/KC+RKJudZV9M+W43h4hWZUV03
         4PgYkZsXrhRZHm/8+wZBzIwYFng3KSzoTGBFtPDh5SEgzjR2x59NjuKALU7S/65dQHdt
         uyBhl4ebZraeJ9sI0FRjaQCdtjJ00xpF2X051yTfH9QdyAdDaXqV40ElT8iUcZfof4cx
         b13w==
X-Forwarded-Encrypted: i=1; AJvYcCVp4Vpv4q2naQdEj4eyJQdOtGDQabFNOVC9oAsxpaR2Mngk7v1D83BarLTXDWczd8w8AhCTZ7ay2kx+@vger.kernel.org
X-Gm-Message-State: AOJu0YwdlyAnPp4udwE87pFHbn1/1pAvgIKxxHliM+xZ+d+1hqr3FjPO
	Vi3Yz7DJe1+WJAlwErK3xWmz06i796FaIWEfg+LuOeUOSi0xLwKXhzoY
X-Gm-Gg: ASbGncve5Sip2/iLfikl/mjCxeaJY10dkiqv06xUz/qZg8QLH+/0HY9w4dO04v7gmj5
	wdPxfFMOCQgdylPo8uhUi2CvT+iVq1g4Y1PReC7yPZBwpz8EqaHYjklOLXYhqnVLRmmJN46kIEW
	YSqPiZ1Rg5rDJcRaMxrD618Sv1tS2lF3HGgRUZHJiLs90HzUkUEnGsw8QfkH0tO3k1mSV7IppUJ
	YZG4MklMNlLEUYGjPpGORO/xAKNQTKmeeJSWFnBzoZjyBTk587ZnSZAontAYC5lJFlzreCsHNjD
	TnFz0IwFyD54wtMx1B72HggvFizt9jVMEdlm1nfck+vl+vZ5jj/AIACiopI7qhtCNVn2byR+0qG
	VCyKPYrFOHus4Y0AsAkB8zwcya77rMmSmxngOM9jG4g==
X-Google-Smtp-Source: AGHT+IEBYyvA8VdywrJsd3FrdqyZ25PYHSWs7BjlEmKHmEFqYnGfRKq6cyGT6cEhnOjNhj98tzeGCg==
X-Received: by 2002:a05:6a20:9146:b0:248:7a71:55e with SMTP id adf61e73a8af0-27ab34e8621mr6472268637.42.1758172862769;
        Wed, 17 Sep 2025 22:21:02 -0700 (PDT)
Received: from google.com ([2620:15c:9d:2:194b:8358:5c91:3d3d])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b54ff3726f6sm1147193a12.12.2025.09.17.22.21.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Sep 2025 22:21:02 -0700 (PDT)
Date: Wed, 17 Sep 2025 22:21:00 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Henrik Rydberg <rydberg@bitmath.org>, Jeff LaBundy <jeff@labundy.com>, 
	Jonathan Albrieux <jonathan.albrieux@gmail.com>, linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Stephan Gerhold <stephan@gerhold.net>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v5 1/2] dt-bindings: input: touchscreen: document Himax
 HX852x(ES)
Message-ID: <otcdtgsrl4g43hl4hgajulzyij4glao4ou5ptpw2jw6pxu7vr4@ob7mtq54jv2r>
References: <20250915-hx852x-v5-0-b938182f1056@linaro.org>
 <20250915-hx852x-v5-1-b938182f1056@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250915-hx852x-v5-1-b938182f1056@linaro.org>

On Mon, Sep 15, 2025 at 04:19:56PM +0200, Stephan Gerhold wrote:
> From: Stephan Gerhold <stephan@gerhold.net>
> 
> Himax HX852x(ES) is a touch panel controller with optional support
> for capacitive touch keys.
> 
> Unfortunately, the model naming is quite unclear and confusing. There
> seems to be a distinction between models (e.g. HX8526) and the "series"
> suffix (e.g. -A, -B, -C, -D, -E, -ES). But this doesn't seem to be
> applied very consistently because e.g. HX8527-E(44) actually seems to
> belong to the -ES series.
> 
> The compatible consists of the actual part number followed by the
> "series" as fallback compatible. Typically only the latter will be
> interesting for drivers as there is no relevant difference on the
> driver side.
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>

Applied, thank you.

-- 
Dmitry

