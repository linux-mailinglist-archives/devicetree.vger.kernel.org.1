Return-Path: <devicetree+bounces-36637-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D2867842198
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 11:40:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8AC8328B8EC
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 10:40:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9EE2E657DC;
	Tue, 30 Jan 2024 10:39:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AjH4chrS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD5E960B8D
	for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 10:39:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706611176; cv=none; b=jiP44HgW5p/ww4mTxvV6EiGefxfanrPNort8Fd2lxoPC5eFRzqyxWDiw7IpxxsiX6vCVdh/yvtY27EIF/xzDU9E3GaZRD38CGTyfbFpq3a5EFRIF6d5t+nIqz8K13ZhjL0nsLSYwY0NcXAS1bwpKGx66sIg86zntApr2UazVexU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706611176; c=relaxed/simple;
	bh=aEmV7K6otMhzrZdsjDx5VbXXjymuDmWIjvy7OAPcows=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ajdXIp/+weKR4o+uUlpUeQh9/r270IvG94pOUSAw2JYTxMgAgrsSQLG5N6/yRC7kXH3WKxp2v4oYMdGeTA1d6Zeo9cx4erVAqo6jSD9adpCcWAPfsDMGpISw0RZB74z1yOUkQb234s9UisTpb5yHWoLES7bpc1QR0/s9pZxmvDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AjH4chrS; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-a293f2280c7so413661866b.1
        for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 02:39:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706611173; x=1707215973; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=96EhyHiZBxhwVvZEb/dRpLKjEyMYBQVvUkgzUEiAo74=;
        b=AjH4chrSrrPnnq19779aIUW0/hYvTSzn71rvGRtk+XYLN9QIrVZNjgf2CKM45q91L6
         cb4zy+EU2qesQ+eaw2EojkP8bIKNJEx/dcCLc/xeP61DcGKIZYBB7lBl66Qw27kK1R8y
         pB6l2aY9N3FwEcghKz/fl/ZnvkstvKj89sfbJJmGRfOMMb/drGDIFDbv7+0wu2Pon3Hr
         7Wjj4K4uz28PXM9/tWtQZl7bCWp4pHPBeS9KfU67YMyXWZLwuBtvqM+0XPqHAdL13c+S
         25vG7IX+ybGDOjO3jdYqp+WDoR7l5qkRP1dA9qTDxGiwsOcFxPAP/t3ikBXtWHGr4BsR
         TQaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706611173; x=1707215973;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=96EhyHiZBxhwVvZEb/dRpLKjEyMYBQVvUkgzUEiAo74=;
        b=c7RhqWWQ//GHucEQCyecPoqvBfNZNyziwKiKtiwH7vA9/XJH6ZUE8TRPBGPZtjgXio
         uCfU/4T0Y7hZ8M+aUC+Rs5fsApJRh7zeIAGFbh/K7dQmZpCrA0FCifhg9Qn1jvi7zZPu
         OMFc0FJMl1QPCSVhFz5GIurTDCo/uOFnru4xjnli2VIJ9j+6IP2nTOIkob6zerE/haEQ
         HtUqg2PnQErvmAi8zpKx7P6gPU4uo4sqdfiBttmTPaBuK1GvykAj57Rj1T8XncdiT4/U
         zrabRE2KncjX8J+Yq71OiU2Dwq7QkpRiqpxYHA1Cn/kMHLoOkrueJ8ieoK3OCWGGBJh4
         1/TQ==
X-Gm-Message-State: AOJu0YxtgLtTCjhumVG8M63w2R4aEI3kUfGk535xX/sUSd8i8+K7Eutd
	uHZ0/jPKk0pRYLCov7/zKxpTtHq+QP++9hg0kB+rvzoWl+3yk4OnTcIvYY9Kl74=
X-Google-Smtp-Source: AGHT+IEL2b2Dz7YZGP2a7O3kesDjxpwPf76PkauB57Pou66x31/2SP8kGabjtpmr9IExhIRZqSwMiw==
X-Received: by 2002:a17:906:c0cb:b0:a2d:60a:2ae9 with SMTP id bn11-20020a170906c0cb00b00a2d060a2ae9mr6702728ejb.52.1706611173180;
        Tue, 30 Jan 2024 02:39:33 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCUR18t2tazR797Tx0pno6LgfBufO/kxSWWN2/8yLiBKWctDBBweKEFcdfD1JDp83qYKo2EbxGPu9Kfnex9KdghQHs1HkHghGzcSkaxS+kyCkQbeCPt1M4W6lr8cQy5aZV7hQW7WxRXz1dXfL1e83OsLDI/WtEftRYdj3VY+b+c3Qn6xVAMwzipOaDblPKJaSx3EuGiXAMQHoOBin+z8YAVOqXFrgNcHUa2hx8v+lOQU7VbOIg/Q2UZpFoF2mdag9g1yV9x9HXWHpXKdDWhd6dTHZFU0DqMjWUH4f0QUhQMYnNH67bbtVprEisyd5qm1WxvDy9duOwqAkJJnLk/aYFVe76uG9pkcMZk/0yNdVIxIm8WdDSsPHdbN
Received: from [192.168.1.20] ([178.197.222.62])
        by smtp.gmail.com with ESMTPSA id st14-20020a170907c08e00b00a35c5491b58sm1947720ejc.174.2024.01.30.02.39.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Jan 2024 02:39:32 -0800 (PST)
Message-ID: <c1dc602b-12aa-497a-8672-cb04cdb68ad2@linaro.org>
Date: Tue, 30 Jan 2024 11:39:31 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: aspeed: asus: Add ASUS X4TF BMC
Content-Language: en-US
To: Kelly Hung <ppighouse@gmail.com>, robh+dt@kernel.org
Cc: krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, joel@jms.id.au,
 andrew@codeconstruct.com.au, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, kelly_hung@asus.com
References: <20240130085652.198010-1-Kelly_Hung@asus.com>
 <20240130085652.198010-2-Kelly_Hung@asus.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240130085652.198010-2-Kelly_Hung@asus.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 30/01/2024 09:56, Kelly Hung wrote:
> From: kelly1732000 <Kelly_Hung@asus.com>
> 
> This initial device-tree provides the necessary configuration for
> basic BMC functionality and work on ASUS X4TF production.
> 
> Signed-off-by: kelly1732000 <Kelly_Hung@asus.com>

Please use full name.

Best regards,
Krzysztof


