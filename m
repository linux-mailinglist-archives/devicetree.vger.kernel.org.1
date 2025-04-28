Return-Path: <devicetree+bounces-171599-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C4F1A9F3A1
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 16:42:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BBFB1174074
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 14:42:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5BBC26B2AC;
	Mon, 28 Apr 2025 14:41:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Os21SPBw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6EA126A1A3
	for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 14:41:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745851319; cv=none; b=RGyfE13ysmUDfPKLpiPpqRME0ngP9QGMY5qNBErQsDi6L8MWNg5GVY+YE1ABvKXQl0nSjT0MXheayksPQ5b/F3SGTS+OM9L/5R2Iwnmd23X9TqToU2BUDVIfBC/v3u2HVNfQvT/O0jyyqzyudFC8s/kAltiipBnNCeg6S+nlBE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745851319; c=relaxed/simple;
	bh=Pk4B8Z9F6DCzs0R6AaWas25DIan6wu6rgaYLPtHiOFE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FBlgE7dZv4jUy6L2yPDZKV7GR4K0QmHzBZfKbqCAOocd3pI0VVd9ZNlXPhgly7WwfwoGpWSQR+MZl29k/ocDSAgJz1ggvSJVLtOuWYVrEjn1P/QyExbOYMd8Rqjh1VzJQbqZs4sqzhf+CdZ9W2JM52No17B4QaRHFoIlJYDgyqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Os21SPBw; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-391295490c8so321229f8f.3
        for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 07:41:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745851316; x=1746456116; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=3C8ecqtlsWJdWnYmgKh1dE1AWagcaI57zvbzZiHqTQg=;
        b=Os21SPBweEmvnxSf7yqmOxbDQ2lSpOJp7RLLgfvSqBbaqGtAI7F4AcLxaDifIfeqq3
         Y0O0gCOIJ7qr3DRMVuBCJr0lYfvn/1Lgclx3heXm+km+h/1381GVHnGl1fL6cOiik1zT
         AtjsmXKHMX8TO67jQF+h+SE7fxujQ/OUZC6dDUO99jRXlwWxDTfO0VJT9C/KO0xxTm8s
         T5V25FwXJsZHUmx9ACMgR7Z3P7GXBC/6zfhmnOEbFl8MBDX9ftytZzshQ4sgMMsxTVvR
         Sf60KQG0cYzdskqJx6xGRpNMAC9DWKpHlOLtWGjAuNnqs6ScpseajaPvY59/vcYYpHLw
         814g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745851316; x=1746456116;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3C8ecqtlsWJdWnYmgKh1dE1AWagcaI57zvbzZiHqTQg=;
        b=SMQ3Aj6LjzG2NiHJ4W1RJA6XIpRP3VIbjkuLWx5hTnspLPz79KYev5fB4601gTZl68
         bXDckrUKH6las5a8u8tRKuYC2SIqh4NS42PrbZnWdvTCtiwnD4jkRNdwIF6Fxy83e/D6
         LTJjH0gnk2PAPS4zPFlmFqoq5ofso+c4Cxcgw9KIad089PxjldDasZ3K8RNJtH1QtksJ
         wAsjoR+HhKX9/HadFA7zzdjRU5JLFytqGMoXtf8gari7KsETvqv1nTPWBP4wFwqLVUF/
         E0xbWq55BzjxbKKbQzpFrR8UyfMq4lvIdWSn/VyJ06u7cFUsVV35thfGrddmP893qdmZ
         /4QQ==
X-Forwarded-Encrypted: i=1; AJvYcCWPpvxTbbTfKyCFsXlrwjStUwPFnCgyutbjbbkNsQRN5N/jywhyztKZbdb49zjzQp7sWLQ5KiWVlqOI@vger.kernel.org
X-Gm-Message-State: AOJu0YylGhAMCFPvTxr55HyQi07yw08u9TLL8P+btET3U6qR0cziTkaT
	W4f0ZxV9fGScn9oDZ3dfVeRMe//dyXavtlngB8bzJkeMnsTO3kaCQB1rFxV9mwY=
X-Gm-Gg: ASbGncsvka4b8U2/KOmhK68y8xgmUA2T4CkVSohbT664y/QYjrgsP/ELmBgNGUH1XZh
	I+oWitq0ZCXT/BU3k1IlRvSUTtm6+ZOWCbaa1Yv9XzoXeQzxoDJTaV0QNMwfEbMEEf258OeKc2I
	+p8sbSa9p3rUjwCe1YUVcFjc6iiCYMXqk/VxG85bxVdIs9M2OczTdBZf14kfha4IS2San1Wn47W
	83rJg3JM5yq5bA2rHKl+hHJszu4hnN548ise80m8fQtpdUdaWzZGDQc6VNva1GqkcOb96iOo5Av
	NLK6pIpunLP37A9QD6NPV4bLZILrTR06ezatrM64olj8tnbOkJVc6Hy5p58=
