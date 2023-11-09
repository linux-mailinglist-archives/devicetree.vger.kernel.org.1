Return-Path: <devicetree+bounces-14827-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 20C807E6D15
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 16:15:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B49DDB20C4A
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 15:15:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88348200DC;
	Thu,  9 Nov 2023 15:15:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="t5tnuqEI"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCEFF200C9
	for <devicetree@vger.kernel.org>; Thu,  9 Nov 2023 15:15:39 +0000 (UTC)
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2AE61358E
	for <devicetree@vger.kernel.org>; Thu,  9 Nov 2023 07:15:39 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-40836ea8cbaso6626545e9.0
        for <devicetree@vger.kernel.org>; Thu, 09 Nov 2023 07:15:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699542937; x=1700147737; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wNzU0830D43H2VXQRT2Ex372KHUEc4BXST5kikj6r14=;
        b=t5tnuqEIeRifPxgCvuu/PMFVdf0LSv5h/G8np3dYWTgfdz8ynyMtJmcnCxNVPLqsyW
         vftT4UDkjOALX8GhJCGQfslzENj8Q67sqJNds7PIbpXvcFA+LVfa4lOgYZWBVH65lGQ9
         MEukpur6H2+6kR147rLAZhobfFiasukuuZzl44wHmbr3QT89qXFF7AvD8XAN50Bc5EWd
         ZS4Wmij3Av3EA5FyGl4sQljbh76IByg/VdSAPlQiP3GnKQ9yRaHOtT/fDvjF0ejn5tEn
         MJKRmy8HM2ZGkxw5R9UB0gQpH+fu45vZ3jYU5k8C3EfKV9W2CL6l90PFPKQDxTRed99c
         9TuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699542937; x=1700147737;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wNzU0830D43H2VXQRT2Ex372KHUEc4BXST5kikj6r14=;
        b=h8XNca8HLZZZu09vskgpn/o2HetbEO/48uc/nspPBQkOZbAWPBrjExKcvnS7y021RE
         zf+Pb4LQIi1guc6VGiymFEa5GKGpS400aEWvgvriJYyUdpbCmlIrKZ3weehPZBNdGiPG
         nu/1RgCP7HVczqZhnqjPJUjXBfELUuExCqMcqTHxXeZNHAR7+zKpUfr3lXtIESC7nkPK
         arwr0H/Uet1OZZKk6x1Q/8l5GAJ5QQ3OkzSWm0C//LK+iPanR9RyBQsO5oJw67nJPgN3
         rsp1LQS6qpeKESCZPOmffowO3dqMOrixIaqzq3I7Q6hABTbDU/RUe7YdZnkpkVDgF0/j
         3Fvg==
X-Gm-Message-State: AOJu0YzJWnukCHSwyQPymZpWBa2FiXKpyuv3zuvdfSYNrlipW7fStjiQ
	El0K2/5r1sPiU8hAi6SIvikU5w==
X-Google-Smtp-Source: AGHT+IHLq/kcnLWmV7fbCwPCWFLGE6/07PY/z6miJPuXuiqHqYElIVqLGIrKDC7b/qdLyTL6Q5JkqQ==
X-Received: by 2002:a05:600c:5103:b0:408:403a:34dc with SMTP id o3-20020a05600c510300b00408403a34dcmr4829978wms.37.1699542937574;
        Thu, 09 Nov 2023 07:15:37 -0800 (PST)
Received: from [192.168.100.102] ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id u2-20020a7bcb02000000b004068e09a70bsm2329709wmj.31.2023.11.09.07.15.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Nov 2023 07:15:37 -0800 (PST)
Message-ID: <4aaa25fb-de9a-4d7f-9316-ef83c27f4b42@linaro.org>
Date: Thu, 9 Nov 2023 15:15:36 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 4/6] media: qcom: camss: Add sc8280xp resource details
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>, hverkuil-cisco@xs4all.nl,
 laurent.pinchart@ideasonboard.com, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, vincent.knecht@mailoo.org,
 matti.lehtimaki@gmail.com, quic_grosikop@quicinc.com
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20231109-b4-camss-sc8280xp-v4-0-58a58bc200f9@linaro.org>
 <20231109-b4-camss-sc8280xp-v4-4-58a58bc200f9@linaro.org>
 <3e0958a9-4d1e-4d1b-a914-5da154caa11f@linaro.org>
 <e80d4026-a525-48ef-b53a-f1276dd316e6@linaro.org>
In-Reply-To: <e80d4026-a525-48ef-b53a-f1276dd316e6@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 09/11/2023 15:13, Bryan O'Donoghue wrote:
> printf("index %d = %d\n", clock_rate[0][i]);

Doh !

But you get the idea

deckard@sagittarius-a:~/Development/qualcomm/qlt-kernel$ cat test.c
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define CAMSS_RES_MAX 17

unsigned int clock_rate[CAMSS_RES_MAX][CAMSS_RES_MAX] = {
	{ 19200000, 80000000, 80000000, 80000000, 80000000},
};

int main (int argc, char *argv[])
{
	int i;

	for (i = 0; i < CAMSS_RES_MAX; i++) {
		printf("index %d = %d\n", clock_rate[0][i]);
	}

	return 0;
}
deckard@sagittarius-a:~/Development/qualcomm/qlt-kernel$ vim test.c 
drivers/media/platform/qcom/camss/camss.h
2 files to edit
deckard@sagittarius-a:~/Development/qualcomm/qlt-kernel$ gcc -o test test.c
deckard@sagittarius-a:~/Development/qualcomm/qlt-kernel$ ./test
index 0 = 19200000
index 1 = 80000000
index 2 = 80000000
index 3 = 80000000
index 4 = 80000000
index 5 = 0
index 6 = 0
index 7 = 0
index 8 = 0
index 9 = 0
index 10 = 0
index 11 = 0
index 12 = 0
index 13 = 0
index 14 = 0
index 15 = 0
index 16 = 0


