Return-Path: <devicetree+bounces-7287-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B7D767BFE96
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 15:57:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 731BB281504
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 13:57:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7E881F932;
	Tue, 10 Oct 2023 13:57:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nexus-software-ie.20230601.gappssmtp.com header.i=@nexus-software-ie.20230601.gappssmtp.com header.b="wfN99QRg"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 145AC1DFF9
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 13:57:02 +0000 (UTC)
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1691CC6
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 06:57:00 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-40566f8a093so52541825e9.3
        for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 06:57:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nexus-software-ie.20230601.gappssmtp.com; s=20230601; t=1696946218; x=1697551018; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NYWciwUfzF59aHppIFLCZXbAD7SKQWPGWbHHZOCCLvs=;
        b=wfN99QRgDjjm2iGMpo3oWU9i3lUsAAhm/YBsddPpXjMWfLu0kCIfJqToljQSsvj58z
         QK5eQ+FrojKspVLIv7zv5egDon7dfv5FGNCdECC+Nohtu6Tniwy2kDR3JSgldruhNbnN
         C2oUE8JK0UxkNetAyEax4/wlysI72nvcEqJlMZ02wZ1W3gyeNkfDoKgT7khWuQUsk4XO
         YSWIQkvC+Z1m95g+fNgqn2TdHzC+kKD5sgm8rAYRBmWvOejaSmfg3gx4g6fT9G1Hmn91
         zKFTsiYMsnbU9NyTaGbLbl/DjQiFtcHcxjHCc+N7cxJGGYff4IlUYq5v69LD0iOpJbn5
         nleg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696946218; x=1697551018;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NYWciwUfzF59aHppIFLCZXbAD7SKQWPGWbHHZOCCLvs=;
        b=L4c48eyx3FVwb9+Cpp1jgmQJ6XxKX7q6hEbdYAUBFDRt/XxZG3WdhygBu/MGh0RWBa
         egZGbDEcAQIXrktNfpg/0+BX18kVzL2u4L4uim91L03oy1ZmQyL4pCmsmrxchyoZm8cE
         Ox67GQWSNLgwA7qtSiD/fLDjEU7NoBzf97j4dIbfaliW4tHKiqsc/t2tP7V2VCRYltCz
         RzHbvps5ZLeifujkVVVvjOcvYUkvysxS756RWiypmIX0o2pMsbrsxM1zcT6jAvQ8pjNF
         Ums/W4aVvF3xEmo3MK2X+rp8nDjKodGkG1C03gEvk0L7Qj221Y+sJ4Gli6Dx0GFNUnvZ
         rhDw==
X-Gm-Message-State: AOJu0YzGBs2ED0CQTd/8h5LN71IkAl6cEGO5dlXVcjkfDTB8QZquiJej
	WtSRQqIMiD6U3xOGzXOKlU5dJi5b28lRU+JR/WY=
X-Google-Smtp-Source: AGHT+IE+vnxzSyo9AaWe7ZgaXykbBDq6JHcYIoNKc0hMWYtSIGkzVrq3qNRcxiIk6PFrwBLg+2Ku8g==
X-Received: by 2002:a05:600c:3781:b0:405:1bfb:ff14 with SMTP id o1-20020a05600c378100b004051bfbff14mr15183186wmr.9.1696946218169;
        Tue, 10 Oct 2023 06:56:58 -0700 (PDT)
Received: from [192.168.100.102] ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id n26-20020a05600c3b9a00b004068def185asm14420554wms.28.2023.10.10.06.56.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Oct 2023 06:56:57 -0700 (PDT)
Message-ID: <04374506-023d-4680-9f0f-77d6893288c4@nexus-software.ie>
Date: Tue, 10 Oct 2023 14:56:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] media: dt-bindings: media: camss: Add
 qcom,sc8280xp-camss binding
Content-Language: en-US
To: Rob Herring <robh@kernel.org>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: konrad.dybcio@linaro.org, devicetree@vger.kernel.org,
 conor+dt@kernel.org, jonathan@marek.ca, andersson@kernel.org,
 quic_tdas@quicinc.com, robh+dt@kernel.org, linux-clk@vger.kernel.org,
 agross@kernel.org, linux-kernel@vger.kernel.org, sboyd@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, vladimir.zapolskiy@linaro.org,
 linux-arm-msm@vger.kernel.org, dmitry.baryshkov@linaro.org,
 mturquette@baylibre.com
References: <20231010122539.1768825-1-bryan.odonoghue@linaro.org>
 <20231010122539.1768825-3-bryan.odonoghue@linaro.org>
 <169694433325.625737.10533845261157845416.robh@kernel.org>
From: Bryan O'Donoghue <pure.logic@nexus-software.ie>
In-Reply-To: <169694433325.625737.10533845261157845416.robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 10/10/2023 14:25, Rob Herring wrote:
> 
> On Tue, 10 Oct 2023 13:25:38 +0100, Bryan O'Donoghue wrote:
>> Add bindings for qcom,sc8280xp-camss in order to support the camera
>> subsystem for sc8280xp as found in the Lenovo x13s Laptop.
>>
>> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
>> ---
>>   .../bindings/media/qcom,sc8280xp-camss.yaml   | 582 ++++++++++++++++++
>>   1 file changed, 582 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/media/qcom,sc8280xp-camss.yaml
>>
> 
> My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> on your patch (DT_CHECKER_FLAGS is new in v5.13):
> 
> yamllint warnings/errors:
> 
> dtschema/dtc warnings/errors:
> Documentation/devicetree/bindings/media/qcom,sc8280xp-camss.example.dts:26:18: fatal error: dt-bindings/clock/qcom,sc8280xp-camcc.h: No such file or directory
>     26 |         #include <dt-bindings/clock/qcom,sc8280xp-camcc.h>
>        |                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

I guess I should be embedding this


This patch depends-on:
https://lore.kernel.org/lkml/20231004161853.86382-2-bryan.odonoghue@linaro.org/T/

or


This patch depends-on:
https://lore.kernel.org/lkml/20231004161853.86382-2-bryan.odonoghue@linaro.org/T/#mc33be3fef01bffe892f72bd5e567dba6a047283b

below the "---" in this patch directly, instead of in the series 
description ?

---
bod

