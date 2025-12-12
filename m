Return-Path: <devicetree+bounces-246178-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E3A0CB99A3
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 19:48:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8907E3041E03
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 18:48:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2CBC830B509;
	Fri, 12 Dec 2025 18:48:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GatPC5fT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 749B62D4B5A
	for <devicetree@vger.kernel.org>; Fri, 12 Dec 2025 18:48:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765565328; cv=none; b=DpCqNFdCG2z8a0hhorSGtX416CuLLby/ZS1lxsmkNHiACuSCvpSrK+1BMvMUQNRktyZX2XVzEQizHhQYqf61f2+NSh8SBZjdTdtIdMNOSRWiXJKNhGoDTWpJ+h6g1R9QqRLbKJQLoRakP5Tx2MIt74kKmRZJH3n5o14Bf2VBLJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765565328; c=relaxed/simple;
	bh=dVjh0U3UIiGWBr09A35mSxFYskTpyF7fOa/XhBzrgyI=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=tZnQQo05W33d/rsFHgiB/1xLphPpcWbfobzhxtn1B0x/Xt6x3JKG/iPPR7xPEdp3LJrE/M4rUzSyORJZ4pSN8bcdcSYA22gPbJGPUC5S639tBnpqzSlj6AuaSaeTe5k4bO7hJr8pwCL5TrerfAQ6R3etkgZeQDIiO+G5f1OfhoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GatPC5fT; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-47774d3536dso15058375e9.0
        for <devicetree@vger.kernel.org>; Fri, 12 Dec 2025 10:48:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765565325; x=1766170125; darn=vger.kernel.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ws8si3q8m+pORfnElCi6zW3h1zosQU2jocpsY2hNquM=;
        b=GatPC5fTE4Wjv1wy/12k5cfLrcFBYLrBWJIPeCf0aS87pRTXICZzUVprfneRrpPWuj
         cemLgThQLiBP2EWUbBiNQcI2X+rvDqf+KCEjo0ZocC4VkbmR2rCgBVn5NvppGIwcN3WD
         XzuDop9t+ZrA+/yrArhVExCEcZaI124IxtSJTnswOJxTgMUeiKf2gIWB4v+8I5yU8BfO
         IpNpxAVjIeG03+CVd3ijBWqAubHNFoBgSSmeQeMK08/WONhVDmxARjm6KimSJvlYAoA+
         MJJ17E6TRPZAMh6Z5Jw7O+//Njm5Q3p5M4XaOvRcHkN4ZWk9apjdwWicYNbYeWJ4VYAp
         1VaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765565325; x=1766170125;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ws8si3q8m+pORfnElCi6zW3h1zosQU2jocpsY2hNquM=;
        b=DKeRZ07SfrPzz5POh3ZX/jm986QVN0dv979awbAF0QgKxG0wGn3dA6CksMCnyTEwhz
         ei8wkigfVaGaFzeqB/71WNrwSnBFo6IdCoXz1VVDiHHgml4J5yvufL6UdjDOnn8320aY
         1+IpHxXultBKlDIVp7e1NOgYDaZqomR8y0u7PwUGkicWN0LmGDrBM3ihDV6OoMYxb0BD
         8jpvR+DwUu4VzIO+HIeWX1zyPmj2vCLXiPeZ46SEbjXUqzvQJ8yRGyU1ktrB1gb4P3az
         J57aL8r4d+JjXORQKK1IPxfAMj07/NY3dnHjVOzXpdCxQpHa2srSZDatz6itNTPdzQAj
         EJ5g==
X-Forwarded-Encrypted: i=1; AJvYcCVObzS6MQW3wvmDakVt964k3h4+07QssHWzVJnZA60Nloev8lTtdEfpBsebLkOqIiyvAEANSspVhwr7@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1eEP5uFgUWKXuGOJaHzRcOubZzw9s8oygCnZeUsUnfkleD2iD
	4818XO1cWsmTCW58TSjYi/h+wOTyS2TWmJIlj4g//nRXtFCG05PkTAD/
