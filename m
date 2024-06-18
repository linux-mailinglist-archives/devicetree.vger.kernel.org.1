Return-Path: <devicetree+bounces-77081-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 239EE90D599
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 16:41:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D2CA2287B95
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 14:41:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D8071891CC;
	Tue, 18 Jun 2024 14:24:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dkkkRR7x"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 554171891C2
	for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 14:24:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718720649; cv=none; b=mEZ0J8Fulw+VhkvkIi0fwKIstE8DRJK3yLt8tJtQBbpvvED7+rJFtLDdivN1HJpiv02yL5Q2IE7GCBOb8QtpbxvYE1wagoRlyJsvkHqLYsa2huV/aORhQZbUTA/1gg+JT8VNTMuCWAT/SKfzWChQLMyI9QsKM4026UCmAGu4n2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718720649; c=relaxed/simple;
	bh=EKwts7PirqeXv8GCmsKD14CTWAvJ5DcMwJMZ4Q/8iFM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nbxx48PCBU78itM6nETTDBMwJ7PkLuVughER70WhZKiWiQK5zf1TDQ8uFp1+n1bSWIkZBp4705Ki/LVHi9UE2YtoPdtV8rph2rtBTkdADmkWoMWBOdszyiYMLoXwFCpi35N6hRHI4Fnszl1ZH9KP4Ecrwfo4DufmPaz4AWPoL4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dkkkRR7x; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2ec17eb4493so65249231fa.2
        for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 07:24:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718720645; x=1719325445; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=u9L4PU16nfN2XQvEI7canBzFWJ5IZWFKBrB7QE7CDcc=;
        b=dkkkRR7xzTTNmR8H1BsizA+7zIa4y+TpjDbozsqQ4xLCSI6kkYBvGdBV4W96BO8GQO
         o/kpxQEKaK/G00YbhxQeWMlDxurcoSVyXt7aO9CGs/pLi6n2enj95vPVcjtDvL8mwQhU
         7GSQEXIZy5WqR+DsiEWE8/MjyIQS97NNFHHjvreki35Ggw0Qb/lErW+6fVQTjY+ML7Ol
         xdnQOfDlaspBRpwapK17MGujCAZWjGjuissVGQj/ovEAFFhzaE2bN8Uledl82qjTO97h
         gXaSJsv2mOVWDUR0loqPYceamnXO/9hAo+b3SXa4CZTeymHkFkcFvDLqZTMDhVzrhr7u
         LmvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718720645; x=1719325445;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=u9L4PU16nfN2XQvEI7canBzFWJ5IZWFKBrB7QE7CDcc=;
        b=nwVXHJ+yAxEk47zTzw2z8QWoq7m971Q2YAXZJ44aTRg7QKImR0c3Kkd1OlTKpafWdF
         V8fhJowiZStGNPhqa3fS6e/iHVDDntA5thYc7HbCOWw8W64rtOpgxsRotTXYXQpo+JfP
         prGKCMHUU1P4O8QhGzvYf8I3NpJqX15j0xKdw8+xA3HanXTlEBaTpFn5w20Z1ePk9Skh
         hEzOhnWzbAdi3zkXbo1eFTU1FRfhaWXkJWgaTxZ+ezYFLK7G+Gtuw7sPAEGjNpAQMDK3
         X4c6lSZaaJ1CPu+qXOUHuMbtqXI6CSlmOfvKDjzWLE1h7oTGQkDt7GXJNIsQPEoknlI+
         kL3w==
X-Forwarded-Encrypted: i=1; AJvYcCXFouaLSBoHzdhxyq8FEr+BwcUGUJUUoFcEqQ6ma9cD/YzDcPXNDV5oYh87nNEupu2vv/o+G1SRl8TRASC2yU+pLwVl+K5JC4sF0Q==
X-Gm-Message-State: AOJu0YySbnBIEbzRk2VeQ5kQG0HOezv0kHNyz7EZdeWhxnIgtKKmd/fP
	3N/rKqEH7RjRlUevTeHDOxk4J8i/nKd2Ml82sF+ddKRAPwEoy085JXYRLcHyqp8=
X-Google-Smtp-Source: AGHT+IGtvNk8n9VRov10JBLuOpddIlR0ZD+NTpYkW/xoyHqQ3CBv06dPLM664Q2AuPsGRorl4CI30A==
X-Received: by 2002:a19:4317:0:b0:52b:e7ff:32b with SMTP id 2adb3069b0e04-52ca6e67557mr8965479e87.23.1718720645462;
        Tue, 18 Jun 2024 07:24:05 -0700 (PDT)
Received: from ?IPV6:2a00:f41:9028:9df3:4fb7:492b:2c94:7283? ([2a00:f41:9028:9df3:4fb7:492b:2c94:7283])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52ca287b34csm1510198e87.199.2024.06.18.07.23.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Jun 2024 07:24:05 -0700 (PDT)
Message-ID: <2dc3d7f4-1d7b-4aae-90c9-508cbe277a35@linaro.org>
Date: Tue, 18 Jun 2024 16:23:58 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 4/4] arm64: dts: qcom: Add PSCI SYSTEM_RESET2 types for
 qcm6490-idp
To: Elliot Berman <quic_eberman@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>, Sebastian Reichel <sre@kernel.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Andy Yan <andy.yan@rock-chips.com>, Lorenzo Pieralisi
 <lpieralisi@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Cc: Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>,
 Melody Olvera <quic_molvera@quicinc.com>,
 Shivendra Pratap <quic_spratap@quicinc.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Florian Fainelli <florian.fainelli@broadcom.com>, linux-pm@vger.kernel.org,
 linux-arm-msm@vger.kernel.org
References: <20240617-arm-psci-system_reset2-vendor-reboots-v5-0-086950f650c8@quicinc.com>
 <20240617-arm-psci-system_reset2-vendor-reboots-v5-4-086950f650c8@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240617-arm-psci-system_reset2-vendor-reboots-v5-4-086950f650c8@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 6/17/24 19:18, Elliot Berman wrote:
> Add nodes for the vendor-defined system resets. "bootloader" will cause
> device to reboot and stop in the bootloader's fastboot mode. "edl" will
> cause device to reboot into "emergency download mode", which permits
> loading images via the Firehose protocol.
> 
> Co-developed-by: Shivendra Pratap <quic_spratap@quicinc.com>
> Signed-off-by: Shivendra Pratap <quic_spratap@quicinc.com>
> Signed-off-by: Elliot Berman <quic_eberman@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

