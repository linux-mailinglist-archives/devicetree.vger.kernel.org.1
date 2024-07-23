Return-Path: <devicetree+bounces-87611-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D6AA93A020
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2024 13:43:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0FD6F1F22A58
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2024 11:43:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B881152178;
	Tue, 23 Jul 2024 11:43:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oBN1Q6Mv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B0B614E2D0
	for <devicetree@vger.kernel.org>; Tue, 23 Jul 2024 11:43:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721734989; cv=none; b=Wxu4D1osy3c5M9BC5oILPMllQDSEimACyDDx5PHAFITETS+A2t83dKaw8SpJr7Qh4LcnKh0IweSxEiNYYLSTRr28wT4e7SsXcoYwQW4uaO4jFq1gxfoCEkF36CToRZRY7rMF30Qi0ggVqS9ylRs4fY5ZouuDc2TjWe7GsE4/qe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721734989; c=relaxed/simple;
	bh=EQ/2R7CnVW/41ExqLPRynM0nz+7yZlIbAonf2Xv02oo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Ors5rs+0D20NO+oOupsck4B37Y5b4sRTPx6QbwQ8E/SyZ8kOHPn31HE4ImLfIENO8j+rUtZPugcVYoRFMmIjKmNb8uHmu7GW0Vz94nTC4b9w3ffmKmnA46+vOfPWsNLavBaXRSna52ue3lHuYahVKbYY6ayQasy6qGWtI9pgbjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oBN1Q6Mv; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-52f04b3cb33so3920668e87.0
        for <devicetree@vger.kernel.org>; Tue, 23 Jul 2024 04:43:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721734986; x=1722339786; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=qNV4SPVYDOJceI4uC3ZSm5CO3Vjxa/pP9tGu0hDGYdY=;
        b=oBN1Q6MvExdMGNdjZZZLRnTzq5qkuMEXT5zn3eMPLWoPdJ6AmmWQeCmflUg6g6tHzz
         eCmr3Wgqc8kx0lN85vgyxhEPc9YUUgiOt7ZQ9ZqhUCkepho0cb80XMIITmlh/JwwPg4v
         90IbXlnBen1H4c5o47wh2Db8A4nGewcI38di7E3070L5fMLYCSmCsP8cudDcmSIGE0uN
         +NFW3EDpGoWU1lVCZUeAf81yFiJyCyravY6LTx72xidwdd6L6iCi1J00DUenf2s+2aWA
         4ro+L7OXsfngQ+/PY+LQa3q9boSVT5y+waT1wyHud+ppYrBcTbz96qhyXTSoYN3OxgJD
         FRWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721734986; x=1722339786;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qNV4SPVYDOJceI4uC3ZSm5CO3Vjxa/pP9tGu0hDGYdY=;
        b=clAu2qbdl09uIWuZTeaYxCyR4ZKu7fQnIY9th2A9UC3MXlah6TIntn2f3zqJep23XM
         odqU/pWTkM2+GeQDLYK85mGrMSq88VGO+Jf/t+MjIwFJeyJC4YnsPj2sOjsl1wKr1yYX
         +uHFSu/BkYE4DC/Kx+p/XlM1mPobayD5i6w1UdnL1NIrQV6jXF208kQ5/ebRMmZhgwus
         +dt9dMqJcfggjqnb+w3ZZoob/TuP8PdmZmNPR/F94Uckiwc4gL0Hb5kkNL5amDa78sFf
         0Ggo9MpfQx2pynQzeNfVx+rwtVzgQHiWJBKnQWuwSmtRCr1UoVTASbA9ThvSchW5EoCH
         m+TA==
X-Forwarded-Encrypted: i=1; AJvYcCXKxIfLBiVDQA3y5mI0tgp7JF7mnzS9SQIJ4ODY59EU0gQBOchQb2FV/7pCkTz04ii7K7UyPAZ/Nbg1Yiazc8od7Skjwteo1Qm2qw==
X-Gm-Message-State: AOJu0Yy+M7V9mHmkkOipBh5ABGDQ695/MQTv/fLPTLPuV1WQCuOWKZ9k
	3I7yG/gj9dqtiScIceByUyGCNFY2+fu6X1NPhha0c2XUrj5TWq+yWMbzwVQTXm8=
X-Google-Smtp-Source: AGHT+IEs86rn39NavrG9rTs1cLDHFEyL54PTpu6BMueyoszMj29d5ZTv9gviYSc6SBIrVyLamlVaHw==
X-Received: by 2002:a05:6512:1585:b0:52e:7df0:9a78 with SMTP id 2adb3069b0e04-52efb7498d0mr8442174e87.32.1721734985348;
        Tue, 23 Jul 2024 04:43:05 -0700 (PDT)
Received: from [192.168.105.194] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a7a3c91caabsm541615166b.143.2024.07.23.04.43.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jul 2024 04:43:04 -0700 (PDT)
Message-ID: <080a6fc8-72f6-4922-9237-31d5f80928de@linaro.org>
Date: Tue, 23 Jul 2024 13:43:03 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/5] arm64: dts: qcom: msm8998-lenovo-miix-630: add
 WiFi calibration variant
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Jeffrey Hugo <quic_jhugo@quicinc.com>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Kalle Valo <kvalo@kernel.org>
References: <20240723-miix630-support-v2-0-7d98f6047a17@linaro.org>
 <20240723-miix630-support-v2-5-7d98f6047a17@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240723-miix630-support-v2-5-7d98f6047a17@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 23.07.2024 1:28 PM, Dmitry Baryshkov wrote:
> As most other board Miix uses board-id = 0xff, so define calibration
> variant to distinguish it from other devices with the same chip_id.
> 
> qmi chip_id 0x30214 chip_family 0x4001 board_id 0xff soc_id 0x40010002
> 
> Cc: Kalle Valo <kvalo@kernel.org>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

