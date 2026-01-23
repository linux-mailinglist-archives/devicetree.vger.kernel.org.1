Return-Path: <devicetree+bounces-258808-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KEolGLs+c2kztgAAu9opvQ
	(envelope-from <devicetree+bounces-258808-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 10:26:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BA97B733E3
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 10:26:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6C0C630120EE
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 09:25:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8415731A049;
	Fri, 23 Jan 2026 09:25:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="HTZxcn7E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 070BA30BB80
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 09:25:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769160323; cv=none; b=ekMfdIHUw8/RISy+A+L5J4u44j+qCYeGmOyta6En2JhIx10YVQW6iLDxdAct1R8pUKC/MihgR26ko00y3LaSgyqNqR21o6++UaufYdwKNFTc/KtZSZgWP8+gIgi88GRHoW6QAQyfcdXZSWPS1GdLSlmaOR7OLLax+W8FcpazbZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769160323; c=relaxed/simple;
	bh=m2nCruU7nNkkyDjRNPZcpfz1+LM7X3rD7M9XU5lDwNY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bw6quAzKytJyF7pUiWDcD7M/nTNLQt74ewJrtdXhH5V70WqbA2dev80B4niCj0ERH8NDzc3wjMiTJsbjc7zLPmF2B9jV3oVMZVKGsi6R5r8wHVd/qJ8h/Nf4qJ9HrED8wZtvA/4t2Z8Jy3MtmFJleRnj/kGbs+aPfU0GsvOUyuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=HTZxcn7E; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-430f2ee2f00so1224929f8f.3
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 01:25:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1769160318; x=1769765118; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=42GEtX+KF8PV1SXMltWgUuBtFY4WZcL8hCIPkAOOUUo=;
        b=HTZxcn7E/S+vWb7ghMJpMlAKOZlBkIUfgC1vSsceewyJAjOFpdJ3+If/FnSJCjGdZA
         4In3kMTIQzWX3KlnwUST9v9MU2VcxdHotrpAdwoZG1BfpewC2cZ2Ith+utZnaHp01jCm
         SWVGguqFVC6UQFhqrIWhYtlqpJuZzQZDPZVKdIcC8lszk+QR0BM7rgIAKlbyaAmGQwnO
         F8H5ZgSUP4kqtc/zuLU39N+iOnAJhMV0NUcQGM/WjHWMyBz9xtxFX+y1y3O0Dk13isem
         5SBvvanpvBduSmkAJ9YErJEa0iAa/T9ndXQnEgL/XGmRB3unhJ8ssD0//Dr9ig8tZjj0
         HY3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769160318; x=1769765118;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=42GEtX+KF8PV1SXMltWgUuBtFY4WZcL8hCIPkAOOUUo=;
        b=bMamJPdhZhGOOmb2v/mdsC4uxm/B7MBM1ilpxzLT5mkgsgso/TzQzVXeyye9heA1KX
         aTRNu0JmyEP8HAC0XvxevzIOZ6U6TJSju0Gyo/K6dpvI3OWhr9Ts3Lq45x6i//7syY1D
         IiRbqLre4tJmSf+CUJ22XHVywdQkA2NtiHpD9b4iMmexiLSy5cXVolEBKaSFYpHZMlPt
         rsN79JHRuI1KB0uhZ3YvIXsaDhvNjUy5+7rxnzxgn11wxwBLPuMnIMOOoVBWepNvI79t
         B5mRLR1ei2yGSRD8yGPfgoWe9iz5fvpZGnFPpLRT7nKEbmsxwioaO73Gi+DU0GGoZWDs
         lvKA==
X-Forwarded-Encrypted: i=1; AJvYcCUqlWUTh8qO3icyGjHfAWEUiFyLpMLmpn+O4h9csI8Hs0Q7KMDXHJSKGQz+wK/9yyi6CECUS0qdDtdj@vger.kernel.org
X-Gm-Message-State: AOJu0Yzb+VpNrNibdoF8XdGAYzp1/PBsYLYWjfTvCZokxEDlyGNaJ7iU
	TOpZkz4DP5Or1N+XpzFpEhnaKUUpNrbc+PBIarWTEyZsuqqx75jaSrcGpOisCLSUX8k=
X-Gm-Gg: AZuq6aJ/tgL9b4kNIG+8gFWb8QuJgaus1+Eegq5aK9sXET/SqSdBi0w8ZXb6HlX65Sd
	189mzP6WDAMCttvIRvYwMsMbovSwk6Hi7/9Esrs6BFZ+mAmtAGQvvTuHVfvBfCiD4n4idj8qPyS
	pJvwirJUB8WVzZ/v3v/qeATIA88T/E5T10qlryv12pujD+MxinVbqHyiUPP2WYYRHA3a18/bfN0
	93ULa0qBCMahpgnvPCRKqe/Tdu/ImQdMQjoIiqdC3faNK6i2nn739WMoH17pC8VjnNAtuJiNVln
	UiQOC3LQ+wvA8E/XttRKXS+bzU31aZqPmrraiTdAWcm9X2OiFy1bNVAlFjsRSpWh/mNEzpPmMTa
	cD/pRGtIpuJ0XVAXDItryboQujdiWOZ9DQ4LQx+oQW2mE8wfx7uZkWMAlN7l+slgo+QtyGsd651
	KWjpJ79pnhZsgKrxpGeQ==
X-Received: by 2002:a05:6000:2c12:b0:435:a3b9:9b8 with SMTP id ffacd0b85a97d-435b15de04cmr4007181f8f.24.1769160318186;
        Fri, 23 Jan 2026 01:25:18 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.31])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435b1f73855sm5141283f8f.29.2026.01.23.01.25.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Jan 2026 01:25:17 -0800 (PST)
Message-ID: <38eb1632-4541-40e2-adc5-9c25fad9df7e@tuxon.dev>
Date: Fri, 23 Jan 2026 11:25:16 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND PATCH] ARM: dts: microchip: Drop usb_a9g20-dab-mmx.dtsi
To: "Rob Herring (Arm)" <robh@kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260122202345.3387936-2-robh@kernel.org>
Content-Language: en-US
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20260122202345.3387936-2-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[tuxon.dev:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[tuxon.dev:+];
	TAGGED_FROM(0.00)[bounces-258808-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[tuxon.dev];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[claudiu.beznea@tuxon.dev,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tuxon.dev:mid,tuxon.dev:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,bootlin.com:email]
X-Rspamd-Queue-Id: BA97B733E3
X-Rspamd-Action: no action



On 1/22/26 22:23, Rob Herring (Arm) wrote:
> This .dtsi file is not included anywhere in the tree and can't be
> tested.
> 
> Acked-by: Alexandre Belloni<alexandre.belloni@bootlin.com>
> Signed-off-by: Rob Herring (Arm)<robh@kernel.org>

Applied to at91-dt, thanks!

