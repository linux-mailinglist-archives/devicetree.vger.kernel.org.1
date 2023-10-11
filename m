Return-Path: <devicetree+bounces-7708-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B2917C522C
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 13:33:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 36C3B282201
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 11:33:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3C561E527;
	Wed, 11 Oct 2023 11:33:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XI0cRoLa"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 402C335506
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 11:33:30 +0000 (UTC)
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D169A9
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 04:33:28 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-4066692ad35so63083965e9.1
        for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 04:33:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697024007; x=1697628807; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NZzIfsUIMKmIPZuNBx7E7QsUZucBviLZv516iI+4Ocg=;
        b=XI0cRoLaEk0gElbpQX2B2oKaOHoLEPNWsFPXilKB56OVnnnhxp7U8TJSTwrhAoNiSy
         CkR7DBeSD3WPuzb0DC+fiS16GD28nmp/q8y79L3ACQ6sywwIUTaIaEldJ10LX2Z4hg6G
         ySeiOn2MTA/0f0WRK8PMdxow0BvLdhsH6bdxspc8KDbLi+2JEoUJNTT/UwnZzvJRVCdL
         m1yT9vjcdDqqcKgmsGgjqYfxgwOUvepF2f5+10Ga/tTv5JYyJN4xY3PMWm4x/wDgTEtC
         zqrQ5erlbRS8cVLqeQBl0tJtP2a7GIHGx9W8qmrvS9vMXh3F4lTHSr/muM4yHWtU+j+F
         eEgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697024007; x=1697628807;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NZzIfsUIMKmIPZuNBx7E7QsUZucBviLZv516iI+4Ocg=;
        b=JpsQ6lD9htQEjJ3HCwjFQDFU3SAJxyk9yRmX/wbB0WCiUQGT9yIhT/Ol2xGbS1nC6j
         gcbyDvMVqNw6p4cHRGnBUns7aRMP6BW4OQh3TMXH9s417OPEkDcwzk6H6E282bcn9uPW
         PKEkyKMMhKdC9ONCrq/x5wXQKgMRHiGXa81GbUqetYt3lrAnsl3ChCPYFTM6Lhodm0Dz
         zSKF5UK5purujldqC2dobQPSMeV5jOZ5EUBR0gSwALUXP+prNHSVN28X/ego1iGQaKfO
         be3cbLuiKIO6OihIODEZ/A/6af/Z1BdaMgLCf3imFybdKWvVVH4JETzoqU75g4DKATDK
         8VLg==
X-Gm-Message-State: AOJu0Yy09hkigJ5Th4Q7m6Xd8/IH9yr4+1UGur/WAq7vSN5BvDptRcyo
	tc/tfkxZBKERAdylCK1Z0xJdkg==
X-Google-Smtp-Source: AGHT+IHlFqTVAI33hYFedRn8qsiDw/z0zk+fcz9qZApVa3GB0mCrn5UsiF2BvKhEkad1pfHh4TclxQ==
X-Received: by 2002:a7b:ce19:0:b0:405:3e9a:f1e3 with SMTP id m25-20020a7bce19000000b004053e9af1e3mr18935659wmc.11.1697024006816;
        Wed, 11 Oct 2023 04:33:26 -0700 (PDT)
Received: from [192.168.100.102] ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id u6-20020a05600c00c600b00402ff8d6086sm16479381wmm.18.2023.10.11.04.33.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Oct 2023 04:33:26 -0700 (PDT)
Message-ID: <fc35b4e4-a1ef-4200-a7d4-1f8ea3afa5c9@linaro.org>
Date: Wed, 11 Oct 2023 12:33:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 4/4] clk: qcom: add clock controller driver for
 qca8386/qca8084
Content-Language: en-US
To: Jie Luo <quic_luoj@quicinc.com>, andersson@kernel.org, agross@kernel.org,
 konrad.dybcio@linaro.org, mturquette@baylibre.com, sboyd@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 catalin.marinas@arm.com, will@kernel.org, p.zabel@pengutronix.de
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 quic_srichara@quicinc.com
References: <20230923112105.18102-1-quic_luoj@quicinc.com>
 <20230923112105.18102-5-quic_luoj@quicinc.com>
 <10bcb0cc-19db-4914-bbc4-ef79c238a70d@linaro.org>
 <49c8a8ff-bdb9-a523-9587-d2a46d401e41@quicinc.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <49c8a8ff-bdb9-a523-9587-d2a46d401e41@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 11/10/2023 12:26, Jie Luo wrote:
>>
>> 0004-clk-qcom-add-clock-controller-driver-for-qca8386-qca.patch has 
>> style problems, please review.
> 
> Thanks Bryan for the review. The code line mentioned by CHECK is more 
> than 100 columns, so i separate the lines.

Yep. Remember to align the indentation as much as possible/reasonable. 
Use your discretion.

---
bod

