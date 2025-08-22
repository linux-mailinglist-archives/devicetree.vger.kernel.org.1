Return-Path: <devicetree+bounces-208225-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A2B9B31E5A
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 17:24:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 524725C35A1
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 15:18:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E328308F17;
	Fri, 22 Aug 2025 15:17:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="dSYUvsAP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92EB8305E04
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 15:17:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755875832; cv=none; b=b/xDmKRze3vrXxau8dRLrOV5vpGxZQwOKljNmwgUGWO07cacHgbSm92bsn2RuGDUGScB2nSFh4wT8CP30ksjEcTvOCRHTRp+F6MD42THFo+tWgQVcokdkJljMLPQP0N8Zpbqw1Gpcuuo8D9K4kZ7SilayctRBRJfN0ANP7s7W4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755875832; c=relaxed/simple;
	bh=y24e09Te60oIGgGJpyKrT8gzaOYkUAB6uCKHewL7Pbs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=W56/KT8WlD5b31QQ+fEYUnZgf9tAsFtCUJ4dcZpbbzM6Imjp2ZElz961tgUE3o275KTtBgwx55Zf8A5n1SIUhAbBx0RdlSsqe4GjWsur9DHTuwdmxSFl6JnWmJjtah9z9EFD2kimTalBapY7OSjZowIOvtvr8mmpzWbid1W3riA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=dSYUvsAP; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-45a1b05a49cso17107285e9.1
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 08:17:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1755875829; x=1756480629; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SIKMURTzGnc0o3Eec57Nl0ZpPfL0lnmgxqpSyQAZbI4=;
        b=dSYUvsAPsiAcmzim065bX3bqQE4/9iG6eyy+tqkYqF/DYV6auiTfuPCranA4s9c4kr
         AOUehCA96epnFb0w68GcOHxH/zfIBqlhxtajYiCFJnUfy3+k++CvTFtwQPDsr9Izf4xe
         Tqd1QA0rbRv1XyYzay0Ej3YOIhjvqUGoxJrRx5asJopwtt7jpLxTdLIZbqpEtAVpMtZy
         Ox0kdlmcM8GGRz53T5N14lpwEljM8Ll0hug4yaIobFy5RYalFNwCSDGui6/MAarUlzTe
         r8fAS1aiPtZai/wbJLCiPS6ZJJZ+EBpaiep2/s3v57qUmxHH5HrQVBLBNITieNKptWgg
         oxdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755875829; x=1756480629;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SIKMURTzGnc0o3Eec57Nl0ZpPfL0lnmgxqpSyQAZbI4=;
        b=B9miU10Lyq7MZboy5wSzpGmmeQUshDXOS7Z71LncoV5g0lUxu/LO6qiCjwLRKEFj35
         W4wHbkBo36xrDqqhGxG5jJL9iyqFkvBdAoIDqC04sfh78P1yXnScpbkL9h9KQ7PzEeAZ
         aDl+/4M6FjKYq2PlWKiQb8I+uJHXuhw/OJRNtDcAnGnQn5SKQE2QKfx9YPyZrWPl3mdM
         J24JFFo7CQA8qitZez8q06osXlKEnspLFNrDOyHF+fBCJuRAObLxaVnCo58u6sfkS2Wm
         uXUfnswydOc9DV6cX2/fi8F/Pcd1tAOV6NJ345GpYqDA0ioRGCS9ZT7HtLu8Do32lbZL
         nlPA==
X-Forwarded-Encrypted: i=1; AJvYcCUz1+q2Mp4ycwdFGo9u5M6/DgxFqDsANdaL72EfsvObtxHhf8JtputRx34xxnXMQ/JucJaZKgDSmQP8@vger.kernel.org
X-Gm-Message-State: AOJu0YwQ5MEvbR5YwlV2uxODOwCD4SPc3YEB9zuElor6STHcKKqrzv9G
	Lxn/UtCCQlUImQHcr/LkPtDhS6Tgb/WQvgoIBfUZj+uwBhXUMLXsX6JfWVVPJrPDHEg=
X-Gm-Gg: ASbGnctPZ6DOpu7SgU6thLH+YX00TnZ7s/NDo/NCURU3FB2qF0rrh5J1mBxQN5/Ug1I
	EhTtqsklqyyaUM3SQPe6d2iS8u3c9euHtIWSPA68PfdliCYB9JxJklPEIKHyHRvPbIqWbf/W7Mm
	Su+399wO7DvAOsdZYWRjCC3TTftz+hT7G3/7UVnQusijGsppWuvSdo0Ji39IvAnqn8Rujtz4noF
	Qj2t8HGkUAZWanYeDce2NiR8pNhOoAZjWTirrPCYFADEAq70gKc+65ef2ICTwTwxjZr1lAd6XuZ
	CWdDkCRdm/5gPERWmLVCBghs6D2Odvydk8yKA/3o4Kd9d/dmCj+XiTuKr2cofHJdXVw24wiRxOx
	VxzUDVmImKX8vLTQRgw62FWkM6shTWw==
X-Google-Smtp-Source: AGHT+IFfCxlBLYp46j2up+4x50Ih1kKtjjCCeP9uWttzOiVuvk9BH4ASeoYU65ehdDMkjUePa7z9oA==
X-Received: by 2002:a05:6000:40dd:b0:3b9:10ed:e6eb with SMTP id ffacd0b85a97d-3c5dac17469mr2333176f8f.8.1755875828487;
        Fri, 22 Aug 2025 08:17:08 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.81])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3c52121313asm5508248f8f.57.2025.08.22.08.17.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Aug 2025 08:17:07 -0700 (PDT)
Message-ID: <770e936b-2c4c-4554-a567-6e7b0f688512@tuxon.dev>
Date: Fri, 22 Aug 2025 18:17:06 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/5] dt-bindings: net: cdns,macb: Add compatible for
 Raspberry Pi RP1
To: Stanimir Varbanov <svarbanov@suse.de>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org,
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Florian Fainelli <florian.fainelli@broadcom.com>,
 Andrea della Porta <andrea.porta@suse.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Phil Elwell <phil@raspberrypi.com>, Jonathan Bell
 <jonathan@raspberrypi.com>, Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Andrew Lunn <andrew@lunn.ch>, Conor Dooley <conor.dooley@microchip.com>
References: <20250822093440.53941-1-svarbanov@suse.de>
 <20250822093440.53941-3-svarbanov@suse.de>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <20250822093440.53941-3-svarbanov@suse.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 22.08.2025 12:34, Stanimir Varbanov wrote:
> From: Dave Stevenson <dave.stevenson@raspberrypi.com>
> 
> The Raspberry Pi RP1 chip has the Cadence GEM ethernet
> controller, so add a compatible string for it.
> 
> Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
> Signed-off-by: Stanimir Varbanov <svarbanov@suse.de>
> Reviewed-by: Andrew Lunn <andrew@lunn.ch>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>


Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>

