Return-Path: <devicetree+bounces-32999-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F168831AE5
	for <lists+devicetree@lfdr.de>; Thu, 18 Jan 2024 14:55:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C5F511F26B21
	for <lists+devicetree@lfdr.de>; Thu, 18 Jan 2024 13:55:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CD4D25639;
	Thu, 18 Jan 2024 13:55:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eMO8vjFW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 594472560F
	for <devicetree@vger.kernel.org>; Thu, 18 Jan 2024 13:54:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705586099; cv=none; b=a28fkarcQZgSdtBbMV1pGSu0+myXGwlaufXEQHsjYaMTkY2hqheM2AcIe7b/ZRmZpzPbhFUvS2vxACp2j5f5xvokoSNXmd++733SiIrh0Ux7VTcQ5oEepZI3A/ZEsiYANGZPFvkgoaU57X5SraulKreutzlk7JjKjmBwzyllYiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705586099; c=relaxed/simple;
	bh=ps1E8PJMTt8mzlLH9eECx/CQbcZhGFU/1wZdq7L4X7U=;
	h=Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Google-Smtp-Source:X-Received:Received:
	 Message-ID:Date:MIME-Version:User-Agent:Subject:To:Cc:References:
	 Content-Language:From:In-Reply-To:Content-Type:
	 Content-Transfer-Encoding; b=VjXmB1fSMQezSknIyvG+oQ1CJ+2dp3mbcdCqqDD4Pr2xT+nmuA4NCcalOdP9CeInyHx2XIlxlphISfhaHn36MSxiUiw9OUVzVB7Cr8OX/+QCfWUwfZA+9HW7wa4SgNhsZvmfFMM7H6EO5ISvbRlJ9g5g0O1ZjlBO9YORjUuBaB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eMO8vjFW; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-50ea9e189ebso14228070e87.3
        for <devicetree@vger.kernel.org>; Thu, 18 Jan 2024 05:54:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705586095; x=1706190895; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ps1E8PJMTt8mzlLH9eECx/CQbcZhGFU/1wZdq7L4X7U=;
        b=eMO8vjFWQ3mLQEcF9OVRKUcV8xq494PRj7nXY1uEX18N2uT+1U++WnIF31AH5f9QYV
         M5+vJvnPlhu3Vt6Y/cc35q6yCz5RWvXlB/MPB5GRu9RflYkXahandtDYfT3ED7cUroRb
         B0bIjyNmqjdE+4Iu9UkuSh1SCwmbyaV7pdzxBUfPB7wef/qmYDHHn+qPPDhH/HcoFxVo
         NbZgi7KzWgwMO0qTknkSaSKV4TnQKqlw+a8BcpsQIxjLQIb2tIAqm1ljFpB0wsM8sjSW
         5qZRjvQWX14VRxqgTR/zNV2x7V8UgOQ20NVKnAMFumItnNwSnd75igwmURnSDFbYT50I
         rbzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705586095; x=1706190895;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ps1E8PJMTt8mzlLH9eECx/CQbcZhGFU/1wZdq7L4X7U=;
        b=EM7SA4D9KaYN/7CZGVvZDfm9T3KP1OM2Oy+m0uhU3RI4sECmKIk7WQiHcX1SXEqwS4
         aJs0KJ66yWtRDVzUthp1PQ6FoCZpJKrbO4g6RYQ2ssOXTxhrDfLkOaFkSfWeA4eBjR69
         mx2HIliSSclRfbFfz0vEYdPfJhndAsiGobMEpABCM1F+AU8ADuM9w77xe+9lzHZu6fTQ
         v0J/jlAY7Vvq6pdLPq4CQRV8aXFF4Xig9bb5AM3gx0Nk/dH7O+bJdXea2DBI4D/CjCnT
         9PKCwp+2M3XLVK81yD3PcDw8d0lyPIjwMK3oN7e8+LgTAjcGECevJJAhE9pISzH/mzbU
         U2og==
X-Gm-Message-State: AOJu0YxCl6Q/ZaZ3YQUino14AY7iVQxF+ghFWgQN/FhxKFI7AadErx4r
	VD9GRrwHvdw35tPdmoegmBa8I3I2S6FTsAHAVopIwag18p6RCAIbalf91t8m99c=
X-Google-Smtp-Source: AGHT+IG81baX14qnfLZc7lP1lCoEd/MVMqnvyBVS2danUVivMYbgvenMBVknrh3McJP0uFBgXyCTSg==
X-Received: by 2002:a05:6512:3c92:b0:50e:78f3:dbed with SMTP id h18-20020a0565123c9200b0050e78f3dbedmr612042lfv.91.1705586095296;
        Thu, 18 Jan 2024 05:54:55 -0800 (PST)
Received: from [172.30.204.173] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id x7-20020ac24887000000b0050eab7d397bsm637771lfc.256.2024.01.18.05.54.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Jan 2024 05:54:54 -0800 (PST)
Message-ID: <e28dc651-a573-4c73-b030-19dd69c48493@linaro.org>
Date: Thu, 18 Jan 2024 14:54:50 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 13/15] arm64: dts: qcom: pmi632: define USB-C related
 blocks
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Bjorn Andersson <quic_bjorande@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Guenter Roeck <linux@roeck-us.net>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <20240113-pmi632-typec-v2-0-182d9aa0a5b3@linaro.org>
 <20240113-pmi632-typec-v2-13-182d9aa0a5b3@linaro.org>
 <1d0d325d-d15e-4e86-b8e3-9f91b99e78bf@linaro.org>
 <20240117220153.GA649327@hu-bjorande-lv.qualcomm.com>
 <9a24a065-b649-4431-b8fb-78c733c07671@linaro.org>
 <CAA8EJppEFSy2=GKgkqC3uS15cO51KfxDrHtxHhAnA10kScYKhQ@mail.gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <CAA8EJppEFSy2=GKgkqC3uS15cO51KfxDrHtxHhAnA10kScYKhQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 1/18/24 14:38, Dmitry Baryshkov wrote:
> On Thu, 18 Jan 2024 at 13:17, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>>
>>
>>
>> On 1/17/24 23:01, Bjorn Andersson wrote:
>>> On Mon, Jan 15, 2024 at 11:00:53AM +0100, Konrad Dybcio wrote:
>>>> On 13.01.2024 21:55, Dmitry Baryshkov wrote:
>>>>> Define VBUS regulator and the Type-C handling block as present on the
>>>>> Quacomm PMI632 PMIC.
>>>>>
>>>>> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
>>>>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>>>>> ---

[...]

> Is there an ack?

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

