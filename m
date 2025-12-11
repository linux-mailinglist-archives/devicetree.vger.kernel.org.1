Return-Path: <devicetree+bounces-245812-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CBB6CB58D2
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 11:47:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 60A7D300F19F
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 10:47:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E677E3043DC;
	Thu, 11 Dec 2025 10:47:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="taRiryPZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BBF62FF65F
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 10:47:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765450073; cv=none; b=VqhijY+xPOJsU2AdyWK4R8JqRmcInvIm9Rr/HLJnaNZqjTna5N0akBZSvrGxa5QqXdTTGwy/zHlDXKpm9gY1Ar/VJ1Yfzazv+uBX6KZO1nZRHEP6F10qpmRJp8TFrsO6WPipkjRi+kIPsIc+iwJVtVyH6JL0xbZXJ7ooPfWPRZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765450073; c=relaxed/simple;
	bh=/hJYTPgyO3sAld5wDaKkhaw6EwYwaEEqTlH2rzJMZ18=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CaibsgvcpUeixAwdGesQhPQZu1AMiz4f8bm3dgrJrREIpashl8SfiP9eyr1lxdE/x+jzmv9NXNCQFPk/LVDMAm93Znf+0mgIZaEFe4LrtkVVl1AkbrkZy/ByNNNDaoI3adLY+zcGIrP9DJwrnW/EcbQdhYvkFofi/6+fhHu0EZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=taRiryPZ; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-37a990ec4e5so529291fa.3
        for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 02:47:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1765450070; x=1766054870; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sa4s1sdDw8tatxWU1wIWykEhaXAgMDTgFi6xwN1LbFg=;
        b=taRiryPZHvOW9mL33v9ReHpkrhaoocqTitjcPVbfs4xVSwYcLXLbTuUYatSTE7ByuO
         hp7KVu++Cf6FWfGN0HVQhx2GDef8cAQiNBMJ4RaQ9kSLZ02xgv6GaTKSOEtbUD8AkW/E
         CLhGLvzELWudAb9wEMa2is/oCPaKFGl9p1l6mOMojUz67w31vXSLMBMHHg5ezu0HYGMc
         DVuFCsenWa2JjDb6iKw8pXdpLRRRBxiG+9RpdAa0C5HPu8GcdHz3c1xVDvfKqgc44pA5
         SlTV/zINSzIFAwdtHJtRBfWiMaqoqLDg72xhVHRT+XoeBMID3R9gm6PTdWZBz36OF/8u
         cMGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765450070; x=1766054870;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sa4s1sdDw8tatxWU1wIWykEhaXAgMDTgFi6xwN1LbFg=;
        b=gSc7VoiZjuqdoNi9RYkLRCD/VvzjYCSVRNbzIwZo/SZufy+cGjl3BVPWs/PP8d4A00
         20SqQet3mN/nQ+x5xpE2jy76XyY1/yGAznFe+Gf5bnN75YRLiTslfWNik+p/kS3o0DN4
         X5cQHt82Srby3Fo6HxEPwyzgJUCTgzI6IY+OmzrjdtLiDN99bvDtXhW0leKp7VmFXlsp
         +PxlLpOtdtD+OZKGNgP59x8wcEqp2x1SHiqHAanWPVp3I7vZdu368hk2U7XSFKo2aAvs
         ZyuzV9jIqKfCuIKAh4qw3av2pMmg4wwgJNMKsA43QyiTasa4p8rgJbDj/Z+9YBjgGw1v
         5spA==
X-Forwarded-Encrypted: i=1; AJvYcCWkt7iLs9cna9TAlVsriWpq1DXk18jx9DAfsRA5/Maw7+ZN/2y+1tk+KNENGH+shsihpcWdZXOuj3am@vger.kernel.org
X-Gm-Message-State: AOJu0YwlrsYcVnx79KbXB4CK5bWPuB0RAXtv7hCqFWCY02i2VvkUz8uC
	Z0EqEpAd3O3dgfdYT0fi0eKQ6ARE/OvisAD8Gt9X2sWRUh26plBlAoMxH1JoW/JnN+o=
X-Gm-Gg: AY/fxX7vd6jcpBS2D+hLQGiDtom50ZJv8C2bbULdgAhW0k0vbv+W0g2HDWHh58yrkgg
	bUtu98ZqToo2qIHHo902csIxA7imlTmz09tL/rEZbnPUjs+AX0bEwVWNW7pBTbR960qC3jsXIq1
	51Auh+M+UoW/UDRuYYBf6q46NmgnGW+xVT584b7GtrAF9cJSDrnfVU/ySBdCjhx4RcLe75hOJEg
	AFlChCSQFTTpjVPmZihOMqdeE4UV3upE0JdSOh828RvX/Rw3Z5EmHSAJGuChGHEUZFO2f4fG2nK
	MrMuX6c0C94vxJoesuBaUQSjJvlCfboYlo+Yl1X/wEhXn6FlgenrDl+LMXUirjjZSWN4d2EhIc5
	QdOXt2RNnyxtEC+ln9agS3oBrCyVpqv1VfO6M5WHyZYCoJSPTSS5QDKxcjP9djtFCZ/Job0OAgh
	vmW61zUDolRSL5o1S9WQOsmNQjx0k08MAXAX+TncT4lVikbs7pNwft471kyeZIYR/3pC0UYHkp5
	wYL
X-Google-Smtp-Source: AGHT+IHL0nA4s/oF/x2Q6BybMdGdTLDPq2ugV8txN57v1OrxcOFcQnTUnN2DMwrgc1SDYdT1FHQ2+A==
X-Received: by 2002:a05:651c:f1c:b0:37b:bafc:26a4 with SMTP id 38308e7fff4ca-37fbe0c23a7mr3640941fa.1.1765450070139;
        Thu, 11 Dec 2025 02:47:50 -0800 (PST)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37fbc9ba1e6sm5688151fa.17.2025.12.11.02.47.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Dec 2025 02:47:49 -0800 (PST)
Message-ID: <dfeb8bbe-8751-45f8-9ed8-1e28435056e2@linaro.org>
Date: Thu, 11 Dec 2025 12:47:48 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 4/5] arm64: dts: qcom: sdm670: add camera mclk pins
To: Richard Acayan <mailingradian@gmail.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Tianshu Qiu <tian.shu.qiu@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-media@vger.kernel.org
Cc: Robert Mader <robert.mader@collabora.com>
References: <20251211014846.16602-1-mailingradian@gmail.com>
 <20251211014846.16602-5-mailingradian@gmail.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20251211014846.16602-5-mailingradian@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/11/25 03:48, Richard Acayan wrote:
> The camera subsystem is added for the SoC common devicetree, but the
> mclk pins should also be common across the SoC. Add the mclk pins for
> the cameras.
> 
> Suggested-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Link: https://lore.kernel.org/r/5135823c-f2e4-4873-9e3a-9d190cac0113@oss.qualcomm.com
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>

Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>

-- 
Best wishes,
Vladimir

