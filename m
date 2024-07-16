Return-Path: <devicetree+bounces-86100-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DA56B932626
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2024 14:05:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 09DBD1C218DB
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2024 12:05:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7E6D19A29C;
	Tue, 16 Jul 2024 12:05:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ux7QEief"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEE011990DE
	for <devicetree@vger.kernel.org>; Tue, 16 Jul 2024 12:05:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721131539; cv=none; b=IU2vLmK1fLW08aetcDPLWI+R+f/Ur9UamWGsuTQcWsKQb6JOc6HLvqlBelSMV46CJQBTjgyTbgPLo0y8b3N7D0CdUZQvLpzLNqJc/XniDfx9vGbmAaTsv18el/Nl7jhDhaomo8/n467z7Nuoi1D4VvhxyYjCnr8OR5mSQNF4wAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721131539; c=relaxed/simple;
	bh=a/QNnE3VTY48ir/BbA7peHC4ohzSHYH11rn3ny9ooY0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hTt0nOgmx2RZOx5Rur88SxEjFXO5sCfDwI0q54WcG3/GZeyiGFsoKrakOUdPvYH5AV/DND2uvbnFzHAVqB+KSy1EwjXYl5it2yYcAXi99T9gaqwepQSqVJiRiQ9++J1qlWpZ46FAmKT70p8eboTFBzB/CY6BLP4QAmbDOuE6C3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ux7QEief; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-58b0dddab8cso8637083a12.0
        for <devicetree@vger.kernel.org>; Tue, 16 Jul 2024 05:05:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721131535; x=1721736335; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=4DQiUv2nV2q5zKISm+bmewPqftcl86SPYzZg0JZrEy0=;
        b=Ux7QEiefPbq7h4ztZUTCMmfLYaUPYlsNyXKq+tdiY0Gx5PzTX55CnSna2tJZdg4Eow
         FgfoUdTAqKeZQdl638xxXMuKmCqY2m4G/rRVIwYUL6fbuUdGoCLi9/CqFUa9Vua5JhrM
         shHNZvEWijn1KzUdtY4GV7VU09FDpCdoXdCJwI+jh2AvOCdPKXccMgSKIFVK3RV0eoT5
         G7/sn88uaswysfVJGADR/DXBRMhGETK2/ndR5P2aY6LvZXvjVaw8TblmJUwhtTs6FwUd
         bOt0g0oubfegsAK2dvXy/0RDU1Yrm4tLEvCh1NXEBd0M4UD05DYU6n80vVxBi/7ZSM51
         V2Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721131535; x=1721736335;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4DQiUv2nV2q5zKISm+bmewPqftcl86SPYzZg0JZrEy0=;
        b=S9AMqug4lMh49k7NsR3mKK7g+L8qEIjHc7354Z61PWtRWHP+LViwlPk94w+4B3OrCg
         hRx2yZJ7A61SO8juuxdCJdhd4j1V3qORYWKVsn2K3XxwAWU2EcwHAMdcFCThbT/BJI0k
         gmrSmY69S59Kqh8INefJMTG6w9vGySByAem29vo5h7+Ff2PULlbfEedsJhIKLqEYpClH
         H+m9ZmBXefMM1dPJ+veAVPg63iTbut8slWbdb3quQ+ez4xSNOZm/k0YHRlubTTt4APPF
         o9ZPEPr1yhJ6KW1PTNCdkdGdTNY7IpTkjQB5EI9i+SvdS3ub2AMBLUxAHAAANgPNDzXK
         YpzQ==
X-Forwarded-Encrypted: i=1; AJvYcCUs/ocgMcV85eoTUsstoXoXhuqHVC/nnbqjuSA6HTXWXKUgPUZ/lsngumREAT0/R5D6qMcmG2in2yxNyyJWrluzWbZy1oEYj6U6wQ==
X-Gm-Message-State: AOJu0YxxPrGGFlKnDwvNH4wX9kxjQTcb1AFZCfLo6RmfJb+3vCskvYtz
	Mjsd6yfQ5IyTg5+/LYezqYzeK7EV6QKUo0Af3qehp9tkE0aJaqMsY+IBifS4ix8=
X-Google-Smtp-Source: AGHT+IEUH3gRh6QTjYG53o7YCNbofILlhkib5QZLUpoUNe7aKkPvuxXcgCnjYgiZ+rYcFHKNwnZ5HA==
X-Received: by 2002:a05:6402:2791:b0:59e:a1a6:11bb with SMTP id 4fb4d7f45d1cf-59eeb4dc106mr1654868a12.0.1721131535063;
        Tue, 16 Jul 2024 05:05:35 -0700 (PDT)
Received: from [192.168.105.194] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-59b26f62bd9sm4812439a12.94.2024.07.16.05.05.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Jul 2024 05:05:34 -0700 (PDT)
Message-ID: <8916840a-e5e1-406c-a1e8-a073ad344d56@linaro.org>
Date: Tue, 16 Jul 2024 14:05:33 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/8] clk: qcom: Add support for Video clock controller
 on SA8775P
To: Taniya Das <quic_tdas@quicinc.com>, Bjorn Andersson
 <andersson@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 quic_imrashai@quicinc.com, quic_jkona@quicinc.com
References: <20240715-sa8775p-mm-v3-v1-0-badaf35ed670@quicinc.com>
 <20240715-sa8775p-mm-v3-v1-2-badaf35ed670@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240715-sa8775p-mm-v3-v1-2-badaf35ed670@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 15.07.2024 10:23 AM, Taniya Das wrote:
> Add support for Video Clock Controller for SA8775P platform.
> 
> Signed-off-by: Taniya Das <quic_tdas@quicinc.com>
> ---

[...]

> +
> +static struct gdsc video_cc_mvs0_gdsc = {
> +	.gdscr = 0x809c,
> +	.en_rest_wait_val = 0x2,
> +	.en_few_wait_val = 0x2,
> +	.clk_dis_wait_val = 0x6,
> +	.pd = {
> +		.name = "video_cc_mvs0_gdsc",
> +	},
> +	.pwrsts = PWRSTS_OFF_ON,
> +	.parent = &video_cc_mvs0c_gdsc.pd,
> +	.flags = RETAIN_FF_ENABLE | POLL_CFG_GDSCR | HW_CTRL,

HW_CTRL_TRIGGER? Not sure why HW_CTRL wasn't removed altogether with
the hwctrl patchset..

Konrad

