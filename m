Return-Path: <devicetree+bounces-86867-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D75EE937C8E
	for <lists+devicetree@lfdr.de>; Fri, 19 Jul 2024 20:39:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 56F8D1F21B06
	for <lists+devicetree@lfdr.de>; Fri, 19 Jul 2024 18:39:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E219C147C80;
	Fri, 19 Jul 2024 18:39:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="c7mYPsV3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B5CC146A77
	for <devicetree@vger.kernel.org>; Fri, 19 Jul 2024 18:39:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721414351; cv=none; b=mocn+hETl0OoZgkdCGEn10DgpGpOha2GwlJi/l8IrZZG8ETsKlJBwgHXwSUnav2/3mdx0Qn1CsO1vZInH928056Xq016Yb1dzY0x3Bg1YSbnNNie6NIONQkwUrySMhRDsPg8H6GE8zUAp7d65xSsye6mxgyY8n6uIi8JVsI/kwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721414351; c=relaxed/simple;
	bh=MNWMXphfvyX4lMOc9BXz0hP/PQUrOAyWtuLOXCx2oFc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=r18bw63Uk4UEFa3lzMjVweyv7Lre68FfcEeEil2TfNI6ytZ0g/U/5u73EQ31WFosv+XgDZUwr3CeWy+2TKc7dsqDgpStqpEKDcsu4/Ots7mJ90AgPkS6qCqRnthRAhuFnZnhjMZBsfOxDI8hNTOKrSR+EVzWiUhCDZqpHAjo5Yk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=c7mYPsV3; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-a77e6dd7f72so228685066b.3
        for <devicetree@vger.kernel.org>; Fri, 19 Jul 2024 11:39:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721414348; x=1722019148; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=wSXTx4qD1uC3O6z+IzxMFFG7c8gglm0sNGCgqojt7r4=;
        b=c7mYPsV3nIJ432UhB/78mUbWuNRhxhUxU310zlex13F+lz7MG18j7MR9bEjbrDQSB8
         8gZ04cKRQLnRoHBrQmHgK40aCHRDxF/iFTrsy4yAXS+RE11cTskWdvFi/Pc3owQrompU
         0tYHMibi9J+4RMztRUJcLYapVAaD+XtAIv7NMeNSOvMpONgPow0EjYjLB/5Tp7MplQGw
         u8QL+Eh/RS58zPZ8D7e1gc8vcTyLl8a0ONvPvjf5RQOhQIjRHOryuQ9+tNv88cHzp2RU
         VEgQtf8ecihGm+peoN9igcOTT/QBtWx169YGeaAVlDLZH8i1G7NcYtDX1HZV08//ZVz/
         Zorw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721414348; x=1722019148;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wSXTx4qD1uC3O6z+IzxMFFG7c8gglm0sNGCgqojt7r4=;
        b=T88jDGumlbIt/tPuIIbAgQF/cRsEi7SBgaFZpvjE4KWRtxW2wBnMaINXbWhj/S8TCh
         Frx4odnBIdkhvLxjcaLGQymi1CHIgwguV+5mzJ2rQsof7A61TShEJc8Id6x9yGm0iZKe
         sxw/fPXtRfG9KLtskSPdQg7IGS6OjFjQXjTUk/c2APx2thS0bFW+siNmZhLuHGaW00zO
         iY5S1DAB90JC3LXxHtHlWEQY8QNrbuVggavYYDJZZm5M3X5VGhG87W2NTA+Y0Pn1DO6l
         GyfYxXVpTAIggh5zmxMqxR3QGg/B2/j2bePjQSIQYIwruYbLeqhEfL8384Orh6YHAGA9
         tq+Q==
X-Forwarded-Encrypted: i=1; AJvYcCWe70qtCbFArrA55RIaxZzaFTCKBPXboiZftmallmAfabeHxJndB0/5vRWHxIs0H3W1O+DA6V50Sl2mGOI4Dhg5lUNNdMUStFD5cA==
X-Gm-Message-State: AOJu0YxnF1KO/40X7UOMGkCCWGMw+dofM5LKsTK1Aqy9vhbCA1TsKBst
	7fC+47JOTjxXlDCu3+gUijmyDGV2LYgvys1/PQDwhiZWAfHcWMaIwmvOQhKKmow=
X-Google-Smtp-Source: AGHT+IHf9MTSnejlue6PwrfZ+FxWP35oQUCwPSaca94EDiFXnGmYz5RzBh3V/S17t0TswutNQo2JbQ==
X-Received: by 2002:a17:907:9901:b0:a77:de2a:aef3 with SMTP id a640c23a62f3a-a7a01159f2amr545734166b.19.1721414348229;
        Fri, 19 Jul 2024 11:39:08 -0700 (PDT)
Received: from [192.168.105.194] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a7a3c94f757sm62177966b.207.2024.07.19.11.39.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Jul 2024 11:39:07 -0700 (PDT)
Message-ID: <b0e46b2f-7408-4e89-9496-323e1ab761c7@linaro.org>
Date: Fri, 19 Jul 2024 20:39:05 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/7] arm64: dts: qcom: x1e80100: add PCIe5 nodes
To: Johan Hovold <johan+linaro@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Sibi Sankar <quic_sibis@quicinc.com>,
 Abel Vesa <abel.vesa@linaro.org>, Rajendra Nayak <quic_rjendra@quicinc.com>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240719131722.8343-1-johan+linaro@kernel.org>
 <20240719131722.8343-7-johan+linaro@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240719131722.8343-7-johan+linaro@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 19.07.2024 3:17 PM, Johan Hovold wrote:
> Describe the fifth PCIe controller and its PHY.
> 
> Note that using the GIC ITS with PCIe5 does not work currently so the
> ITS mapping is left unspecified for now.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

feel free to also add

required-opps = <&rpmhpd_opp_nom>;

under all PCIe hosts, or wait for [1] to land

Konrad

[1] https://lore.kernel.org/linux-arm-msm/20240518-opp_support-v13-4-78c73edf50de@quicinc.com/

