Return-Path: <devicetree+bounces-49929-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 09B74878BD3
	for <lists+devicetree@lfdr.de>; Tue, 12 Mar 2024 01:14:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3A3001C214E4
	for <lists+devicetree@lfdr.de>; Tue, 12 Mar 2024 00:14:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67FA12C9D;
	Tue, 12 Mar 2024 00:14:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PHhDC2sf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA33F1FA2
	for <devicetree@vger.kernel.org>; Tue, 12 Mar 2024 00:14:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710202444; cv=none; b=FxciEuaJkxHwN+mHaJBbhJl4YeR3t9bxUXom6jZ0G7GMkMpOVrT6PZfiNzw5K80Hy5DnIKM2jJN0Hj27biWdXKYKvDwKFtvTOP2TuO03gM/9x3Nkh28Chwt4nwB0NCspQjf6xvPMqj4g9kMGas+H5gtw/54waZ4NJUkY22zkPeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710202444; c=relaxed/simple;
	bh=TZTFjad6w9R/A4c9QK4bJhaZRfOkzkbY0KMoh1WV0Pk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mQKN1WPZUEUaph/QHGO7M0+CLNazT7y+ibCjUuApdVWxlviZ/5pv95+a8BW0TH84Yw8OcpFlJ80dgyGQXRrg3V9pIewujarnnB3MY07KWMRBDdK4jPKV8pSab5EduR96p3eFJhxXzit29m6lI9V33vqBZE+A4D5AEBn+vfW/4x8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PHhDC2sf; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-51331634948so5390546e87.0
        for <devicetree@vger.kernel.org>; Mon, 11 Mar 2024 17:14:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710202440; x=1710807240; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sX3f9yGyYab0yOk456EndE47zdI6JIzRTWi8Je071cs=;
        b=PHhDC2sfuHBuCBmoc2/RiBE6Vr+bdjz0Yl/QiFzEDgAZo/zA+ZfPSAmvgESijOGfmY
         lAtiLwTZP3rDqX7GOORFvgAfN7PqaFkEs+0E7IAkf/A8DktD6uRZN7B8gFt/YBlPS7Vq
         c9uSvZPotur95L8Qo2DbCo0WzvN2RE3i/Jzb71HgA/8hDsuAnH7KQBJHKFyn83+HmXcR
         lx1cMiBdrJ5RYLfbzGFBOpzj/sDhVhHukOKbRdq+vKQ1iqNjOIBe2SId1rorTDYXejL4
         Y6i1jLUsOyYc7P9+1CL/XjwOdWL58IjC/GERir4MnRR7R6zxqhXcYyeUXSfeJo0SGh/V
         M8YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710202440; x=1710807240;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sX3f9yGyYab0yOk456EndE47zdI6JIzRTWi8Je071cs=;
        b=ABtqWKJKoHtVUSLjpVdjlffgN8ehFkobV2OmwAbD6uh4e11J7H27H4sIqnsSTT3KNu
         h6HN/V3VPnM2+BCBmWeCJlvuFmuHjveW92yqU8V1z1taOeV5LrcklVi7m2QXb1iEpQzF
         v/MUa8VOlTNM4yFBN/rkmUL8g3EVu+OGbDTKlc5Ia7Ki7UREJsbwhHQyBo2vhIo8XGFP
         RoGvBe1iGO9rXqzei4k6yr+rdMsCut/UESbbg4xL6Tr2N7T0CT8O1CrjfOVswPVMEZqX
         DdfrBSvDIWfEfoxLkjHHbP82EjLwXLoaw6B1zm51ybjSnJzcfVYRmedHBirobxq83MTH
         6pwg==
X-Forwarded-Encrypted: i=1; AJvYcCVjcgVRlvlvMjemOmawx+mkXJGHVlUU0igd09pxVAmzVufA7DXlgk2q1HBKa5p7NXpzhTiesRdj2Uw66hPKToJv5VgO2feaLJptgA==
X-Gm-Message-State: AOJu0YyWVHBwA4beCW1czwll3cnRKHjmNBIvZEiRnbp4u+Mw6IeYhkhK
	70Yx11Q6uEU9jwZQRylb7m2lAUWHGahFQsOYkSq3Rh5h7uBYq0UkvhUtYbLTbWE=
X-Google-Smtp-Source: AGHT+IFSP0vgMmSJK2RcLkt/TA0YFOfGHvh6uKZayMl6ahMenA7pBLqxxgSD3eZ9uJuin/YYmNhLaw==
X-Received: by 2002:a19:8c1d:0:b0:513:200e:cced with SMTP id o29-20020a198c1d000000b00513200eccedmr3037840lfd.27.1710202439987;
        Mon, 11 Mar 2024 17:13:59 -0700 (PDT)
Received: from [172.30.205.61] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id t22-20020a195f16000000b00513a7962930sm807970lfb.89.2024.03.11.17.13.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Mar 2024 17:13:59 -0700 (PDT)
Message-ID: <5ddecfb7-fcd2-4df2-95d9-882939a1637b@linaro.org>
Date: Tue, 12 Mar 2024 01:13:57 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5] arm64: dts: qcom: qcm6490-idp: enable PMIC Volume and
 Power buttons
To: quic_huliu@quicinc.com, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240311-gpio-keys-v5-1-08823582f6c9@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240311-gpio-keys-v5-1-08823582f6c9@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 3/11/24 11:09, Hui Liu via B4 Relay wrote:
> From: Hui Liu <quic_huliu@quicinc.com>
> 
> The Volume Down & Power buttons are controlled by the PMIC via
> the PON hardware, and the Volume Up is connected to a PMIC gpio.
> 
> Enable the necessary hardware and setup the GPIO state for the
> Volume Up gpio key.
> 
> Signed-off-by: Hui Liu <quic_huliu@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

