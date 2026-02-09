Return-Path: <devicetree+bounces-263961-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id zHq9Jr7WiWkzCQAAu9opvQ
	(envelope-from <devicetree+bounces-263961-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 13:44:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 11BA110EE4A
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 13:44:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 632EA30143D4
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 11:25:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5524E36EAA4;
	Mon,  9 Feb 2026 11:25:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aMI75chK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D53E36D4FB
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 11:25:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770636357; cv=none; b=tu7bBJMmpJnu7WGvwVKWgo1fXM1aQsS02GG+ZqMWifRfTTZvxjyX5KiOsA5PIa3hvrkGuqtQVPZSu/6xggGVyBW2ApbYO+03PYSHyc/lWk/9ClIoswGFs1tCTfVa4hE3dQr7M5wpgI7q4QDWFl6kRdq5f6R8QHMxSJcJGGtV0J8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770636357; c=relaxed/simple;
	bh=04N/0A+BfnpRyNElBUEeVBI3HIJAHdzkZSaHOq+Qbf4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Th2Br3zlFERXg3iyD9+EJh124pCPQyW4bacxVKza/k5BuO0u4xjb0jM2Y+SzY8gM0/ArXOJmYh6DFInzOdxP+lp2RVbyjfT/R0Mw1es2UbrnTMxsingIflyQ5NNXMxZlCd2Rwo/lYInzyMO43946vVOjYp2o+mBgrh/R/wLucAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aMI75chK; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-2a8fba3f769so19133215ad.2
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 03:25:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770636356; x=1771241156; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=taZpZ0oWLGP6Au0CiSuaC2iygIHIhUD2iwTBS1mdzoA=;
        b=aMI75chK9t1F2JQLZnpErX4bWNUVpjFvGV/0mFI/ZGjgqxWSIBd/8LN+OT+m03yD13
         xnKAd7BDDC5uF2bGMeEqYbJDn/vfw2klTEfEzHhkMQmoJQmiDlnU2wsb3VWCbicQgne4
         Dw48VfSIcE8QdKzNd1OAYJ7eZ3p45dC9M/3qyim21uh2KZlJn4yhb0rV2dKQ5FeH+oWI
         UprXaW9/mTv924usN/nLJNSEuO9ll16N1F47JBf+lZkXIjOFwKZ0atV2fEHDGW5wLSw7
         OYKlUkpCxwfvgtsBD+MpsfgeXj8DpHLB3wgJVdtng5UAYMATXgnRwBBJXWvrG/VG9WuQ
         AdNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770636356; x=1771241156;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=taZpZ0oWLGP6Au0CiSuaC2iygIHIhUD2iwTBS1mdzoA=;
        b=gIXqxk4b3ntU9wiK1y6VLeEQ3rIVN0TZHAnYsJ/sldZW1xp2WFYrG+X35O09ghpYBn
         n3noJhjCdSKJeITHbVDU/ou+9jSbOtgX5o2mkmJwX8sSsxGYPqllTZ1eaBIWkI32GxLG
         pMZf0AqbOST6AH3QH3T5Xv5RceHxrGHT/CaZ8srpGhwpj2EJi6tYpuTyk8dnHYW4G2Ob
         W2h/njnf1oCPN2ii/GnbBSGSejpE9Lbuqi0mvnnjTpZ+BtRWyeUNHBV+PAgmDk/w+pEn
         Zak6ip5wx/Ub3L1ZY88nMSsDh/v07coRlO7bBhIXM96uXBw5uKpx9+sVBoPiIMXehi/r
         6GhQ==
X-Forwarded-Encrypted: i=1; AJvYcCUng0p2YfVZnj5jPPfWymhxZgmL+jjXDJQ3HkguT8L/UdnhM4vTxWE342/F+xvmTkEjEB2rgIxdlX+z@vger.kernel.org
X-Gm-Message-State: AOJu0YzLNvuXVLdtZjziqAMNtf5znNi9Re/EwJvdPxJSYsP7yjEuwyU2
	PiiQxiajkndsArRdw7hi88mIDrrC4YhfKzYF0RUIUqOEW6duPtvtJsfA
X-Gm-Gg: AZuq6aKZX0mFhNb9zPtWnsvB9yXZT859njo1mKAcoVuBDqnNpn/w2BaVR7MlbBCHxIH
	WEjDUhMPrwfbS8yJzxPn9Qkdp+67AWwHn8zLBwAgNUjplfEydbsls5uOo03WW2rUUXmxxnjQ3Pa
	jJTfphfvbcZTtz6LFvVgolL3zG0T6fmVgOc6AWjpAKeUEcYytze4benElx9nwKZGW/7Xxm/DI+X
	Ro591P9QbQoItruxT/rOvHkIEpG8vHUDa3bTlr5BjuJp/mddxpoHWNrw865BkjaNTJphGvTq66R
	qIPyxvueHjdKYBtvvYQ/larJuBABUlLV52Bwf1a6ETUo74JUPgjmcqfwwYb07MtQ6aPHHOWIDjF
	lZq0Zhhw166oCd8PLmRnD26mWXmCcXUAqPFx1YpGKwMVH0gX9/8yGY5TERUSJtk/tvGNig2q86L
	TW5DaIDaoN+Dm1XbwZlxEEUz4QwtOXuxbX9Q==
X-Received: by 2002:a17:902:c945:b0:2a9:30d4:2af3 with SMTP id d9443c01a7336-2a951937e91mr93409705ad.49.1770636356365;
        Mon, 09 Feb 2026 03:25:56 -0800 (PST)
Received: from [172.16.20.12] ([136.226.253.21])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2aaf2f8472esm25460445ad.5.2026.02.09.03.25.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Feb 2026 03:25:55 -0800 (PST)
Message-ID: <317e9030-849a-4a54-a4e6-75fc93b78935@gmail.com>
Date: Mon, 9 Feb 2026 16:56:18 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v12 3/3] arm64: dts: qcom: talos-evk: Add support for
 QCS615 talos evk board
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, andersson@kernel.org,
 konradybcio@kernel.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260114100043.1310164-1-tessolveupstream@gmail.com>
 <20260114100043.1310164-4-tessolveupstream@gmail.com>
 <169f7c2b-51cb-468d-a492-3b880ef1bd2e@oss.qualcomm.com>
