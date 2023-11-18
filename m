Return-Path: <devicetree+bounces-16848-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F8C97EFF41
	for <lists+devicetree@lfdr.de>; Sat, 18 Nov 2023 12:30:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C06FD1C20914
	for <lists+devicetree@lfdr.de>; Sat, 18 Nov 2023 11:30:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1F1D10A2D;
	Sat, 18 Nov 2023 11:30:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bqbnVh2+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 53DCED6C
	for <devicetree@vger.kernel.org>; Sat, 18 Nov 2023 03:30:02 -0800 (PST)
Received: by mail-wm1-x342.google.com with SMTP id 5b1f17b1804b1-40859c464daso2972935e9.1
        for <devicetree@vger.kernel.org>; Sat, 18 Nov 2023 03:30:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700307001; x=1700911801; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=I05hizi/ziQIYj44ryTJSTiDmdIMI2fLRCRgol7O9do=;
        b=bqbnVh2+2ZquxsoTXdQHewg/IsptQlBZSCXH6cI56CIq9Cwox+zR/hhOWU6VdmrThu
         EtKHvmTcjhL32xt67NGyY3fngjF0DUQHV8Z/tvAsWGx+7h++gE8vjbuHin23ySsH1HZr
         PDw9BPS6ZFf+L2imXaqRs54veJY5Fd0e5VRX2H2aE3/+CwJmNX65lOaGAXVocwglTBIk
         qq6PKTbv+g8D46pS+GfMPdoc5NsWBCfU+IAAFMf1L/Pm9zGfDHIebIcwwJf4j7WKMIXd
         Jjk0jFxyYum0nXFO0QYsmX8toW0eL+n6Y1KRhM/tKdvkqD9X1plsZzhI/pMQj3FnRpY6
         CBWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700307001; x=1700911801;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=I05hizi/ziQIYj44ryTJSTiDmdIMI2fLRCRgol7O9do=;
        b=xPEZme7VbyJxQjnOflCYxaPtRBXoCAmpblg4FxpK1TtU5Od7QpBGqk2lacH19TaCuG
         arjHNnMMv8KIqGSuRf8q4S6H59hEz8Y1XgMftGvktdICQ9t9K5pXUdubWmy05XZ7Lw2z
         LRhAVpf42xm70I9ptXyRjGII0ClJomfMBTrJIaH/cUvsTVguNoLaeiaioR+CJoskS/Mx
         zhrn8CvVetfjG4kPhkN+IF+z864jE8q/V6uiAKzAJvV4Xub6KnzXKsGGRcSEBNTsQtho
         56zZVhf6gXoOosBS/HmGyUpwyytpm4XCbTtYM4YUM7aTi3T8lX3pMgwENsNxR1xIHQct
         N+yg==
X-Gm-Message-State: AOJu0Yz1VQ3adUk1dwzKBtZpKeHPbUMNaajR1Pw2FzE1IDkGYhOClcHJ
	l2wrMquXN1OxZ6OFkRlMqZGfbg==
X-Google-Smtp-Source: AGHT+IHXRPdTBeCZwvX5z2lN8s7sgQIAOPmxapzZDUOSqb/DBt8xN/LwehbOdqPRjfGrH960hvtUQA==
X-Received: by 2002:a05:600c:3b27:b0:405:a30:151e with SMTP id m39-20020a05600c3b2700b004050a30151emr1563466wms.12.1700307000180;
        Sat, 18 Nov 2023 03:30:00 -0800 (PST)
Received: from [192.168.100.102] ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id y4-20020a5d4ac4000000b003316c8ad545sm4008051wrs.76.2023.11.18.03.29.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 18 Nov 2023 03:29:59 -0800 (PST)
Message-ID: <715fd71e-89c7-4332-9c45-361f6562b1b7@linaro.org>
Date: Sat, 18 Nov 2023 11:29:58 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/4] Add sc8280xp CCI and CAMSS core dtsi
Content-Language: en-US
To: Konrad Dybcio <konrad.dybcio@linaro.org>, andersson@kernel.org,
 agross@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
 dmitry.baryshkov@linaro.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, jonathan@marek.ca,
 quic_tdas@quicinc.com, vladimir.zapolskiy@linaro.org
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20231012113100.3656480-1-bryan.odonoghue@linaro.org>
 <e59569d3-cb49-4e11-8bd8-f814f369aaa7@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <e59569d3-cb49-4e11-8bd8-f814f369aaa7@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 18/11/2023 00:51, Konrad Dybcio wrote:
> On 12.10.2023 13:30, Bryan O'Donoghue wrote:
>> V4:
>> - Adds RB - Krzysztof
>> - Drops indicated newline - Krzysztof
>> - Moves "This patch depends-on" below the "---" - Krsysztof
> Just a note for Bjorn, this series is likely on hold as we iron out the
> driver details.. e.g. _src clocks were dropped since this submission.
> 
> Konrad

Eh yes.

Let me take the opportunity to plug the series/patches I'm targeting 
that Bjorn can merge

The CAMCC controller
https://lore.kernel.org/lkml/20231026105345.3376-1-bryan.odonoghue@linaro.org/

The first patch here
https://lore.kernel.org/lkml/20231110-b4-camss-sc8280xp-v5-1-7f4947cc59c8@linaro.org/T/

---
bod

