Return-Path: <devicetree+bounces-48822-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E7087873B41
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 16:54:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6BA43B220CB
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 15:54:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF214135A47;
	Wed,  6 Mar 2024 15:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="x2baU5L+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 054821350EF
	for <devicetree@vger.kernel.org>; Wed,  6 Mar 2024 15:54:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709740474; cv=none; b=JeOhWwtFAaV0K8SwRFmFsjLs0Bi/hnrCOPR59XNlq4GZAP6p7iNGyp/Tl/lZi+ZyoseXXeDcuLXn3c6t7GhrHWiKVYRrhHnG5teNAk1Qo+030E9bFz2DA8QrtekqJbyBMI0EA27NhNRlQ6fC3jwq/w5Qn5rzjak8hFI2PzGGR1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709740474; c=relaxed/simple;
	bh=OS4UIwv4AL3sypbFaD0xokWuXPgBJI3QxCTyuY5K3Iw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oKASd/kfS8gFZYyBb9IqaG6X0ivvfjtgJZoBYTXrxdS8aGE83NP107W8o3VarVtcoEH3VlSrXQ3PcEYoNc/KZ7m/UCeB+hVN2jYQul/0oxmVVeGBDlPAFzO8nPdMsbU9n51y7yhoiyq8XKw49UyPoN5uB5bGYVjBHf6xgcUFjxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=x2baU5L+; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-512f54fc2dbso6221481e87.1
        for <devicetree@vger.kernel.org>; Wed, 06 Mar 2024 07:54:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709740471; x=1710345271; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9linAkATm+FdXXzIu/Ohj8OonJxlZ75KvqbpWO2tghk=;
        b=x2baU5L+Gwo0EGToMF8EaEl862My1ciND5H7ROuhzdAsdGU5jcJbBoHPxEvz5B6a9D
         k8IjYTUVFOd0XeEi+vxxqpolmT6bZRcWq6YdPvqXlqMEEtp+mr7dY2lIKSyPFUTznX/8
         ET9PIFDzy+DLZh6ZstjjFeqaMT4siWlJwzWC60sUSVTmj7RAJRzHIYL3KNSOhUElq8sK
         5LMDNqR5aDwDMgJpVzQfIf17XvgRP2/op7E7VSRtIATi+RrUOJe1yPXygzLebdL6iIO1
         h7yboIAQwwPpo5/BwzdvqpP5IkydMRwBM5aNbaecFVuBuhtjZecgxektZOwCnIBhqqu0
         OueA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709740471; x=1710345271;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9linAkATm+FdXXzIu/Ohj8OonJxlZ75KvqbpWO2tghk=;
        b=J4rKWatfCKsvfuLoqh/bx0BQMvCyW5qbSMrSEG7JKM7pWn8edYNEPueOr4+yECOh3F
         az7L7XMreKXQ/rd2SRP2nZHTNToqTQt8PR+UGKFk/Mptmo7YouG9Mo4L17xKFPeMU7Pa
         onm3vP7S1gkZiwXYJTvSy1tpb9N0BgcVUT3wM9PuasGkbxN/fCce+VWPl5O2AtQsJK8K
         s+IVmuCoWVjKe9+9+ckXkfJPYOd64rDKeIwo+uHaHRPAE0Bs7q6kCYNReCMrfPIw+CE/
         hHm2+9c7NTV2fgHi6Bclh1fUCeNvzQGjUPBRrD6KYFS4k9ik11kYI551nE7lE9BJsBxo
         HrNw==
X-Forwarded-Encrypted: i=1; AJvYcCXzTZSnHHJlThBHeo5lpe3aqK1vI1+FJ9SepwNExUFaLVyCyKYk9jur8I8i6LkzNOPfSsDnK9/pHkszkvJQgqKEqX1i6+W9F+ffaw==
X-Gm-Message-State: AOJu0Yxv4liSAc0IrYQaUI0HNUc8m48XugjMN5x7ZYC9eDbXVpgiHfMP
	vPvQIjll4cuYxnVRjC9KlFo/DWmuZ3260BxG0shm+sWqYWRGCxI2zYZUT3vYxR0=
X-Google-Smtp-Source: AGHT+IGjqv8MP18VepWF6CGkD7N8gFHHZ1sLfgowPepDZ+cRvkPjnTPPwAZ1S7cPVN+C634ZqkCqWA==
X-Received: by 2002:a19:5e51:0:b0:513:4b49:e1d2 with SMTP id z17-20020a195e51000000b005134b49e1d2mr3124056lfi.52.1709740470844;
        Wed, 06 Mar 2024 07:54:30 -0800 (PST)
Received: from [87.246.221.128] ([87.246.221.128])
        by smtp.gmail.com with ESMTPSA id u12-20020ac258cc000000b005131941f7e9sm2661074lfo.5.2024.03.06.07.54.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Mar 2024 07:54:30 -0800 (PST)
Message-ID: <45fcf8fb-9d9b-4e6a-a7c5-9bfb96875e64@linaro.org>
Date: Wed, 6 Mar 2024 16:54:24 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] arm64: dts: qcom: sm8450: Add qfprom node
To: Mukesh Ojha <quic_mojha@quicinc.com>, andersson@kernel.org,
 robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <1709727995-19821-1-git-send-email-quic_mojha@quicinc.com>
 <1709727995-19821-2-git-send-email-quic_mojha@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <1709727995-19821-2-git-send-email-quic_mojha@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 3/6/24 13:26, Mukesh Ojha wrote:
> Add the qfprom node for sm8450 SoC.
> 
> Signed-off-by: Mukesh Ojha <quic_mojha@quicinc.com>
> ---
>   arch/arm64/boot/dts/qcom/sm8450.dtsi | 7 +++++++
>   1 file changed, 7 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
> index b86be34a912b..02089a388d03 100644
> --- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
> @@ -4575,6 +4575,13 @@
>   			};
>   		};
>   
> +		qfprom: efuse@221c8000 {
> +			compatible = "qcom,sm8450-qfprom", "qcom,qfprom";
> +			reg = <0 0x221c8000 0 0x1000>;

Is is really only 0x1000-long? Also, is the base you put
here the ECC-corrected part (if that still exists)?

Konrad

