Return-Path: <devicetree+bounces-128580-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 458B89E90FC
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 11:52:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 176801883B2E
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 10:52:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27F1F21764B;
	Mon,  9 Dec 2024 10:52:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uC4JTVSp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E25A216E24
	for <devicetree@vger.kernel.org>; Mon,  9 Dec 2024 10:52:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733741551; cv=none; b=qi75uMRrKBoY9Upfug8Eo3/RaUImGqVwac+Pb9Cx2ft5SkPxcSTaLFblo1m3lyHOuYxVbpUotqbcQ7zZ51eho9LhbXzUcnzJeN5dp35+eInugDUgl1MrOCifHWaChMLNvdDC9N5FyxOO1enbhn5uNhJ9O/thAle5p8nFhVVDgTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733741551; c=relaxed/simple;
	bh=w9GWEiot7A7XegjRvcqSumFyROuY1psUuj5JXiCI9No=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iIdhLyxfMY1Sr172KiBW8Lc3NVmRnlAEhaSyoO9rGnn3bfpZKz1nKFrbzJkxdLEQQ3Oz68KJ5F/p0CZbZqVuRsWPPSmT2rGCH1s7EFuKhe3f0K55TFKopyDqqi405ZwNK1lCJcstDGbfYk7DGfDIgYGp2JXeTOSg+EY4ddoDWJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uC4JTVSp; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-434e91ac3d4so889895e9.0
        for <devicetree@vger.kernel.org>; Mon, 09 Dec 2024 02:52:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733741548; x=1734346348; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=xkeUfu88RTQNAhvOms8/ikm6xtCcXWlq1uzSHks2Tk8=;
        b=uC4JTVSp4MO70iGPInhxbc4+Xuz93/MwyNkUhxLAzJ8r2WhRdVHT++qmsrIkC+eBid
         LM+/VVYVsYarxchJyMfS/HoDJdSakC1ZXm9eNefMv+juEblzvfib8CbJSmBDBCmC5448
         RLO+Cgv6oBSS+X6wI1PfjydrBS2vMY1lQ+DJB1SjPH9W6sUiOUP1FbxKAew0qIRH7jUB
         d6eFhq9JErns2uOGpHa7bYS/XU7PwPBY7IWY/kIRchrpSoAAHt8ET3Vqd1u7JaU9GbFD
         YjKlNuDcsiTGRtK45HOv6avTEmXpkS73GPWspJwRV1jj+D/5zRzc6eWOhSFp1odudp6p
         TIUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733741548; x=1734346348;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xkeUfu88RTQNAhvOms8/ikm6xtCcXWlq1uzSHks2Tk8=;
        b=Ya6+fpI1aUAGyYLWek3R4b9Cmq4wFVz3bQVT64P5OtTO8dE3G6xpwYCRYf2OCCDu0b
         SpO+R02ndwv4aAK1V0vzmzAZsQW/9nMifS5U3p4mOz4YnBBT4szaBWBPXmmQ7P+gAI9r
         EKADf8MHDhMDXuhoyD9D5q6BkZ3J5LEbOm13R/2Reqr+D0hy8lgBlkEGk2ycVuWB9xIQ
         +R0bzTBftz8LHGvoxMqLgnjP3JEY9CsdCJoGR3Vhl/Ds/zPyDIpX4ju1kiKeOgVgl0X9
         gz8DPFw4GqtUBsF4/G0CDb+pRM5YSksncq7RBzqCNRwRhXwlGhGUIxTY3MjCF8MCLSPm
         60bg==
X-Forwarded-Encrypted: i=1; AJvYcCX4zGOg2zW93clJa2jz+ShcOUbys7XucQD+4F00217YjXjuMMb4hgTFG79lE/F14+DBxVjyJ/7hrZxh@vger.kernel.org
X-Gm-Message-State: AOJu0Yz72jFIWlK/ULdlAjOtcrF2y5UugIMJrVOjpTr+8YXE1q8Z9Rcm
	FYozkbAl4M0txNnsUoOWLcWlne8yH9KRae17Svv43SPkEdgkOS+LbsU3+8U6s0U=
X-Gm-Gg: ASbGncsCp64gCbxU6QTkZ8UO79iRspBdtbFZYr7i+vvgnd1i+UaXBqwu8XQ6ito/PvP
	//FJ+tILlmYFgl7BPK/eGbosYvXZur25lv3tLYq0OxOr+55H4QWDvuSEHQN0SHTUYQ0NWQHSZAI
	trM+UELhaROqA+f+I3ZzeIZcRSacAtgWfNA4CpDxrbwrdcr3zrPZaAWyGPpyONyxUpQ6hQqExGJ
	S2Egs3NCho4qBzthl42fRk4GIjhJUD6RpRN82ig/6imO2aCUKf2ADLLcc2p+p+usGlO0Q==
X-Google-Smtp-Source: AGHT+IHzjmIctwBtCrFvJqX9MJrey/dUMKMXNXo8nS7yPDnBC00A07NDWU6Pxzl/iKNrANYQhFsRxw==
X-Received: by 2002:a05:600c:1393:b0:430:52ec:1e2a with SMTP id 5b1f17b1804b1-434dded5a3bmr37168765e9.7.1733741547762;
        Mon, 09 Dec 2024 02:52:27 -0800 (PST)
Received: from [192.168.1.20] ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434e8ec8072sm83159195e9.18.2024.12.09.02.52.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Dec 2024 02:52:27 -0800 (PST)
Message-ID: <9d93c5bf-99eb-4248-bedb-2318c7505f13@linaro.org>
Date: Mon, 9 Dec 2024 11:52:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 13/19] arm64: dts: qcom: x1e80100: Fix ADSP memory base
 and length
To: Johan Hovold <johan@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, Abel Vesa
 <abel.vesa@linaro.org>, Sibi Sankar <quic_sibis@quicinc.com>,
 Luca Weiss <luca.weiss@fairphone.com>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org
References: <20241206-dts-qcom-cdsp-mpss-base-address-v1-0-2f349e4d5a63@linaro.org>
 <20241206-dts-qcom-cdsp-mpss-base-address-v1-13-2f349e4d5a63@linaro.org>
 <Z1MdFLXygNeICNfG@hovoldconsulting.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <Z1MdFLXygNeICNfG@hovoldconsulting.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 06/12/2024 16:49, Johan Hovold wrote:
> On Fri, Dec 06, 2024 at 04:32:37PM +0100, Krzysztof Kozlowski wrote:
>> The address space in ADSP PAS (Peripheral Authentication Service)
>> remoteproc node should point to the QDSP PUB address space
>> (QDSP6...SS_PUB): 0x0680_0000 with length of 0x10000.
>>
>> 0x3000_0000, value used so far, is the main region of CDSP.  Downstream
>> DTS uses 0x0300_0000, which is oddly similar to 0x3000_0000, yet quite
>> different and points to unused area.
> 
> This looks like a copy-paste error since there is no downstream DTS for
> x1e80100.
> 
> And this paragraph is about the CDSP so probably does not belong in the
> commit message of the ADSP patches (e.g. sm8650).

Yeah, copy-paste. I'll drop it.

Best regards,
Krzysztof

