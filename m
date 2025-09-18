Return-Path: <devicetree+bounces-219032-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 85570B86AE4
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 21:32:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 467193AB94A
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 19:32:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE46A2D7DE4;
	Thu, 18 Sep 2025 19:32:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Ih3qsp01"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f54.google.com (mail-oa1-f54.google.com [209.85.160.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D140F2D47FA
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 19:32:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758223947; cv=none; b=Fri6gGE/cFNkNDq2nMVxV3RYpTcp64xDip1IMOh3rsTRFFD3zLxIBJ/SYM59R8wgHXCGi0NdktIAkOoKL6J9R/XSkm6xSINlBnSC3MQolF94zEbYkUyb+07/sOkM9h9p9eqPIwyagHzG3SkVzSbcsetjBXf/2uD4BSgUtegqOkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758223947; c=relaxed/simple;
	bh=qivYkST2C7b7yAkJHzipE9NJQefbbXWWzWHSNDOD73w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oN9zFKOeR3VD9NwTraDLTtuqCHLbQX1Ek5MqMhBBJt1xhD1HId1JIytAqCO1y8PZvxJDarILA5BveBqe0w7i0/MRcU6GneLA0iFXOm8YvuOOki/7G0w/9Yg3zCSwlbTa59hDJA3VXccVM+RqZ6b1XxbxHkQop615xF6v3gRVRAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Ih3qsp01; arc=none smtp.client-ip=209.85.160.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f54.google.com with SMTP id 586e51a60fabf-30cceb3be82so1074928fac.2
        for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 12:32:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1758223945; x=1758828745; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8uC46HYcJYoz9+sBv/kVNcz3yRxRfTKz6LdiKNeN6Wo=;
        b=Ih3qsp01kdSLJ2q/2QwIxMJN0GL/kcgzGrUyckPu227ZjWJJL6W5yap9lRy34m11MB
         vGh3SJARh2b92Ugt2v4SFw9IZmd+529d+jyiTZpZeRJdPCTrBy88Meg9O0cOaww1R6Qh
         chRmJ9UYbcR/ZXARIo7Jk9E27jp4RBVgBWQz6Cmz9V/bJmYHlffS7Q2xZsMdoY/5ub0+
         kvPCv7ecBYr5MId493prXKdRR7MtW70zR3yfDi5WP+6JiVNJE1g/+8kM7BZzsfB4vSyZ
         V+OYmP/VIUhL9oznThYpmBe5OHyFZ6Ryd4pRfqhZm21ILSWP54hW++EyF0Nv5dZcAeic
         ERrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758223945; x=1758828745;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8uC46HYcJYoz9+sBv/kVNcz3yRxRfTKz6LdiKNeN6Wo=;
        b=sEu9IuftnC1ASKlED2WbfrK4ILdB7J3XPeAbbdRPBipwEZW7ECQ61CcPwMv6NNZKfc
         oVYXerrKAM3Gchqyxd3Ldiy9OL7iGdpMQbAp0LgLOy4xhSSUL3iFqQlqxl+3nsBiRaqg
         KI5WIrCP6Ex/iC4sdImqTfET7KCDRTkauQKmBrSKPoATLDtJikQY0nHlaJy+VCDPf8ue
         R+I0WwKDWrp6osX9DZ8r2CaM8OEKahhoRLdwXrIxzYBx4NQQPxemG1r7KlI6M8+tkbD9
         ydUwP3iJ6/FaWCPjcALIenK4JpG3Xfv2pE1d+3lEBDUHQHa04u+gra5LJBGGSqpOEF9u
         /YMg==
X-Forwarded-Encrypted: i=1; AJvYcCVJec47hl5L1K9a+388nM4O+nVgcxnhJdddpRnB4wnUOHlhhbydhJiiUU2ndyKlso3Gr314jgfmv7/8@vger.kernel.org
X-Gm-Message-State: AOJu0YyeTKeUoCho57iD8SWp8VZViN1MK8M4KqtcJjB31NQsjN27O6+L
	io12lfK3XUJjyjYHOqhO6HiTT0yOW1egFNteH7s9s9/xmRrQmB//zkcU01Ecd5UWUHk=
X-Gm-Gg: ASbGnctT4dW8MJ63DoAqkH6mhiww9RQ4TCb3aVIcNFD+XYQqfjmcqVxxiCm5L6nFgIt
	xiHSRIEdupSK/yhoPzNGDaJa1ZA5EgCifLswuWj1BWGlBzuprGC6WrRE+SjPBcIa0bby4FfFNMf
	vSuz6OnYI5tDUyFBYELWI/zcveYLVIL+doSOPb7QmB0DuLDLFo8mra2CltyNjJUVooM7WUopl8S
	NWCPfzKvZ6ewc9N5c1LPbgJ7vU0+XRSqVxKZnZo5Jzrx6IxXeTY7Vu2+o7Myto2cUKFZ4SLwQWj
	BsfqEIJSP3XlXWZqINzlX/HzWRf+Zx1z+8LodVw+/yyO9pAgI1MZZmb2YB1ck9WUvjeY8SPbcM8
	FovRwJyMhWZBNbGmMRdBb7jMbma9VC1BjqmpgqCIjZq9msh4XDzpKfxtWinuYFK63iBQVpeu6Ap
	I3A3OjcymEvFSWx4O9gQ==
X-Google-Smtp-Source: AGHT+IERFs5Dq//LaVtzyCCdTNAhiZ4f4o05CjfcgmjDwNiiOFdseuqJHqY+PhbFovbfmMpCoV8JxQ==
X-Received: by 2002:a05:6808:f94:b0:437:e3ab:fa02 with SMTP id 5614622812f47-43d6c24f008mr346527b6e.26.1758223944929;
        Thu, 18 Sep 2025 12:32:24 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:55b7:b662:4c5b:a28e? ([2600:8803:e7e4:1d00:55b7:b662:4c5b:a28e])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-43d5c6bcb8asm1132156b6e.8.2025.09.18.12.32.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Sep 2025 12:32:24 -0700 (PDT)
Message-ID: <280f7145-8800-4f50-b316-3a604150a980@baylibre.com>
Date: Thu, 18 Sep 2025 14:32:23 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/8] iio: adc: ad4030: Fix _scale value for common-mode
 channels
To: Marcelo Schmitt <marcelo.schmitt@analog.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-doc@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: jic23@kernel.org, michael.hennerich@analog.com, nuno.sa@analog.com,
 eblanc@baylibre.com, andy@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, corbet@lwn.net, marcelo.schmitt1@gmail.com
References: <cover.1758214628.git.marcelo.schmitt@analog.com>
 <b05f763506fdecf0d21a53dde82355418d6fb915.1758214628.git.marcelo.schmitt@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <b05f763506fdecf0d21a53dde82355418d6fb915.1758214628.git.marcelo.schmitt@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 9/18/25 12:37 PM, Marcelo Schmitt wrote:
> Previously, the driver always used the amount of precision bits of
> differential input channels to provide the scale to mV. Though,
> differential and common-mode voltage channels have different amount of
> precision bits and the correct number of precision bits must be considered
> to get to a proper mV scale factor for each one. Use channel specific
> number of precision bits to provide the correct scale value for each
> channel.
> 
> Fixes: de67f28abe58 ("iio: adc: ad4030: check scan_type for error")
> Fixes: 949abd1ca5a4 ("iio: adc: ad4030: add averaging support")
> Signed-off-by: Marcelo Schmitt <marcelo.schmitt@analog.com>
> ---
Reviewed-by: David Lechner <dlechner@baylibre.com>


