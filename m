Return-Path: <devicetree+bounces-224021-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A9C25BC049E
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 07:59:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 272CD3A8805
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 05:59:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A49521CC71;
	Tue,  7 Oct 2025 05:59:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gC4mBz6q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6870218ADD
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 05:59:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759816758; cv=none; b=Vi4lB6HAvvCRDJPkag8Zrqh19zz8zpTmR23J+smHN3Hdn8ecLM2YhwAhPcDk4scrXA8/kJMo6N6/NEQkB0KlfcgiMWT8W6mh4Us4i1ZQrxWB1+5MFPOlRFmE2UKV/Fv5bHPX9SIoeWU6dVwMj9LXVGzwkJ7XL14diul/t98p8nw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759816758; c=relaxed/simple;
	bh=MNugEjWSjasVLozc5unFlQosghamCVKsKk++dyABjHk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mDTW0bG9G7bHJZ/RFZhcsKCvXuzUawaSCfIaki4XPEirVeFoJcVEE3w3JJVtBx4kXedG4mCJy22tMdFzMhKFCASZbpgkGDs2iF3vcqKtxh93dj8Anv9FK3Gm82FLCEdHroQjJDDUeREt73kPa3fEsdtd4pbQ/+UYwpOg2A/qV1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gC4mBz6q; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-2698d47e776so47020525ad.1
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 22:59:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759816756; x=1760421556; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TY1Z3zjE2hmR/H8RZQ8GW2E7K5sHv4uVwuJ09oV8pME=;
        b=gC4mBz6qCjTBronNclo0H7BvqdQLTIMRPEvH9H3blNqFclP1/caqrgCPAMs0upnY38
         7qGF5pSTq8aWy3T3yWnOrv1mPMtR5NBgXwWs49KnH7FrZFnt5i9ggunv4uxlS1Gzu/+j
         mVSq+bJGDlsfzbANFlBw7m32MbdxmRZrKRTkrVbPvzgsMQA+IMESkjf9mCHCHK7Fw39R
         6VbzUcvhcudJ4oGUVhZXjgJff6c92r6UupjkfZVs1zzXpW9n/EwV+jep5Wa3zFcTWAvr
         ZY6ur+IiiDK8zTCaa9ejetK/AaulRwKuInBmPjol5y0viF+k67cyFn5MID4TxxKtMSsX
         UZjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759816756; x=1760421556;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TY1Z3zjE2hmR/H8RZQ8GW2E7K5sHv4uVwuJ09oV8pME=;
        b=Qwu/7E8ddfAT4D9REpAbAUqa1RyJSe2m5JjiEH1/4dQ25z0nbZATpRIC/XqYupKDk2
         pTE28HvA66RiKAyIBtBqaSBKTX1B9HUmQo1APXFuwiRW7mEbUTgiIdc0kN5a7XCpODDU
         myJjL5iwrrYegm22oT1p4A/oSqjn1deI+KY/rkqIkaqQnpaldDa2MDO7iSX5RFlPp7sr
         C0/6kp6eF+1B8TjzG+M0H0ojwSBX7hBWEH7/kgJRqmkzN8CcKsO+LSqMSOCOtcxHLq7V
         fmgKtcnd/5Ap3XBUmS/1L1k2haFVzq3u7jd+4KjWmOJL9azycXYFN6TkBDCQI527YBFE
         yIAQ==
X-Gm-Message-State: AOJu0YxOgFJEtK8sw9K6w95c9IkSI/JjAErs8ALB7ntEHVO69uDBKgaF
	zZn8ZbqYvJeVL7fuboDaMp3Bs6iwI1gfZ0X3wfms7bkI4kjyNFaz+ANH
X-Gm-Gg: ASbGncuwpMi4kUmu8HLf44Ap13D/2FhGmeQHWkDLy1OOmXO7ml9D7H5++pRka/bUpWm
	8D5Y066PlF2ufob8hGgVxGN5ARFiFZ4IeDsrdSyGZS/zPxUfHjUrmBAjMumdvPBRw+2kVmYt5bW
	pi6U1YTCUjdzx1J9rmymrOQ8d3OFL3/aOiCVzxqdKOsBjGqh2R0RR7ElFpUALx5jGeTQhr2N7kE
	TW3Wxu6xciazqX8hZA6l61HqmabhD67Dqq689xdz5+MJF9Q1hk25FhwFiXIq/cwn+Nol4abJlY7
	WG5oYQOZI32EDEHnPgC4I+yULDjb/XEDH4LudrVTKj7ShevKM33WDrdwoHFNJzvjJQ5U0RnojLw
	69VrO4CG+v9Ara904tBk7svvMip8i5S/DV/Zq6lJc853ho4uIXfZVsAn0WLM1XsFsI+DuCSTjAV
	k6bUoVPMtV4gX52kMWlR1o7gdK
X-Google-Smtp-Source: AGHT+IFlzsudHAIxUbF3d9k5TBWY8zUqb3RirQ/wOsrjbntDRjbfjMsD2j/0ZFEZEcTWL9AWUFx/Eg==
X-Received: by 2002:a17:902:f708:b0:27e:ef27:1e52 with SMTP id d9443c01a7336-28e9a6aa8ddmr160679545ad.35.1759816755990;
        Mon, 06 Oct 2025 22:59:15 -0700 (PDT)
Received: from [192.168.68.62] (104-12-136-65.lightspeed.irvnca.sbcglobal.net. [104.12.136.65])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-28e8d135cdcsm151111185ad.59.2025.10.06.22.59.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Oct 2025 22:59:15 -0700 (PDT)
Message-ID: <7476a26d-c629-49a4-ab47-eaffda482782@gmail.com>
Date: Mon, 6 Oct 2025 22:59:14 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/4] arm64: dts: rk3399-pinephone-pro: Add
 light/proximity sensor support
To: Diederik de Haas <didi.debian@cknow.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Ondrej Jirman <megi@xff.cz>, Martijn Braam <martijn@brixit.nl>,
 =?UTF-8?Q?Kamil_Trzci=C5=84ski?= <ayufan@ayufan.eu>
References: <20250929-ppp_light_accel_mag_vol-down-v4-0-6598f22d3451@gmail.com>
 <20250929-ppp_light_accel_mag_vol-down-v4-1-6598f22d3451@gmail.com>
 <DD5714TDL1NA.26WS3YF7EMZ5I@cknow.org>
Content-Language: en-US
From: Rudraksha Gupta <guptarud@gmail.com>
In-Reply-To: <DD5714TDL1NA.26WS3YF7EMZ5I@cknow.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hello Diederik,

>> +	stk3311 {
>> +		stk3311_int: stk3311-int {
>> +			rockchip,pins = <4 RK_PD3 RK_FUNC_GPIO &pcfg_input_pull_up>;
> On page 11 and 17 of PPP schematic V1.0-20211127 I see LIGHT_INT_L as
> identifier so it's best to use that identifier here, thus
> ``light_int_l: light-int-l {``
> and update the pinctrl-0 reference accordingly.
Thanks! Since this is a simple change, I will wait for more comments in 
this patch series (would like comments on the mount matrices for the 
accelerometer and the magnetometer). I will put this change in v5 if I 
send one.


Thanks,

Rudraksha


