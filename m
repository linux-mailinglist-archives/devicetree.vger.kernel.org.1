Return-Path: <devicetree+bounces-7636-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3197D7C4F91
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 12:06:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 626841C20C72
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 10:06:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 684991DA37;
	Wed, 11 Oct 2023 10:06:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lNcMUYxS"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 021201C68C
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 10:06:17 +0000 (UTC)
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B3DDA94
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 03:06:14 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-3296b49c546so4372363f8f.3
        for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 03:06:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697018773; x=1697623573; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language:subject
         :references:cc:to:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fub0OLah+ZMrfmMWsVbsLKTM47lsXgX5eYB01m9XKeg=;
        b=lNcMUYxSa29cIYJBrzq/qq9ttz3a931rjwd1IbHtGxgKOfE1jzieGw8fRmQU3jImwN
         uh9yHYhOhrgHkd87r8bzxPeWKXdys5+w592YKb+ZEAZMUvix3szbkrntlv6LKkhRgh5j
         0BKCcwi9BQKEFAtTy7LxduhVBjNtHs/AeKM+HLK0jQUsI/tTzj+ZXRaxsx+7xNmafhCi
         SBcmABTzi8qb3hxQj9j9YSRzd3ssRwVuL8IbZ+FJWrer6Ia4QDCfgybNvGqeDF6Bee3g
         RE/nM0+kWU1EqgKwaUG2G1tEs+4nG1uTQ6lL7683k2ONPKxJQvMMJb6oIqzpNhKz74MV
         yCdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697018773; x=1697623573;
        h=content-transfer-encoding:in-reply-to:from:content-language:subject
         :references:cc:to:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fub0OLah+ZMrfmMWsVbsLKTM47lsXgX5eYB01m9XKeg=;
        b=SKAShzZBSHorjivtmXyiE0O9UwjGJTIkrcv1Q7nQfTlya1bMm6+0MSr/8gykN+48BE
         H5ssAioZoNZ8PdWizF1Jqcx2U9zxeKOM4zYZh2icJEU6iyIrfa5DjqG7V6EX0BGHGMMm
         VPIgZQhq6jz85dRvF1xG7CiUZWMRfI4/NGPm2UEzLuUMmb8bIOLCcnIu9f5w6RE/CvtK
         T1LuXO096TY4harDg1J2fROFFB05uAFRtMvyT5iYN97vvvYAO6/nLEwr4I8k6KzfVzIR
         bH6307S/MpT+nYI4J4z8XBRo98/IUcO14SSZqRjjd/8lbfrVUeL0nzOJooRMv25jcYua
         89mw==
X-Gm-Message-State: AOJu0YyJz0F7z2PKWOYh9thaa4ulsW8CAhMPfXTKIynryf9VVMZkooVO
	+t8uMHkvR5EpebBf0VDJFAX59A==
X-Google-Smtp-Source: AGHT+IGt3zAFGhPUYx7XidslsZDz+pqj1w2FqJtNDcptwK+tW2l0dBINQjidP+IuFvFen9VS1DII3Q==
X-Received: by 2002:a5d:67c9:0:b0:321:5211:8e20 with SMTP id n9-20020a5d67c9000000b0032152118e20mr17369654wrw.59.1697018773010;
        Wed, 11 Oct 2023 03:06:13 -0700 (PDT)
Received: from [192.168.100.102] ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id x11-20020adff0cb000000b00323293bd023sm15155625wro.6.2023.10.11.03.06.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Oct 2023 03:06:12 -0700 (PDT)
Message-ID: <abf17440-bddf-4289-a951-bb3fd3951be1@linaro.org>
Date: Wed, 11 Oct 2023 11:06:11 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: quic_luoj@quicinc.com
Cc: agross@kernel.org, andersson@kernel.org, catalin.marinas@arm.com,
 conor+dt@kernel.org, devicetree@vger.kernel.org, konrad.dybcio@linaro.org,
 krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
 mturquette@baylibre.com, p.zabel@pengutronix.de, quic_srichara@quicinc.com,
 robh+dt@kernel.org, sboyd@kernel.org, will@kernel.org
References: <20230923112105.18102-4-quic_luoj@quicinc.com>
Subject: Re: [PATCH v9 3/4] clk: qcom: common: commonize qcom_cc_really_probe
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20230923112105.18102-4-quic_luoj@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Tested-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org> # Lenovo x13s
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

