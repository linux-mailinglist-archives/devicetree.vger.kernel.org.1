Return-Path: <devicetree+bounces-204243-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F123B24AA8
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 15:34:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0E9CE7B4974
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 13:32:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 102E92EA49F;
	Wed, 13 Aug 2025 13:34:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=hammernet-be.20230601.gappssmtp.com header.i=@hammernet-be.20230601.gappssmtp.com header.b="zts5AfOi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 392FC2E92A6
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 13:34:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755092061; cv=none; b=IFOmuffm3l+QBr2g0nUFevHpSBtAGjSRLC8o5kl6zDZ6ocG7JKHoFJS2CbL9sJLy5S6CFd9w7OS6uvYxHyTyJ9sVT8+zZdLRTYywYxVw5pFr16xtLhosVlGgVgjsVjs9Y2Y5bjpCLuBrM18PX9d/SUvnW3Vkrwu8XFIEXsfD8Pg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755092061; c=relaxed/simple;
	bh=fNSC8w8HU0S89hQRnFJWFWREK6fXZjS72GfrRn4HArw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bRwNNKcTVT0PmwwvrEvuMdCts+GwcxPaamIbl/wCChEc07KIEn8LtoFsG1CJn4pgncIlnve5ahh82VWHymzBqnxFCqfL7tNmJeIoblCdcNV7ttZ/xHAd8tw67rT4bMnYBI38DKf8tlfs919XgXr53/5MAKgiIObgxyGZe5iqb9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=hammernet.be; spf=fail smtp.mailfrom=hammernet.be; dkim=pass (2048-bit key) header.d=hammernet-be.20230601.gappssmtp.com header.i=@hammernet-be.20230601.gappssmtp.com header.b=zts5AfOi; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=hammernet.be
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=hammernet.be
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-3b79bdc9a7dso4027527f8f.1
        for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 06:34:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=hammernet-be.20230601.gappssmtp.com; s=20230601; t=1755092056; x=1755696856; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fNSC8w8HU0S89hQRnFJWFWREK6fXZjS72GfrRn4HArw=;
        b=zts5AfOieDGtIpBk2bnNnf3iiJNQg6K8rn3kUC9fc4ndoyX9jnBrcU6x6iHb7qUO3B
         8Glfm88viDrW9fYLImCF3awDhsXQR5j/9Tnspf/hNTi9a7Mxgbvk9/N9uSpofAZXJUes
         duIyApbZ6pD6Jiz4KTsHNefl2uEGh8nOzy/3YVUIWQAXYq18DdXxZh8vt48lfG0IEhLJ
         ZiOztvyokuujAtESWcStkFuHzqrErEhVYgbCK02GiOjp30kScY/UGyJ/baxuuqSFjY/h
         KLqSDClYxOULDu3kFVDRMsf5tILszqYQawDpI7xnlW7MpiZFyoDFCCF85NNB7YfKQiBj
         IN7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755092056; x=1755696856;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fNSC8w8HU0S89hQRnFJWFWREK6fXZjS72GfrRn4HArw=;
        b=Imw4zlIZ62uVKqEnWP92YkX4xtbc7SUvAGM4oNxeOqBw7rxI3A53ae6gOAE3X+pPe3
         Rk3+7MCxJ7Ws1u746NgsLYgnumti6GPK1utJry8dsCcpJqYdRgQsJX5rlfxWa/RMOgXJ
         zcLU2eijK6f+OevRKaZQATPL13kjFCmtP1ueX1emOOTpjfda8RuCNzsADWGpM9coGfer
         K5mOWGSGjRHfcogXRnJpftD2j5NSgfZ8UhqItXKq4SlUYeBGGzpjHGE+Ciah5N3eN/9p
         xk25eGTDWL1bOre94RR1akGtT5JzC9HvEqjHvIOYJJTAN/hYjnd1Fv5U7WIHGsYvK8it
         CCrg==
