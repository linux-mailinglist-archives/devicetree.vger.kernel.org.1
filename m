Return-Path: <devicetree+bounces-9287-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 73CE47CC7BC
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 17:44:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C6850B211FD
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 15:44:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2647D450E2;
	Tue, 17 Oct 2023 15:44:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QCGLfJFf"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DD4C450E1
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 15:44:53 +0000 (UTC)
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA48495
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 08:44:51 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-32d834ec222so5395374f8f.0
        for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 08:44:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697557490; x=1698162290; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6DtgUSYb0XXQqzXwICHZfgVDuua9U+i2U9Fqp8iMmb0=;
        b=QCGLfJFf2ZzI/2bUqj24KjLWmxNWUJZCCbbvJCUPdIi4I1G6sq5XGn/nVnZbsxFez9
         Mb7qRjg0oqbtsPZoQVjaK9j0JRWKhmxtIXMWvaqTboAgo575s3/GEeFA87OOhRdWvpCq
         cJZLFXgy0pcqGSTVAGyDiwDnEuPDAZZvJlzeVtUXNwRAFLLU4wI+blBezEMQ05QHiVzP
         MzCxsp8AjgSXlfvUroJGLSKeKYHSZHNmCzEEoKDOjRD7ur+9Mvef66UxJOdb13/SDHb/
         Ynjt7Mc210EwsiEbfeLTOciU4hHgxMgHVMAHKk288wtEC+9THfCa08Z2dNzdmqC8G/nN
         oUdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697557490; x=1698162290;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6DtgUSYb0XXQqzXwICHZfgVDuua9U+i2U9Fqp8iMmb0=;
        b=PCthHu1ooOgWpUE1E4hBDR/nL6+zRuQ3tanw6h1m7ckgcsKDC9QPMjKjne+8N9NYnM
         hpcnMiIzO3xnGSYVePikUzWA3hX71MemkOxXqEXsoeoyFrtbkK7VYY9fSSMAgRpJaE/f
         I+u1Ds7W3LBL6LkWpOeiO9WUXyXwjKW/SmLXtKpi7RMNDODTKzG1E1WvJXklL9wAaAbU
         Bwzz9twCtryB8a4Xk4FM+SPZP6bCdjVItngCwzTUuxWD4By665Ixcrc3TkNoab5CPwN+
         NcfpYCT0rQ9fbbtpRVSq1cIG5Qrv/0+WYrlFBWaTZXcmPdWj4+oSm/OAwos+iIgLPRYB
         ODng==
X-Gm-Message-State: AOJu0YxDzt3y5Kv1RPo31HBw8wsoVIZEEWIuzNrnnloiXOeUdIYOpOCc
	W4aESx0P5PIpCBR0erUlxGO7bg==
X-Google-Smtp-Source: AGHT+IFTjtJ39W3KRhn5QvvknkJMZLuJDABRE9FG1cQ66UJhKTucaLmK/XbihixPbEDdCbWGRVW60A==
X-Received: by 2002:a5d:68c4:0:b0:32d:6031:2824 with SMTP id p4-20020a5d68c4000000b0032d60312824mr2058463wrw.24.1697557490259;
        Tue, 17 Oct 2023 08:44:50 -0700 (PDT)
Received: from [172.30.204.57] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id f4-20020a056000128400b0031c5e9c2ed7sm33293wrx.92.2023.10.17.08.44.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Oct 2023 08:44:49 -0700 (PDT)
Message-ID: <69987d14-37d1-491e-99fa-9d0201112b67@linaro.org>
Date: Tue, 17 Oct 2023 17:44:45 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] arm64: dts: qcom: sm8350: Fix DMA0 address
Content-Language: en-US
To: Nia Espera <nespera@igalia.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Jonathan Cameron <jic23@kernel.org>,
 Lars-Peter Clausen <lars@metafoo.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Kees Cook <keescook@chromium.org>,
 Tony Luck <tony.luck@intel.com>, "Guilherme G. Piccoli" <gpiccoli@igalia.com>
Cc: linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, phone-devel@vger.kernel.org, Rob <Me@orbit.sh>,
 Clayton Craft <clayton@igalia.com>, ~postmarketos/upstreaming@lists.sr.ht
References: <20231016-nia-sm8350-for-upstream-v1-0-bb557a0af2e9@igalia.com>
 <20231016-nia-sm8350-for-upstream-v1-2-bb557a0af2e9@igalia.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231016-nia-sm8350-for-upstream-v1-2-bb557a0af2e9@igalia.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no
	version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 10/16/23 14:47, Nia Espera wrote:
> DMA0 node downstream is specified at 0x900000, so fix the typo. Without
> this, enabling any i2c node using DMA0 causes a hang.
> 
> Signed-off-by: Nia Espera <nespera@igalia.com>
> ---
Oh hmm.. I wonder if that's why I could never get one of the i2c hosts 
on 8350 to behave..

Fixes: bc08fbf49bc8 ("arm64: dts: qcom: sm8350: Define GPI DMA engines")
Fixes: 41d6bca799b3 ("arm64: dts: qcom: sm8350: correct DMA controller 
unit address")
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

