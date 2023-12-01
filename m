Return-Path: <devicetree+bounces-20735-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B8E30800AE8
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 13:31:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7273928123D
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 12:31:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C83581F5FC;
	Fri,  1 Dec 2023 12:31:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AX6CDuhe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-x731.google.com (mail-qk1-x731.google.com [IPv6:2607:f8b0:4864:20::731])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1BD9213E
	for <devicetree@vger.kernel.org>; Fri,  1 Dec 2023 04:31:08 -0800 (PST)
Received: by mail-qk1-x731.google.com with SMTP id af79cd13be357-77897c4ac1fso117627285a.3
        for <devicetree@vger.kernel.org>; Fri, 01 Dec 2023 04:31:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701433867; x=1702038667; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=q7hh6CC3wSteFKObO5YP2ueHTB4l8VhYUaj/87rIPRc=;
        b=AX6CDuheZWCA1sUZCi56gn2vHvY+1vGPfAZ6jyuZSeg3SYyjWjRMsk1psFNPOkxVL7
         GWF3hWcy/YHLPbb7ShV4P+pduNh2lMA36MvxXnAnuLlYNCvfv+7lb1p/5yh0y2muC9S+
         UzZC4C+6/npD34iqyVXiNBPmq7T/Gyg4yDTK/M7NXHq9O0MvTC9FMkYYTPFAI7M+PCcj
         EWgiVeOsuHx68/m4KPKrD1j+Gl770X+NEUpMmPwuRhxzeXGFdhvPTDxQ+MbuJuYkFFUf
         C91rqfnOkYNX/YyMM6wyyJRHxUC2DpqNU+Lq0kfYY03bilE1pLCP3CyI19JIvQsVutTR
         hRLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701433867; x=1702038667;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=q7hh6CC3wSteFKObO5YP2ueHTB4l8VhYUaj/87rIPRc=;
        b=uabm3czD5xfgtIq4g+Om8RA9/K0cVl9Sgqr7c5EJUMCvwjS2q0p5CqYv9YxYqaZyFJ
         DKQwaEpqTzK+nuEu5X5m+w8HzQZHiTKNzp3eznuOP53LlEdhWUzDrMLgLtUeuCEFdhuI
         eq/fxksnOYfzXu9BaTQq1YgYdoAtMGDH2PQ9BzPcYICAEr9Cl/0ITGAGEN8/eGx2WELU
         4W+koq//wk6/50QsU0bqxFcsaATZ1XZ3HYTHk3osWkUiPAPeZl7eof9IYWldzW24pWrI
         btSZQ3FLvRfrljrjmN4c0evZGv72oq2OOPcv7BZICafJ/erum3SkByiMtwtEuF6nzy5K
         TLOA==
X-Gm-Message-State: AOJu0Yyd8ZDz0jSRLTQjr9Q4nzfdljOTD6A4o/zp6H/ogzlbEpGmluez
	6aMRp/4854HhYMFioQewV690
X-Google-Smtp-Source: AGHT+IE1kJN7qLd2CNmGt5TJbTi4Ma6/SDDEDvoRX10XqoO8jyv841Ns3tHx6UmwBMtliC3KLksQjA==
X-Received: by 2002:a05:620a:698e:b0:77b:aa20:908 with SMTP id ua14-20020a05620a698e00b0077baa200908mr23876438qkn.37.1701433867158;
        Fri, 01 Dec 2023 04:31:07 -0800 (PST)
Received: from thinkpad ([117.213.102.92])
        by smtp.gmail.com with ESMTPSA id qx3-20020a05620a8b8300b0077da68b8801sm1445020qkn.65.2023.12.01.04.30.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Dec 2023 04:31:06 -0800 (PST)
Date: Fri, 1 Dec 2023 18:00:54 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Krishna Chaitanya Chundru <quic_krichai@quicinc.com>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, quic_vbadigan@quicinc.com,
	quic_ramkri@quicinc.com, quic_nitegupt@quicinc.com,
	quic_skananth@quicinc.com, quic_vpernami@quicinc.com,
	quic_parass@quicinc.com
Subject: Re: [PATCH v3 1/3] dt-bindings: phy: qcom,qmp: Add PCIe
 qcom,refclk-always-on property
