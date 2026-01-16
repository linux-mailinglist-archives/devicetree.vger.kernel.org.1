Return-Path: <devicetree+bounces-255883-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 40139D2CC41
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 07:53:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DE7023038F28
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 06:53:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61D5834E75D;
	Fri, 16 Jan 2026 06:53:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="Om7Ocbu/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75FB327BF7D
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 06:53:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768546414; cv=none; b=rSjAMXDTkgQbO7FDnvF7oQl5VSrInu9gTJxfFHl2ploXBIoPNigorocNNZJvI1/V/gRVdurIUE+PwRQ3uVrrLd8Y6+Agg5+dNnPVDGO7uvOksQGbRzObg9Y9yDbvVc8glM3PsEKhwMDQOZt689iCL4mYUW3+ww4UWlRlyzAOXzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768546414; c=relaxed/simple;
	bh=hAgJHcyKbjYCz79+sL72bdt5QiZ9LxAE0CgKB6p6C+k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ukZNLVdXe22t2yZSEfRXa+NLdGMZqrcRHiYl90cbWayJMT9NZYSl8wabkGVEzu0/QNMDSWqpGqmlbEHDVny218hPjCRqKqOdMYt0NHTbGQ92P8mMQrkhVVeRlx1AOzNHcQRYpeWynh3CBNzIfbw6rdNmIEwML8RvO3sxuP4P9Vs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=Om7Ocbu/; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4801d98cf39so4842975e9.1
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 22:53:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1768546411; x=1769151211; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CZBgjJWFOo/Oc5syADkh6oxfyzw6Z60jrJfIeTvBdx0=;
        b=Om7Ocbu/8znsfC3pCpoKhsW2aohj6zpczWcCJnqXLUl7A3N9w34iYvZhXfxCfKExEC
         UdwJSrcTao6mSzpxbSTkWqDo+GFC5H1ZDYIUihutajxovz+BqFBiUx/bjAYxnuGVKaaH
         1/VNOiez9hkwiHK20IbRSQzLB+gK5AvL1LYiiM3PEI798CaZ4o9BS5vblqiVrPw6r9vk
         EtZfKKw5qzn9yXDlIdbuki0VvQ4WT3J4RMmR43GhEt759OsE6OifxhZZtoMasUxDodQ8
         msXZb1NEYiomaGrTIcmW51q8lA8+wxLZ9z7FKuHkROZbWZ2YH66qa+Rwy29NUa+67QBX
         6VDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768546411; x=1769151211;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CZBgjJWFOo/Oc5syADkh6oxfyzw6Z60jrJfIeTvBdx0=;
        b=kP47tXNu+hkoHQh7OILOdcXjPY+0ecW/TCvDc9426/K4XF1/idGLokru2NtDYHMqzL
         1jdXtbK3zSPe1+ZcaU/QuWISFHdUGmwnTeOsjBGO3/ZTUGRn4GwDlwX9o8vHZyc/Z4/F
         +7NGVtTL0gsI54m6VfYpEKEORs6/IvK3HJTsZtg98cTja51F0oVJ4LM638Nvc6ikpCO7
         c8zxsL/rjcXKgzgBrkvIdGqm5/5vklbvg1dI5Cz/+MeZX+rlQIyua4ufdV5hk+YzXHs3
         jil59s563hhuZtGZqoAqkbmC8N/79AzW4wnrPlq93f0owB1zMwkjfIS5pKt3NbK80c41
         zSlQ==
X-Forwarded-Encrypted: i=1; AJvYcCWBLbyIurM1VTsrD7ixDiiX/p5vya2NmpMX5/7y2SmeJVKLSOITS80kS91BpoiyMNxKuu5Nfr/kSIYV@vger.kernel.org
X-Gm-Message-State: AOJu0YzNUQCOsHJE2LNd18FFM21MFjOumPCBktC5ptZ4ywWuwLlZuX9k
	5o1eRnmaGW8dyBbhf2i9/r+8ZhL7Y2hocZVt9D983cvFyPt9hjwOspQBFNVs0YGYPmc=
X-Gm-Gg: AY/fxX45HlXz70xfA3VpFn8PQ4i2eYPbWQ5RoXV43jCx1YowwZs1sh5ems5mRkPXm8U
	aTNdC9fvz/LthBXQaJ8uiHv4bYIK7WSWiI/03T/oStlfd9RvqVMb5okR06M4jgCpQyfi+T96BNs
	mB+R+BZdk4Vdqrtcrg7heIGzGosWwNXTeNyjBtCQgN9OdsjbVq4TUihma5v21YGMP9bsdZuykYP
	avUY1vvlrTtMxuy2xizW6bIYMHqB+VW8lJbsolbqOgUKj0R3NUJkJKtDeRDWRNAiyy5yY1p7kMa
	lpFAbI2enYPIcP7CXqSl5uVIcHef6UnKOW5t829STI8/JJtO0Kkt3Ujs+Z5WNloa/IAXNZBQU7I
	A5nm+ZaUbVpl4h+fxhPhoj4w1CE06gU8tNGYj3LznAQ6OVvOQwvF1XJwPZglO4Z3GuVGtwLsUjM
	oF0x4YX7yRuwkNeTFtcWXdUdqsNZfL
X-Received: by 2002:a05:600c:35c3:b0:47a:81b7:9a20 with SMTP id 5b1f17b1804b1-4801eac0617mr16897055e9.9.1768546410639;
        Thu, 15 Jan 2026 22:53:30 -0800 (PST)
Received: from [10.31.13.216] ([82.77.28.160])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4801e8c0475sm33584445e9.10.2026.01.15.22.53.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Jan 2026 22:53:30 -0800 (PST)
Message-ID: <6113b444-329e-455c-aeb9-71025746d44c@tuxon.dev>
Date: Fri, 16 Jan 2026 08:53:27 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/3] dt-bindings: clock: mpfs-clkcfg: Add pic64gx
 compatibility
To: Conor Dooley <conor@kernel.org>, linux-kernel@vger.kernel.org
Cc: Conor Dooley <conor.dooley@microchip.com>,
 Daire McNamara <daire.mcnamara@microchip.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-riscv@lists.infradead.org,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 Pierre-Henry Moussay <pierre-henry.moussay@microchip.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
References: <20260113-snagged-blemish-52af3d00d88e@spud>
 <20260113-glue-justifier-566ffab2ffd3@spud>
Content-Language: en-US
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20260113-glue-justifier-566ffab2ffd3@spud>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi, Conor,

On 1/14/26 00:11, Conor Dooley wrote:
> From: Pierre-Henry Moussay <pierre-henry.moussay@microchip.com>
> 
> pic64gx has a clock controller compatible with mpfs-clkcfg. Don't permit
> the deprecated configuration that was never supported for this SoC.
> 
> Signed-off-by: Pierre-Henry Moussay <pierre-henry.moussay@microchip.com>
> Co-developed-by: Conor Dooley <conor.dooley@microchip.com>

 From Checkpatch:

WARNING: Co-developed-by: must be immediately followed by Signed-off-by:

I moved the Co-developed-by: tag before you SoB.

> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>

Here.

Now, the full chain of trust is as follows:

     Signed-off-by: Pierre-Henry Moussay <pierre-henry.moussay@microchip.com>
     Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
     Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>
     Co-developed-by: Conor Dooley <conor.dooley@microchip.com>
     Signed-off-by: Conor Dooley <conor.dooley@microchip.com>

Let me know you have anything against.

> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>

Thank you,
Claudiu

