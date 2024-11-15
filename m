Return-Path: <devicetree+bounces-122208-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A1EB9CF31E
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 18:40:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 35930B2AC0E
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 17:07:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C45E1D47C8;
	Fri, 15 Nov 2024 17:07:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Np7RgKo1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f49.google.com (mail-oa1-f49.google.com [209.85.160.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03F291CDA14
	for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 17:07:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731690437; cv=none; b=CXu/mgt93B0+11kIARhfAhWn742aC/tmgOmI41l5uwOdU5tCGK8B/QyEPXCoi94L94HL+KUBGExrTfEjV4BSjXF6eyCuUgbMDU0/Wm+t+VY2Qnkv9vDXpQNfn9eouwstVHYY10kYJAoSghzCZd4XNTtWn3BygGAhVbilCi5yHmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731690437; c=relaxed/simple;
	bh=VP5vVhv/E2Y9dOFCdX2eV4YEEIPdv/+NzGTYjjBhXXE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uJRs6FogGtuCmJWVbx7MpKouj291W5hVk8zj+a5MW7xnpqxDK4Is7RStKZdM2/LFpInb9JN+wRni6Bavcm2/0EwAaUVRCvd8H4OsiLX49PW9H3zmhK8ZZ47aPjrpm47nrTTAyi0z9mhFTJ4NFj10CZEVMEpj9BzYZCS0ouJgZak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Np7RgKo1; arc=none smtp.client-ip=209.85.160.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f49.google.com with SMTP id 586e51a60fabf-2884910c846so443610fac.0
        for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 09:07:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1731690435; x=1732295235; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lIPj5iTtlFyQJqlZm+85SaZXLuC8DmA/9Z4Q3D6vdXI=;
        b=Np7RgKo1YcGDYcgTSDDc7wOCuSgvPuhPwOAc1b3toVS/ha6aggQprjDkPFt61vMOjA
         i9TFnG4PnUqYJ42m7gdlZxeM6KaC/2Fspz4dgMY5b3r6B4haWCqK2geGCdsivVQ0Bpbw
         TIE37tOaAPeHyXgyELIsQv9/2ITR9zsoVkrr8tdxFn/cW6lAIvfithAzkT8gXcG8LZg9
         9vBtWr8e8Cuiju3Jpv5T2OmfEslWQsz3ww7z96xHwSHJx2YDcbUs1eniU9a1iJrl3YyK
         HwR0+niJSfk1vAIOKAjUrtJ3cObiuZDh30gtUdDQ0rqyy9lKCgbPObawSLWBM3ysoMU9
         /iSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731690435; x=1732295235;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lIPj5iTtlFyQJqlZm+85SaZXLuC8DmA/9Z4Q3D6vdXI=;
        b=dXFnTLE1issTq/ibTzMN53e2MMdc3oQjYn32AmhQZdvBcN9mABstpBdALgWMjvUcmr
         7C8GLlK5nWAUCAgcEBUW7X3nLfQXEbwJi9nyZNjP5WUOEIsmREEmBx3y8aLG8u575cpl
         ftqvLmY4DSBN4u399IGj0eWpbcWOctwtaFD+ichnuLRSB9eK2P5ePKo8d3bheR76EbsS
         L/SfjgRQ0HMYX3xdqA/zTaUbXk7on6c1GkO678ROwLqz9/C89c4pmn3Ywed6f9uYuzDx
         r4XRieu/GyOBs5AR8KAkdVVpKrjgAsAlQWPiUDKcRKAUH7HiuOTu0aMKqYZB6SQ/C0Wh
         atsg==
X-Forwarded-Encrypted: i=1; AJvYcCUPAMBmG3ARaRoJiEp0Ul0XVpujW0yVRV6lWm78ocXS4jHfsgAOps5/YpuB02PvIXEJ6e75t0dvbjWk@vger.kernel.org
X-Gm-Message-State: AOJu0YycKMFScHcib+B79zY0kFNwMoaFRDlcc2v5z8CloqLaTTcdrSr5
	RHrp2pU0XiJ8UuZMX4vgvAzGFMpPJ6TqdVWAqsyYHp0AZ6W8gNXT2Da6+rTVUo0=
X-Google-Smtp-Source: AGHT+IGmNhCU4u7yKLh3JMDA/eM7n90+e2YJXKklUJKbTQ3RFU6rgLWGqmASlbfMjQJ+Y4NdR0ldLQ==
X-Received: by 2002:a05:6871:e492:b0:277:f5de:210f with SMTP id 586e51a60fabf-2962e01d395mr3385839fac.19.1731690435082;
        Fri, 15 Nov 2024 09:07:15 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5eeabcc1d4fsm604521eaf.26.2024.11.15.09.07.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Nov 2024 09:07:13 -0800 (PST)
Message-ID: <c42a5815-78b0-46d0-8592-e9bbeac12e16@baylibre.com>
Date: Fri, 15 Nov 2024 11:07:11 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] iio: adc: ad4000: Add timestamp channel
To: Marcelo Schmitt <marcelo.schmitt@analog.com>, lars@metafoo.de,
 Michael.Hennerich@analog.com, jic23@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, marcelo.schmitt1@gmail.com
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <cover.1731626099.git.marcelo.schmitt@analog.com>
 <7cb2f4f5ca6980e0e5ff4591fb8b7f53124e13bb.1731626099.git.marcelo.schmitt@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <7cb2f4f5ca6980e0e5ff4591fb8b7f53124e13bb.1731626099.git.marcelo.schmitt@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 11/14/24 5:50 PM, Marcelo Schmitt wrote:
> The ADC data is pushed to the IIO buffer along with timestamp but no
> timestamp channel was provided to retried the time data.
> Add a timestamp channel to provide sample capture time.
> 
> Signed-off-by: Marcelo Schmitt <marcelo.schmitt@analog.com>
> ---
> I was about to reply to the patches the other week but waited thinking I
> would be able to test them on time.
> My initial intent was to provide timestamps for ADC readings, but I didn't
> realize an IIO timestamp channel would be needed (silly me).
> David, do you want a Suggested-by tag in this one?

I supposed that would make more sense than Reported-by: if we are
calling this a feature rather than a bug. Also,

Reviewed-by: David Lechner <dlechner@baylibre.com>

