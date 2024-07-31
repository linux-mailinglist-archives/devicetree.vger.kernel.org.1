Return-Path: <devicetree+bounces-89865-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E4D8943139
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 15:46:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AC76AB23524
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 13:46:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A36651AD40D;
	Wed, 31 Jul 2024 13:46:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="i4dDoiIx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com [209.85.167.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82AC91B0136
	for <devicetree@vger.kernel.org>; Wed, 31 Jul 2024 13:46:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722433602; cv=none; b=cMvRLL9tSKYephGz912Ux0rD1zfqhpqPeftyYxjQh6VJhtUNdF203i8VGB2bkZoPle0fqovFl+Eal6FzMZLIO3e9oLq+NMaFX3r0wmvH2YPCM9/hRapa57/ftgFBVX0sB3ep8MG4Y0DK87N4i8ksozWLXpGCjaGruI+23Wm2i1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722433602; c=relaxed/simple;
	bh=mu+HLrI1Ymh6ksIqB53D7Kg3u4ZNuM7JfCZKD8WKZNc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TNfM48/ycfoP9SS9Q372Z1chklW4Azpf/1m59vJ08eo0MX6pqM+e8RcHy1f6UK18BfTL/1E4zZO4fSXLNGkBe2PoHwBgLVRYr4CPNvoxw81lUR0SorWz1n04xvGtcGiJ8ok9IYt2paUlrTqiAPZj6KnrJlvDLUyvtol0szgYHPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=i4dDoiIx; arc=none smtp.client-ip=209.85.167.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f171.google.com with SMTP id 5614622812f47-3db1270da60so4063980b6e.2
        for <devicetree@vger.kernel.org>; Wed, 31 Jul 2024 06:46:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1722433599; x=1723038399; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=H7vD3eKKTv5tPXuuxbjAuAQHvioAr6xjrjdcvgmcq4w=;
        b=i4dDoiIx6cpmv3I3ndlGXxcz9+nZTK3ad/GkTM17t9rGCmsnnkVZqqto4tXoupfHAC
         5fCOhH/6r3jsJgSpRQNwGukHPz8VBzVomkO4KtsfkwkWd7d5RISARuP/kdwDJLp0vKn2
         TrthGQeWBouTui4z1mgJGelhamJ1uRFgeqjtf4wMgBMq6Sa5Bn5VgsBFuOMrouz/DRRf
         QawUXnwiLVZMG9Jm3iKdO0adlJJXvYUKH3/pWYc/ilYDJZtXQsunp8lQ4mT/X82ubjIM
         B+R8ttWv1oUhGRky3B6krcqPsDbDh50p4nzye1gyrMFwOBbaOfjxMBi4PoVChJIUEtz6
         f2Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722433599; x=1723038399;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=H7vD3eKKTv5tPXuuxbjAuAQHvioAr6xjrjdcvgmcq4w=;
        b=L+/ilgiVVKSZzz12dC44JE0FQAoZbw/oUQRGnSD1bV+VvAK5givsuhIHpIK23yRBFp
         2PEI0+0zlxYF2hmXamDlMl/S4PxQygtnb7J4P8YOP/SVzXhkNdXjfu7JSxmrSA0ahUJF
         oYv+mOEpAg/XtqPuWgkY+p1aD9HB8t1BeoZDZfRu94z07PF9l3COSmkXSzKSj+pzjRsi
         3wRZ2qg/S2WT3YE9HtZVPe7YWs6z0s52WsbQaFBzZ/whK1PN+MilJHSTaWjE1TzHd2QR
         5fZku6o/ApRuVa+Q66HX465vRCD/7G0bpXma0yQaZoAGIfEcXTfO0o/vfhQwxlGLzsnG
         3/yg==
X-Forwarded-Encrypted: i=1; AJvYcCU5rVzLgpF0wpUUP8UGW9NlA8Q463AUSO6KphzbocK0g5nt75SXuOKM7UxTpVMTiGyFjoIVvgNICtSX1Vo+HuoQR4gMaS8j+VZktg==
X-Gm-Message-State: AOJu0YzLGSP2c2URG1ZkAVHwlhFpfBum5mnLM94bB/dNhCtVLpMDVVfA
	SFGtLuNh85nZCvac8/9gBm2V+OJnuIMsZxPkTXLT9+TLAsUcKk/ZA7Zn7qITGug=
X-Google-Smtp-Source: AGHT+IFoaWfKvyUnGI7JL6JXSlixBfZm6Ni2JS1S6+YbYteDvT28li4alGmtAKFRsoCuSlkySjldwg==
X-Received: by 2002:a05:6808:bd5:b0:3d9:3b17:f752 with SMTP id 5614622812f47-3db23ac334amr20323307b6e.26.1722433599672;
        Wed, 31 Jul 2024 06:46:39 -0700 (PDT)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3db41ff72a2sm682020b6e.43.2024.07.31.06.46.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Jul 2024 06:46:39 -0700 (PDT)
Message-ID: <931de9a9-f391-4609-b067-eaf5c5105451@baylibre.com>
Date: Wed, 31 Jul 2024 08:46:38 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/7] ad7380: add support for single-ended parts
To: Julien Stephan <jstephan@baylibre.com>,
 Michael Hennerich <michael.hennerich@analog.com>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Lars-Peter Clausen <lars@metafoo.de>, Jonathan Cameron <jic23@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Jonathan Corbet <corbet@lwn.net>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20240731-ad7380-add-single-ended-chips-v2-0-cd63bf05744c@baylibre.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20240731-ad7380-add-single-ended-chips-v2-0-cd63bf05744c@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 7/31/24 2:05 AM, Julien Stephan wrote:
> This series will add support for ad7386/7/8 (16/14/12 bits) unsigned,
> dual simultaneous sampling, single-ended compatible parts, and the
> corresponding ad7386-4/7-4/8-4 4 channels to ad7380 driver.
> 
For the whole series,

Reviewed-by: David Lechner <dlechner@baylibre.com>


