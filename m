Return-Path: <devicetree+bounces-5053-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 982F97B4F62
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 11:48:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 4A148282551
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 09:48:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EDA0FCA7C;
	Mon,  2 Oct 2023 09:47:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFEA78F78
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 09:47:58 +0000 (UTC)
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3805EB3
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 02:47:56 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2c12fc235fbso36137171fa.0
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 02:47:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696240074; x=1696844874; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=68CSLoMUk/xsQxJmYczMbK1aUNl1yG9wbG7lfg9/RhI=;
        b=SCYcD/sE2mB21crD+Wt5cGyZCLkx4C+qtO8wxTiXs51VJHY17soV9+pamfHdUlWuhL
         NTgdtp/rhNdIuMF0wHYiuyAg2vrTNBDt/1s/Wzfr44KaloVGG5L++8hbpkd/TitsZhDP
         UnQlqR911izMMhEwi4AvAVknbPOB2ANeG42QtuehJxy0rdnA3aWB0xmfQIvCuk7/60me
         NDimCOrrjX3+s1Gz1KWHMWMy5Ia2/+aNmczc51UJVenvi1qoUh60P/QNoWUwJ/FB+1AJ
         gGiUylI4iKXdYWFF5Zlwxdk9QhUkUBO5AgwX/XMzFoU7BupKmnNCcKxmQb9m8A7fl3aA
         shdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696240074; x=1696844874;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=68CSLoMUk/xsQxJmYczMbK1aUNl1yG9wbG7lfg9/RhI=;
        b=obT8Ya4fNjwqnJmrp7zDjbLKJyA1zPm44W9bk2liQRhZZObjj8SKQJfodC0QjauRS/
         r5pxeSAthJISoVtp6VXy9AlK4xVaZMSomD2ZvbuxB6IX2psDF7MFN0qN64LAfhjYt6nu
         WP5h7VuPiVmXOSYEM0WsD1E2h3D9imJYeRKbHP0o7EIRAzzlJGVQ0mQq+BUa43z9cxVs
         rRkzxNOU2ThhG0p0osbWNnOHUBJvx4XpKzrYz8+bvv/VJeNAKQoiqN4++0FrhSgGYDf8
         WvWp0spHkxx2ObwWRaCoJEXBkNjdQWzmE1Nv3p2Hx05tCm5bC+/FTiNC93FYImt0Pp2m
         euJA==
X-Gm-Message-State: AOJu0Yzak7KCs8iAv0gTWVc4Anx3zwu+wXDn6XxQEiU2UK0DJZWM6JvO
	03yasloSFZZgRD/uC6k0+LgB9g==
X-Google-Smtp-Source: AGHT+IFB6wUw1P1R09s+FBtCrJG65I4cwdpFA9MfqSjU6aDZA99s8Ne+18Wsp42LniSmzSCz4sF4yA==
X-Received: by 2002:a2e:9d50:0:b0:2c0:1eea:d9c0 with SMTP id y16-20020a2e9d50000000b002c01eead9c0mr7066747ljj.25.1696240074339;
        Mon, 02 Oct 2023 02:47:54 -0700 (PDT)
Received: from [172.30.204.164] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id x20-20020a2e7c14000000b002b6c61bac2esm5253876ljc.92.2023.10.02.02.47.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Oct 2023 02:47:53 -0700 (PDT)
Message-ID: <77eff01f-082e-d7a7-2d6c-2abcc8665c59@linaro.org>
Date: Mon, 2 Oct 2023 11:47:52 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v11 13/13] arm64: dts: qcom: sa8540-ride: Enable first
 port of tertiary usb controller
Content-Language: en-US
To: Krishna Kurapati PSSNV <quic_kriskura@quicinc.com>,
 Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Felipe Balbi <balbi@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>,
 Johan Hovold <johan@kernel.org>, Mathias Nyman <mathias.nyman@intel.com>
Cc: linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 quic_pkondeti@quicinc.com, quic_ppratap@quicinc.com, quic_jackp@quicinc.com,
 ahalaney@redhat.com, quic_shazhuss@quicinc.com
References: <20230828133033.11988-1-quic_kriskura@quicinc.com>
 <20230828133033.11988-14-quic_kriskura@quicinc.com>
 <f19fa545-0ccb-4670-af77-7c034b1016ef@linaro.org>
 <e7bd3aa9-b8ee-4b8a-2354-e786f9a9ff47@quicinc.com>
 <3920bc96-fe58-4e3b-96ab-706f00edb2ee@linaro.org>
 <e7e4fc1e-661a-fd62-e8b1-1e173cbfcd3e@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <e7e4fc1e-661a-fd62-e8b1-1e173cbfcd3e@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
	RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 9/14/23 17:45, Krishna Kurapati PSSNV wrote:
> 
> 
> On 9/13/2023 5:40 PM, Konrad Dybcio wrote:
>> On 7.09.2023 05:36, Krishna Kurapati PSSNV wrote:
>>>
>>>
>>>> Is there any benefit to removing the other ports?
>>>>
>>>> i.e. are ports 1-3 not parked properly by the dwc3 driver if
>>>> they're never connected to anything?
>>>>
>>> Hi Konrad,
>>>
>>>   Whether or not the phy is connected to a port, the controller would 
>>> modify the GUSB2PHYCFG/GUSB3PIPECTL registers. But if we don't 
>>> specify only one phy and let phys from base DTSI take effect (4 HS / 
>>> 2 SS), we would end up initializing and powering on phy's which are 
>>> never connected to a port. To avoid that we need to specify only one 
>>> phy for this platform.
>> And does that have any major effect on power use?
>>
>> Do these PHYs not have some dormant/low power mode?
>>
> Hi Konrad,
> 
>   I believe there will be some minimal power use. IMO its best to keep 
> only one phy enabled for this variant instead of giving all and 
> initializing/powering-on all 4 of them.
Okay let's not waste power..

Konrad

