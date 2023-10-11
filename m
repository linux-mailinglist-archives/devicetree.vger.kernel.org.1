Return-Path: <devicetree+bounces-7638-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A1EF7C500D
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 12:26:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5B10C1C20C75
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 10:26:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64A931DA58;
	Wed, 11 Oct 2023 10:26:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NbroL8Vy"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDC0E354F6
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 10:26:06 +0000 (UTC)
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D3E429D
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 03:26:01 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-32d834ec222so660516f8f.0
        for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 03:26:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697019960; x=1697624760; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vz9dCTUAJHMkFUSxm9pCk3ylD/I/tndawRxu31ITP+g=;
        b=NbroL8VydLiF/5U4EpkKQ4StM5WWEKQ35TLnXoAKraN3kIydq9kiZUazLDgb7GXc53
         ws3SVH8R7oOqfIhjow3dpzQTzGS4NoH97txFgFCCp7TEdTS6TSI20tnxwkMuI+BQzujV
         ufO1yBUTKCRp7XXzKxpTeEKKyxyZUEstXvB0/Ji2hRz2QmEMGjX3/4Ry0BZMb5lo5IoF
         D/zBmMwmY1+BryQG9juaGKG3+Y7/iuh1LNk3OmcEOCCQ15mK+aG+X5aXFTbn77JKsaVK
         u2lem2HO369VCMEBkOyKvgmLQAoPct7EupxjWnR4Lkl+NmNtNjHhcHbMm47pFll9EeDs
         zHag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697019960; x=1697624760;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vz9dCTUAJHMkFUSxm9pCk3ylD/I/tndawRxu31ITP+g=;
        b=PHNZ9Y9vPCIOviMTtmWcjH6eruGRsrAG42ojGNwogIO4fFQAHLx2PxiWP8aIKYl/bk
         cmLTtvCYBC5zcpoCA7t+XlLaQQ4I41NfcQ4lMZlBUAl0qEX6nmTnliR5mQEFb+bZ/TUf
         revtNXsdJrIoaxcj5nxuHsqgO6EOwycwlcdiiRyWq+dpRp5hyAwnjb3x6NayFGX7IriL
         Xs2tXUcYPP1VOplMgwcSaXa5wbI9mTrw5Bg9STHMtMI+qEUS8uc/7iH20LZMphRYVtZ9
         rk9VPiHTxUnJCvcgYECEVyyEJtNGuvrQeZHp8GNCLgR++kSs2aFmbE2irFzJLvc+U6DZ
         Jfkw==
X-Gm-Message-State: AOJu0YzD3HqIi8eeN3JxqM2XeTUMwQV0DKlZcTx/Y7NPfRqPPT15JI8L
	hchAuDnpai1dhmSVXdVHkCDf4A==
X-Google-Smtp-Source: AGHT+IHg9KTXtScFiRCbZ8fBRugfwTlzviYfywyydhnaZBwWrCVCnC/2QxDGezuFnwgYpHW1pqa8WA==
X-Received: by 2002:adf:ef91:0:b0:31f:f1f4:ca8b with SMTP id d17-20020adfef91000000b0031ff1f4ca8bmr16588499wro.40.1697019960263;
        Wed, 11 Oct 2023 03:26:00 -0700 (PDT)
Received: from [192.168.100.102] ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id j16-20020adff010000000b0032008f99216sm15058111wro.96.2023.10.11.03.25.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Oct 2023 03:25:59 -0700 (PDT)
Message-ID: <10bcb0cc-19db-4914-bbc4-ef79c238a70d@linaro.org>
Date: Wed, 11 Oct 2023 11:25:58 +0100
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
To: Luo Jie <quic_luoj@quicinc.com>, andersson@kernel.org, agross@kernel.org,
 konrad.dybcio@linaro.org, mturquette@baylibre.com, sboyd@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 catalin.marinas@arm.com, will@kernel.org, p.zabel@pengutronix.de
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 quic_srichara@quicinc.com
References: <20230923112105.18102-1-quic_luoj@quicinc.com>
 <20230923112105.18102-5-quic_luoj@quicinc.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20230923112105.18102-5-quic_luoj@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 23/09/2023 12:21, Luo Jie wrote:
> The clock controller driver of qca8386/qca8084 is registered
> as the MDIO device, the hardware register is accessed by MDIO bus
> that is normally used to access general PHY device, which is
> different from the current existed qcom clock controller drivers
> using ioremap to access hardware clock registers.

"nsscc-qca8k is accessed via an MDIO bus"

> MDIO bus is common utilized by both qca8386/qca8084 and other

commonly

> PHY devices, so the mutex lock mdio_bus->mdio_lock should be
> used instead of using the mutex lock of remap.
> 
> To access the hardware clock registers of qca8386/qca8084, there
> is special MDIO frame sequence(three MDIO read/write operations)
> need to be sent to device.

"there is a special MDIO frame sequence"

"which needs to be sent to the device"

the following indentation splat from checkpatch

CHECK: Alignment should match open parenthesis
#2071: FILE: drivers/clk/qcom/nsscc-qca8k.c:2004:
+		ret = __mdiobus_write(bus, switch_phy_id, (reg | 
QCA8K_REG_DATA_UPPER_16_BITS),
+				upper_16_bits(val));

CHECK: Alignment should match open parenthesis
#2131: FILE: drivers/clk/qcom/nsscc-qca8k.c:2064:
+static int qca8k_regmap_update_bits(void *context, unsigned int regaddr,
+		unsigned int mask, unsigned int value)

total: 0 errors, 1 warnings, 2 checks, 2162 lines checked

NOTE: For some of the reported defects, checkpatch may be able to
       mechanically convert to the typical style using --fix or 
--fix-inplace.

0004-clk-qcom-add-clock-controller-driver-for-qca8386-qca.patch has 
style problems, please review.

Once fixed

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

