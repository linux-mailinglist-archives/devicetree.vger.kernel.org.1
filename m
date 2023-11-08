Return-Path: <devicetree+bounces-14504-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E18F07E52FC
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 11:03:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 278FC1C20DBF
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 10:03:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 551DA1095C;
	Wed,  8 Nov 2023 10:03:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rujnSOcB"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6BDF10941
	for <devicetree@vger.kernel.org>; Wed,  8 Nov 2023 10:03:17 +0000 (UTC)
Received: from mail-yw1-x112f.google.com (mail-yw1-x112f.google.com [IPv6:2607:f8b0:4864:20::112f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A29D1723
	for <devicetree@vger.kernel.org>; Wed,  8 Nov 2023 02:03:17 -0800 (PST)
Received: by mail-yw1-x112f.google.com with SMTP id 00721157ae682-5a87ac9d245so80625837b3.3
        for <devicetree@vger.kernel.org>; Wed, 08 Nov 2023 02:03:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699437796; x=1700042596; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+hHQVK2U6/kZAUYO7M6ukUkQi1h7K41srJttLODmFqQ=;
        b=rujnSOcBArl0FiVttRREX0ihVoTFt25sawGwTJlPWseCWecqyHoc07q5ApSSzTveaf
         e/Qo/hBRYGnPz512k0jCPOxPU7DPdSMGydXC7VNPjPqA+NaJ3Z0u/IfSxhLPdos1EInG
         LJLGqsiV0ot+LYcA31EuQvvy0bFn9ASjxfdOqbNIIteIrSLmIQh5z2NmhS1pozq7eNxQ
         RWLeeMHWSQKiQjS3qbiysTQOh5aN7MB5ccnIaFJ5cDvNUEfjvZwVSWpeLIdYJpjW5o6d
         kqqJCxrkmg4wSTZSk+glx+Rj+NMLPKk35L6R2nDA7yyXTUbSngke8Sdlm+lXoBp77Wni
         4vkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699437796; x=1700042596;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+hHQVK2U6/kZAUYO7M6ukUkQi1h7K41srJttLODmFqQ=;
        b=IuDd9pI1z6vqNxvQtsALf05YGDTd2AHDiSRXPYjYyKm+nuUN4PwGG2NV3kvgMDvpYQ
         FiQI8oRKIFdQiEvo3gmcGbiyQPxoiYegB2oS6VYtInCfohtKd0xSRm6BdOVpUCJHDXnn
         Y2QU6QzwG4NglrtjH8aiI/Mj2lza1xLwT/HP3v2HMhdOMWJHVGwYX6EGMyqPEj5kX1vG
         wzn2f1Dcd4CPQSQA8fv924Nv9ixaxSh0CFevOC+9cIB16Z65mghYDPAsiRJDrZoRA02Z
         aZDX/uq/1iTkwnS1KBa2GyTBRRX+1ubgK0AqBxYlpGtFW7k0cLRQu7+g3H1/5JAyhXoy
         O/Og==
X-Gm-Message-State: AOJu0Yw0Xe6YJ2XAcmp17ieaQsQmm8U/5k+qQQcIhBnj5F+ZGxS9o2oZ
	eG/JZe+5O3hJKb6NTB4apc7Onw==
X-Google-Smtp-Source: AGHT+IFic12v75dCBwbm4Rz+UAC0cBlweltnHJyTInK6P+k7Nbnogudom9am8MvSpwal/ROHctaSsA==
X-Received: by 2002:a81:a549:0:b0:59f:5361:d18c with SMTP id v9-20020a81a549000000b0059f5361d18cmr1415761ywg.41.1699437796322;
        Wed, 08 Nov 2023 02:03:16 -0800 (PST)
Received: from [172.30.205.23] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id o16-20020a056214109000b006717ddb4d47sm888826qvr.28.2023.11.08.02.03.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Nov 2023 02:03:16 -0800 (PST)
Message-ID: <bd268e9f-2e41-443f-ba29-163a552b5b09@linaro.org>
Date: Wed, 8 Nov 2023 11:03:11 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: qcom: sdm850-lenovo-yoga: Add
 wakeup-sources
To: steev@kali.org, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20231107-wakeup-source-v2-1-bf1562ef9367@kali.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231107-wakeup-source-v2-1-bf1562ef9367@kali.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 11/8/23 06:17, Steev Klimaszewski via B4 Relay wrote:
> From: Steev Klimaszewski <steev@kali.org>
> 
> The keyboard and touchpad can be used to wake the machine
> up from sleep, so mark them as such in the dts file.
> 
> Signed-off-by: Steev Klimaszewski <steev@kali.org>
> ---
> It would be nice to wake up the Lenovo Yoga C630 from suspend by hitting
> the keyboard or touchpad, so this patch enables that
> ability.
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

