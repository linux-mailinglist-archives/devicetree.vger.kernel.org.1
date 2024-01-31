Return-Path: <devicetree+bounces-37179-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 42CCE843F21
	for <lists+devicetree@lfdr.de>; Wed, 31 Jan 2024 13:07:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6A8B01C26CC0
	for <lists+devicetree@lfdr.de>; Wed, 31 Jan 2024 12:07:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A84B178669;
	Wed, 31 Jan 2024 12:07:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TeRxvga9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC5B9768FA
	for <devicetree@vger.kernel.org>; Wed, 31 Jan 2024 12:07:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706702838; cv=none; b=PZGXwhb2R858zQNL3UDMzPqditItWDPHO8LNDwHJkR+D//OCMyZAs7OIhSDWyqdJ7HCEdje8kL7V/z8/wo+gRGjityp7AvGPm8jI4Go3TAhjjJFX34oGe7tg0TP3DSOki4tIIlsYvBFTMCX7c2kjEPS1JUFc29UTQE07Zk54ttE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706702838; c=relaxed/simple;
	bh=qU4E162loZwfTp3HYkyxdRM3XI8TqDAEicNfRq17EP8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OCK/uCKq8vJ8B6R5hwPsNbDrAJ7Rw3j8S31bQpSzMicXYgxLlYtqjJgotigWLM1ogd0HfQkPjkysGAAvWGN5wz24ztp1bDniwJ14il+pDnN5ApGdnERDHygFAnYhoLzZ1UJeLoIbVGi6rvb3WOIa+r6aYoTtSvGUcO5QFhQacSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TeRxvga9; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-33ae42033e2so3108526f8f.1
        for <devicetree@vger.kernel.org>; Wed, 31 Jan 2024 04:07:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706702835; x=1707307635; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qU4E162loZwfTp3HYkyxdRM3XI8TqDAEicNfRq17EP8=;
        b=TeRxvga9JP+VY1AJ3tZ20wr5/MLzTokxLNfMCFU3a4a8XpLrx4tey6NtViNneO/WW4
         wyg41Q5q/v+DeK3kdl0ZscV48Srrc1kMze/07ruNYKoEHaP7MayxO/gVcl26ISrVUE5g
         mjesh18yncZSFplSN2ioRJOgoVISZ+cXCpK3kOE0iwRwW6P4FPWqH9pypXlCprSozuQo
         /JbExTn/k9ZvCExP7mTpUqycgHT4XZfqrVZ9eM8x0hTKFLIJYnAH6hBt+b9WyE8p4fkU
         7q5YkncZZ6aEvWBA2L6OyhsC9AZzoiA2vO4Ua6aNhNjFiV0ttCYkbrreFc0Ku+kwxQdy
         trAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706702835; x=1707307635;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qU4E162loZwfTp3HYkyxdRM3XI8TqDAEicNfRq17EP8=;
        b=Pr5mb8V1MK3b6tiDAdG1BbeBwakTeJ5AeDKygnH0t09GJqv5Uj+FvRjN/X9kzA/9M1
         ObWgWEVol4MuizbyP3L0xZHvmvsscaz5lRNLspDiUXEu2nyyR57F2kebMDp6RpeKss4W
         /G0zvZrjK7JcsWRDCUO5JNdtn2huke8SOsE5WQZFC9e4RssTUI3JUaEENkGWhyvND4KO
         VNtat/39xW9Lfuh9iZG5aspJTPlwBU08c4iW62ehTuwzzsMqj8bbWh1tALWq0VLUv6rK
         zQ++oKun/xM2OnPnzpjmKkivTms5kR+CSS/VopMZOk4ju7RLzsPq5DjUWqxWV+0Orpi/
         hnRA==
X-Gm-Message-State: AOJu0YxtYK0B7gQlbEmYztykH73tHfHR81c9HOcF1/IRuNYI97h+a2Bv
	a0g8iRo2Rcj3zN95m+OXJ0L+sSqg37ub5RvR7FCjiPmRjibpUu5xpztCtnyfYLw=
X-Google-Smtp-Source: AGHT+IHEiOaXbWBjL1ilTiEtD7iPaCuj/GwMk7gd6hWU92Q2b0hXuGgSG3wky1CyZEiG3uPJAJ4kSg==
X-Received: by 2002:a5d:68ca:0:b0:33b:e1:e2b7 with SMTP id p10-20020a5d68ca000000b0033b00e1e2b7mr857231wrw.67.1706702835109;
        Wed, 31 Jan 2024 04:07:15 -0800 (PST)
Received: from [192.168.100.86] ([176.61.106.68])
        by smtp.gmail.com with ESMTPSA id bv16-20020a0560001f1000b0033b049ba4d4sm1391994wrb.57.2024.01.31.04.07.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Jan 2024 04:07:14 -0800 (PST)
Message-ID: <d56d11f7-e796-4de5-ad1b-2e7fdef5f085@linaro.org>
Date: Wed, 31 Jan 2024 12:07:13 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] arm64: dts: qcom: ipq6018: add ipq6000 CPU OPP tables
Content-Language: en-US
To: Chukun Pan <amadeus@jmu.edu.cn>, Bjorn Andersson <andersson@kernel.org>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20240131102003.2061203-1-amadeus@jmu.edu.cn>
 <20240131102003.2061203-2-amadeus@jmu.edu.cn>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20240131102003.2061203-2-amadeus@jmu.edu.cn>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 31/01/2024 10:20, Chukun Pan wrote:
> Some IPQ6000 SoCs don't have pmic chips, and fused 1.2GHz.

"ipq60xx SoCs" ? "and are fused"

---
bod

