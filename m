Return-Path: <devicetree+bounces-84341-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F24B192BD5D
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 16:47:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 59698B22EC7
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 14:47:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B79719CD01;
	Tue,  9 Jul 2024 14:47:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PaoBAJ9e"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DDDC18E76B
	for <devicetree@vger.kernel.org>; Tue,  9 Jul 2024 14:47:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720536450; cv=none; b=gHQUPjvOnv5hUSTdkOcoiSKDdnQLzS2kyO/YJVtCbvgDwMPE3GT8VZG1Dl0SYu2KCkqw5hKiIGX5q6qocLkk+vBCmBcyZYJ+CebzuzWosX1QDGlbZW7mVYlC1fa3Q14cNqMDK3UgHjm+MeV7HcVji4/BpoF2qdpMkxTtNeAi5Gk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720536450; c=relaxed/simple;
	bh=qowTB+RXATM39YldtrIP5C3Bc775t1U/wK/zq6nNFGc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VGlZ/gk9AXrlruqdEX3ztjRi8SlwMARtnKGHIWozySg4pbs7CDVe95ogPqcuM3kiGKLb7k4uczJ/8O8S8+JOJo/p9t/5pSnt+5MqcLki9vhLMCV7bkDUZUEvHoS8ETPBqKk3X6qUQcZU8Lcg/BkJ8OF5w4WPk7T0lGO659QhfRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PaoBAJ9e; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-3679df4cb4cso3228858f8f.0
        for <devicetree@vger.kernel.org>; Tue, 09 Jul 2024 07:47:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720536447; x=1721141247; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qGU16UMyPzn5K7sq2IuW9mm7+PT26orMfz71lEw7p84=;
        b=PaoBAJ9e8Sktjq3eecwQYd7aYx6yIPo+PZ1umJMl7RgVhUWHDUM/HX1VE0zI/B5Y9r
         kHbpp7pTyrXy6sDQQsGEEVPi7hBpcBtekdli2Oh8ZCigYF5kJ0CeWOzmpbYA/P+yOtCO
         1xiZXei7IOELf/j3ahMuJ7ymknwQrQQNn7wiQteZi8LUnUMrkPH1mX6z07N81kYDFumw
         jwnkCiZCu/O1blHEMrUIedMNwOqJ0G6dsFmYgFmN8MuQ310qkwPLhZbyAP/2oglvS4j4
         ms5Nrs3YsbhR6b/g8VGpWgkjaCTM2/I5I1HKcCKDmnHB/mqjyBHQ7SRaXsBqVObTdb7S
         gdYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720536447; x=1721141247;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qGU16UMyPzn5K7sq2IuW9mm7+PT26orMfz71lEw7p84=;
        b=ObKuls1tOAA+LVYY1hN4EzxZEiaDvXYhL6Nqt7omC8NXyUr4SWRBuyxyUoy+Ul2ujl
         W0aQBDBSoYho60ieKPHw9VpWUQe94cSVHo8IBjgrNtzFYSpiTwrAapFq1NawhGd6jga7
         6V5YFVf9Bzugns6DKsyXwMNkLdEmlydQVg2+SbPvaqqdBJX6NoEajt4b5elufF7EsFc+
         GAL350PYXV2srJ1mKw3OFNhDmUr9ZIbdKYNH04Q+t0D+4vh2bqlhxO+cJ5sRIG19GgWK
         P39sFN8j+zCSDjVldKmC+l5rLQYacbOF2mE6eQWufzEAob0eYLNZSowzsaFCKwYqDZrD
         hP/Q==
X-Forwarded-Encrypted: i=1; AJvYcCVUp2SAS7iqBwmZ6ngWzyXFpeSjgkzmJK1PUdnpiE53PZL1UlY7VQo6rcY8uErMQ854joTTaAR+E/OK/EzlPNgAAaFF/h1GCnfGDg==
X-Gm-Message-State: AOJu0YxwWGRzOBl3/6xxlqFqPwnE97eYxjvLAfC56GOvRptuIRbJy1Xn
	0Goqob7JVLFCs0om7uNZxjWUND85gLIJH1UVsgr+G4QTzRVS/+PMcnWLwGYO9tQ=
X-Google-Smtp-Source: AGHT+IFWVPBkZ6P6fOnS0f+vSCLh6Jw0ML5HsTFsO1p/rCJIxzFeHamqOr0NJgMC1fqb/fWeNruTSQ==
X-Received: by 2002:a05:6000:11c6:b0:367:940b:b662 with SMTP id ffacd0b85a97d-367d2d5f2demr2580537f8f.31.1720536446756;
        Tue, 09 Jul 2024 07:47:26 -0700 (PDT)
Received: from ?IPV6:2a05:6e02:1041:c10:cf24:cce:17df:12ab? ([2a05:6e02:1041:c10:cf24:cce:17df:12ab])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-367cde7e171sm2746398f8f.18.2024.07.09.07.47.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Jul 2024 07:47:26 -0700 (PDT)
Message-ID: <2835f58f-3ab1-41d7-b85d-174c769cbd3f@linaro.org>
Date: Tue, 9 Jul 2024 16:47:25 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/5] dt-bindings: timer: Add SOPHGO SG2002 clint
To: Thomas Bonnefille <thomas.bonnefille@bootlin.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Paul Walmsley
 <paul.walmsley@sifive.com>, Chen Wang <unicorn_wang@outlook.com>,
 Inochi Amaoto <inochiama@outlook.com>, Chao Wei <chao.wei@sophgo.com>
Cc: Albert Ou <aou@eecs.berkeley.edu>, Palmer Dabbelt <palmer@dabbelt.com>,
 Samuel Holland <samuel.holland@sifive.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 =?UTF-8?Q?Miqu=C3=A8l_Raynal?= <miquel.raynal@bootlin.com>,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-riscv@lists.infradead.org, Conor Dooley <conor.dooley@microchip.com>
References: <20240709-sg2002-v3-0-af779c3d139d@bootlin.com>
 <20240709-sg2002-v3-2-af779c3d139d@bootlin.com>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20240709-sg2002-v3-2-af779c3d139d@bootlin.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 09/07/2024 12:07, Thomas Bonnefille wrote:
> Add compatible string for SOPHGO SG2002 Core-Local Interrupt Controller.
> 
> Signed-off-by: Thomas Bonnefille <thomas.bonnefille@bootlin.com>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> ---

Applied, thanks

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog


