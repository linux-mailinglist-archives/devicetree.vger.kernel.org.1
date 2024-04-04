Return-Path: <devicetree+bounces-56376-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AE64898E3F
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 20:50:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4A6BC1F246BB
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 18:50:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D628813174D;
	Thu,  4 Apr 2024 18:50:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tjuiwI8a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0923B1C6AF
	for <devicetree@vger.kernel.org>; Thu,  4 Apr 2024 18:50:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712256626; cv=none; b=gdMwwBhtumQIlXY77sIKlXkzVNlI2eKSlUDmYthXPoC8mJcSKEDW2yT46uQ2OvIAgWk1kD/g1RR0TZ5ZUhtV+qhVVeVC8LPZISJ+9lITVVk2divGIEvp3Tuxxkcnl7v/W9Kg9lXTdeNG2XaZJ/60GPoN+n+Aec0JDU21o3C9nAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712256626; c=relaxed/simple;
	bh=5cmsmRL01LTBUVCbLB8WWxi3wj11c03zAP00q6S2RBo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=j1FfZXdxl4FqjFOK0Cu9Ev7CCVunHWCp8TcIl2AbH8dr9S9tRTEvaAbv+QioDLMrC1fZeQgKAq3X0mOkGLRrQ+q0dJfmjSTTsVLZneDxFmfNCyY5kahuLspugFZhviCG5C4SJTNQ5W4F/tNdHbPBknMLebGNhIWAke3cmCDeRNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tjuiwI8a; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2d476d7972aso18047331fa.1
        for <devicetree@vger.kernel.org>; Thu, 04 Apr 2024 11:50:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712256623; x=1712861423; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=svY/ur10Om8A4vKixrJGUkmbDeJnaZ18d0XmchhqHMg=;
        b=tjuiwI8a2dnkSdut3BBo6fK/I5B8Ga1LE9dm1tO/LdJ7jgtKlXW9ynHXl4vkIlP0Tk
         FxP2DnwwnHtId37nn91b7a2nmSqWEJ/eWjVxl70Ba+AHyfpeqRogqKOWf3eNOJIkU85e
         pMZg1cbkKZumtyl8rh2QovZydyi/MZjPKXewJL8uS0Sc5Y13twxOgjIGY0HhNo7KXsns
         yqe4Y0z8+03GNIRP2P0zyuwwWsSmaYlamuZAmuEQLMbdVBVIdvDlM0M5UJXHghILorOk
         +iYCy3zY16Qq5iUej6YQZOfFDLXQhQy/8BYBWTmMQ+UEnc911jAfqPAAxnLusUgdzHok
         6IJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712256623; x=1712861423;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=svY/ur10Om8A4vKixrJGUkmbDeJnaZ18d0XmchhqHMg=;
        b=O3xun0HPxH5kdC/jvMopWcuNYNd4iMapJLUfWu6ZBHeXwL8ne0ENS0u3iaakdmvawM
         hshoGXNgvns7TKRKdceBYhJmKrICpQqKxO/m83U4msCxmvNon/AOAV9Wi4dWgog6QMey
         ycYvEvXthdNTud+oNONrQp6uxqJO0nf9bt9WeQQ0G75lrVayzJcMJFvvoT0OX0h07FNB
         AKwVloQMTMtsQPorbE3ehcwXgnJol38VsZ3twuFiT9oloyTZ1zZlh48JnlJuPcQw7bqI
         kKRPuSB2rHOqAYk3V0iQusztR7/YPv16hEMcGOHpzt1Sz0aAYGgrBlFdPgSYBEs33/DB
         3jLA==
X-Forwarded-Encrypted: i=1; AJvYcCVsZmWuS7QPBFv+dvzQ5wYNr6ZEUd9J5LNsaaLpV8obsJzjT7EnH1GYJ3dyhIUzskTvxCtIZ47QyD1PI4YfMHB6t1MlmUMrBytvHg==
X-Gm-Message-State: AOJu0YyVVMwRlTbqNMkh6ejf7E5Gt56cO4VyGjqzRHN3P1d677Vzyf17
	5CmTAxzLG6d21ITDVgrWWeIGip0n1PBbv+8KB1lfJwFlcr2ccVVweEK4MFyysMg=
X-Google-Smtp-Source: AGHT+IG34qkZMKnGNuAqnox03mol06Zt0+bAZ8cMyAv5xgBeP5KdYLBMAqt1TO82O+vhyaB1qJlo/Q==
X-Received: by 2002:a05:6512:469:b0:516:b07a:5b62 with SMTP id x9-20020a056512046900b00516b07a5b62mr216286lfd.54.1712256623061;
        Thu, 04 Apr 2024 11:50:23 -0700 (PDT)
Received: from [172.30.205.19] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id r10-20020a19ac4a000000b00516cdfb1b9bsm207192lfc.228.2024.04.04.11.50.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Apr 2024 11:50:22 -0700 (PDT)
Message-ID: <3fddd0aa-313b-436e-bd2c-d239da6873db@linaro.org>
Date: Thu, 4 Apr 2024 20:50:18 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: qcom: qcs6490-rb3gen2: Enable UFS
To: Bjorn Andersson <quic_bjorande@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240327-rb3gen2-ufs-v2-1-3de6b5dd78dd@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240327-rb3gen2-ufs-v2-1-3de6b5dd78dd@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 3/28/24 03:01, Bjorn Andersson wrote:
> The rb3gen2 has UFS memory, adjust the necessary supply voltage and add
> the controller and phy nodes to enable this.
> 
> Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

