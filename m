Return-Path: <devicetree+bounces-193216-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 36C8DAF9ECA
	for <lists+devicetree@lfdr.de>; Sat,  5 Jul 2025 09:33:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 924D7168B57
	for <lists+devicetree@lfdr.de>; Sat,  5 Jul 2025 07:33:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB0212749E3;
	Sat,  5 Jul 2025 07:33:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="OUTEU4z9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F5DC1B87EB
	for <devicetree@vger.kernel.org>; Sat,  5 Jul 2025 07:33:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751700785; cv=none; b=A6T1eS/L3T3Ri44J8THdB/lGe5k9/8D8G1y5ykicO5F8k44dquvX++/4WOisjCAFGQz+qKNYrM4CLZ6358b9/GWtRst/3RNaEqBfpxh1WP4dKXrlNIOInox5rIZH3qwP9RutePWgnsS+sJF334ghHdGFR/WFaHObJGvenyPAng8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751700785; c=relaxed/simple;
	bh=0Hj2hsA0yg8eHselRNXLbIxPUVxDpD46JH6KRUdJfCE=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=KWfaumF5PHf5L/da4VAQIjyNpICYfg3nqIj4J2TWIK75/65Ekhdf8p+3z0hyTuVIkxuUyJaa74ZVq/f7f05aBq/kqx7eLzvrybCOfi5Ps0y8IhO0q80WQWO+fMeE0T+wE3xlPCuhRw9DCfrJ7WJZBn+aSPuJPkksh1Jh+poHAUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=OUTEU4z9; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-ae0a0cd709bso551856966b.0
        for <devicetree@vger.kernel.org>; Sat, 05 Jul 2025 00:33:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1751700782; x=1752305582; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=PBBQIivu9R4hlVII8eARKlvSF8Id6Zmw+UPZl64Yvzo=;
        b=OUTEU4z9nk8S+Rj9rhNYiwzCxch4G91tKmbW1msYac9kCDUSaz15hnEiRXHP6NYBSE
         GzO7+Ucu9HtwZY4oQrpGFq0pAB6btClLlqjfxcJBEx3AIudv2xq/HEbJfg3QmpOaZVag
         X0ONDX5kMRM+gQTnAXxenWpkcIX2VwAcpBDQJ/VeW+r9rremx2BmB2QJLeVUvlxxvPyo
         G6BPRSOFTIgcY1g1E/LkxVeOkbFqsQGOBQ6Hu7I0aYUzYTGdMvHtpQzUOFQZE9SXwf+j
         PCToDwHEnlDOyOb8PW6CT6WjbM02EWlCu26AW1z+zlsge5WfasIyvdxJVEiIIJ/l8gjY
         qDvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751700782; x=1752305582;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PBBQIivu9R4hlVII8eARKlvSF8Id6Zmw+UPZl64Yvzo=;
        b=NxfRldxQu5pmsTxS8YxkLIE77uqG/D6Wj/5tWoGwfMtQXltjZQvSIvXYl1kn6x7QuJ
         zj7LdONOI4DoOWdYtAZ6KCbD6eYQE7Yr3DKXKdMw101s8Fk8WHbp7m0t7CNxm9Qz1vDD
         Vc2OLTwAJo4M9yMBaSSkhFLdCBak9fM3bYVNi713RFcLopyUjPoAaULKedK0YIncSlLa
         Def49NIFc44EC9qCMwmkDaH4OuxSGU/TDkmYtRgXNMzA9ch/yDOs0ecvRkp9bDPsngvm
         IsQHZ/3OQDDCk/JZzITxaG7xdbqLT0JiP/uyh5Dk82raE3J0eqMC5+MnOWFUXOf6mTp9
         XEag==
X-Forwarded-Encrypted: i=1; AJvYcCUM/E/5PYo9r9NIsMJVFwOqhNPmHxGlNPG3j0AzeCHJ8Tp0YUMaTiQ37n/bJObQNMHi0MbbMgWfdnfz@vger.kernel.org
X-Gm-Message-State: AOJu0YyRdoeQJnDK5w8XsNudrktXhoR/B/UE296KKmex1v5CPLNcqwu5
	TbnYWKddZDFVEobWT2lSYv8qn4LZ7+UYwsJqpAl6tPuW1r6GqO5kQ7gOyixtIBRhEcQ=
X-Gm-Gg: ASbGncuzlFEOH5aoCeA2D/+Xud4zBZtXmeHHTwtbAA9YQxtZOGcJOQ4N+qdlJIHGE5I
	3LRCoqVCh/8GkWNBlFPHYpk8TMDDzzVmzp7wul7JYGRsTnDeDs85pANyT607nsBP+0SR88UFsQR
	TUVrse+uTD9z3lr/DxSe2eM5oJ8mjjDw/gd04P+eMz7IqR1wrEDr/NzvgxyAz5q70LMfv5VgsN2
	scqyAmgL4a+T8C5OWf2hJw9dBK/ivOuZ0tnqFbgHbMU7LWYDmtrWXHkOPNmljdDewSsE64qTIPf
	YPfAH2X4WZK4ngM2OGcciq+4nbf6LlcdWtmE5j9+RZre7jwn/AMjWd+JSY1HxWc6pKVy2g==
X-Google-Smtp-Source: AGHT+IFKOW5I/XuGd4Dp5owBqCPbOMq1w2RB/ia5hoIkMKyEPcf9Oo2NcunX07fujYumjahMwc5UaA==
X-Received: by 2002:a17:907:97c2:b0:ae3:6e5c:1c05 with SMTP id a640c23a62f3a-ae3f83b2ef6mr584605866b.30.1751700782292;
        Sat, 05 Jul 2025 00:33:02 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.83])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae410916ee7sm72527666b.15.2025.07.05.00.33.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 05 Jul 2025 00:33:01 -0700 (PDT)
Message-ID: <c714c568-a661-49ee-9645-4787cf15d24c@tuxon.dev>
Date: Sat, 5 Jul 2025 10:33:00 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/4] ARM: dts: microchip: sama5d27_wlsom1: rename
 spi-cs-setup-ns property to spi-cs-setup-delay-ns
To: Manikandan Muralidharan <manikandan.m@microchip.com>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, tudor.ambarus@linaro.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250521054309.361894-1-manikandan.m@microchip.com>
 <20250521054309.361894-3-manikandan.m@microchip.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <20250521054309.361894-3-manikandan.m@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 21.05.2025 08:43, Manikandan Muralidharan wrote:
> The naming scheme for delay properties includes "delay" in the name,
> so renaming spi-cs-setup-ns property to spi-cs-setup-delay-ns.
> 
> Fixes: 417e58ea41ab ("ARM: dts: at91-sama5d27_wlsom1: Set sst26vf064b SPI NOR flash at its maximum frequency")
> Signed-off-by: Manikandan Muralidharan <manikandan.m@microchip.com>


Applied to at91-dt, thanks!

