Return-Path: <devicetree+bounces-6487-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B71167BB81E
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 14:53:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E5DB01C209AF
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 12:53:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E32F71D6A3;
	Fri,  6 Oct 2023 12:53:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nexus-software-ie.20230601.gappssmtp.com header.i=@nexus-software-ie.20230601.gappssmtp.com header.b="jaUK7riI"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DA761CA93
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 12:53:01 +0000 (UTC)
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A629DDE
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 05:52:57 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-5334f9a56f6so3726215a12.3
        for <devicetree@vger.kernel.org>; Fri, 06 Oct 2023 05:52:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nexus-software-ie.20230601.gappssmtp.com; s=20230601; t=1696596776; x=1697201576; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Cwqsii98peqhVJoK4VIxWSTkPTgnYf80VbctBQv6Fvc=;
        b=jaUK7riIqOMdRoc+PAPVEDMON96UZ3HLUoJNze+qNwyAvLubc0n7Hgjbg2/ESsb2mQ
         KerW+rI5tdfxN06MYBjjYn/5YQ62/gtAZXsews/genGsUFhPU7ZwsH2JKaFcMe6V4nW3
         tXRoGlBaOSa0/ubXCGXZEX8S6lz62q3g0Eh9Q815Y08pEYe4Mjz83M448XkTiQsK2GMJ
         UpaJsEK1ARRoDzTf/CtRc3CwG/mUn//qm+FSLXDAwIg25psVmDAlbHoko3N5ijHcDI7B
         jpoiQM7W3Sdh6FYDRRgUleu6vqWVsvVDflMWlw8SYMfxiwtg8q3zG66rZfPfem9oXhi3
         d02A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696596776; x=1697201576;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Cwqsii98peqhVJoK4VIxWSTkPTgnYf80VbctBQv6Fvc=;
        b=Si/xotHUdeiF7NqmraO0PhZD8szWJG+AQ6Cn+BCBUy0HlBln8987+0OvGg5uPWQzpY
         g3OMKDs5y7w9Uu4NPYHoFxv0NcAv2UbuxcJ5bEKloVmy3xHtKlGntghG3Yy2spvTVy/i
         BsEVSppf+aOnhedmXZjvFBTBOJI3jSrOGe+v4/dVIXxcRuRNCn0PyReZg/zKSSO99UZb
         Thon1k+CtH8IioAU0Vt/Ov1rlEkhJ0avOA8Q8kf++Jv9YMdnWvtDMpjBITX/JjH5oYeF
         OH7gHRROTyhpPAqgCop+65qfSDuTWcirztbUQncr2bxylCNmROyHDnD7klzzboB3mC+N
         QM2Q==
X-Gm-Message-State: AOJu0YwCR/xAvpqnDXKD1Fgcb7L1Says+lC+PLVNbv52lCx0BXKTVDby
	ZLw2R/GZMB0zqKl8uxB8BUwVxw==
X-Google-Smtp-Source: AGHT+IFB2jTPlqF+QJCHbtvihw8H2Qw/ZlMn8tXyBNhZ+xQvO86DXco10Nkex1qT7Hqi67YGHbT0cw==
X-Received: by 2002:a17:907:77c7:b0:9ae:1872:d01a with SMTP id kz7-20020a17090777c700b009ae1872d01amr6510332ejc.76.1696596775820;
        Fri, 06 Oct 2023 05:52:55 -0700 (PDT)
Received: from [192.168.0.162] (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id l1-20020a5d4bc1000000b00323287186b2sm1607954wrt.29.2023.10.06.05.52.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Oct 2023 05:52:55 -0700 (PDT)
Message-ID: <661e3701-9a26-451a-8851-f1d1b2355f80@nexus-software.ie>
Date: Fri, 6 Oct 2023 13:52:54 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] media: dt-bindings: media: camss: Add
 qcom,sc8280xp-camss binding
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, loic.poulain@linaro.org,
 rfoss@kernel.org, andi.shyti@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, todor.too@gmail.com,
 mchehab@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20231006120159.3413789-1-bryan.odonoghue@linaro.org>
 <20231006120159.3413789-5-bryan.odonoghue@linaro.org>
 <ace84d7f-d332-4598-a95d-634c1d17f852@linaro.org>
From: Bryan O'Donoghue <pure.logic@nexus-software.ie>
In-Reply-To: <ace84d7f-d332-4598-a95d-634c1d17f852@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 06/10/2023 13:33, Krzysztof Kozlowski wrote:
>> +      port@3:
>> +        $ref: /schemas/graph.yaml#/$defs/port-base
>> +        unevaluatedProperties: false
>> +        description:
>> +          Input port for receiving CSI data.
> No output ports to some ISP?

Not for the moment anyway. Its a raw dump of bayer data to userspace.

---
bod