Message-ID: <20231201123054.GM4009@thinkpad>
References: <20231127-refclk_always_on-v3-0-26d969fa8f1d@quicinc.com>
 <20231127-refclk_always_on-v3-1-26d969fa8f1d@quicinc.com>
 <78815f1b-7390-40de-8afd-ac71806f4051@linaro.org>
 <24fae40a-453b-b14c-923f-88758a246aa7@quicinc.com>
 <20231201060716.GJ4009@thinkpad>
 <166d307e-7d1b-48b5-90db-9b6df01d87c2@linaro.org>
 <20231201111033.GL4009@thinkpad>
 <f844cd1e-7e4f-4836-bc9a-2e1ed13f064f@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <f844cd1e-7e4f-4836-bc9a-2e1ed13f064f@linaro.org>

On Fri, Dec 01, 2023 at 01:10:48PM +0100, Krzysztof Kozlowski wrote:
> On 01/12/2023 12:10, Manivannan Sadhasivam wrote:
> > On Fri, Dec 01, 2023 at 09:01:43AM +0100, Krzysztof Kozlowski wrote:
> >> On 01/12/2023 07:07, Manivannan Sadhasivam wrote:
> >>> On Tue, Nov 28, 2023 at 02:49:18PM +0530, Krishna Chaitanya Chundru wrote:
> >>>>
> >>>> On 11/28/2023 2:26 PM, Krzysztof Kozlowski wrote:
> >>>>> On 27/11/2023 13:13, Krishna chaitanya chundru wrote:
> >>>>>> Document qcom,refclk-always-on property which is needed in some platforms
> >>>>>> to supply refclk even in PCIe low power states.
> >>>>>>
> >>>>>> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> >>>>>> ---
> >>>>>>   .../devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml        | 7 +++++++
> >>>>>>   1 file changed, 7 insertions(+)
> >>>>>>
> >>>>>> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> >>>>>> index 2c3d6553a7ba..c747c9f35795 100644
> >>>>>> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> >>>>>> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> >>>>>> @@ -93,6 +93,13 @@ properties:
> >>>>>>     "#phy-cells":
> >>>>>>       const: 0
> >>>>>> +  qcom,refclk-always-on:
> >>>>>> +    type: boolean
> >>>>>> +    description: In some platform where PCIe switch is connected, pcie switch due to some design
> >>>>> You received a comment to use proper wrapping: 80. Please implement it.
> >>>> I will update this.
> >>>>>> +      limitation fails to propage clkreq signal to the host and due to that host will not send
> >>>>>> +      refclk, which  results in linkdown in L1.2 or L1.1 exit initiated by EP.
> >>>>>> +      This property if set keeps refclk always on even in Low power states.
> >>>>> The property name suggests that's the state of hardware - refclk is
> >>>>> always on. Description suggests you want to instruct OS to do something.
> >>>>>
> >>>>> Again, third time (once from Bjorn, once from Dmitry), rephrase property
> >>>>> name and description to describe the hardware issue. I see description
> >>>>> improved, but not the property name. Again in the end of description you
> >>>>
> >>>> Both bjorn and Dmitry gave comments to change the description only, and not
> >>>> the property name,
> >>>>
> >>>> correct if I am wrong.
> >>>>
> >>>>> say what Linux should do. Bindings do not describe Linux OS.
> >>>>
> >>>> I will remove the last line in the next patch.
> >>>>
> >>>
> >>> You should name the property as, "qcom,keep-refclk-always-on"
> >>
> >> Keep the clock by who? By driver? Then not, property should describe
> >> physical phenomena or hardware issue being fixed here, not what driver
> >> should do.
> >>
> > 
> > This property indeed fixes the hardware issue (though in board level) and I see
> > a plenty of properties similar to this one instructing the OS to keep some
> > resource ON to workaround hardware issues. So they are all wrong?
> 
> What I said before:
> "Again, third time (once from Bjorn, once from Dmitry), rephrase
> property name and description to describe the hardware issue. I see
> description improved, but not the property name. Again in the end of
> description you say what Linux should do. Bindings do not describe Linux
> OS."
> 

You didn't answer my question:

"I see a plenty of properties similar to this one instructing the OS to keep some
resource ON to workaround hardware issues. So they are all wrong?"

If you say they are wrong, why are they approved in the first place?

- Mani

> 
> Best regards,
> Krzysztof
> 

-- 
மணிவண்ணன் சதாசிவம்

