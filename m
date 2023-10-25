Return-Path: <devicetree+bounces-11711-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 251EB7D6618
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 11:02:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BA097B20F3B
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 09:02:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 162751F947;
	Wed, 25 Oct 2023 09:02:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="I2fnd5Wd"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1C3C1C2AF
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 09:02:08 +0000 (UTC)
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 91673B3
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 02:02:06 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-507be298d2aso7950327e87.1
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 02:02:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698224525; x=1698829325; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UEyMueufZwMl5WUtKOF3x8IWGEweeFOo/V9l1nZBv7Y=;
        b=I2fnd5WdmgYSeQnZgk9z0tn44dyQcJPnQ8tGlYVoyerehj8vpIynEMdXj4LGOGg7Ll
         nPRu6y3bUlnKSlE+4/afG2SI2EcUT7IsWVpJ1eSgPZBqxkOJ4jJkTBaYFEVrJh6x0X6I
         AhfOhfHsexOxQ/Z+NmF0lC27vhhKyx5C8lGz8lJOby/aIkDByHqTG3RMf3BgQ4ckbgzE
         j4ecdw4Ag+FTItsh+eEkgEKtLCFe7snIV2bn99t4IhwRqlghCZp93yFWUZVuFs8NgXVf
         bgeIH1ZH/DEVrNasjg4YMWCpkrgBtGxV+O7RZMkrhzzTih5XPC57iKeZBsh2xbh4qTPH
         nbgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698224525; x=1698829325;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UEyMueufZwMl5WUtKOF3x8IWGEweeFOo/V9l1nZBv7Y=;
        b=p1L/U1KpWMvZvxujUT+zOeegsug7eWpcqqez7stu3Bc1+BlnFkdAZP5A+iIA4wqTFG
         TcZph4QdPfYeF6VX9krQGygp9IJ8CTMktQ42rm/vEDvrhTRRwSJsLCWBXyY2ywlqPp3u
         2ZEHl5fHzPYcNLIav+t+yu/Rjav46mJNLeGar/quaFOVi77/cB0zJlxEFkU+nBGjwkNm
         LJOg+W3B95NXAEjWiDhcxwtBZYgbmNHRj2P35NZGbQZcppcva4B0ygBXToQBfbZkWHtl
         /kc1EYfIRRUdwIINOYMv+trIJjyjV7KCnqboaWbmsgm5bbCrQbKWd2W5qk67FrFomPm4
         5o5w==
X-Gm-Message-State: AOJu0YzQYBz7biE55tdvaK8/e7zHT7Vz52yptcavaHkemY9BzT2QwMeb
	sjyM0Ubf0GU8+AkD8KkxwQHN6A==
X-Google-Smtp-Source: AGHT+IFwLuCJViMWpxRb/Yk5R0yRSQLNcUdTYLytsZrUrOCyYdDwK9RyldAH5WauocLedqtCc/8dnw==
X-Received: by 2002:ac2:5229:0:b0:507:a40e:d8bf with SMTP id i9-20020ac25229000000b00507a40ed8bfmr9522620lfl.7.1698224524731;
        Wed, 25 Oct 2023 02:02:04 -0700 (PDT)
Received: from [172.30.204.57] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id k10-20020ac257ca000000b005079ab8ab19sm2458305lfo.150.2023.10.25.02.02.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Oct 2023 02:02:03 -0700 (PDT)
Message-ID: <d1c66914-3b41-4ea6-860a-dbc91308983d@linaro.org>
Date: Wed, 25 Oct 2023 11:02:03 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 3/8] arm64: dts: qcom: pm8550ve: make PMK8550VE SID
 configurable
Content-Language: en-US
To: Neil Armstrong <neil.armstrong@linaro.org>, Andy Gross
 <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20231025-topic-sm8650-upstream-dt-v1-0-a821712af62f@linaro.org>
 <20231025-topic-sm8650-upstream-dt-v1-3-a821712af62f@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231025-topic-sm8650-upstream-dt-v1-3-a821712af62f@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 10/25/23 09:47, Neil Armstrong wrote:
> The pm8550ve can be found with a different SID on SM8650 platforms,
> make it configurable.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

