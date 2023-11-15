Return-Path: <devicetree+bounces-16033-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C43B7EC922
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 18:01:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BF4C01C20BAA
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 17:01:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C34435EFB;
	Wed, 15 Nov 2023 17:01:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QGvruKs4"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAE212FC3D
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 17:01:22 +0000 (UTC)
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE55618B
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 09:01:20 -0800 (PST)
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2c503da4fd6so91658451fa.1
        for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 09:01:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700067679; x=1700672479; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nr6vuhfPEics7daBdGQpqD1rLR5BjzbdvN+08xBD+q8=;
        b=QGvruKs4/M2s/JEMLUSmTOepfGU3iE5Uw63UVoqWT/82bWcG5zyzxUGtek61VTtFdj
         5mZe254Corp/AUkNPano3h5LgmVJTbLniLw5+1u7bYsQmxx3jag4sY+tf4qFhxteMZH7
         4ocYm2OWASR9xzIYDVjlSLDMh6OMjIwmCJk2u4lA9nppVXCRH4m9UENmWsVjWD2r24lt
         rcdH2uJJp/eTXa+Zn8YkXAurhaRA2nCUIoWaN+32JCJE6f8oMcl11Kw3TXgySHnU33yo
         QYaURXUkVo2NN2xNcN2PMMXfitjyrXKbE+nJT7hNlO2FHTWZy4i3+EztemSj+JfY03wS
         rTHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700067679; x=1700672479;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nr6vuhfPEics7daBdGQpqD1rLR5BjzbdvN+08xBD+q8=;
        b=sYDOiwoaV0Ah7UNcIyqmrpwqcekY8ijoWGDn/YRb5RZs10YrHN4CnzOwkpiIrCV9Kn
         m/ylMfXTu5vwhsF8ZBzdrLGiXuf+b3tR0RPcpBbU4dvopEBfASl3NAM3vInbSfcyd8Pg
         Kf4NpjCg9BUQuK+CqgKgsnBx+tAPCOJKFcuZw3P8BCtfZe7WP+BBoAA58UZgSVT2NA6p
         3dd1kgB4ZSZc3i1c0PXG2OtTDq+9OEgekUYmaALwTrSOV5DIyR55sPCz5Go61u+ig8IX
         JZPXvqS2VF3xqmVIQRNsqL2W4NNzJNZnHlB2HA5Knl8+RPb3AvsRaB+JZFIVlg9dTdw+
         K7Sw==
X-Gm-Message-State: AOJu0YxpuZnNeWlNlSAId2hfoXvz9kmDMKpoRV5z77vGL4+5RB8YGyjw
	V3VaoRqxBcD7c3pMPRlF0ifnJg==
X-Google-Smtp-Source: AGHT+IEPUYkKyHBiFfTLuh8TKtrGvK9xxvJ/BsN6m2FxavNOkoOEWZwhNsaG6LdlbntqkUILzUlnCw==
X-Received: by 2002:a05:651c:1a24:b0:2c5:2eaa:5397 with SMTP id by36-20020a05651c1a2400b002c52eaa5397mr5131497ljb.11.1700067679053;
        Wed, 15 Nov 2023 09:01:19 -0800 (PST)
Received: from [172.30.204.150] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id h24-20020a2eb0f8000000b002c00da5c522sm1716220ljl.78.2023.11.15.09.01.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Nov 2023 09:01:18 -0800 (PST)
Message-ID: <cb4131d1-534d-4412-a562-fb26edfea0d1@linaro.org>
Date: Wed, 15 Nov 2023 18:01:14 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 8/9] net: mdio: ipq4019: add qca8084 configurations
Content-Language: en-US
To: Andrew Lunn <andrew@lunn.ch>, Luo Jie <quic_luoj@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 hkallweit1@gmail.com, linux@armlinux.org.uk, robert.marko@sartura.hr,
 linux-arm-msm@vger.kernel.org, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 quic_srichara@quicinc.com
References: <20231115032515.4249-1-quic_luoj@quicinc.com>
 <20231115032515.4249-9-quic_luoj@quicinc.com>
 <a1954855-f82d-434b-afd1-aa05c7a1b39b@lunn.ch>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <a1954855-f82d-434b-afd1-aa05c7a1b39b@lunn.ch>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Level: *



On 11/15/23 17:20, Andrew Lunn wrote:
> On Wed, Nov 15, 2023 at 11:25:14AM +0800, Luo Jie wrote:
>> The PHY & PCS clocks need to be enabled and the reset
>> sequence needs to be completed to make qca8084 PHY
>> probeable by MDIO bus.
> 
> Is all this guaranteed to be the same between different boards?
No, this looks like a total subsystem overreach, these should be
taken care of from within clk framework and consumed with the clk
APIs.

Konrad

