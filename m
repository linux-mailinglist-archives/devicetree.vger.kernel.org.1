Return-Path: <devicetree+bounces-201866-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B2E7B1B0CD
	for <lists+devicetree@lfdr.de>; Tue,  5 Aug 2025 11:16:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1120D172016
	for <lists+devicetree@lfdr.de>; Tue,  5 Aug 2025 09:16:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FB1225D20F;
	Tue,  5 Aug 2025 09:16:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="o2EIacLP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 342141F872D
	for <devicetree@vger.kernel.org>; Tue,  5 Aug 2025 09:16:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754385384; cv=none; b=EgZZUn2zvOG+x+iLrirkVUBLSIzasPAy47cmhvsXuTVqnb+7GhUWUjyEmdIh73R022v8wFVlmSMRnUN/s55x67C86+Hob7ZigtJpiv4heD7Z578VD/AuXqXp1TPVE/f+R5B6hHn4e9xiIaWXyYIuGDrmrfon8tem79hmXVEl9ZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754385384; c=relaxed/simple;
	bh=K8e8kSu4ViuuLbZIA9BGUagkO+rSx9GESbp1kx7d7BE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jL3urNqtk1Vxk/u+XPAbz6gqicOtwmeicsTt0ZY8AFVy7O0YxWEwnSHhp0r0NS4R2Y905KkmMDUQunIsKLYKtA2eUj4WptOZdGwyt+4AIdXhBOrkEZJ6ZQgiLERVBPpjBizeY1AofBQlUjkANbCNyRJ4Tt2sgRdKN616kKqiJg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=o2EIacLP; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-61557997574so8076045a12.3
        for <devicetree@vger.kernel.org>; Tue, 05 Aug 2025 02:16:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1754385380; x=1754990180; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JDojcrGsiLvyGetSooakU+/Jy9s4z/uE44Ez2XuRs8U=;
        b=o2EIacLP0n7hzu9p52l8cQkrO1XSDKqbDvvVBf2ov21fJWQSLpx0HUNJt/1CSsGEew
         Q9pS1QRMDLV2ayR2p35GNAyFziytbH0U7jaYXe19e+wb68CaqQpiBEE8hqBSOsBHTlT+
         IWA8rTTmwXPeNISL5yoBd0dH/hwk/p9OdhdrCqnW0hQK6sLaO4Wqg7kn3lDA3orB1PAA
         nOHUTHWTjIq1U+aU8kF4ADUIn0IyyfPoKzPHePrTvIk8tdjLNjD3mniWe2kXnspx9xiJ
         jJ9Jg+oATz850Whzt8sU0wDfcOmGafT+BZPc/i/g1gkVgqgUGaXtr2yDLbAXOJoTAuft
         uIHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754385380; x=1754990180;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JDojcrGsiLvyGetSooakU+/Jy9s4z/uE44Ez2XuRs8U=;
        b=IhsBFwl4/+HRxDsgcGxzuyJb02PROPDOyEZSMO7nwdQxpnF9wgpY0oYt3bHv+YbwuK
         Us6l1KBRDOHgDtgTrPrxkN/1m3ZYoBGpkEfAcoFxAUAjF/lQzaG5VoWXO6BnSegJKi7f
         VroGBZCazBeKIjd7DOFrcVumGUgJFFHJNN+QWpHYPPSpOQT4BHA6tsspORINUtT6AllL
         2nD4tS39EIZPmAM1t4WHMnffRX1TkpVYe5hnzFy5lXbI7uXTl3yxq5p2d4XA/nJuRcpU
         RYOFNvaIwWQtDoAduxP1ezpZdspAXBzJeffuMJqMWueiYVUdwtfyTX6k2WC25kiCm7JM
         bLPw==
X-Forwarded-Encrypted: i=1; AJvYcCXIvHsZihcAZaLagfcwZeCpqttichqcfkGuJwmHQiMX7xmqdfAHv2gwnkQhxZCoW1AVOoR2OZytWXyU@vger.kernel.org
X-Gm-Message-State: AOJu0YwqFMWmSeuZ3Ssv+hG6pX4YZFumKEmLyJpbmm8DHZu+cJgFqCnO
	MXdZZ5kWgkwbhDlOhWIABolfkY7zffHbcaFNdsNHuWza4ccYRfmdDXVsb1gCLO5C/Ko=
X-Gm-Gg: ASbGncvxPbV/YFgtJpThixWgotIbu1oJ0sAntgyMpf+JJiueHoQJrfPyUBYvFL2xtrz
	KRCAgMA5A+iTEij45u5j1Jbfxv+96s+F9HkD7ny6ohCNyAkVpUdtWxew1olzLxYAs9Ig+Jt9qiU
	kwbtgj1/d2buFEx/z+QnDDBSDRDl7FkwwL+MIQ8MG9OBq5ejEoWzxYK/aCq9T39hanMOPnGXP9p
	ZxcqDn+ZcpYl9NBemG3SrZA0pJtwuxOi6GYejmsWJucxlWU0UyI10csg3XFGZl/HSkOcAzJlaoF
	WaJgacx5/Drt1Jv3Rsstfg6B0NUzi/XZFzZwz9GbB+zGRNuVxXTtrTcUK6e7nGxw7AiFnpX6beu
	RNPkFbj39YygntHpnwkL7An+8zr4SiTfGJVP1i1aau1k7NgWYgRT9stvcot8cTVQ=
X-Google-Smtp-Source: AGHT+IGfiOEKnDNaalgfnB3KD7h0EQi2yCZ7mWgv3m5aedKUR5IN315UO5ztIdExPIF/cApsftfQog==
X-Received: by 2002:a17:907:7245:b0:ae0:d019:dac7 with SMTP id a640c23a62f3a-af9400665admr1165035866b.23.1754385380417;
        Tue, 05 Aug 2025 02:16:20 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a0a3cecsm867039566b.53.2025.08.05.02.16.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Aug 2025 02:16:20 -0700 (PDT)
Message-ID: <38c6b667-2f54-4927-8dbf-1d37b333a648@linaro.org>
Date: Tue, 5 Aug 2025 10:16:19 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 7/7] arm64: dts: qcom: qrb2210-rb1: Enable Venus
To: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>,
 quic_dikshita@quicinc.com, quic_vgarodia@quicinc.com,
 konradybcio@kernel.org, krzk+dt@kernel.org
Cc: mchehab@kernel.org, conor+dt@kernel.org, andersson@kernel.org,
 linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250805064430.782201-1-jorge.ramirez@oss.qualcomm.com>
 <20250805064430.782201-8-jorge.ramirez@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20250805064430.782201-8-jorge.ramirez@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 05/08/2025 07:44, Jorge Ramirez-Ortiz wrote:
> Enable Venus on the QRB2210 RB1 development board.
> 
> Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
> ---
>   arch/arm64/boot/dts/qcom/qrb2210-rb1.dts | 4 ++++
>   1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts b/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
> index b2e0fc5501c1..e92d0d6ad1b8 100644
> --- a/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
> +++ b/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
> @@ -698,6 +698,10 @@ &usb_qmpphy_out {
>   	remote-endpoint = <&pm4125_ss_in>;
>   };
>   
> +&venus {
> +	status = "okay";
> +};
> +
>   &wifi {
>   	vdd-0.8-cx-mx-supply = <&pm4125_l7>;
>   	vdd-1.8-xo-supply = <&pm4125_l13>;
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

