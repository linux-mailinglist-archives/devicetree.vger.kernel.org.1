Return-Path: <devicetree+bounces-76722-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8573190BB98
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 21:59:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F080A285D3C
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 19:59:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABB7A19068D;
	Mon, 17 Jun 2024 19:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="u/wAAKi8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9B6118F2D3
	for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 19:58:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718654314; cv=none; b=heaOee6ZTPQgZ1u96Lu1vDOw6m0GBm402LTGNYWGjJuHauKNT3yORx8DqfUEky+YGopMQtd9hZBGJMUYkXVAAfMh5F5LsMLjQqk5uzgfcZDdliwwmRlUhGcpzMytmcUAfehdPQDCagZGTsVo7xTX4YeKzHrWBOpGn6vv7KrOExc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718654314; c=relaxed/simple;
	bh=bZpxC50zZBluEA/iujXmLqmlU7SsoVluLarJkO9NX2c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EOpx+btFIRsbI/lxFm018q+zKnoywRsQYwpNb5MO6l49+TJvmy9xnbIhNiRQ0DHJYs59cY+hwx91NcKt+G3Bdv7EFMIh7sbRClb6ZAN8/ig5k2WAH9Rb7iY9MoAxMQ6EXtRsSPE8a0l4fwjLlBAVFba3BU7shJroVfgryZ4OjdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=u/wAAKi8; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-52bc121fb1eso5597781e87.1
        for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 12:58:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718654311; x=1719259111; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dt8gOXtAJsyKtG9aDgL57FXHSeZZBpHcJmuelSwD1xE=;
        b=u/wAAKi8nAnCDLTGVmCri/G7HsBxrBNFdXRKRMq4Pi6x5i18Il4OY27HwgEIHu8IT8
         cOyFvWsMqV3HPTrkPbWVbbsimbl5BLwfrb5U8lLV8+sm3DoULBF9c70Squsa8/YUFEUR
         p3KovDYYtVY/gRwQI/3n8Thstd8JKMqM49hGtU0wY7ByNAhi/G1Zc8aFJvSBwIx4Vabl
         RfwESzYT1MXtO2f7RsmQ69Q3CbBwMUDQmQS9Hfxq7lKWMIpIj1u3Hw8TnhYu1yvJEpab
         qvUhuDFpV5MaeUQrPoYtu29TuuzM/oEJ/KhGZw7xmGtytJJA7JxkzgMQy1AXasGGd6IS
         fEPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718654311; x=1719259111;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dt8gOXtAJsyKtG9aDgL57FXHSeZZBpHcJmuelSwD1xE=;
        b=esckdSPcpyNMYBVaDcxv3OHCbaCEww3Kn6qm9NJosKEbxctF9BqBKO5IzxixpcyCxV
         eQKmEHJHC/9i/DOGcrm7B/6tGN8iGWSizjXn1q00o7xjsj+KtS5g9A8xJZl615C+8Vaa
         rbt8ZBgmNFoKHXfNxM3gK4TBN1ccGCRo8W1uob3Y2fP9XW+1qshiPB7/A7TV3YRpIUgB
         /FkdcvBRAETDjq7CDzhd1LC/s4tJAXzQjbzWRf1fD6nbP5RA5+F3HxbjYgiMzn2zjOTM
         YgQMYQOPm+PS7g9pA5tg8800qOVwgpGju4QZKlXcJJda98YgBTP8bGswatRBhHIMhkRP
         b+vg==
X-Forwarded-Encrypted: i=1; AJvYcCXdORUfeodZBuilIWMoKah++vNoeaTedweRjI/g4xauOrhC62GhtlgbLHb+X87fyRWnpbJNf98pkiiSIIJRWvm2JbQPFsOxuXbCcA==
X-Gm-Message-State: AOJu0YxZKWNqcKyZvOeBE8ughC+QA0JhBCaAw2f8wbii7TlOPI3XLyUo
	djyBdzZBv2o87zvfv18e08U2+DFEZSx37lkFeXByjSbW+NvHYHLORpDieZwbJm0=
X-Google-Smtp-Source: AGHT+IGgD7APk54YXCS3zR67bSlvd9lT2U7OUsokuRECk7zCt1gIA8J1/z9B6AcqGUIbtP5nCBnDGQ==
X-Received: by 2002:a05:6512:536:b0:52b:c2eb:2d with SMTP id 2adb3069b0e04-52cc628b041mr50934e87.39.1718654311052;
        Mon, 17 Jun 2024 12:58:31 -0700 (PDT)
Received: from ?IPV6:2a00:f41:cb2:a9df:5ff5:5bcf:651f:66f5? ([2a00:f41:cb2:a9df:5ff5:5bcf:651f:66f5])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52ca2872749sm1323169e87.164.2024.06.17.12.58.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Jun 2024 12:58:30 -0700 (PDT)
Message-ID: <55685d92-8f5a-4b23-a7a0-7dcdea5baaea@linaro.org>
Date: Mon, 17 Jun 2024 21:58:28 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: qcom: msm8926-motorola-peregrine: Add
 accelerometer, magnetometer, regulator
To: git@apitzsch.eu, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org
References: <20240616-peregrine-v1-1-85d14ae1a11a@apitzsch.eu>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240616-peregrine-v1-1-85d14ae1a11a@apitzsch.eu>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



On 6/16/24 16:15, André Apitzsch via B4 Relay wrote:
> From: André Apitzsch <git@apitzsch.eu>
> 
> Add the accelerometer, magnetometer and regulator that are present on
> the Motorola Moto G 4G (2013) device.
> 
> While at it, update framebuffer supplies and temperature sensor.

That's a bit too much for a "while at it" ;) Please create separate commits

[...]

>   	sensor@48 {
>   		compatible = "ti,tmp108";
>   		reg = <0x48>;
> +		interrupts-extended = <&tlmm 13 IRQ_TYPE_LEVEL_LOW>;
> +		pinctrl-0 = <&temp_alert_default>;
> +		pinctrl-names = "default";
> +		#thermal-sensor-cells = <0>;

FWIW the current driver doesn't seem to care about interrupts, perhaps
you could extend it


Konrad

