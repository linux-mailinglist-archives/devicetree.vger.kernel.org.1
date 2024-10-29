Return-Path: <devicetree+bounces-117137-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BA46C9B5265
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 20:07:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 474151C20DFD
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 19:07:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39B792071E6;
	Tue, 29 Oct 2024 19:07:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="oIwJNo64"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f53.google.com (mail-oo1-f53.google.com [209.85.161.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03FC6DDBE
	for <devicetree@vger.kernel.org>; Tue, 29 Oct 2024 19:07:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730228863; cv=none; b=ULTNcXtfjK9Ra0qGC38+PwU90UJsMhcTsDy6Oz6xTLr+oiMO5faVxF+Mczs/YA1GkAEUsTGYfBFEqBSWwuonxWLVTAUax/JrCtJdHN2BC1N8Ce7vttYxbJEYaCD3uNgTQ9yIqQ4wv3myM77tS/+wB0eTpf60PyY4f0upMZXEoo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730228863; c=relaxed/simple;
	bh=TSO+mrrI6OeC+vCFS9oXY7vQmV6mGsUoNVRXySJ+s78=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ffvwzmlMzy+3Vj4GkkLBO/2Oa8N2Cbvp+HCEYJcYsbwWGtbY0XE773RZdoJMbqXtzQknWc+wqg9xeja8aQHuUtgq3MYJChdPaSkfGgRzkMsgMevSVYmOo4B6AEZN6nGf2/Wc0C1u5CPP3QpFOPlbFtW/4SBqsVupc4RsbtQN2xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=oIwJNo64; arc=none smtp.client-ip=209.85.161.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f53.google.com with SMTP id 006d021491bc7-5ec4a40e95bso1009512eaf.1
        for <devicetree@vger.kernel.org>; Tue, 29 Oct 2024 12:07:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1730228859; x=1730833659; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wsBRlZOCSoWr8F90LQG/vXheC35lbvig9xJxIETc2Hw=;
        b=oIwJNo64EPd05DDrg5QS8F2vrN/XHkFSzj5aOV46T27RLo0/cJg7vh/URHhyjC2aso
         iJkgHryt+R+zLZ9KuJQYmBRKTfHvJM/nqiruhJQNQ1v+cahGWfvrIKGYxZl1AxI/8J4g
         SNd58mr3eIovATajr2YpBbmdMTnUtdaqeECPwKbmCNARgPmbJeI60m/a75O1n4fZ2ym8
         xc8q/JCDKYpqOeI0G5OXMH+880xCsjOXJUKX42BSVW06wT9RuXfEeop/JFMP6+/D/Bwd
         F1bI7shRVpnKqqHAOtt5FiMzNHSXCSyi6Ubrk1SC9XIIKLjZ22dd90Qv3HmZj+jA7Plj
         4wGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730228859; x=1730833659;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wsBRlZOCSoWr8F90LQG/vXheC35lbvig9xJxIETc2Hw=;
        b=thuRQXaPsZGltm/GB7uYPxF3kENIUiAv6+JpyfvWNbSUO4m2Hd/EUjgvZ9zQJoSiUT
         F0/ZJ9F2rxZLCqleMv5zo2YA1FUbqieTlQAMOME5wes1cBpP5ksaWcCuQ6n74YMN3BNd
         cHB2ZdxUzkfnlkcCzny7ukhQyhFkkwXfSCyTSIHv2+uKEc85H4MB/0X+8LxNwc6WG8kn
         V0Cr/CGru1A3o5kxnI2nkfz2W0uN3ClhPlAyi74bfDziYAh3gr7eVcXBoX8Cgjtmr/B+
         FHjSO/isytcbPMUGRmYQcjM1ykHTNjix3WcCCCnvURHCjBFMKm8xZnyuFQLHkENAiUZD
         gz6Q==
X-Forwarded-Encrypted: i=1; AJvYcCVlmwLFdr/v2x9c8nXgtnw9tM2jDKgf37NHPo8khYap1aNXlkLRDbwqHOSIoVYSiw4so1CowNMVuKit@vger.kernel.org
X-Gm-Message-State: AOJu0YwsJgYeQyBQw2os18v+imcbpDTBevfMHM6Beo3fGw2VtZIZvEku
	vSlzOAH/2cfcgav8cM5VTw8QqI2LyQzWJuVkEHIZ4ZgQSxTKnaL1U7e2pq5a8Yo=
X-Google-Smtp-Source: AGHT+IFHyPnT/lwmK+anQPQw7Dkx03k6xG82n3fxQcGnEgJpVoXbLy/sLSGjIfr8xSHvXkIuOgH+kA==
X-Received: by 2002:a05:6820:541:b0:5eb:db1c:a860 with SMTP id 006d021491bc7-5ec23aa5cd5mr8778986eaf.8.1730228859052;
        Tue, 29 Oct 2024 12:07:39 -0700 (PDT)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5ec18738f4fsm2458396eaf.44.2024.10.29.12.07.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Oct 2024 12:07:37 -0700 (PDT)
Message-ID: <94a03835-bdd1-4243-88c7-0ad85784fe36@baylibre.com>
Date: Tue, 29 Oct 2024 14:07:36 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/6] Improvements and Enhancements for AD5791 DAC Driver
To: ahaslam@baylibre.com, lars@metafoo.de, Michael.Hennerich@analog.com,
 jic23@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 nuno.sa@analog.com
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20241029073857.753782-1-ahaslam@baylibre.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20241029073857.753782-1-ahaslam@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 10/29/24 2:38 AM, ahaslam@baylibre.com wrote:
> From: Axel Haslam <ahaslam@baylibre.com>
> 
> These patches aim to improve on the ad5791 driver:
>  - make use of chip_info / match tables, and drop device enum id.
>  - Add reset, clr and ldac gpios that have to be set to the correct level in case they
>    are not hardwired on the setup/PCB.
>  - simplify probe by using the devm_* functions to automatically free resources.
> ---
Reviewed-by: David Lechner <dlechner@baylibre.com>


