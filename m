Return-Path: <devicetree+bounces-21972-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 87CCD805E51
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 20:05:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 326E21F2149A
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 19:05:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2239A68EA7;
	Tue,  5 Dec 2023 19:05:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XMqn6Onj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com [IPv6:2607:f8b0:4864:20::636])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2FD47B0;
	Tue,  5 Dec 2023 11:05:40 -0800 (PST)
Received: by mail-pl1-x636.google.com with SMTP id d9443c01a7336-1d0ccda19eeso6427715ad.1;
        Tue, 05 Dec 2023 11:05:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701803139; x=1702407939; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=65x/22kRqVtTqMNpjVRPG/dvndAz+ALREHF0eKUJkbY=;
        b=XMqn6OnjZpijVlsqNjDSl50S5vfY0bJucJDhmIu7TZi9kttbTI7pOlP8OEMNS8aSBb
         02UIWOV3nRyzbDBOZ7/vV3qJGoFvHk9YgiFGEt/UcjExbb3vXGya6+AacYz48h7ekhuE
         K59yr155WVDd6SYmHitk8Tdd18QfwIXMUHtjlXYFtHVBJGa8XJ3afPNjvYPSrPHRH2rY
         xYjHGsqxbjL8isvMkgVa1R6ibDpL7ubjxMKBC7pIOaYmOfPAnoKc2O6QjXpzKg4hulC6
         HK3yhUSvG3F/y87+ri/ebvnAeqTYGtxCtNYkzcqQm3koe2wcg1NSVKtT0+BIAxYcy/As
         gHvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701803139; x=1702407939;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=65x/22kRqVtTqMNpjVRPG/dvndAz+ALREHF0eKUJkbY=;
        b=vWXV71/mFxBUFTW8UvbyxyN0cRDlEtF77Lb1q6aNPZNV9mR9siIIUTxdjcvMD3ZCBF
         +An1l+xjpRk3xZ7yPNtwDrSq4b9Eb2fRcR2rjVSyV5uA34B4tOeS13AC/vhdKM28iCUL
         MwCmcE79Akaix2m22jdbgNEEPozjIMIag3YJaOLfXzPRH8e+2oL9Lgdm6dij4KoiEYRN
         /MLDPYMdpigGTEkVdcOpncsx2wH4pXHZs8LNn3JTxdeE55QVbb0eKSssjN+8Prf8pr4j
         k4qHFw7tG6mUMrzvVj0/+3qT91XNR4EpndyocymBRK2RSnIry3i8LlkOx1n/NS8AFBpB
         f6cQ==
X-Gm-Message-State: AOJu0YxEyPW4R7QLCxUvfMC2v2TOiTZzYvegUdaBjpa6e+QnOr4X1804
	lsuSatfm6UFs4C0bfq4jNWgUaHUrWnQ=
X-Google-Smtp-Source: AGHT+IHaLTOWiqx9cRcj54bfnoGThr/ez4R1uxKbeBOYs0xMPsoXq+/Ar7OLLnpmcu9Z9SGzt0wrTw==
X-Received: by 2002:a17:90a:fe0b:b0:286:b6ab:5394 with SMTP id ck11-20020a17090afe0b00b00286b6ab5394mr1483552pjb.94.1701803139609;
        Tue, 05 Dec 2023 11:05:39 -0800 (PST)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.googlemail.com with ESMTPSA id gb2-20020a17090b060200b00286c1a13ed9sm3110511pjb.56.2023.12.05.11.05.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Dec 2023 11:05:39 -0800 (PST)
Message-ID: <a755a0c6-e963-4172-a4c5-df046e28b5d0@gmail.com>
Date: Tue, 5 Dec 2023 11:05:38 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] memory: brcmstb_dpfe: support DPFE API v4
Content-Language: en-US
To: Markus Mayer <mmayer@broadcom.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Florian Fainelli <florian.fainelli@broadcom.com>,
 Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Linux ARM Kernel List <linux-arm-kernel@lists.infradead.org>,
 Device Tree Mailing List <devicetree@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
References: <20231205184741.3092376-1-mmayer@broadcom.com>
 <20231205184741.3092376-4-mmayer@broadcom.com>
From: Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <20231205184741.3092376-4-mmayer@broadcom.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/5/23 10:47, Markus Mayer wrote:
> Add support for version 4 of the DPFE API. This new version is largely
> identical to version 3. The main difference is that all commands now
> take the MHS version number as the first argument. Any other arguments
> have been pushed down by one (i.e. what used to be arg0 in v3 is arg1 in
> v4).
> 
> Signed-off-by: Markus Mayer <mmayer@broadcom.com>

Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
-- 
Florian


