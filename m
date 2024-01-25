Return-Path: <devicetree+bounces-34971-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BC8CC83BE12
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 10:55:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 35EFA1F23EFE
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 09:55:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C1E81C290;
	Thu, 25 Jan 2024 09:55:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Qfo5mEc4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF7F81BF33
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 09:55:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706176541; cv=none; b=hr+edTDTndiG2p+9HHo30WQitrizElf2yau0kOIXWE3GC8gHrELDoXN3BywpPQA1w2pLK1R0zG0yrKDvpBllA6/zI6kr8o/0ayrw87GBOIpd1Iz8TpaXpt0/BkXTNMSyr4Gp3a7p0wWEmn+1f2QpCnIxjeKUXWFC1qIGk0OzFzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706176541; c=relaxed/simple;
	bh=6lNqeaEksv1cualUi6+FAxuzKNDXiCPe52QpN8JpUzg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WOob8W6RR9lA9J+59ujC/7VlqRlfSCHqMAxmP5DZ4M6cnpVIDS700SMGErL2abIjPSED0L2jr1UgxLFs4TAEjnUAzce0vLJmOZJ0jDK+p67Ki+8PLXAi6Bpg41EB2pmHSvQ/K8DFmiYChD8fcEcQ3vw0IfCXsfbOXrpGBoWk/gM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Qfo5mEc4; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-50eabd1c701so7471586e87.3
        for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 01:55:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706176537; x=1706781337; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/nRRg0fCzYKQkswk6Yuy7lpWZxrjK5S0VOtBK9puANA=;
        b=Qfo5mEc4fuO5aWZ+IqY86f+85VTunzFdnqDzptj4PMyzY3LiInX5474DIYBYgahvAT
         6mycT1SkRuGZdlrWpZvHOUq7MgD15Y+GN9QkQz5RKu94kBWMXLxQmbP/p6yRzIC6MbX0
         s39C3cXT2WN6xFq08C7HMYt7shWqyd+zIB9uK1TNWZT96PmAf0qUltiMtNXVAaeJsSkC
         qumuV6Qo5leE1ghBVxyH51gZLvyGmvDB7MI4gnuMkliPhiQGfYUHB5N9Rtczj7OC3ee6
         UxlZscgVeA4PHxp6vr92ghd8Q3hzX2lLC6uWl0bhQBnJTS1OvKb1KZgaemqmfL1WlXpc
         edGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706176537; x=1706781337;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/nRRg0fCzYKQkswk6Yuy7lpWZxrjK5S0VOtBK9puANA=;
        b=QifAGSeKxplixAWuzja1mWM42W2rDwcd4dilhpoh6CLiaUJrTRipKja7CRRG5BD3qK
         i6Pls31UukxditUsb+lxFI0pcYqtgtY0BDSMZSplKZpROK0KUw5j9oEWB6FtO4ZzAMhh
         gocBrlYmkd4tu5UTxADajHBvaf95cMnK8d4QRFnvBOCZozNndUk4uCzBtK/+QbN1R5HH
         4UPVUZXEKDD5vRVE6lgGOYCJH9D2dE113eEtEu9sKZWmDvsHbEWm3ubkrbu6rTgD8gb7
         mwr1kgMq2apePpoOXaULlT/iWUZc4Mb1DBsZMyC4sxtoFV4EBurSrLay62bapbWc9Q3G
         DQHA==
X-Gm-Message-State: AOJu0Yy6VesD/QpJAHXd5rNb0neg7gjsHxH7DK22XEzm3Bh/I0O4Pc1N
	eIo7I/cq+FrgAOop8FU+W6Gd/WXQbhyYoFsgtMuksN/RzE2LzJLTCXgPeGiKWR4=
X-Google-Smtp-Source: AGHT+IHk/moDiI4nmXXECSLzTb5A0yWjob+jLxVa9F5uccM2gYBYDUyV+b0NAmcXM6vNsnRosHIf1Q==
X-Received: by 2002:a05:6512:234c:b0:50e:8e74:6406 with SMTP id p12-20020a056512234c00b0050e8e746406mr578523lfu.36.1706176536902;
        Thu, 25 Jan 2024 01:55:36 -0800 (PST)
Received: from [172.30.205.155] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id w12-20020ac2598c000000b0051007e2a2e7sm713457lfn.231.2024.01.25.01.55.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Jan 2024 01:55:36 -0800 (PST)
Message-ID: <5ae84692-b05d-4a43-aabb-4d2e7d9926d5@linaro.org>
Date: Thu, 25 Jan 2024 10:55:35 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] clk: qcom: gcc-sm8150: Add gcc_parents_0_ao support
Content-Language: en-US
To: "Satya Priya Kakitapalli (Temp)" <quic_skakitap@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Ajit Pandey <quic_ajipan@quicinc.com>,
 Imran Shaik <quic_imrashai@quicinc.com>,
 Jagadeesh Kona <quic_jkona@quicinc.com>
References: <20240123-gcc-ao-support-v1-0-6c18d5310874@quicinc.com>
 <20240123-gcc-ao-support-v1-2-6c18d5310874@quicinc.com>
 <d31a52fc-9073-483d-b84b-1f02a5698a89@linaro.org>
 <77903574-696b-90f9-f136-be5c5d219ba1@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <77903574-696b-90f9-f136-be5c5d219ba1@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 1/25/24 06:49, Satya Priya Kakitapalli (Temp) wrote:
> 
> On 1/23/2024 11:17 PM, Konrad Dybcio wrote:
>>
>>
>> On 1/23/24 17:34, Satya Priya Kakitapalli wrote:
>>> Add active_only support for gcc_parents_0, this is needed because
>>> some of the clocks under it are critical which would vote on xo
>>> blocking the suspend.
>>>
>>> Signed-off-by: Satya Priya Kakitapalli <quic_skakitap@quicinc.com>
>>> ---
>>
>> Is there a need to keep gcc_cpuss_ahb_clk_src around? Do we do any
>> ratesetting on it? Should we ever turn it off?
>>
> 
> The branch clocks under gcc_cpuss_ahb_clk_src are critical clocks, which are running at 19.2Mhz causing vote on XO during suspend. As of now no rate setting is happening but this rcg is useful to get the exact rates from debugfs. Hence this change is needed to avoid XO shutdown issues.

So, if I underderstood you correctly, this clock serves no purpose other
than getting rate?

In this case, I'd say we should de-register it from the clock driver and
use debugcc [1] (contributions welcome!) for precise measurements.

Konrad

[1] https://github.com/linux-msm/debugcc

