Return-Path: <devicetree+bounces-100599-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A13CC96E36B
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 21:47:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 21B241F24AC6
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 19:47:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF1AF1917C9;
	Thu,  5 Sep 2024 19:46:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="JZPtTjIT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com [209.85.210.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C571F15574D
	for <devicetree@vger.kernel.org>; Thu,  5 Sep 2024 19:46:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725565618; cv=none; b=qAKhC1z8DfP8OOIeN5B0U1/WIlBCmZtkOovdtyiz2OJl6mtOh5n4wYN6PVIXQiS7eB6G143KPX482b88gd5OzZmfIKhvJs6iC1QBe/Czdtkri0gTchRr+tFk4c/R598O0FxV4mwv6Bjsb+ZpICYUsnjIzTUVcnzdjMI8xudPX/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725565618; c=relaxed/simple;
	bh=Rj9EBbv8T82SbHtDUYf48lO4jfistsnG+jbe1pq8Yh0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=glS40iv3WUsyTYJLYwol02Y8fKxNJyBU6Ak9mtdF6qT/Xf/uLpD9dYq5ghSez17s3TiLMIGA3pKD3yciDSzBHnxUjQZ8cLHKZkt23TJiRLwlQFRAkw+ksmhBL5SgtJA7pm3QAu3HFn/28MHKcOEgTaiNHEQaRHqzKGXvju1dTk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=JZPtTjIT; arc=none smtp.client-ip=209.85.210.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f42.google.com with SMTP id 46e09a7af769-70f645a30dcso929444a34.3
        for <devicetree@vger.kernel.org>; Thu, 05 Sep 2024 12:46:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1725565615; x=1726170415; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SZL8vVvQXcg/nFczvtC9w0usBRA91vb3WVnfhcCu7W8=;
        b=JZPtTjITbQ2LmnSAqatyWf2OTCVJskO7AYo1ZeW68OSqDgdQmvWN7KREUOpjVFECYY
         odsUb7lyQwKY6VtIf1jPq+5rVUm+5Hv0GCK8GuL9QdpQlSuzGmwyM4NfFSmMGI9qBfFi
         1qwBfZFLF0VZ9tYqoDfYa5RD/gQ0G6XT4oa98i7ftWW7Ih0DRGjEQ1Z/r9nXya58WzfD
         LH2NWCVFAfOUy2+gXxJb95M8r5aq1JMzZ4BygHi8wXLkJZjv7BbOy2Rn1vTEgZnM+sQA
         LTBnPu5CfXLEbQoyLvztZT3UTtxyVrCPS5aU3G/1htZVeSVE+GUCz1qw3c0XiIBo3z0+
         liLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725565615; x=1726170415;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SZL8vVvQXcg/nFczvtC9w0usBRA91vb3WVnfhcCu7W8=;
        b=lMRjI4XKskslTKzS0Yae+1VsVQeP2X9L644FEaXnKbgUe57VGwCzI4j5DAVlIA9h+d
         +VnF1fypnXj6doFK8GrHU+OE3P8LL3Xj9JpCc+4e3oNstCKqMLKd7AmkLvDnOzIcw9Mr
         8QznVgcowiTH7ewTrZLtK/K7oLA3kZjSCMETwTcgqE4iK0mhhsVaaB2I/keE2067fkro
         B+cyKkQkXTQL5/ovZS/H+v8dcXqngYH+YGW/Gcmp/9XrqgulStz6iDidLQSRF8OQEFGQ
         K7kQhdYIO+/1pM35KQAzB8FIXLRyx/tJ2uJvh9e+D5T4p3L5+vFVcdYta+oAA3YZ+eus
         PUrg==
X-Forwarded-Encrypted: i=1; AJvYcCWNuw+Ro3TBUivWWQwrZKcCIa7NpUtLpfw4EbEJj+Xj6Ji3HEw//c/n6OP/mfhKmlcDSX2lLUihYpLD@vger.kernel.org
X-Gm-Message-State: AOJu0YyDY/B4revg04Hwm4QIojbYUwLmj7s2NIpwYy99Qy49D8kEnjMX
	y8GTX/na+a6I3JhVYYwuVvHJo18GZ4Q7NqG493jMazcW5Q7B/tA8eCbG8x7YCdA=
X-Google-Smtp-Source: AGHT+IEHPlIovYEH27hEkBbb+vjFH3QYPh/IbNkdMwHYBPqS+CTAHK+w94F+Gf/vMRtIbUsPJ+Zu+Q==
X-Received: by 2002:a05:6830:6718:b0:709:46ca:665c with SMTP id 46e09a7af769-710cc217cd7mr243472a34.1.1725565614803;
        Thu, 05 Sep 2024 12:46:54 -0700 (PDT)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-70f67142890sm3356143a34.12.2024.09.05.12.46.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Sep 2024 12:46:54 -0700 (PDT)
Message-ID: <dc0e45c4-3876-4d45-b5dd-60f89c9d09e1@baylibre.com>
Date: Thu, 5 Sep 2024 14:46:53 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/9] iio: add support for the ad3552r AXI DAC IP
To: Angelo Dureghello <adureghello@baylibre.com>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Olivier Moysan <olivier.moysan@foss.st.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240905-wip-bl-ad3552r-axi-v0-iio-testing-v2-0-87d669674c00@baylibre.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20240905-wip-bl-ad3552r-axi-v0-iio-testing-v2-0-87d669674c00@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 9/5/24 10:17 AM, Angelo Dureghello wrote:
> The serie comes from the previously discussed RFC, that i
> converted to a normal patch from this v2.
> 
> Purpose is to add ad3552r AXI DAC (fpga-based) support.
> 
> The fpga DAC IP has been created to reach the maximum speed
> (33MUPS) supported from the ad3552r. To obtain the maximum
> transfer rate, the custom module has been implemented using
> the QSPI lines in DDR mode, using a dma buffer.
> 
> The design is actually using the DAC backend since the register
> map is the same of the generic DAC IP, except for some customized
> bitfields. For this reason, a new "compatible" has been added
> in adi-axi-dac.c.
> 
> Also, backend has been extended with all the needed functions
> needed for this use case, keeping the names gneric.
> 
> Note: the following patch is actually for linux-iio/testing
> ---
> Changes in v2: 
> - use unsigned int on bus_reg_read/write
> - add a compatible in axi-dac backend for the ad3552r DAC IP
> - minor code alignment fixes
> - fix a return value not checked
> - change devicetree structure setting ad3552r-axi as a backend
>   subnode
> - add synchronous_mode_available in the ABI doc
> 
> Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
> Co-developed-by: David Lechner <dlechner@baylibre.com>
> Co-developed-by: Nuno Sá <nuno.sa@analog.com>
> 
We didn't actually write any of the code, so I don't think
Co-developed-by: is the right way to give us credit. But we
can give our Reviewed-by: tags when this is ready to be merged.