X-Google-Smtp-Source: AGHT+IFC+L5dCQlISR/Rww5twRXYbVZ4XdccxceQoYvuWU8bkAImIc6lkhMr2QVI1yTHoBwXcLCOIw==
X-Received: by 2002:a05:6000:1a8e:b0:38d:b090:a0c4 with SMTP id ffacd0b85a97d-3a074ef34abmr3565710f8f.10.1745851316104;
        Mon, 28 Apr 2025 07:41:56 -0700 (PDT)
Received: from [192.168.1.28] ([178.197.207.88])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a073cbeda3sm11463839f8f.50.2025.04.28.07.41.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Apr 2025 07:41:55 -0700 (PDT)
Message-ID: <e61e17ca-fed7-4712-96fc-a9a2339de1fb@linaro.org>
Date: Mon, 28 Apr 2025 16:41:53 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sm8750-mtp: Add sound (speakers,
 headset codec, dmics)
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250424-sm8750-audio-part-2-v1-0-50133a0ec35f@linaro.org>
 <20250424-sm8750-audio-part-2-v1-2-50133a0ec35f@linaro.org>
 <dd271e8c-e430-4e6d-88ca-95eabe61ce94@oss.qualcomm.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <dd271e8c-e430-4e6d-88ca-95eabe61ce94@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 25/04/2025 11:30, Konrad Dybcio wrote:
> On 4/24/25 11:40 AM, Krzysztof Kozlowski wrote:
>> Add device nodes for most of the sound support - WSA883x smart speakers,
>> WCD9395 audio codec (headset) and sound card - which allows sound
>> playback via speakers and recording via DMIC microphones.  Changes bring
>> necessary foundation for headset playback/recording via USB, but that
>> part is not yet ready.
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> ---
> 
> [...]
> 
>> +	sound {
>> +		compatible = "qcom,sm8750-sndcard", "qcom,sm8450-sndcard";
>> +		model = "SM8750-MTP";
>> +		audio-routing = "SpkrLeft IN", "WSA_SPK1 OUT",
>> +				"SpkrRight IN", "WSA_SPK2 OUT",
>> +				"IN1_HPHL", "HPHL_OUT",
>> +				"IN2_HPHR", "HPHR_OUT",
>> +				"AMIC2", "MIC BIAS2",
>> +				"VA DMIC0", "MIC BIAS3", /* MIC4 on schematics */
>> +				"VA DMIC1", "MIC BIAS3", /* MIC1 on schematics */
> 
> Is this a mistake in what the codec driver exposes, or just a fumble
> in numbering $somewhere?

Which mistake? MIC4? Schematics call name things differently. They
always were, so to make it clear for people without schematics I wrote
which MIC it actually is.

> 
>> +				"VA DMIC2", "MIC BIAS1",
>> +				"VA DMIC3", "MIC BIAS1",
>> +				"VA DMIC0", "VA MIC BIAS3",
>> +				"VA DMIC1", "VA MIC BIAS3",
>> +				"VA DMIC2", "VA MIC BIAS1",
>> +				"VA DMIC3", "VA MIC BIAS1",
>> +				"TX SWR_INPUT1", "ADC2_OUTPUT";
>> +
>> +		wcd-playback-dai-link {
>> +			link-name = "WCD Playback";
>> +
>> +			cpu {
>> +				sound-dai = <&q6apmbedai RX_CODEC_DMA_RX_0>;
>> +			};
>> +
>> +			codec {
> 
> 'co'dec < 'cp'u
> 
> [...]

That was the convention so far, but we can start a new one, sure. Just
ask the same all other patch contributors, because each of them will be
copying old code, which means cpu->codec->platform

> 
>> +		/*
>> +		 * WCD9395 RX Port 1 (HPH_L/R)      <=> SWR1 Port 1 (HPH_L/R)
>> +		 * WCD9395 RX Port 2 (CLSH)         <=> SWR1 Port 2 (CLSH)
>> +		 * WCD9395 RX Port 3 (COMP_L/R)     <=> SWR1 Port 3 (COMP_L/R)
>> +		 * WCD9395 RX Port 4 (LO)           <=> SWR1 Port 4 (LO)
>> +		 * WCD9395 RX Port 5 (DSD_L/R)      <=> SWR1 Port 5 (DSD_L/R)
>> +		 * WCD9395 RX Port 6 (HIFI_PCM_L/R) <=> SWR1 Port 9 (HIFI_PCM_L/R)
>> +		 */
>> +		qcom,rx-port-mapping = <1 2 3 4 5 9>;
> 
> Does this deserve some dt-bindings constants?

No, because these are hardware details/constants. Drivers do not use them.

Best regards,
Krzysztof

