Return-Path: <devicetree+bounces-271571-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0NZbNBKBqWkd9gAAu9opvQ
	(envelope-from <devicetree+bounces-271571-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 14:11:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E1B52212740
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 14:11:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 1EEDA3006939
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 13:11:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F295B3A0B2B;
	Thu,  5 Mar 2026 13:11:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Wwh41uvn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 946A639B4AA
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 13:11:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772716301; cv=none; b=Yvs0e1DL2ZiNPTqU0zWj0dDshcAwRvRTnaM+BiJnwr+7A6uy8BfCfRO67MypIqQrqz7GvVPiJisIY1FIYaV5rWHtBRtMchxETNm2uWC2AYb7KxzSeagb82Y+XZbohGa3v2YKbfuL4XMowrykyfLt/7zU1vr4SWyKKinOSQ+XHn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772716301; c=relaxed/simple;
	bh=VPPvql0d0tqKs01yrymniWsmEm+rSLmkjVnK8EiE4AE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=in2LNEQyrcgWHa0dD+dxOZjzfCbq5EfIpjl1Rfy44PJePNLsn0knjkBzw+KxucoQJWbTX+Um+rwSsgQaIOXtUGHzrefKoDjoyw3ru1rqiZ8WprHdN5f4NxnBLN+YbC7UJ7vRNMNZqSACXFYAyzyRpi9UUuvYOn9kFWOqxsVPojU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Wwh41uvn; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-48329eb96a7so53585595e9.3
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 05:11:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772716299; x=1773321099; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VPPvql0d0tqKs01yrymniWsmEm+rSLmkjVnK8EiE4AE=;
        b=Wwh41uvn+irwDe5oX6jQKJH62OTy7VPFr7bXXBd5kiIhZZ3PpnK2zqptgJxdPEdsD+
         wMn7qQbreyh2CU8wCEFUCkL/VGDnc7g+C3enbjB8eRUZR0TVTZ7/01DJ/sY896xUyXZH
         6h+FaSqLy7TteqTD4R861j+bxW81hooGohbUDjYjNXOUNHAE/9FnhHqq1wa4wDf1U6oe
         ulLT5TRjef1LDWgNPlYyE64Bg3nQn/enmfb2EWPzK4qYzsE17NbKoEyiNYjG8MhcHxm2
         EY06oUY0QcjCAbuozqxWzSpCvk+ZG+xzjROLs0zJ5DJGEdUQ17F59YJr5ED2Uqq2k75i
         547g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772716299; x=1773321099;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VPPvql0d0tqKs01yrymniWsmEm+rSLmkjVnK8EiE4AE=;
        b=eDqtcgcALTH5qaVhzFiw2ZZH/e54p8U4wwrBJIzSUkhWpHLjuSDGaRUSnN1CQn4jRc
         HclYQoz1xVZMqQU/hgC4m6kRK8BdGY1vA04vfchbUm0QaIlkHSr9tijhOPiHsUtweRcg
         h82Bk88cslkbtspAPftRyqHZXrM4YG2LYnw7hiLSXLQjzgatC06ExTuzC5AoDAgh3Inh
         tptT9fvNAX5vO4E7RUCh7qOb+wijiOcauwEb5xRV7tAxaEsJ83EXOy5o4I+oGSUX9RPD
         2MeQTSPOqp7DCh6V82XK4lOKqlJi3PthsLkyL8ft7nYzRfdg/0+r+tXEradgABoBh9dl
         xsEA==
X-Forwarded-Encrypted: i=1; AJvYcCXvKsCZ649gNzLc+zShONO6HtAYE1+G93aGbbmgOjOWt+i5wfXmJmcit3hFhIlZFYiuzKujQ7t4z+4U@vger.kernel.org
X-Gm-Message-State: AOJu0YxxXRMhyeyTcWYUVO1HsiQKJMo5ecr0vpy/R/yrmJduGXE2K0a8
	gIEXWdadwKSAR5VVJgTcMBogbI3zKfklfO6piVsJJDdmRAZyfGqHzE80/bveiKLYtno=
X-Gm-Gg: ATEYQzz/UAnZ4ZDjrzN3e4v8Kb3i3NxHiAFSHwauXVLpHFVQTOBlxZWvF4wb62c5yHv
	rDshZXM80E9suNF3NJN7QVfoCQ4vJn8fkWg1pOdFG8L49smj4Y8lfIwmQdQx6YWpCsn5i2DkmP8
	XOy3Mcp4W6MuBS48nlKC4E5WcQcLIoz3p7HoIV7wSQsTVr/FoNQAbCOoSjlSX21iLLr0r8UtvrW
	jkq2PxEtIZ2d4CfROudqEfXycLo+9UWQRAp+lc6SM8ugMWpYm8Q73QdSTbNPMDpAHEwK3W7RO+m
	zIEbsOacAncQleDBHc2XFrovqQEOGlQ+phGFbxtrvaXZR4rIM7FLgH55DJXklBNtxlnGpaRZpDA
	wavzRtxIwAjaoN8SPJLihU9iQzE0+d/pui2jf8UsMtc6Z4dtanMZJ1YoyYCCOLgh2VHkOdi8gbz
	Gw28J44qNWQRdg42j+NvT6l2a5aFeuDpUV0bgP5KKNOPWDpXbCkSeil71bTKaTXB24xe82zufmU
	NM=
X-Received: by 2002:a05:600c:19c6:b0:480:5951:fc1e with SMTP id 5b1f17b1804b1-48519839402mr103596085e9.11.1772716298965;
        Thu, 05 Mar 2026 05:11:38 -0800 (PST)
Received: from [192.168.0.40] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4851fafe4c9sm53169005e9.15.2026.03.05.05.11.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Mar 2026 05:11:38 -0800 (PST)
Message-ID: <1a22f7e9-8a48-448c-a035-7c487e81a96e@linaro.org>
Date: Thu, 5 Mar 2026 13:11:35 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 6/7] arm64: dts: qcom: x1e80100: Add CAMCC block
 definition
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Jagadeesh Kona <quic_jkona@quicinc.com>,
 Konrad Dybcio <konradybcio@kernel.org>, Abel Vesa <abelvesa@kernel.org>,
 Rajendra Nayak <quic_rjendra@quicinc.com>,
 Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
 Imran Shaik <imran.shaik@oss.qualcomm.com>,
 Taniya Das <taniya.das@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Konrad Dybcio
 <konrad.dybcio@oss.qualcomm.com>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Abel Vesa <abel.vesa@oss.qualcomm.com>
References: <20260304-purwa-videocc-camcc-v2-0-dbbd2d258bd6@oss.qualcomm.com>
 <20260304-purwa-videocc-camcc-v2-6-dbbd2d258bd6@oss.qualcomm.com>
 <3f69539c-7383-4321-8cc6-1f5a8cc23822@kernel.org>
 <dd256b85-b88f-4163-a1e0-52c976089eae@kernel.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <dd256b85-b88f-4163-a1e0-52c976089eae@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: E1B52212740
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[23];
	TAGGED_FROM(0.00)[bounces-271571-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bryan.odonoghue@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Action: no action

On 05/03/2026 12:00, Krzysztof Kozlowski wrote:
> Actually I checked now - all the people reviewed commit without fixes
> tag and you just added.

Eh ...

Please don't do that with my SoB patch !

---
bod

