Return-Path: <devicetree+bounces-11995-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F2A97D75DE
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 22:38:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8013E1C20CE2
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 20:38:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1C6A12B6D;
	Wed, 25 Oct 2023 20:38:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BqFf2MHx"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A53234188
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 20:38:08 +0000 (UTC)
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 898A3184
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 13:38:06 -0700 (PDT)
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2b9338e4695so1971921fa.2
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 13:38:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698266285; x=1698871085; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bkNNejbCmL/k7pWRnrsJGwZqih1Jcn9nw5isK0ZcLhI=;
        b=BqFf2MHxH8RheMmwKqkJvx6gQAkizRpw+qnQqERHcsX8hjnF0eMrGg/5S0z1V5f7Dp
         mS5G+ZEcT3GDbiC5U7PvMZp2Fe6+T6ETsN2fNvz7XXSH+HTOsyy3xSv0EvzvI71FteF9
         QJZSJeVGkmq6aZVucENJgTZ7KFmm59YtZkiVPM34VvsIOeOhZrxCW5RMY1SdmZsDC86j
         pyU7b3eUsrhGVCgyYPvCDV+/kMWE+6PLAqcpMtd+ntEyP56O8qBDk9NRvrlPZyKXpnRb
         X1wgeNtQg6epvPnpGIJQ5vlG6SK7/wY9kLDhYWqKUSd1WEN2TlzmW53HbQMmlQVQKsjD
         zhHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698266285; x=1698871085;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bkNNejbCmL/k7pWRnrsJGwZqih1Jcn9nw5isK0ZcLhI=;
        b=aufr+GWyT2dpB+UToaSuCESIe156bVHETpPfvKjMujLZ9ia2laXONrCfQzEScdNxrq
         txsTJgpAI33dr8xIr/fu8DB3dZPi8gQrsOIW7NzxLgWz5WeHTXM1UOk+IvA/Unk+TSEX
         6j1oiF6DK9BGm4HY/UqbgQfH9pl2dbLY6cygKZzPV/4ueTCODeMOXO8EPOSkpfX4reUW
         9B5qvxRBlAzEWGUY0ksvL9ulQ8xAlQMOBtgelgefoMP36CO9RFHHaU6KyMHXW6C7w5nl
         ibPP2iALVKYCXIb1cfohUAxeyXiC71WNgq0DzU2db5l6LGrJOfKDaZNNYkKGX8M8jk5l
         DkpQ==
X-Gm-Message-State: AOJu0YzWrT6lfWBaNmNVED4JlQTWBEdUM1UjInUaUUBsJUcwisUNL6yF
	ZHsvoLHxsVnuPo/MXyNXrX9KmQ==
X-Google-Smtp-Source: AGHT+IFEsNWUEVHLgy9no9zt5n/oSi9ff1FZksTxjp/VP/wDM1Yxxc6Zxk7YI/vaALGIt3FYIrQlCQ==
X-Received: by 2002:a2e:bb12:0:b0:2bf:6852:9339 with SMTP id v18-20020a2ebb12000000b002bf68529339mr10819527lje.3.1698266284776;
        Wed, 25 Oct 2023 13:38:04 -0700 (PDT)
Received: from [192.168.100.102] ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id c18-20020a05600c0a5200b0040770ec2c19sm669758wmq.10.2023.10.25.13.38.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Oct 2023 13:38:04 -0700 (PDT)
Message-ID: <c9c6b20e-cac2-43a1-a026-ea01b0e245bd@linaro.org>
Date: Wed, 25 Oct 2023 21:38:02 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] clk: qcom: rpmh: Add support for SC8380XP rpmh clocks
Content-Language: en-US
To: Sibi Sankar <quic_sibis@quicinc.com>, andersson@kernel.org,
 konrad.dybcio@linaro.org, mturquette@baylibre.com, sboyd@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc: agross@kernel.org, conor+dt@kernel.org, quic_tdas@quicinc.com,
 quic_rjendra@quicinc.com, linux-arm-msm@vger.kernel.org,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, neil.armstrong@linaro.org,
 abel.vesa@linaro.org, quic_tsoni@quicinc.com
References: <20231025133320.4720-1-quic_sibis@quicinc.com>
 <20231025133320.4720-5-quic_sibis@quicinc.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20231025133320.4720-5-quic_sibis@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 25/10/2023 14:33, Sibi Sankar wrote:
> From: Rajendra Nayak <quic_rjendra@quicinc.com>
> 
> Adds the RPMH clocks present in SC8380XP SoC
> 
> Co-developed-by: Neil Armstrong <neil.armstrong@linaro.org>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> Signed-off-by: Rajendra Nayak <quic_rjendra@quicinc.com>
> Signed-off-by: Sibi Sankar <quic_sibis@quicinc.com>
> ---

This looks pretty straight forward.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>