X-Gm-Gg: AY/fxX6Kk+h5kWEPJRkUPTfFhdwpFy9XIn2KMl9jfVKNZ6mFtGFVHX0Gm/ws0maCLcd
	jlFkyY4rJOCi6QB3+PytJiVlgZ9ikQpRY5AMWm3WdTSyfrgWvVGewwVkN/qZ2vPkqhMfqWcWnvL
	7zeFMctq2BitW5vWRXH/2sVzp4L/W2hnALpljJRmdZ+eb9LW6ojt1XvSvYSWGaBwNTya9YZVcqt
	wxxRxiOJHFE8tsc+8xLmkjFpQZhX2jxmVTfRgnE3nhTTeg5DXB3AKuyuS7ffAFb/K/88ajnmJOW
	tRfjzZPV8ds5LuOmvUyAKo4Iko78E5q68u6m2J+X0yF+6i9WSN+yIxEwBXEw+4TVu1e5HZk5qji
	NrxaX0P8ArWrAfM0wM2cXtM+QSnQ8/18CjfC6pUXgThx+1XLRaqjteYF7ufk0y2mDiv854vj2MQ
	yBdmVRA5piux0xnUzTH60PDCtor1Elih66YaxXpaToCx5Enk9qC4Y76g0WSBU3f2n4Bt4=
X-Google-Smtp-Source: AGHT+IEcsB4SsohMiuSMRBVsLyNXjKi7YpKhM33MGaetXAZYk3yBX6k/E4+lyPkq3E+DCl/tx3dVDg==
X-Received: by 2002:a05:600c:1c89:b0:479:3a8e:e490 with SMTP id 5b1f17b1804b1-47a8f2cb09dmr38671305e9.18.1765565324767;
        Fri, 12 Dec 2025 10:48:44 -0800 (PST)
Received: from smtpclient.apple (bba-86-96-93-57.alshamil.net.ae. [86.96.93.57])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47a8f3240fasm47202405e9.0.2025.12.12.10.48.41
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Dec 2025 10:48:44 -0800 (PST)
Content-Type: text/plain;
	charset=us-ascii
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.700.81\))
Subject: Re: [PATCH 1/3] dt-bindings: dma: snps,dw-axi-dmac: Add CV1800B
 compatible
From: Anton Stavinsky <stavinsky@gmail.com>
In-Reply-To: <20251212020504.915616-2-inochiama@gmail.com>
Date: Fri, 12 Dec 2025 22:48:29 +0400
Cc: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
 Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Paul Walmsley <pjw@kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>,
 Albert Ou <aou@eecs.berkeley.edu>,
 Alexandre Ghiti <alex@ghiti.fr>,
 Chen Wang <unicorn_wang@outlook.com>,
 Alexander Sverdlin <alexander.sverdlin@gmail.com>,
 Longbin Li <looong.bin@gmail.com>,
 Yixun Lan <dlan@gentoo.org>,
 Ze Huang <huangze@whut.edu.cn>,
 dmaengine@vger.kernel.org,
 devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org,
 sophgo@lists.linux.dev
Content-Transfer-Encoding: 7bit
Message-Id: <A0AF03A6-1F0B-462D-A088-3B4DF6BA6292@gmail.com>
References: <20251212020504.915616-1-inochiama@gmail.com>
 <20251212020504.915616-2-inochiama@gmail.com>
To: Inochi Amaoto <inochiama@gmail.com>
X-Mailer: Apple Mail (2.3826.700.81)


> The DMA controller on CV1800B needs to use the DMA phandle args
> as the channel number instead of hardware handshake number, so
> add a new compatible for the DMA controller on CV1800B.

Thanks a lot,  Inochi. I've tested on my Milk Duo 256M board. 
Seems to be working with the I2S driver, which I'm working on right now.
No issues with DMA interrupts anymore, DMA router used right channel. 



