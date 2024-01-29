Return-Path: <devicetree+bounces-36403-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AE1A840F19
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 18:21:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BD3711F220A3
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 17:21:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FC2315D5AD;
	Mon, 29 Jan 2024 17:13:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rmcL9c9u"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90189163A82
	for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 17:13:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706548385; cv=none; b=GspZNuiiejMNI7Lp0waJeUlhajZSU6B9w1ejS24Pfsyp8f/yLVNWD3HG1UPAazhhOQufULl3Amxzq7tIWOWBJvCvj22xYvxIW8koKzoG6ffZKZY8TgvCHQqdmsKpnb59fOsPYH/6ou/1b/vKsStYXv8KTYsMHH/LaUMarrD2umc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706548385; c=relaxed/simple;
	bh=RD+lt7YvkHcHv4LIgrF0qv3CjQvy3/HZ38p8GITdbRU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YuZ4HuLgrFX/qVszTVFVi0SllSLDbyStpZ5hOHz4/AwUV48HFnJ5N8gFFePUFeDsDp97Vwm+wqeqehPDwMZsSMEp92UQjjt7OMqS9L5TT0kcujxMaU7QPPj3Mr/mMaAXpH7f7qF29C2aB3hZY0PBvOvUB/r3WsRhoV5KhDo7DZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rmcL9c9u; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-a3604697d63so31397066b.3
        for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 09:13:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706548382; x=1707153182; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RD+lt7YvkHcHv4LIgrF0qv3CjQvy3/HZ38p8GITdbRU=;
        b=rmcL9c9uZHWM036T8caRkwNYLtQFPVhz+cv9aIsLcC9JQwf35aRdXW/tDzqLDgtWus
         d4QRdtDCCDAch4tJKMSEKoJC/RgbDMer8aBz3LyddhhaLHHWO4+kjav2o6QH7Ik8z21a
         ko7ESrvJsCioOcQ6ZeznQWUVRPlzA5q1H1LnvCNo9HL3plnmQKw9zu+0Cz+WohXwKCwM
         lwSny0Ic5LUVvgQf0lSPb7s3XgCxoeISacMwXCSTsXr5tgeJDi8Y1ykTRfPx9hbch93m
         CkpoT1t3T24dp2qWrWYZOTWuTfIL+B2ttMqcr3EgC501stzmZIWsFoETcISrz8YrM+7w
         8NCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706548382; x=1707153182;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RD+lt7YvkHcHv4LIgrF0qv3CjQvy3/HZ38p8GITdbRU=;
        b=LzqAlIc1QUVYiwGKU3suvxFfCWAoVUeAOI5fcnyCIc64MyoB/MloFXfG5xDAn3s/Hn
         AGyfo0A7TCpehBTg7kyii57ufAzJvDH90uBJKW0VhwAkTQzQOYE77Oi+d767Ko1hm0N4
         Ii2Q6SYUM3xr+HQh8hkkKtyAcX0tnx7MelNreUfN0/3EU/QU9rDp3L/X/QosGx50g1YQ
         qXcCOhuGQTj7zNFs97CvCxqh+a6cmMQjiGZb780UMbnd7y92wPW3QNHlUIb2C1wQMtCP
         +fsf50PSxE/NUSDqrA4OdCwMX/u6wUU347PXZ5fNsMJ9gSnQXElgGSIgQ2nuBeXGf68j
         tH6g==
X-Gm-Message-State: AOJu0Yyct2AplQIDmhxj1VXN22Xp6MLEtFs0OYgV/8BiBOoXwMdOD1OF
	b9jxefo54Fc9uG2sOvHGX4m5YUib3ybOsCtMDsL7RsSrBoaOALN0dBhg4o6zrv8=
X-Google-Smtp-Source: AGHT+IG/oRJ8oWuP/HmXdOKqKOlMvxVgwfT+KSK0YZ5sdUr46qcUJUXI+zsHeu/0N5NVPBndHmgE9g==
X-Received: by 2002:a17:906:e15:b0:a30:e17e:67ee with SMTP id l21-20020a1709060e1500b00a30e17e67eemr4889297eji.18.1706548381692;
        Mon, 29 Jan 2024 09:13:01 -0800 (PST)
Received: from [192.168.2.107] ([79.115.63.202])
        by smtp.gmail.com with ESMTPSA id cw13-20020a170907160d00b00a35f34efb32sm441325ejd.23.2024.01.29.09.12.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jan 2024 09:13:01 -0800 (PST)
Message-ID: <95f0eddf-14d4-4851-91f6-f8adaa05833b@linaro.org>
Date: Mon, 29 Jan 2024 17:12:59 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/9] clk: samsung: gs101: add support for cmu_peric1
Content-Language: en-US
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>,
 peter.griffin@linaro.org, mturquette@baylibre.com, sboyd@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc: linux-kernel@vger.kernel.org, kernel-team@android.com,
 willmcvicker@google.com, semen.protsenko@linaro.org,
 alim.akhtar@samsung.com, s.nawrocki@samsung.com, tomasz.figa@gmail.com,
 cw00.choi@samsung.com, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20240127001926.495769-1-andre.draszik@linaro.org>
 <20240127001926.495769-4-andre.draszik@linaro.org>
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <20240127001926.495769-4-andre.draszik@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Andre',

I played with SPI and noticed that we have to propagate some clock rates
to parents here. If you don't play with all the peripherals from the
block you can't know what to propagate. So I think it's fine to not
handle this topic right now. I'll come with a patch on top of yours when
I finish the SPI validation. The patch is looking fine. I'll finish
reviewing the series after v2 is out.

Cheers,
ta

