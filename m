Return-Path: <devicetree+bounces-7639-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B79597C5019
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 12:28:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D15AA1C20C0E
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 10:28:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E46051DDC2;
	Wed, 11 Oct 2023 10:28:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EVRtXE67"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 753ED354F6
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 10:28:54 +0000 (UTC)
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE03592
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 03:28:51 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-5041bb9ce51so8456652e87.1
        for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 03:28:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697020130; x=1697624930; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ht5utTuG5wW1wq2rrU2pauj363H+uTmJt1GixQr1DSM=;
        b=EVRtXE67gk+LC0mXBwljVYzi7ZwnklKR9lIwbViIMLS3LuACZ2Ry91HKub8sBBvcuJ
         RkRbXaFKh5xJZypm8mBJf53ajuE+YprOBiwkDheoECB3fBFAxDffEIgfC/svXUpyBfPj
         qfBGh6SeTRH42VEABkdZrlk5pud2VkPC9Z3wbbGwqWg5VJyjGrLq8HWkXltiiObQ83Pm
         0XA3JuhDADijpZMLFoEQaN7adtiB9nl8nENDKH1k35upik1KfHMPW5Y5kD9uPyk8w0S6
         mWAxFA6jriXiW3sFn+uYXhdc/QiYGadLly1xxn3kMJsHV1+R3N4AE8Ww0QOVVu8cEurV
         LPAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697020130; x=1697624930;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ht5utTuG5wW1wq2rrU2pauj363H+uTmJt1GixQr1DSM=;
        b=rknVLg6djpmJhJBoY6nDMlk9lTayqXpM/vQHetnkcdvZdnBVAPHqd/lhAcIy+LCH9Q
         Nv/HVLxhNUR7YI8kalGjVN4BkmW38IvKGSigCN7AKSWgMRKrsSmiSxLajrBgB3cv2ITz
         MUA/4d1ocYrZXbkFQnODFQB1DQQsyuyUH1auD3J59wIwlyGuOiNyEuh878hQo2OCAMgA
         xvbQKHSeFI68eF18JkR143M4sVcxCym2bSlNnmeFNlehsUVeb9S0cG2THumr5zcznAQV
         tLsiTfOIiNJyGGjjqZZd6X+b35HP56idN5tDIf2ZT5JgWNNe5QAf5D/dWx2Yteu9A8VG
         mQMg==
X-Gm-Message-State: AOJu0YwgyP+1M4uGOGQuOUbzm5XCATUc4ANctq4hjl4RUtboGO/1wrBb
	eHEBJOcZ67Dyibp6Nke1wuKKRQ==
X-Google-Smtp-Source: AGHT+IF/+tcyWJy167xh1iz46cHV+3zXA/HdYlUn1jZqjis4ijk83UImTqPXKpAuX5ROU8uJiy4E0w==
X-Received: by 2002:a05:6512:34c8:b0:503:200f:47a9 with SMTP id w8-20020a05651234c800b00503200f47a9mr14500380lfr.15.1697020129912;
        Wed, 11 Oct 2023 03:28:49 -0700 (PDT)
Received: from [87.246.221.93] (netpanel-87-246-221-93.pol.akademiki.lublin.pl. [87.246.221.93])
        by smtp.gmail.com with ESMTPSA id v1-20020a056512096100b0050480e8a676sm2213434lft.268.2023.10.11.03.28.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Oct 2023 03:28:49 -0700 (PDT)
Message-ID: <427980eb-3235-4d63-bb8f-3af06978a3eb@linaro.org>
Date: Wed, 11 Oct 2023 12:28:48 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V2 0/4] Add support for Qualcomm ECPRI clock controller
Content-Language: en-US
To: Imran Shaik <quic_imrashai@quicinc.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Taniya Das <quic_tdas@quicinc.com>, linux-arm-msm@vger.kernel.org,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Ajit Pandey <quic_ajipan@quicinc.com>,
 Jagadeesh Kona <quic_jkona@quicinc.com>
References: <20231011090028.1706653-1-quic_imrashai@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231011090028.1706653-1-quic_imrashai@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 10/11/23 11:00, Imran Shaik wrote:
> The ECPRI clock controller support for QDU1000 and QRU1000. The clock
> controller has a special branch which requires an additional memory to
> be enabled/disabled before the branch ops.
> 
> Changes since v1:
>   - Updated the dt-bindings
>   - Modified mem ops logic as per the review comments
>   - Update all the hex values to lowercase
>   - Aligned the clock entries in DT as per the review comment
> 
> Previous series:
> v1 - https://patchwork.kernel.org/project/linux-arm-msm/list/?series=774092
That link is gone by now, as patchwork is periodically purged.

Please use lore links instead.

https://lore.kernel.org/linux-arm-msm/20230808051407.647395-1-quic_imrashai@quicinc.com/

Konrad

