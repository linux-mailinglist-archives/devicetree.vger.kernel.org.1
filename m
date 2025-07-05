Return-Path: <devicetree+bounces-193213-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B8F3FAF9EC2
	for <lists+devicetree@lfdr.de>; Sat,  5 Jul 2025 09:30:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 496BB485CFA
	for <lists+devicetree@lfdr.de>; Sat,  5 Jul 2025 07:29:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8E3927511F;
	Sat,  5 Jul 2025 07:30:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="qySSDxXq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89AC82E3713
	for <devicetree@vger.kernel.org>; Sat,  5 Jul 2025 07:30:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751700609; cv=none; b=QyvKRlNWqBDt/OkDaZeDzVRG7tfO37wsvou7V6bCQ3hyHb3O/6Hq3y/wa9z4yWTvEVmg0mrnSOlBTZ38br1K2IAwlyC90WMW/sbZGf2wnI2ewu8eUH3d4TmD+U6ApYtTJpgk/vKM21LcnhWdnBabbyMheJbacTRx+wt97pkZCq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751700609; c=relaxed/simple;
	bh=UIZ5YZVciwBI4xp8OBbgIQdORnOfX3xnFzLTHbiLRdA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QFJyKdUdYUUMBc1fWiOsqcPs++j85pumlVYP2zoCSFNe4NU8HQ89cUx0y/cSpEPnxPnB6q82i7SALVc4VSInA2GMlaAJ0MF4UPw1JWlSj8K3YHnVNEruLIRnstzg3feK5zIwOdgF7GL6QhC5FOqID23ErZBB/2X1/DbIJjeqdL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=qySSDxXq; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-acb5ec407b1so257262866b.1
        for <devicetree@vger.kernel.org>; Sat, 05 Jul 2025 00:30:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1751700606; x=1752305406; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Xk44P/tMwWb5jvG2T/9WPa4Knpsi/zzzC0HCj7+/6MI=;
        b=qySSDxXqbvhKkeoMpluFd/RpiOGTKZqTHFL9UbcbHIT/RbEFm8DxohYUrudwogQWrq
         nbitZrTy+0W4OY4GdMpKG4xW/BbHjBI7TmKAtn20/Tfmxm2Ih1Od0dwvxiyO9sFm1tQL
         XQE/fu8YJqM/u5YOYXkyxk6uPENx2Bf1NzdrWPX794FKWrpGX1ahBMZpu3s97bra936K
         C3s5qgDvswmQ1bzek9GGOHQgdbQFhxT7qox3BXLAvXuOqv7FQ+0DcQFm5AKil0/qYaEZ
         Xp76j2wZEM78JO/Mwbkkq8JZsNE1X86lCig/i84EImeQcItL97Qs3rZr2L+QGLSNwyMc
         w/LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751700606; x=1752305406;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Xk44P/tMwWb5jvG2T/9WPa4Knpsi/zzzC0HCj7+/6MI=;
        b=gxyfQT4hQgcQ1eHoegcPeWHaBYTJYZBsQrdg5FmgLA1hOd9brZNU9O4BuH+U51Njv5
         6apHFkAWVbQ2aRVg/slYQZ1i38scFztKXT8VeKrLVJHHw6cxgp3I0SeMQLQU4A9DlyM/
         vGv0oqchAfErtOcdxQxuX/CvMTOYpO833/kLUjLq2+b+xBFg6zsORAmQ/Kj15cVqcb3J
         Sk5CuqZOvyqqGGQbQHbEUJ8Gxb3w5WsZLcOfm5emYQKg6xI2tsBTZWNixTp6FDUm3qkv
         mac4gHvjcgRxAQA4KyBClZpecUqRc7+ENYE03QjztRzHnPHz4tdqiwzQQ8fAIOUGX+J2
         c5Xg==
X-Forwarded-Encrypted: i=1; AJvYcCW5AqiMEaHyiS5KJll5Vf6jz3r1cpDxeygY/nkUBExQxd88si4ApqQIQ64QYj/dgYN1YUNRW1COK24r@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8XNbt59bwoB9rZpwVsrLL2c68qFhOLoJGjVKlO+E+YvSB3eQ+
	s0/K9xwtGzjfhNWYW9GvsfnfkKaKinwW65WQtgZsI1bgpdJl/gmRICMZFGa/6W6FNV9MaBaKSZo
	FumJM
X-Gm-Gg: ASbGncu4qgdH23P7Eh7boqED46RQIQ7+pHmIYm/EC+mQaERSjJ/g6c6cbXyDxA9bPnz
	goAuPr3YxbqYkZ4tCCYIak+eWoWAtIzUCA4A0xydiJZbw/dsV1V4AYVRG3TAtq01hQA25dQDqIR
	z88EJoX99s5E1SLO8XzNPnTe5dwMkwuLR3dZu4AQlzAPqY1xnMQofvfqBpRbw+b80eHEbVHARlN
	RuhbBet9eA2IFB8Wd1bJo+99hPqioYUven2+++6SfyQQYRqHFTk9sMGJvpVLgio9Ifz4KaQ7ZdG
	BpgE7Lsy/nIWxQ56iCLCerRPdFfOG/M3kELrBwWyNRtftqK+TIRTywY+tTFpZDA7eNKSJw==
X-Google-Smtp-Source: AGHT+IFuCK5oabUlFZOlpvhu8s1YtyWEfrIHxmGvq90ix7OjS8+i1mXBbg8hRAIoydzV3g5HcH+3yg==
X-Received: by 2002:a17:907:7fa2:b0:ae3:74be:49ab with SMTP id a640c23a62f3a-ae3fbc32cafmr564687566b.10.1751700605632;
        Sat, 05 Jul 2025 00:30:05 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.83])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae3f66e6f30sm304287766b.33.2025.07.05.00.30.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 05 Jul 2025 00:30:04 -0700 (PDT)
Message-ID: <a297088c-1242-4ce3-a449-0be0413864a5@tuxon.dev>
Date: Sat, 5 Jul 2025 10:30:03 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: microchip: sam9x7: Add LVDS controller
To: Dharma Balasubiramani <dharma.b@microchip.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250625-b4-sam9x7-dts-v1-1-92aaee14ed16@microchip.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <20250625-b4-sam9x7-dts-v1-1-92aaee14ed16@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 25.06.2025 12:08, Dharma Balasubiramani wrote:
> Add support for LVDS controller.
> 
> Signed-off-by: Dharma Balasubiramani <dharma.b@microchip.com>

Applied to at91-dt, thanks!

