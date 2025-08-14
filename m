Return-Path: <devicetree+bounces-204757-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C7AEAB26A16
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 16:53:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 36C3C7BF258
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 14:52:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 722C21FDE01;
	Thu, 14 Aug 2025 14:53:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="qQKFq6iA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f43.google.com (mail-oo1-f43.google.com [209.85.161.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A5841E520B
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 14:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755183206; cv=none; b=m0gF/avl+pDprLrvqUOcMfez255cXtICJmzjtB/iIo98E3p8nd4vFOgbI0wcnLhMSZXikC+RO1kXHUsA3iOZuKBJk5X/Nl5/OHrUX07IUoxSI+FQnD2RhfJErRVg+dLv5rwamG1cM8gdAg40p6k59HUx7VSAM2Rn4+UV4s2bTPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755183206; c=relaxed/simple;
	bh=NoD+ETZUwC1NI2iM9n8JTzIDjdIebuVBxIdD00m9A4o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uooizxv7rcPmCTBr8t26TNWe9UuwxmZupDTCQNvkHlPfuHdFqlc4QJ3KSriAjClczEOvJO8wzXsYobaftMv2BwgS2WnBMhkqqxba8Ydx1F9RNI+E4V3UmVehmuTNnn8bdoGiQW6Fdha1K2zQBDujXJibq2I3vh0feJV8AZe2E8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=qQKFq6iA; arc=none smtp.client-ip=209.85.161.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f43.google.com with SMTP id 006d021491bc7-61bd4a3f39cso196969eaf.0
        for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 07:53:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1755183203; x=1755788003; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KzOI1R5AmqgwHvOsxB+fLFbNEjWM3he7pbnJXPseqYk=;
        b=qQKFq6iAVny0evBubLrDxa1Djp2eyCJfflC4haB4URjNn4xK+9hac9TvqLnvdtu1vo
         rv7nz4Dx4AKNTYSoxG8J5whIpnr9YyKtraIM0wPWRE8Ub4zbzKlafLS8iTlNGCDn7bkA
         8BodmPvVXd0ULlWwIgWThqdoqz398qJGCUSJ7JksQlFFqpGEN4W4Q9YIHK5JHzT1TThW
         ICT88Jt7ZNQ5HU4S1CfE7vnfHCPx8qzow1c/Fi6h3yye5NaIZtXOFSegKpZXi/0yrIMG
         G72VEDeLJPeTSMsEuaNZFpfVQcJRvTm1E5MAb9ryPDOwvhfckQBFiUxp855exnmvoVb/
         F2bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755183203; x=1755788003;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KzOI1R5AmqgwHvOsxB+fLFbNEjWM3he7pbnJXPseqYk=;
        b=oqnPY1fCySkmVXyoSiNGI5u2IQsXBIuaqOKxEX4RbaPqYvVq2W7HQqSCr71L9hMbms
         GKQQeJ9MRS3MhzSITtPQBoANlpxJm1TO0bOjxrhj8gryc9H6b7dGJcPxHoxmsLVKmJqK
         9NTPXE69x4la5HbX2TrzdODPoiST7hgz5P+1WKodQyxD+cfTUFMlhZqsKl5D7ZyUen0R
         IQQG7r7lvOJSqJVrA4B/IQWAe7hqO1ateoZl+HaZ0I3dq2sDXdSwDKfsRYg5X3qdY11D
         kBtMmxzAUzrJ4z6izXxtXxYfLDOsiAt4nCU16uBgVb1LOZtIWNI0gSkr88HSjYEH2D4H
         eS0g==
X-Forwarded-Encrypted: i=1; AJvYcCXC4yritg3L5D3gyZZKtoB0k/54dpvj0bhWbBhbAcrRbkZ5AViXh4NJeRYX1S5vYbZyaHLhriHAPqHD@vger.kernel.org
X-Gm-Message-State: AOJu0YwiHgfKWbouhJ/iEj8Iw25s4cHpNPnqrsSNnwxT6mIBM4sypjmC
	9Qz6d6YOsYoKPJKQuGxEXaon0bDBv0AUWHJMTlFOftBmTA6XKBdyzKZjLryLu5k/pHc=
X-Gm-Gg: ASbGncsFQ1oBcrYLyjaLOdNghuyfY4RQUDPvIrIqxl1FdgevzjjpGSjSnHqll8vCIpG
	zAlIyokG+IjJ8ozdYC5xHF//rpU/G5lAVUI1fou1UcAtkRzk+cmi4zNsOOi6ng7tj06dXUTWGKm
	Z6HKnrLKTolnoUKXzsYeLJPTB1NH7MYAWSPrxfpnZCkp39cPaPcCYRJ4lTkkeTcjWxQFgUDa+nm
	r6eamwRX62IdkpB8vHZWChbiVcLTA8w0PkwUM0g6otpp58E7+Vf9NVJy6Kt71X2x4uWP2m7syDK
	XfkbOs50dzjCtLIslWrc73GArsPOGHFya7n1O6VoWvV8E7Oz/olJRDh+wHHzXWSpsMaaPTU7Ru7
	7HyA8PNzL8ImqS6WJyT0NxYb9T2w+R2kpWEo06JMmTdb82gtRRzLydSbHt1XG5nd77BemfXj5S3
	Q=
X-Google-Smtp-Source: AGHT+IHZQPl7wPLYHM/KcEYiWAE0RJvui1GqMwr8hzIsejCa/j3IZ2UWYnVBxZ+MYPbjzDGWie9RZg==
X-Received: by 2002:a05:6808:6554:20b0:434:b43:d498 with SMTP id 5614622812f47-435df7fd625mr1317435b6e.28.1755183203117;
        Thu, 14 Aug 2025 07:53:23 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:2d9b:959c:3c59:5831? ([2600:8803:e7e4:1d00:2d9b:959c:3c59:5831])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-435ce879777sm1104886b6e.24.2025.08.14.07.53.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Aug 2025 07:53:22 -0700 (PDT)
Message-ID: <d817f2c9-063f-4506-888f-f3c6faef53c4@baylibre.com>
Date: Thu, 14 Aug 2025 09:53:21 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] iio: adc: adc128s052: Simplify matching chip_data
To: Matti Vaittinen <mazziesaccount@gmail.com>,
 Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
Cc: Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, David Heidelberg <david@ixit.cz>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Sukrut Bellary <sbellary@baylibre.com>,
 Lothar Rubusch <l.rubusch@gmail.com>
References: <cover.1755159847.git.mazziesaccount@gmail.com>
 <b91ca4c576aac225525bbd7cd904bf684e796987.1755159847.git.mazziesaccount@gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <b91ca4c576aac225525bbd7cd904bf684e796987.1755159847.git.mazziesaccount@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 8/14/25 3:35 AM, Matti Vaittinen wrote:
> The adc128s052 driver supports a few different ICs. IC specific
> configuration data is stored in an array. IC data, residing in a
> specific point of the array, is pointed from the SPI device match data.
> 
> There is no need to have the chip config data structures in an array
> and splitting them out of an array has at least following benefits:
> 
> - Chip-specific structures can be named after the chips they support.
>   This makes referring them a tad cleaner, compared to using a generic
>   array name with a numerical index.
> 
> - Avoid all potential 'out of bounds' errors which can result if the
>   array is changed.
> 
> Split the chip configuration data array to individual structures.
> 
> Signed-off-by: Matti Vaittinen <mazziesaccount@gmail.com>
> 
> ---
Reviewed-by: David Lechner <dlechner@baylibre.com>


