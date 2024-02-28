Return-Path: <devicetree+bounces-47030-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 19AD686BC35
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 00:30:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C870C286476
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 23:30:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E49270044;
	Wed, 28 Feb 2024 23:30:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JJJ8B4wR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E54213D31B
	for <devicetree@vger.kernel.org>; Wed, 28 Feb 2024 23:30:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709163010; cv=none; b=GOQj1+2lMQNs9Epf4JUceKUVXEI3QEqulK1jyTslSWPZV5bXbV2rL5AhXcguRvhyQTUytICwkUHTJtsoM4nNZHWZ4VOILjmGJRWJSTXxVxmKP9s9kV/ClY5iohG6Ge9hdtcSzeSweXDKCGgYZwp6C2NaYqySOxWk/941g7cwsCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709163010; c=relaxed/simple;
	bh=Hi5lXTKu+1HKxIAwbHrUov2fvmwM59X4+ZnajCYZ0XM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YUuy78D5yzHTIXq02xNrVQMO79otQvgcuuSrYV/m9Z5YsgKM5EQFLhIYsOahM+5gJrXvE77pXRJvqN5YbQBHISb4ZUG5fEZeEk1mH/8sgKtrsXyppaKvV/moQg86PozFE0wX5ocYUPlUsZAWAXz9XfcbQMJYhqssVoXsOQeJoU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JJJ8B4wR; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-5132181d54bso245375e87.3
        for <devicetree@vger.kernel.org>; Wed, 28 Feb 2024 15:30:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709163007; x=1709767807; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZQxHKLVMe9zF7KdVnR20XeSPbfRoANWPrPTTMde3MT4=;
        b=JJJ8B4wR9tzAbhePgQo1lqhpTW2JDs0wRGAqhH6iioELdzzpfbCXCFGpfg8t9DZXrG
         8fTs7nBc27x9PG0RUzJIz4kPzyX8IXDG1VtcFZ7syW8VeAjAdCjwbG2ijZlWe27rGIrQ
         QxXG7BzlA/qpa28OPg0c9PcD+N8wrxz/AxLL6HJDw1CzZFNgmUe2bfOZGh+Lu9inFh/K
         2h5DXyECjSj7MiI+WDjRNPecce6elbA/oCnPzJP/ikmwsOur5tmHjpq/ckN4P1nmNFnz
         Hy0LiscMuqvmQ1W6axO8eHj/L84B+IBAnGb0bV6qhD1t47Equt4ozJ7GsEZKlqJcF/LF
         K1+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709163007; x=1709767807;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZQxHKLVMe9zF7KdVnR20XeSPbfRoANWPrPTTMde3MT4=;
        b=dRt7J+KbnJLO+VunhOkjHPiihRygqjTpCRN0MozvOpXfDnNQfmIkqAqvX5t1AmC1r0
         dVjSKNmhbO6tb4p6Ey9dDDQg8nD7lYmut4PTu7S8pEN6o/fZzVXAwq83xcxCSwia01R0
         d1LTvHSzAtmDZPojvpDrYJeWapaej9fTCJaw4FHyLy4mtBsCzzXky+pkt5ClxIHtUzN5
         IJQH1QYVBfTal/7krzZbkXS8ahGHtq1w0G/X0YNoh1vwEimrk2CIZw4c9V8pckB/F2+1
         iNq9xO4rZ1IWRpkkfoAA2w278k01MrqAvBFxAprmhn5ONA0rkKE/SAwfE6pq3dy4EBF8
         AF4A==
X-Forwarded-Encrypted: i=1; AJvYcCUU9F8D9Sr3/1Z5P/ZuHQzAjteiJUv2bkD5DSzo0rFANiwn/fund9qsnVxcRRfM3XwI/95Cf0IdinYSb1UN33YZmEixSNXOs2metw==
X-Gm-Message-State: AOJu0YxScb8A0UQXJ/WH+It2MJ3AbX/93iBSjsOBBqBVbgmQ2r7mf8sz
	EvtqmWExJ+apj14R6FnLdkoCZ3BJReB++08dvdyrEGs1L9CIfq8TwNaSbJtZNo4=
X-Google-Smtp-Source: AGHT+IHN5YjuBZlnrntaLoy+ZQsiiJ3wrqjcW6gl3lzyPot3QNyWDQDxLDeELDUVHC67EUW9JmTOmg==
X-Received: by 2002:ac2:488d:0:b0:513:1561:af08 with SMTP id x13-20020ac2488d000000b005131561af08mr226006lfc.60.1709163007343;
        Wed, 28 Feb 2024 15:30:07 -0800 (PST)
Received: from [172.30.205.146] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id c2-20020ac244a2000000b0051321393cbasm29610lfm.115.2024.02.28.15.30.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Feb 2024 15:30:06 -0800 (PST)
Message-ID: <ada6c2ac-06ad-44bc-8d1e-e59ccf8ac551@linaro.org>
Date: Thu, 29 Feb 2024 00:30:03 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 00/12] arm64: dts: qcom: sc8280xp: PCIe fixes and GICv3
 ITS enable
Content-Language: en-US
To: Bjorn Helgaas <helgaas@kernel.org>, Johan Hovold
 <johan+linaro@kernel.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240228220843.GA309344@bhelgaas>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240228220843.GA309344@bhelgaas>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 2/28/24 23:08, Bjorn Helgaas wrote:
> [+to Mani]
> 
> On Fri, Feb 23, 2024 at 04:21:12PM +0100, Johan Hovold wrote:
>> This series addresses a few problems with the sc8280xp PCIe
>> implementation.
>> ...
> 
>> A recent commit enabling ASPM on certain Qualcomm platforms introduced
>> further errors when using the Wi-Fi on the X13s as well as when
>> accessing the NVMe on the CRD. The exact reason for this has not yet
>> been identified, but disabling ASPM L0s makes the errors go away. This
>> could suggest that either the current ASPM implementation is incomplete
>> or that L0s is not supported with these devices.
>> ...
> 
>> As this series fixes a regression in 6.7 (which enabled ASPM) and fixes
>> a user-reported problem with the Wi-Fi often not starting at boot, I
>> think we should merge this series for the 6.8 cycle. The final patch
>> enabling the GIC ITS should wait for 6.9.
>>
>> The DT bindings and PCI patch are expected to go through the PCI tree,
>> while Bjorn A takes the devicetree updates through the Qualcomm tree.
>> ...
> 
>> Johan Hovold (12):
>>    dt-bindings: PCI: qcom: Allow 'required-opps'
>>    dt-bindings: PCI: qcom: Do not require 'msi-map-mask'
>>    dt-bindings: PCI: qcom: Allow 'aspm-no-l0s'
>>    PCI: qcom: Add support for disabling ASPM L0s in devicetree
> 
> The ASPM patches fix a v6.7 regression, so it would be good to fix
> that in v6.8.
> 
> Mani, if you are OK with them, I can add them to for-linus for v6.8.
> 
> What about the 'required-opps' and 'msi-map-mask' patches?  If they're
> important, I can merge them for v6.8, too, but it's late in the cycle
> and it's not clear from the commit logs why they shouldn't wait for
> v6.9.

Either way, I believe they should go through the qcom tree, as it's
a very hot one with lots of different changes to a given file.

Unless the soc-late window is already closed... Bjorn A will know.

Konrad