Content-Language: en-US
From: tessolveupstream@gmail.com
In-Reply-To: <169f7c2b-51cb-468d-a492-3b880ef1bd2e@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263961-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tessolveupstream@gmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NO_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 11BA110EE4A
X-Rspamd-Action: no action



On 28-01-2026 17:29, Konrad Dybcio wrote:
> On 1/14/26 11:00 AM, Sudarshan Shetty wrote:
>> Add the device tree for the QCS615-based Talos EVK platform. The
>> platform is composed of a System-on-Module following the SMARC
>> standard, and a Carrier Board.
>>
>> The Carrier Board supports several display configurations, HDMI and
>> LVDS. Both configurations use the same base hardware, with the display
>> selection controlled by a DIP switch.
>>
>> Use a DTBO file, talos-evk-lvds-auo,g133han01.dtso, which defines an
>> overlay that disables HDMI and adds LVDS. The DTs file talos-evk
>> can describe the HDMI display configurations.
>>
>> The initial device tree includes support for:
>> - CPU and memory
>> - UART
>> - GPIOs
>> - Regulators
>> - PMIC
>> - Early console
>> - AT24MAC602 EEPROM
>> - MCP2515 SPI to CAN
>> - ADV7535 DSI-to-HDMI bridge
>> - DisplayPort interface
>> - SN65DSI84ZXHR DSI-to-LVDS bridge
>> - Wi-Fi/BT
>>
>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>> Signed-off-by: Sudarshan Shetty <tessolveupstream@gmail.com>
>> ---
> 
> [...]
> 
>> +	wifi_reg_en_pins_state: wifi-reg-en-pins-state {
>> +		pins = "gpio91";
>> +		function = "gpio";
>> +		drive-strength = <8>;
>> +		output-high;
>> +		bias-pull-up;
>> +	};
>> +
>> +	wlan_en_state: wlan-en-state {
>> +		pins = "gpio84";
>> +		function = "gpio";
>> +		drive-strength = <16>;
>> +		bias-pull-down;
>> +		output-low;
>> +	};
> 
> The output-low/high properties should be unnecessary since the
> drivers that requests the connected GPIOs control their state
> 
> otherwise, I think it's time to finally close in on this..
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>

Sure, will take care in the next patch.
Thank you.
 
> Konrad


