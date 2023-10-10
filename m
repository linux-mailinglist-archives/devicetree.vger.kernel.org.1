Return-Path: <devicetree+bounces-7338-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5430C7C01CB
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 18:37:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8447A1C20BDD
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 16:37:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD3872FE13;
	Tue, 10 Oct 2023 16:37:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OtTVdiMN"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75CD92FE07
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 16:37:17 +0000 (UTC)
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8238BB6
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 09:37:15 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-40651a72807so56918715e9.1
        for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 09:37:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696955834; x=1697560634; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=b2+nmzantxOYY6snfxh3U/lP8Nv4ffuUeaORW4FhlFk=;
        b=OtTVdiMNhurxGoo4voKaItx2tNCLzc0YY/xCpJA3I7CSLDQLb8SA1h8ruuD1/dxAHZ
         0fApCT1YlIF1vWRcSoyQsJxnsIQkVbm9gJkdmb+7Pi8wdCpevBx4lq6Pa5lO4nhY8vN4
         tQZxuPwOnesHQdAfngpS7gcAk1DUQv4Xexd56GCSCsekR4w4LRbt9tj5/TXdAfPxOodx
         kTFJBxV14QW5G4ZOUe6ypAfDOQ9TmxWw4flxvQJISgYLAmbcYg0zheycFZP4h12gk8u0
         ZCndYcFNNW+jPle334LcqjaUMfbLZRkkfrLZXc8NwHue2hgcJNYiUXqBZBRsflpWe8Gp
         Ompw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696955834; x=1697560634;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=b2+nmzantxOYY6snfxh3U/lP8Nv4ffuUeaORW4FhlFk=;
        b=R3J0Uo4StrJ84HCI8BDd7I7EeBchZk4BYp4erCD1d7JC7ULApKN5Xg6hAb9bnm1+AI
         mDLb3tp8Idi0dT00SvzaIuWpRjpDpEgU5GSMHl/d4+B/bmFQyDhX1tY8ib5LPJGsfIxY
         VDBb/9lGc9aXY9zQXq9ZeTBNSoPoN2xGWvt+4GNg4OruGFqZe7zg1CFhC82EeUJ7rTTx
         IBOVqxV9IElwqou+XK9s6YilbvRoIns1wrLE15gFryEPgU9Z0O/6ozh8N9mCkz0RaeDK
         lMbi12ulVKLIKfafC0FkR4235Iu+bWwceoN9NKKPi1hzCxirFCRVdd48lVqR/Odcd3wE
         CgGg==
X-Gm-Message-State: AOJu0YzTfJUgKbz8qH4fFQHmY8RzrRVE2VptaT3H5eB/aDSog88VlGVK
	P1jxRyysggGewYnpwbujxXlZPQ==
X-Google-Smtp-Source: AGHT+IHuDBPm08d2IT/HViICAu+xRv2PqSFZdUqU3VVrNFhRl/7xmwE37yYJexiLv4EDQkrEGogpIg==
X-Received: by 2002:a1c:7712:0:b0:401:c52c:5ed9 with SMTP id t18-20020a1c7712000000b00401c52c5ed9mr15859201wmi.32.1696955833906;
        Tue, 10 Oct 2023 09:37:13 -0700 (PDT)
Received: from [172.30.204.182] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id bg24-20020a05600c3c9800b004063c9f68f2sm11675343wmb.26.2023.10.10.09.37.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Oct 2023 09:37:13 -0700 (PDT)
Message-ID: <5458734c-b9ff-4351-9bcd-c3dd7538f135@linaro.org>
Date: Tue, 10 Oct 2023 18:37:11 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V1 1/4] dt-bindings: ufs: qcom: Add qos property
Content-Language: en-US
To: Maramaina Naresh <quic_mnaresh@quicinc.com>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, "James E.J. Bottomley"
 <jejb@linux.ibm.com>, "Martin K. Petersen" <martin.petersen@oracle.com>
Cc: Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
 Bart Van Assche <bvanassche@acm.org>, linux-arm-msm@vger.kernel.org,
 linux-scsi@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, quic_cang@quicinc.com, quic_nguyenb@quicinc.com
References: <1696952947-18062-1-git-send-email-quic_mnaresh@quicinc.com>
 <1696952947-18062-2-git-send-email-quic_mnaresh@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <1696952947-18062-2-git-send-email-quic_mnaresh@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 10/10/23 17:49, Maramaina Naresh wrote:
> Add bindings for per-cpu QoS for QCOM UFS. This improves random io
> performance by 20% for QCOM UFS.
The bindings addition improves performance? Cool :P

Please explain your changes and provide the "why".

[...]

> @@ -318,5 +326,13 @@ examples:
>                               <0 0>,
>                               <0 0>;
>               qcom,ice = <&ice>;
> +            qos0 {
Looks like the indentation is off, also missing newline before subnodes.

> +                cpumask = <0x0f>;This should be a CPU phandle array instead. Besides, can we not 
determine this dynamically?

> +                vote = <44>;
> +            };
> +            qos1 {
Missing newline between subnodes.

Konrad

