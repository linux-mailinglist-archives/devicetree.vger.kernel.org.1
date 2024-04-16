Return-Path: <devicetree+bounces-59735-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 84FE58A6E93
	for <lists+devicetree@lfdr.de>; Tue, 16 Apr 2024 16:39:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 410D02814B1
	for <lists+devicetree@lfdr.de>; Tue, 16 Apr 2024 14:39:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3447E12DD9B;
	Tue, 16 Apr 2024 14:39:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Z9giONP2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A240642AB9
	for <devicetree@vger.kernel.org>; Tue, 16 Apr 2024 14:39:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713278371; cv=none; b=WCTyFrUb7mNPMZf+mW4o/1C8CKeJCmOigaTIKR/uKwnRojxZPMrwd93ZxGWXTywTlVNiN9LTDBtOg2ct+4d8Byz29Ik/5HNGWY9bx9lALUb2vBkHbIsuS4obNyxCUB6zL1Qa81ASs4FhAJ31nGzn7mgBvrxzjphgYq01G/Z3vSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713278371; c=relaxed/simple;
	bh=8mgu7k7er0cG/LWWBfVot7y4xrG2X6Pda5/j6HoeJ9U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ML4Mk5P2M76KNbkEV+HHQVGno6iSztpbdFm51YVaLdrZXkEVAeVX7RzEGg6ZbZo5H8GoLzHamLjDHdnIBbPPhSGPNgfAR8tCwIb1QNqFqWjG+8iglRfBnyxNw+AUmAfDYgRyMeObf+whF8RzCsNV9l4l5c7AUrLA7EG5+GqES20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Z9giONP2; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-518e2283bd3so3762936e87.1
        for <devicetree@vger.kernel.org>; Tue, 16 Apr 2024 07:39:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713278368; x=1713883168; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aKE+g2uxmcwZKMXDL+tbh31r08+JhFyXRHabiw8XKP4=;
        b=Z9giONP2B1+bjslr9x6dU4IKza7LZcwtFpsndRB200Sog9JXznl/ZMlocsV6RGjIL1
         L0Wc2Vk1Qd1td5A2Gf9SxoMSBF7nYZtma09uQxoVTDW45KPbI/ohFUMhRQ5TpYdu05JH
         hJjI6fGF6qMVr/0U2mMCABajpRDDKDaoTfaTXnUrzmD+xCM/LFE1WvQuH9zNZYWIUdIz
         6DPHV2+bti2tNhanfs69LBs4IbOFHtdH/pBRzSBsQpq8jgc34tVOH9zXb5+zYR2UsezU
         7sajGsxKm7Ntf8UXgYYOZcAyBLujgQNiTF95mr6Q5bpgdGRrMBXerYZBrSI+N0DN1Fmx
         oMxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713278368; x=1713883168;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aKE+g2uxmcwZKMXDL+tbh31r08+JhFyXRHabiw8XKP4=;
        b=eBER0+7ELg6qXc+1Ixpsb6oYPBYH3QTwLIbBnK1mXQjoJXXtIv5O7KJQJqXcV7udXN
         SBhK6rcx1LKUjCr2dOVtcNwuXFO5XBXSYFU+Hu68ejMJxLIMhNaU6B8ZUh0HcOCTEFbW
         mDQ/TCOeJwOKdQOcNCy3plfWYOGD6jTn/qYPCSvtRUgaNezFjpkEwxCM8gugsIdin0qU
         XhhNT4cLvQP4o41I93qjnnjcdWczoMrEgYt9F1G5/1tpHm4GOShC4eB2I7CoXVa8SRdX
         zyxMCV7n77IBEhuuzt5gnBMIYBn818gm9GK1r6D2PW4x+ge3nY7aiB89IBDlJEIdnmUV
         IaNQ==
X-Forwarded-Encrypted: i=1; AJvYcCWAcgoYWkuktsJFm3CIK1YUNMHJN1cHacSeTI+9n0LlpqlpAr8HG8DpzI6kR/y4vizbX+ZDkpaLplIw7xe3CzvOs2fwPuCJ2ed1Qw==
X-Gm-Message-State: AOJu0Yyx7KIgx5yYm2sK9WZ1iCxjqTGNViCMDJOdMoJEJi6ZCMht3mCH
	nLHmmqjHUw0V0jTuFK8qa07daemcg+F5ECo04N6/2gR6Pp7y4dS56LJaMOZetdui/7iIaeefgHt
	WLrU=
X-Google-Smtp-Source: AGHT+IGxEc8JWYlRRVBwo5GpOuhEyTvZ2rYm6axlJLpQ4twJi6sB5/ATPpNBTtlI8hkbiRTPatcArA==
X-Received: by 2002:a05:6512:4014:b0:518:7df6:d9e1 with SMTP id br20-20020a056512401400b005187df6d9e1mr12975591lfb.10.1713278367884;
        Tue, 16 Apr 2024 07:39:27 -0700 (PDT)
Received: from [172.30.205.49] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id d3-20020a05651221c300b00515a5784750sm1611882lft.268.2024.04.16.07.39.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Apr 2024 07:39:27 -0700 (PDT)
Message-ID: <886befb2-2be2-4db0-b205-b3d1043cde62@linaro.org>
Date: Tue, 16 Apr 2024 16:39:25 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] arm64: dts: qcom: sc7280: Remove CTS/RTS configuration
To: Luca Weiss <luca.weiss@fairphone.com>,
 Viken Dadhaniya <quic_vdadhani@quicinc.com>,
 cros-qcom-dts-watchers@chromium.org, andersson@kernel.org,
 swboyd@chromium.org, robh@kernel.org, krzk+dt@kernel.org,
 linux-arm-msm@vger.kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 rajpat@codeaurora.org, mka@chromium.org, rojay@codeaurora.org
Cc: quic_msavaliy@quicinc.com, quic_anupkulk@quicinc.com
References: <20240416105650.2626-1-quic_vdadhani@quicinc.com>
 <D0LINETM8WNA.27BORT75W1N0C@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <D0LINETM8WNA.27BORT75W1N0C@fairphone.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 4/16/24 13:38, Luca Weiss wrote:
> On Tue Apr 16, 2024 at 12:56 PM CEST, Viken Dadhaniya wrote:
>> Remove CTS and RTS pinctrl configuration for UART5 node as
>> it's designed for debug UART for all the board variants of the
>> sc7280 chipset.
>>
>> Also change compatible string to debug UART.
> 
> This change has little to do with the SoC design though and is dependent
> on the usage on a given board, right? Also the QCM6490 datasheet
> mentions gpio21 & gpio22 can be used for UART_CTS and UART_RFR.

Yeah, using it as a debug uart doesn't rule out flow control I don't think

> 
> But at least consistency-wise this change makes sense, in practically
> all other SoCs one UART is marked as geni-debug-uart.
> 
> But with this patch you should then also remove some overrides that are
> placed in various boards already?
> 
> arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts:     compatible = "qcom,geni-debug-uart";
> arch/arm64/boot/dts/qcom/qcm6490-idp.dts:       compatible = "qcom,geni-debug-uart";
> arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts:   compatible = "qcom,geni-debug-uart";
> arch/arm64/boot/dts/qcom/sc7280-idp.dtsi:       compatible = "qcom,geni-debug-uart";
> arch/arm64/boot/dts/qcom/sc7280-qcard.dtsi:     compatible = "qcom,geni-debug-uart";

Definitely

Konrad

