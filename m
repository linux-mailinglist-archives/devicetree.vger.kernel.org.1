Return-Path: <devicetree+bounces-87225-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 958D1938CFE
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 12:04:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B868B1C23C23
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 10:04:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DAF816D9A8;
	Mon, 22 Jul 2024 10:02:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PVthcRWU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8675216D4E9
	for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 10:02:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721642557; cv=none; b=KPdjWxrxUtwo7DZCtSm5IWm1LZ47CUotdF3Tq+Mv+JSj16UqVbDVI9fFCy5gV24LHYf9lo3m+2KU03qsPXvChCTas3NZG804L34Na0g/VAukzbvhrRzMRHaujLvb1rOudzmtd35Jlj4uFawh1H9syA94swcKwPGvWzJ84JMMIFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721642557; c=relaxed/simple;
	bh=jYLTSjq/PXtDRDTWNKvKJOWO/iKI8ucXuLTYaHLnT7A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=g48s6D/MQJFTSQuAsgtyByvUzh/+/aXiIg2If5eDlHU2Dyeu5KY9uPxra1HSNQECha2tSoVjs0Gn2r56mHZMKSwOookcl63keSik2eT8UpvlT6or0C7rq1fE/K51QgcnSLARhfADZLOjW3eJxdGL7vjr+emv0290B145vvPnVHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PVthcRWU; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-a77cb7c106dso406199966b.1
        for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 03:02:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721642554; x=1722247354; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=iQOskfSoofdQ6YzsUPnPrCBHMPxzANvsMfhHDoqsPzI=;
        b=PVthcRWUZ6K6KFAgTla01uRwaWH48EVN3mCoJhYoQdS2PMZLx7QZ454EWedZnSUto9
         iba7EUk5A2SujBOnSsABHdrwUanTVWm4IAWwBYcdhyjFW1p84OC0D38YRnpTAOst60F5
         gzril5r+rtLVSFvAQJ6dm8mDlSvCoeHBYzJoJJlQ4Ddb4Em0YI+tKnFOE/3yEI7z5G6J
         SMz4HhiBK3Imbs4c4ox8zZibGvM0izoyYpMHdqp6Qu66KtmtoJyyQ4Y118o1ZDIN4pAh
         QEqIy0XXyPtUvXP6H12+QKBHrfFsywoqDw4LvVU+uBm3NyCBsuSfdOQqdFCTDxlcYNNO
         kT0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721642554; x=1722247354;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iQOskfSoofdQ6YzsUPnPrCBHMPxzANvsMfhHDoqsPzI=;
        b=g5CTliymSbCR0tgd6jiLuB4MClmlZIKGrD1i63sPjU61SfnxoWhVpq3IThMPmmDhTl
         8Dp1f4SKJCbOsW6X+UdRnARntWaV53e5IPdrvfepOREybpYLi5YyB1AmzdVle7mby2Kr
         lPb2dG5GCwB8/DQ3fw2WKNDVhkjnjUGJiu+hMNqnhR65KUdmjN7tY2J00CSWxICKUOxH
         4OhmSIk9ODHNWVqdDP/GjvD+KzI68sfwXSLgIgYlt+7xgIVDqsRSSchtJyQuHsbpAONa
         6QNDySoCUnl/3kf4+xe6sQ2HS23I9dyCO8TjbcE+o46w3hkW79UyEap7+2sGkpiuAyRU
         SbEQ==
X-Forwarded-Encrypted: i=1; AJvYcCUi6KZA4v18ODK+pLxzOkVMP2tuT+8NnNogzffTJxElIJ3x5FPtHoeNwpRi7dS1pwrVhC+ZjUiDF9NKPDCXfe5PbxPgBT/hA1xQKQ==
X-Gm-Message-State: AOJu0YyeeuhqJnpVA1dUt5oVeSmJy6Okj2ynC3MMwhzC6Fj3uzcsg9b0
	+mrGSo9FhyHeVD7C1dDTyHuSi2GfXW1xCzQeUn0gL0KSgd+ieN5l0Ut3Bz7T9Zk=
X-Google-Smtp-Source: AGHT+IH27RzEVbqBSW9sN0SG6KbtlAtKVG3cnqwo/ndvJ6bfURVF0wzaQ44gCGv9l0yi+AF+0E9SQg==
X-Received: by 2002:a17:907:2d06:b0:a77:cf09:9c70 with SMTP id a640c23a62f3a-a7a4c1034ebmr404799866b.43.1721642553062;
        Mon, 22 Jul 2024 03:02:33 -0700 (PDT)
Received: from [192.168.105.194] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a7a3c922296sm410590166b.179.2024.07.22.03.02.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jul 2024 03:02:32 -0700 (PDT)
Message-ID: <e95fe5b5-040a-4ff1-8df8-078f38c8eb34@linaro.org>
Date: Mon, 22 Jul 2024 12:02:30 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/12] arm64: dts: qcom: x1e80100-qcp: fix up PCIe6a
 pinctrl node
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
 <20240722095459.27437-3-johan+linaro@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240722095459.27437-3-johan+linaro@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 22.07.2024 11:54 AM, Johan Hovold wrote:
> The PCIe6a pinctrl node appears to have been copied from the sc8280xp
> CRD dts, which has the NVMe on pcie2a and uses some funny indentation.
> 
> Fix up the node name to match the x1e80100 use and label and use only
> tabs for indentation.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

