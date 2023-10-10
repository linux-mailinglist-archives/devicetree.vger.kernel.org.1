Return-Path: <devicetree+bounces-7341-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 402A97C01D5
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 18:40:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 720351C20B5A
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 16:40:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91B4A2FE1B;
	Tue, 10 Oct 2023 16:40:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="O3dZx92w"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDBC82FE18
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 16:39:59 +0000 (UTC)
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 653F4B4
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 09:39:58 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id 38308e7fff4ca-2b9c907bc68so67282251fa.2
        for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 09:39:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696955996; x=1697560796; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hBAWc80HIYF1UAoqOKYikAPW+Uj9N8HcMer/MGjoSq4=;
        b=O3dZx92wbkcZ/v+95ZVefI43nPdOoc0hZBmeq15+R+NYyNdzKdDcEhInkIhnVHwmKj
         uruCQXZ6P1Otknv7KcjmVFLP2Px0deynmmctID+sATPcpyp6GvbYpnCRQ2fcJgS6v3vL
         /Z9z6LJ+3XLUsiiowjDOvKXAXYzVqMBJ/7iDwRbNcEB157/h8GuxQyC/Gz6FqRhXqjUl
         GLOzLMgI3d+pBSavhmqy1zBQrgIsXlR9hGStVge4gm4uqkXU4v7lTIuy6G3Sqwp8T3uu
         7lVbl/4A1A25WuFWUUIKsYX6l56igC3wIN711RyY1r+s/Irhq11w3srUGfar47ea69DW
         Lw/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696955996; x=1697560796;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hBAWc80HIYF1UAoqOKYikAPW+Uj9N8HcMer/MGjoSq4=;
        b=DUQzeKxFummC1LL/ySRyy4Q2wgrba3o1n3+Cqsg7hGGz/QVM39ChNGyium+pvGKy7x
         5TMVsnLUi606+kzUtaqRIqDDGrqO6G5E+bKy8f2O/PxKyQ7AqdYnaV0FwKBG8XEuRkyq
         WvSpBZLAZRsMFczulonpepqjvfqALC/FOpSPX5oT4oADxTvuWssiXxUmEG7REiH81Xoq
         kuXc8uk+fCAU8PX+o3pDxRRra+t7RCmrl6P0QzcnEkgOxeIc1O+ZAfL7vXAjUUBE0GJp
         LiRj4IvymBm8Ljk7JGCd9uqG8di4MpOBRkLlFW48kAMyYfl6cznJjA8NUW4AWSfZYWRj
         csfw==
X-Gm-Message-State: AOJu0YxnS+KPNDIe4gPYy9ALmy9Gi3FtBfA9EBEofKnb+UpjjO44Kf/y
	iEtSfu5QDGoReWhxjntxcnyGnQ==
X-Google-Smtp-Source: AGHT+IFVDTHjOPqqbq5QIlF4ISYN6N4U+VKelAKaTIDnpNQ0UzQcS+aDmvycqldIVjgvzih4drSCwA==
X-Received: by 2002:a2e:9d50:0:b0:2c0:18b8:9656 with SMTP id y16-20020a2e9d50000000b002c018b89656mr13708968ljj.24.1696955996606;
        Tue, 10 Oct 2023 09:39:56 -0700 (PDT)
Received: from [172.30.204.182] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id v6-20020a2e9f46000000b002b9358f5088sm2482543ljk.53.2023.10.10.09.39.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Oct 2023 09:39:56 -0700 (PDT)
Message-ID: <81e4c504-fad4-4cbf-b17e-a8b9f323f1c2@linaro.org>
Date: Tue, 10 Oct 2023 18:39:55 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: qcom: sm8550: Add download mode support
Content-Language: en-US
To: Mukesh Ojha <quic_mojha@quicinc.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Lee Jones <lee@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <1696954157-16327-1-git-send-email-quic_mojha@quicinc.com>
 <1696954157-16327-3-git-send-email-quic_mojha@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <1696954157-16327-3-git-send-email-quic_mojha@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 10/10/23 18:09, Mukesh Ojha wrote:
> Refer TCSR phandle from scm node, so that it can be used by
> SCM driver for setting download mode.
> 
> Signed-off-by: Mukesh Ojha <quic_mojha@quicinc.com>
> ---
Please improve the commit message, like in 2/3

Konrad

