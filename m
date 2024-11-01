Return-Path: <devicetree+bounces-118246-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 857999B9846
	for <lists+devicetree@lfdr.de>; Fri,  1 Nov 2024 20:17:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B6C891C21518
	for <lists+devicetree@lfdr.de>; Fri,  1 Nov 2024 19:17:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 282751CEEBA;
	Fri,  1 Nov 2024 19:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="J+YA+Pix"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f53.google.com (mail-oa1-f53.google.com [209.85.160.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6222E1CDFC0
	for <devicetree@vger.kernel.org>; Fri,  1 Nov 2024 19:17:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730488653; cv=none; b=g/6eO8bBBlLt98bmh7RTp7kPobj2ZkLHi49iyZZavbw7Q+7Fd8PQmCieXmOJEfAx9/plkoI/OtSgfhg/zid/tE84eLZk/UAY72XiisX92ZRGSoxrNORlKVQa0K9u7r2dcsbuwgQ6admfB0EP4c/2R9l06T9ipOREhjdYI0PoXxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730488653; c=relaxed/simple;
	bh=o2R50UDnjLNhxbKIccKFZcW7BfLpfitiT8jylsK5MRc=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=NWJh+MtE9W69VLswrOv8P/dZ5wnY4RqRVfLv7DO/oR/ufiG0bzhLNdYw5Llekh5eraAMR9vS9uaInhNa3j+BFD8TTgxLgoQojmW7NdVfJyMemRQbTIXsv39ea55voWP89GHU2sL0QJ9U7XkDPoI96+KxkyjCfGai8vA946tiZW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=J+YA+Pix; arc=none smtp.client-ip=209.85.160.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f53.google.com with SMTP id 586e51a60fabf-288d70788d6so1165972fac.1
        for <devicetree@vger.kernel.org>; Fri, 01 Nov 2024 12:17:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1730488649; x=1731093449; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=lG1xyYIDy+NadFUDAMAXUBdzTNgBK3y9dmr85eKtBik=;
        b=J+YA+PixiJ9XBNrMACQBl3fmIA8ZgzXtH37q4xi6UEiUJqKHws3CSZS6MSRjBYwD1B
         opvu8rasfJ/B3cjo8COXgMpjOaaqMivY3NzhZXcwuP1A9MHcrrDnVO8mvh/XPCCC8Q00
         pzteghD4rZc68J5xuduX0uXOZKvnMx4VmuIL8NSxjLpDXyhNFvo3yZ6VInT8vO2C+3JO
         S8Y2jFNJ2rBoCcQL1S2q7z5PfWso5KmMraONn1ihlGRYK7GYRXjj0P66uCDDEKpFrUGu
         MdFaIiEnHn+LS2W44qixkgmfqkeKX2EkP6Nj7bg3J9bpjYv/OZwWOkYiR7oopFbY3Y9a
         dLRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730488649; x=1731093449;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lG1xyYIDy+NadFUDAMAXUBdzTNgBK3y9dmr85eKtBik=;
        b=kmUwidgA+HwpuLO4PNMiB+Ek0Gn3SNJ+YvK/DRuvdHVrZUzE4dqsb6Ya2AMFHbZR77
         QzJ0BGho+b/fizcHBT5sUsMSeeN/GeSdh4HPpHcCvQ++BdOdpawA6LfyqvImNhDCrSc/
         LES9ED2ZV2dx+76dlRJ7KOfiHWyM8KclCHKtf+2a8i0P5wLF/euZgNeEnZOrK9a+dV4w
         lA43XE9LQk67/7IYcSGjjw4MTnSf1VR1TTPt/ckXnNKvCT2PytIO4/A3aUhzTb8Lh0s6
         XD+6+0Gy/cqmXNEGZK4C7LkCeEHE/iy902HS/gcqvpemMiXb6qJ72LQwFgsO0y/7al7A
         NKjQ==
X-Forwarded-Encrypted: i=1; AJvYcCWzaFZmVCT8ANjKviTCrCuZ858q0AlpcxTFgXuLBDR30kw1uE/9Hz3TYjpLVi9Vsp5e/iDgtKI2P+bA@vger.kernel.org
X-Gm-Message-State: AOJu0Yzfzk8gEuzdBqkd2AkNP25iPk+EFF2RN//zjZoVEQEjCXGIpbkC
	nO0MqmpyguNGSOGGaup0RHAgvb/yF9kQc+h3Rv5/TXxW0rqYbCiIxxNEg67oEZo=
X-Google-Smtp-Source: AGHT+IEOa+2fm/lTuefUxKi2PihQWSdi/i5GWKsBYila35cTgKcc9EAR2Tsl4pAafZZmRryhmKIgYw==
X-Received: by 2002:a05:6870:390a:b0:270:7a7:eaa5 with SMTP id 586e51a60fabf-29051af0d75mr22829984fac.10.1730488649452;
        Fri, 01 Nov 2024 12:17:29 -0700 (PDT)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7189ccdc696sm842144a34.81.2024.11.01.12.17.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2024 12:17:28 -0700 (PDT)
Message-ID: <0944871a-88b1-401c-96f7-0b0f7164eb30@baylibre.com>
Date: Fri, 1 Nov 2024 14:17:26 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/6] iio: backend: add API for interface get
To: Antoniu Miclaus <antoniu.miclaus@analog.com>, jic23@kernel.org,
 conor+dt@kernel.org, linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pwm@vger.kernel.org
References: <20241101112358.22996-1-antoniu.miclaus@analog.com>
 <20241101112358.22996-2-antoniu.miclaus@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20241101112358.22996-2-antoniu.miclaus@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 11/1/24 6:23 AM, Antoniu Miclaus wrote:
> Add backend support for obtaining the interface type used.
> 
> Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
> ---
Reviewed-by: David Lechner <dlechner@baylibre.com>


