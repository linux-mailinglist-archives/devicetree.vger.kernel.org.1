Return-Path: <devicetree+bounces-9557-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A2FFC7CD6F1
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 10:50:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D44FC1C20849
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 08:50:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8FE8156D8;
	Wed, 18 Oct 2023 08:50:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="b71JvMbC"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19DB7125CB
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 08:50:24 +0000 (UTC)
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4ABE4106
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 01:50:23 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-50797cf5b69so6627535e87.2
        for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 01:50:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697619021; x=1698223821; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jYwjEIsDAOJ6QvGGA1UdoS9AIT92GPKHL+44Ytf60aA=;
        b=b71JvMbCUSTLCvAxnx38Bb/IuvTp4yurB4JJqiiZp8Gns6UjB3D/elG31bTeV1CLp1
         yq0Fd2wkALIB5Z6lhrXTmfuYsAAxmXurSVHTjfd3tgvQcrIuA8u2u/cBvxUOp9Duwhcg
         X5lmmmlwXCsVbdO34PXmDAk5qkh3s1PWNnuqQbyroZUgwBErkqYpQjle8+JG8NEAV2Ge
         5O4PhLSdtBk8oco1gzIppUsALJ8UXUzjluzAZDZHTn6PiYix/8vnI5ARM0o7+gwnPGfF
         zsj+CK+YsF9PkkSyOJgEh+sQsTmz2BAeu9Hm4AHtP8uuWp5TyQ3d3kvbPAZCd9Uk9R3f
         WOeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697619021; x=1698223821;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jYwjEIsDAOJ6QvGGA1UdoS9AIT92GPKHL+44Ytf60aA=;
        b=Ed5K5kZxa4yIfCGHjfzPkloVsHy649x5qXRSpcwD7danGDYvy9RZFIwvqKdNZGIa/t
         sk0UPimf2Oefg4UkQKoVKLXjcekSi1wuWg4/EsY0HI5v3jq+qkDOHH80ebaPwoKPHG0y
         97Lw8di58svgI3SdQEluYXa3sG1qBPXCA0rzSk9K0Kt2wm7eyYYLmxAyfc6ri8hPb0TZ
         n0A6KoFudCfgKyglEC22RipMaw5hp6r4haNgg80hJZuHUsYGPcWV5sWZ+v324cu9eNJx
         KgKMZxevGt22uc+qhRGxIhoxvn3UVs1jHoHJlDSJOPsZmjDgLdDHfjXGUDJkLHow7iYf
         IxmQ==
X-Gm-Message-State: AOJu0Yz3iAluUeY4lHKA5YStigW4ql6LGkm2/naAnATVLqnoYUJoXBmk
	3a5od8Hk1v5oJ3fNGs94u3EzGg==
X-Google-Smtp-Source: AGHT+IE47qfwBPgQ/N38nc97qlSrQIHT4r8GN6vl1gvPY38d1Es3r1wgdTuPxA8CDWKYgtog+6RYnw==
X-Received: by 2002:ac2:484c:0:b0:503:2dce:4544 with SMTP id 12-20020ac2484c000000b005032dce4544mr3457302lfy.59.1697619021490;
        Wed, 18 Oct 2023 01:50:21 -0700 (PDT)
Received: from [172.30.204.55] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id x20-20020a056512079400b00507a3b8b007sm615700lfr.110.2023.10.18.01.50.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Oct 2023 01:50:21 -0700 (PDT)
Message-ID: <0ef687f6-988f-47a5-b8df-b24bab462026@linaro.org>
Date: Wed, 18 Oct 2023 10:50:19 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: msm8939-longcheer-l9100: Enable RGB
 LED
Content-Language: en-US
To: =?UTF-8?Q?Andr=C3=A9_Apitzsch?= <git@apitzsch.eu>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
 ~postmarketos/upstreaming@lists.sr.ht
References: <20231013-bq_leds-v1-0-cc374369fc56@apitzsch.eu>
 <20231013-bq_leds-v1-2-cc374369fc56@apitzsch.eu>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231013-bq_leds-v1-2-cc374369fc56@apitzsch.eu>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no
	version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 10/13/23 22:51, André Apitzsch wrote:
> l9100 uses KTD2026 LED driver. Add it to the device tree.
> 
> Signed-off-by: André Apitzsch <git@apitzsch.eu>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

