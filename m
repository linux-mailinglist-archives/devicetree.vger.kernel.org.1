Return-Path: <devicetree+bounces-190618-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 71081AEC371
	for <lists+devicetree@lfdr.de>; Sat, 28 Jun 2025 02:13:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 629721C4140A
	for <lists+devicetree@lfdr.de>; Sat, 28 Jun 2025 00:13:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8AB7EEA8;
	Sat, 28 Jun 2025 00:11:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rFGND0f3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28FF21799F
	for <devicetree@vger.kernel.org>; Sat, 28 Jun 2025 00:11:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751069497; cv=none; b=YjMKGHa6rCYWHb4sJAe270MnLqkxslDx5sgwQlVWlZ7lXC9Kl+iChADNHafWn/V21SW4DoWl+ALymOjLrcLjX4IcUpIzMRHYAeDxgymwIlOHW/tnUfAghv+rNJ35IwuqDGo7r25QmNc6n3Oi4yIUuI6mBweL0gTrDCpp2W6Ppw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751069497; c=relaxed/simple;
	bh=uBQbo5iMVnxUakkWGfQfqYvzQz2JrWtPUhU7S7jRzXo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QlCiTrUEAfr55gxgorhmwk2nqu4GM1pHWBCRDkXQIjzGKrjLHfVnknfA45AA3RIB9wudhy0HD6uFgseJytZhx7/qEG6uDI9kpTPf0Fndc4YNmFOfC8hUKty/jLmoNN1YBnroTj8VM73xk6moiFAqRQUHN1SJexHDub5xEik20mo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rFGND0f3; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4538a2fc7ffso17486745e9.0
        for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 17:11:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751069493; x=1751674293; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=s15vDRKUOq7F0Ny0clbnx3xH7J1DZ6HVZAZgi3loRHw=;
        b=rFGND0f30p5WjEO1vcUiu9ZiheRYq1ZiSrzenFFE9FtpH7iJECuodclMRoZdttGwZO
         hEFHwzdayh5wPo8IvQe7uFW5QuiAHLw9nSBHM8fABZmysnReYIo+N7AigwCGgkdS/C8E
         nguXCHTFJ1kYhJA3RyLmy4tVY135dE+8MvppYVAhwr4NiS9a3Llt0BoQx9F5s1n9beyG
         +41fAlCTHkh2gQi1LzQcO90+vMWAmyCTVWezia3GJm8ArchGm/LX5bwAJtuaChVJQSU9
         CjEzJzqg7xJv4bRNmhN5ZwOFgmxhDM1RbFWK8dWaGI7TGr5BlrEkdddqFLEdX9gCnitx
         Sf/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751069493; x=1751674293;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=s15vDRKUOq7F0Ny0clbnx3xH7J1DZ6HVZAZgi3loRHw=;
        b=SGvBecrFBmY+EDRiCcC/K7zz55fefnfEs0neSnEFgZBhbUXMQnVdRqiuMgvyrnN8Lp
         HZJ/Qgh9fxEN/DAlU7dqrDOLZXBOZlZhT+dfe4Ey+XxijtEeZBgHAhITllahB+0H6L8S
         Wws3sVxdkT0kkvw3RPRdbFZeyGwYNC0nxCeGi3GqYvWzo+ovuINiIPVaqogIPaIG+IUl
         bwln/XXmY47tyQm65JpQzzVBNa9OEfM7d2h9yBLfJJPbAsCCAgTCAH3ER1nDxQ5Pq8vM
         JtJFXWwnPZehy3iAGZz0nOokImd1z2F8iXQCCz+ht3xoi7VsQ+XXwaBWLfKYQSKhqXGv
         iCaA==
X-Forwarded-Encrypted: i=1; AJvYcCU5kyDfpEKWawjJbJiOvWXqCFvj3Jg7q6jid5m5jL/PV48iLXE7wXtBTiQr8DJ0PfDXJDPeyagbtNQT@vger.kernel.org
X-Gm-Message-State: AOJu0YxqYkNDywHfLizUVErAZQlsHOogB2Al7jNcOxVbvVrHxDJeri0K
	eCpnUMpMFWVIyvHF2uh9bVaNlEk46mkgfOjr4qyQBISf7dt2TezxRCZYmoualndj/A4=
X-Gm-Gg: ASbGncvHwe02KdpABazLhY1QDSeO1HEfJzGaUvz2sP7hOFTBTRqckoffB6qOgLDxHrr
	kCb1Hn9x51boLC/vOhX613L44rXzZmE1ap3vTQ4XQL8IpwnmqTz3P1mAVOEtZxbI6Wg2aTn2XxG
	VarSV71K85F+e84H4Z217fQl0JamL6qzRo80VjKtcvt3GXb4Rv53XqcEKcm02wdgvStgdlJ+G8w
	pdE+Vh1Wti614lMkGrLOCDAcmM9J+gLWYYrD+PVdZbuewUeDDvSuglIwbgamQgHYXDkU2lMMc1r
	HBbV7HInU+bs079lrcnd8tD4h563UR+w2dVcSAZb1VzM0LHn5l00j+qPZfh76mq5bWi8/jb6BlC
	g1wNTO+4WT9Bm+BCx34zgr5YmK50=
X-Google-Smtp-Source: AGHT+IHEph8hTm/+c90vekydvUYhf3gL1EyaFqW0n09W06PIos/VaFuxZFadJPxaAaE9jmN/YJDTFQ==
X-Received: by 2002:a05:6000:22ca:b0:3a4:e624:4ec9 with SMTP id ffacd0b85a97d-3a97fcd27admr3978325f8f.3.1751069493382;
        Fri, 27 Jun 2025 17:11:33 -0700 (PDT)
Received: from [192.168.0.34] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a892e595c6sm4064848f8f.66.2025.06.27.17.11.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Jun 2025 17:11:32 -0700 (PDT)
Message-ID: <514d6f21-d053-4e2b-b52d-9e05af1901c8@linaro.org>
Date: Sat, 28 Jun 2025 01:11:31 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: media: qcom,x1e80100-camss: correct
 description of vdd-csiphy-1p2-supply
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org
References: <20250627190021.139373-1-vladimir.zapolskiy@linaro.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250627190021.139373-1-vladimir.zapolskiy@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 27/06/2025 20:00, Vladimir Zapolskiy wrote:
> Correct the given description of vdd-csiphy-1p2-supply property,
> it shall indicate a 1.2V supply.
> 
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---
>   .../devicetree/bindings/media/qcom,x1e80100-camss.yaml          | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml b/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
> index 113565cf2a99..b5fbf7476da9 100644
> --- a/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
> +++ b/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
> @@ -124,7 +124,7 @@ properties:
>   
>     vdd-csiphy-1p2-supply:
>       description:
> -      Phandle to 1.8V regulator supply to a PHY.
> +      Phandle to 1.2V regulator supply to a PHY.
>   
>     ports:
>       $ref: /schemas/graph.yaml#/properties/ports
Acked-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

