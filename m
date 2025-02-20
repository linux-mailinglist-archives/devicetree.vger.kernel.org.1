Return-Path: <devicetree+bounces-149131-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E0A22A3E6A0
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 22:31:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 743863AEE72
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 21:31:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 475B9264639;
	Thu, 20 Feb 2025 21:30:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="WL38YEcX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f41.google.com (mail-oo1-f41.google.com [209.85.161.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD69C264624
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 21:30:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740087044; cv=none; b=HzFSUk1ANsaB81ICB1//PBI5nb6OusED8lrw460zI3ceCZt/6+GY8LHLkGGXYP3Xog+jSOOizsWHYR0zb3MicIyNyYBsnlU8VEAG0drDuwRW9HFzW4FRgpuQDucGRlhF+YI3eUXIe84o2JH4wSvIloGg88iEPKYz6jOgNVE7Y+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740087044; c=relaxed/simple;
	bh=4IlTTn57fzjGT5neuC60L+1dIx72n+UtfQr5bV/D27w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hkqW+tu1grfVaeo7xqqeiBQ2+gB22BDSjuKERtgTp6iHqUQUDnlWRR2/084X6bSaCLN3W8JehCx7CB0d6rx7go2XxxuWRZjVouKfpNkohnykEVw6Fe70FeCh98HGganSIyONIVJzKBKxX5jXcaYyX588/Wy5KFmMdB3u/9nO114=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=WL38YEcX; arc=none smtp.client-ip=209.85.161.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f41.google.com with SMTP id 006d021491bc7-5fce3e43159so1060309eaf.3
        for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 13:30:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1740087041; x=1740691841; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uFd/eiSziPMZWtzl8X1O2OHBJVjEs/2F5XFS5d1bJIM=;
        b=WL38YEcXKPC5A0lyLdMO7ESMN3vYT7V6skgjG2buZyS3+afeDPTUZht0CCtUF1YJOk
         Oicd1U730PU7/dz7EA/HsDsY8nJGhqC0Tisr08+LNMhN3ijhaHe8A0vRudxfLW18SA2A
         +Zr5LvEhyrVhT+AHZHYphBUq+VtTqNIymabTUHMmEjQuWT83mmF7P2J1UHXez1nFb74k
         ZQnWV3bRZDXRKbBBjv5jQkkN3hcTyp/xH/sjVh+SAytNMSONraBoP1r7uwSlQafQTpZ4
         caTqmQa/GdrZRZewMS0M2xcjm60HgBhcpKJ+1fwsU88+02wN1Yi4fW1poviJqUDYPPs3
         8CUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740087041; x=1740691841;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uFd/eiSziPMZWtzl8X1O2OHBJVjEs/2F5XFS5d1bJIM=;
        b=Twl+cHFYQ9F3szC2U4ZN+7f4B21Oc7TycpEZjdqoybV0YkOwciko9szfY2CeF/vkrO
         5FxtaIZ/4ydk0sftw2wjIKJP6vj8LZ+O9RB78h/EYLrEaPscGsTzAZauCp/i3tQqVFBP
         3iE53Oe0G6WgVVDGGQ5TCAmRecuX7zF3RccN6lSDKIK6RT8CYrMCxk9CZNUT59IvjOPg
         yCeHgm0sXraqTHz3Nhl0Q+gRBBpRexcPBxGc1LPBOPWLdhZKQzQHdoAjg26O5OLCAjVV
         Lrp+y9p77ft2EscB9zu0gd4EMgjbt8b5pomrRdlnb3ALmkcqMm352vdibTQIuag22rEI
         86Og==
X-Forwarded-Encrypted: i=1; AJvYcCVoxwES2btJT2BsW+q93rFOuNFUx05yJntG13Bce6Xo0leE/fvWZ2KG15f65Z6yJ0hfLp5fg6Bq65/N@vger.kernel.org
X-Gm-Message-State: AOJu0YzxpW3UrDazEZSHulRhjPsvC7/Y22imsWIazwi6Wq1wDnOVOB7/
	JqHEMC+tdksS+lzlsMUAguq6RjZOsPNyGMyl+5Yv62VZ2Xwlu3O4KC6qYKJR8B8=
X-Gm-Gg: ASbGncv5RjxBuEwth7uPRUX3Y9HfVXO3DChNh3YT3K34Icqq50dPik/0aW50llLA+zt
	c8/h/rl6NRkSjv/IFFrfpabLGE3ICCIOJ7ioA0GPnNpKWTszg/NRQ5oDA0dk7tOp/zjM1WDs+NW
	obJ1+LsTEEksQnBr6Jy6JvGvAtBmzJ/BfAoQpZLFX1SI3MrnBXj47nnya5pa79hBMJdjvL8+kKO
	qwa+YKoxanj4KBlowZZKE3iJplUAfe00maHn+GcgkZ4kE2k71E5T7KypjoG4wI5IAPgu0a9gBAd
	c0FN0RboJ9z27k8QeGzLHdAS40QaNReI/SLGI9yXHOZfcJXB1g5a
X-Google-Smtp-Source: AGHT+IFqWxbZFRA1rz6PvPU2XODqbR9hz70tJhTG/+Dqectftq8EDR8raj5yvtCTiONyxW3BNF1Olg==
X-Received: by 2002:a05:6820:1612:b0:5fd:50d:49e4 with SMTP id 006d021491bc7-5fd19648f16mr652519eaf.7.1740087040824;
        Thu, 20 Feb 2025 13:30:40 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5fced377d94sm1875193eaf.32.2025.02.20.13.30.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Feb 2025 13:30:39 -0800 (PST)
Message-ID: <63e98010-860c-4d66-9cac-4f37d5e08f5c@baylibre.com>
Date: Thu, 20 Feb 2025 15:30:37 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND v3 07/17] iio: adc: ad7768-1: remove unnecessary
 locking
To: Jonathan Santos <Jonathan.Santos@analog.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: lars@metafoo.de, Michael.Hennerich@analog.com,
 marcelo.schmitt@analog.com, jic23@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, jonath4nns@gmail.com,
 marcelo.schmitt1@gmail.com
References: <cover.1739368121.git.Jonathan.Santos@analog.com>
 <f866c5e181e9e77f4179c44a857cebd60dce32d2.1739368121.git.Jonathan.Santos@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <f866c5e181e9e77f4179c44a857cebd60dce32d2.1739368121.git.Jonathan.Santos@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 2/12/25 12:17 PM, Jonathan Santos wrote:
> The current locking is only preventing a triggered buffer Transfer and a
> debugfs register access from happening at the same time. If a register
> access happens during a buffered read, the action is doomed to fail anyway,
> since we need to write a magic value to exit continuous read mode.
> 
> Remove locking from the trigger handler and use
> iio_device_claim_direct_mode() instead in the register access function.
> 
> Signed-off-by: Jonathan Santos <Jonathan.Santos@analog.com>
> ---
Reviewed-by: David Lechner <dlechner@baylibre.com>