X-Forwarded-Encrypted: i=1; AJvYcCXtu9JCobcVlm28VndJkjy2m+iCJELY7ur1/9UoCqZJLuLtqZ+DPP66cvBALFlSwFIXsO23MbTN/5t3@vger.kernel.org
X-Gm-Message-State: AOJu0Yzxxuf+o6pkdB7r2Dh9N16Cmdu7AYqCHDqPdmD8n+WFfwoQKJ+D
	QO7SzA4ZIRodLLDThxysqzD1ET6lLcAtI6Ym3UgDiCePtFlndrbv9II5Vo45anq5PFM=
X-Gm-Gg: ASbGncvynrVmBwJ3+U7gFLK93JXhADkWRVvQxAFlP/UeIhPlJS8gOeGual6F0oOAJsa
	oUKlytP3v8eaceNyERIBc4oRaRjanQtWk2+QShXiixbgVuaU/qOftoYbQO2ZIqfhyg3QKtl+A69
	XIUvpBKGa4QgvFWqZkDanpbbCbwu0ZCPiAmsw7PzbVJhDtieckwTgPotrS51Ueq2ExTgF63Lpmx
	9Anl49sDNpSIZkvZWI565LBiNL3ItEAnl6+0Jd2zcnOPW6IpcZU/gqSjByEQdVAOKWLw7MaCx34
	BHQBwaJX1tGdJCmijosNio4ptR2dzKjggqx8ROWUd7BT9K54aIoKRwrlG3nprX36pdn8eAYSE0b
	9AZKzi+dUTna7G2Os7A7jVu2PymYOqKKziZoKxQarWq6Ys77N5RPRVBY7ijzAq4+h9+/dwQz6ch
	+jZ0853h5b3wEvWmW+GBtJ
X-Google-Smtp-Source: AGHT+IGyWBRLcYyjmPdaFJ7RJMvGFJChrNnUkFexYqA+15BorH+hR4bUKBZZRC1EER2gmnrpcLdyVA==
X-Received: by 2002:a05:6000:26c9:b0:3b8:ff3b:6437 with SMTP id ffacd0b85a97d-3b917c85890mr2243633f8f.0.1755092055765;
        Wed, 13 Aug 2025 06:34:15 -0700 (PDT)
Received: from ?IPV6:2a02:1807:2a00:3400:388a:2f48:ed4:7e0e? ([2a02:1807:2a00:3400:388a:2f48:ed4:7e0e])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b8e0846777sm37944948f8f.48.2025.08.13.06.34.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Aug 2025 06:34:15 -0700 (PDT)
Message-ID: <463dcfa3-152e-4a48-9821-debdc29c89b2@hammernet.be>
Date: Wed, 13 Aug 2025 15:34:13 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v5 4/5] riscv: dts: spacemit: Add Ethernet
 support for BPI-F3
To: Vivian Wang <wangruikang@iscas.ac.cn>, Andrew Lunn
 <andrew+netdev@lunn.ch>, Jakub Kicinski <kuba@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Paolo Abeni <pabeni@redhat.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Alexandre Ghiti <alex@ghiti.fr>
Cc: Vivian Wang <uwu@dram.page>, Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Junhui Liu <junhui.liu@pigmoral.tech>, Simon Horman <horms@kernel.org>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org,
 Shuah Khan <skhan@linuxfoundation.org>
References: <20250812-net-k1-emac-v5-0-dd17c4905f49@iscas.ac.cn>
 <20250812-net-k1-emac-v5-4-dd17c4905f49@iscas.ac.cn>
Content-Language: en-US
From: Hendrik Hamerlinck <hendrik.hamerlinck@hammernet.be>
In-Reply-To: <20250812-net-k1-emac-v5-4-dd17c4905f49@iscas.ac.cn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 8/12/25 04:02, Vivian Wang wrote:
> Banana Pi BPI-F3 uses an RGMII PHY for each port and uses GPIO for PHY
> reset.
>
> Signed-off-by: Vivian Wang <wangruikang@iscas.ac.cn>
>
Tested on Banana Pi BPI-F3 and Orange Pi RV2. Verified SSH shell over eth0
and eth1 interfaces, and basic UDP connectivity using iperf3. Thank you!

Tested-by: Hendrik Hamerlinck <hendrik.hamerlinck@hammernet.be>

Kind regards,
Hendrik

