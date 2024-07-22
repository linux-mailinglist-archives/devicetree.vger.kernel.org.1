Return-Path: <devicetree+bounces-87237-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B3D9938D25
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 12:07:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AF6071C21BCC
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 10:07:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38C0E16EC0F;
	Mon, 22 Jul 2024 10:03:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ay7YhlYf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16B9816CD1B
	for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 10:03:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721642628; cv=none; b=bT2P4ZIYd/igGkNzOxiGHZt0iNWITgp5RzUVM66Vmt98iBVoA6ajkqezsp0bh0DXzk8/OLAuI7RZ0N3rrwFve/QiJtcFM8RG0hjb74jqc2v1Go7eosU4Qluzc4MGk0lxkfGks47eO0xwffUhNRhGfiuu03Uc5/1PMCcXZXDGiuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721642628; c=relaxed/simple;
	bh=HyAhPR0hinhbNbD8vP+UOPR6N2T/jXcWxaI9jakp768=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZsV3wzvT8Djh3+D6iQWFHs0QKyjC93wy5Zhi4uomsgAZ1ZtpfSUI8JHtspJO+jk8BNsC9aR4a2zVJ7xJ4ooW7DVdkyF0u1SPtDVXzaj7c3O+ldYL5l2UR7251UcipkGA0l6aYwBvKwiEo7M2XBMVdjK124kNoXFivBoCO4fO81Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ay7YhlYf; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-a77bf336171so663533166b.1
        for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 03:03:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721642624; x=1722247424; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=h9MxaYUh1H+QjSrSSSkLfES1yi5DRJyTjxCaB0UJyQc=;
        b=ay7YhlYfXL/c5OFG/A18cHRTUfcjEqiQck1FEF+xi8kHT0LCr64MtsgzVORDmyETTF
         /oPS8+alvRh7bih2A6WX6bIkLR5+WJyL2IdtGMXY0gSH0nQjxtp1h42dsbKq8cAQnsng
         y3MtXu4FpQa7tZZmnvBoUfOXSSywepCSu249Cltax5Ww7luaaLuQGg8gACzYPS+VDtI7
         L3cDRSk1uuAhl1shVWdFwj49tOPwUqbBH67rqCxc4X97e70EVwDscGrp01PVSHNze4Qn
         GSGSJc2U9NvKzFagasJg7cKdciwIIzdTxZfqMCKKjQiIH9eXLWq4j2pxqPADM9TeWQMB
         f4fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721642624; x=1722247424;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h9MxaYUh1H+QjSrSSSkLfES1yi5DRJyTjxCaB0UJyQc=;
        b=wZtMBFEivcN6cpQjlDBQyyyKymQSPrbGxwW6mmv2ROpT5lK21GdZuXFVab0wc8b7JO
         jE4yPcRMQ8QPWt0WqXx74Go1Q+vqKaGrKG+O6Y7FRfsmRTHoHg2LakwOTyIBFaydS1gb
         19D3tRgJwpxqmYt2yLNo2OwbwMXZc27wmsiGk5Qh4s+jSVB6HdvWephXgTCYgxugZcio
         vuxt8dOekkrREbLbQTM5fw+j8Bs9JChlQJQnfgr082h1XqxsbeOXI450P1HIQIl7+7ko
         fn9anwZ8GBmJmlom/qxs7n23UTY2pijPvicAh6rhb9MCKaMFfWraaZlnNNPaBdPs+tXd
         bfDQ==
X-Forwarded-Encrypted: i=1; AJvYcCWVvQGJFMEd+s6cNMv5DXymGAuD+QIQXKtM3liTouXc3sTheXPJI/bYB6Ki1wcN4A2gcevgBEOVQ4WtogE40+CZvot8WwgZDLThWA==
X-Gm-Message-State: AOJu0YwZhrEvHVvx1Pd3RHZroXTFtLr4C2d+obgowz+089HpyY/iQTj4
	qoN9cg9sMNFgTK85ve7zZA5P2wv5DsHu7uAQxTFGEk0MOA2Lul9LkJqMxKcHIo8=
X-Google-Smtp-Source: AGHT+IETSK1X14J2BWSM462J5fdGKA7F2wlXKvEHaq5Br0kJSUv8WCJYu3mNKPlzWqEXPRIYZHG6tg==
X-Received: by 2002:a17:906:2287:b0:a72:4207:479b with SMTP id a640c23a62f3a-a7a0f0c6ca4mr1276242266b.5.1721642623342;
        Mon, 22 Jul 2024 03:03:43 -0700 (PDT)
Received: from [192.168.105.194] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a7a3c9508d3sm402786366b.204.2024.07.22.03.03.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jul 2024 03:03:43 -0700 (PDT)
Message-ID: <9f729473-ee2e-4868-9c0a-9a84012b9016@linaro.org>
Date: Mon, 22 Jul 2024 12:03:41 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 09/12] arm64: dts: qcom: x1e80100-yoga-slim7x: fix PCIe4
 PHY supply
To: Johan Hovold <johan+linaro@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Sibi Sankar <quic_sibis@quicinc.com>,
 Abel Vesa <abel.vesa@linaro.org>, Rajendra Nayak <quic_rjendra@quicinc.com>,
 Xilin Wu <wuxilin123@gmail.com>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240722095459.27437-1-johan+linaro@kernel.org>
 <20240722095459.27437-10-johan+linaro@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240722095459.27437-10-johan+linaro@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 22.07.2024 11:54 AM, Johan Hovold wrote:
> The PCIe4 PHY is powered by vreg_l3i (not vreg_l3j) on the CRD reference
> design so assume the same applies to the Lenovo Yoga Slim 7x.
> 
> Fixes: 45247fe17db2 ("arm64: dts: qcom: x1e80100: add Lenovo Thinkpad Yoga slim 7x devicetree")
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

