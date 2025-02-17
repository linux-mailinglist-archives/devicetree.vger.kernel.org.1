Return-Path: <devicetree+bounces-147335-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CA0A5A37FE2
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 11:22:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 848D03A5037
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 10:20:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB8BA21767B;
	Mon, 17 Feb 2025 10:19:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bgbWDzl0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1B51216E14
	for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 10:19:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739787543; cv=none; b=nKr9k5hu7D5e5ioT6nyDALEkAC9znMwekz0FuCS3nFo0nsF4qUoxPzdjQTwtS8CbI0E6TVL+lORBjGQO4MTCu4IO+VzHaXsTn+w1YT2lim0v7ASafJX5Lc9yELce60j9TmFbOWCx9OyWn5qYEtrKbRYe0+XTa1wZB5ew3QFQ9KM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739787543; c=relaxed/simple;
	bh=6aGtaVpBLW3kX82mTVYH8G/6ueq7kvdSb7JTLpAZZLc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=LcEL3ayET0svL1H8rRn2s/BMnNxUjnH/Zzq7oYbVUbOx3QE0XcFq5jYjOLr4ymj+5E4U6uZL3a1xZbjPHdiGJVvxNA2tjRNnsGfraO/L12qbT4iJM61n0KKv0MNwy/SU5YSzTpyVjobREVITExic6luuw+ipDbt+oiAaxwIqv90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bgbWDzl0; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4398738217aso5019635e9.3
        for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 02:19:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739787540; x=1740392340; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I16xu1ecVLtS/758jqaD8vtXmxaLQ5I+Y1leyu/ANx0=;
        b=bgbWDzl0YMN13FktJuVGVCN4x1e4OQk4q605e0tnV+NHr8DMp8x3r8EP++thgdcgz/
         biCxqVMH4kggn9jnMbmtA4EgMyAgMLJ60VmfB0qF3zH+VxqP7sjZDu3P3HuYorNJw4TN
         9wkwEi/C380Kt33h1fvFWQIgckv9U5TiHwae8k0AKjoQvypnI8GNcGpXFy3FpcHs50n9
         NoEQAYZRvC1vr1iiIOPCC8DLI4HHTmZLxXY+9KlDzw0zgbgiCVrj3pSg8kwTBIy8nd5S
         wQ6LoPpxy0ueRrbBGFKnS/N4z7szEmtcHRo4M7yEmohz5/M2an3sTJdWoPLHh4Wr7Twh
         IzOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739787540; x=1740392340;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=I16xu1ecVLtS/758jqaD8vtXmxaLQ5I+Y1leyu/ANx0=;
        b=DtaCpNuVecfVlB3MRHCT7HzmcTTlGH2Y5KfDWU9D7GVEaFVanSNpsdGRBHixGEdP/V
         9jgGscPfnIc2KagWhh2y3nn1OWdXrGhAlP2zquNFj2wUixV4x62S4P4PmDufvsyL8JmD
         92Ytu4ENBs6hOnV5YUXG1Z9nB1wPCOJRAkrK0SdiVnbBTN6u/FijvGC8x6keywoifWjF
         jVYNnxduDMG99io/s6pFXB+Djw7WmvNTLtDD+WscRfqLSBF2qO0OCB9//hIyzmqQhGk5
         qEGcisMsc7OGZzcuG4Z/IOO+TeVUm80wwI9lxBKHtLfdiTBZK6oCTfYG7Jt2tdOW1RSN
         614g==
X-Forwarded-Encrypted: i=1; AJvYcCWxR/yciSHimPcPy8lA4n8ueLBqGO52ozBSM6EbM2AiiFlP2iAK6qrimXvbbdlI9QzsrDSk718xtMCP@vger.kernel.org
X-Gm-Message-State: AOJu0YyJS2HoEy6cT0OhfcUU3wAK3KFCSyB3UFN8yKwjVD2YDLQZg5Tb
	LWzZBmYXAr3N+vHr2W9m6JrC7uonYWb0BskAdAgHiHvfk4euKBiI4fIxFUU5BBw=
X-Gm-Gg: ASbGncvBIHGuLLVSmAUNkaCZ9ld6JF8n/1h6qeYen3EDRVrXZw+iVvl6VrwSmA2pEBA
	bixgVJ2/1VA4lfqtwGxpd7EG+Ab7RE9uKW3TImdWhwlM9wvwB43V6nG45103iD6OqYpbQiBLCMU
	CNvxkwL5wRyrOBP8ETa7/hOAS+pzGNgGmQYlt2z4kVbpDKXb2tVAAOdox8fuzgpxMi2TfrZ81Es
	2f4YULh04mg5oJ2XSdHgEm89zsgz7N4EpC6hLhtMxxe1Zx3hVTaMgw1LcrhB+LGS9CQH5YbfaAQ
	bZiiB4U0v7EBKG/BgGQ72l5lZIei0Tv5Hw==
X-Google-Smtp-Source: AGHT+IHCqlAmBeWIh3RQpDK/wqa/aOOAMFIkBi6CvjLI3mDlej3LMKvDj2NLspjgKzRYrxIEx1isLQ==
X-Received: by 2002:a05:600c:3b0f:b0:439:8c6d:7ad9 with SMTP id 5b1f17b1804b1-4398c6d7da4mr9647825e9.31.1739787540052;
        Mon, 17 Feb 2025 02:19:00 -0800 (PST)
Received: from [192.168.68.111] ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43970c8fed9sm35658385e9.0.2025.02.17.02.18.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Feb 2025 02:18:59 -0800 (PST)
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Stephan Gerhold <stephan@gerhold.net>, 
 =?utf-8?q?Otto_Pfl=C3=BCger?= <otto.pflueger@abscue.de>, 
 Linus Walleij <linus.walleij@linaro.org>, Lee Jones <lee@kernel.org>, 
 Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, 
 Robin Murphy <robin.murphy@arm.com>, Konrad Dybcio <konradybcio@kernel.org>, 
 =?utf-8?q?Barnab=C3=A1s_Cz=C3=A9m=C3=A1n?= <barnabas.czeman@mainlining.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-gpio@vger.kernel.org, iommu@lists.linux.dev, 
 Daniil Titov <daniilt971@gmail.com>, Dang Huynh <danct12@riseup.net>
In-Reply-To: <20250211-msm8937-v1-0-7d27ed67f708@mainlining.org>
References: <20250211-msm8937-v1-0-7d27ed67f708@mainlining.org>
Subject: Re: (subset) [PATCH 00/10] Initial support of MSM8937 and Xiaomi
 Redmi 3S
Message-Id: <173978753882.27418.10124969396742370731.b4-ty@linaro.org>
Date: Mon, 17 Feb 2025 10:18:58 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.12.2


On Tue, 11 Feb 2025 23:37:44 +0100, Barnabás Czémán wrote:
> This patch series add initial support for MSM8937 SoC
> and Xiaomi Redmi 3S (land).
> 
> The series is extending the MSM8917 gcc and pinctrl drivers
> because they are sibling SoCs.
> MSM8937 have 4 more A53 cores and have one more dsi port then
> MSM8917.
> It implements little-big architecture and uses Adreno 505.
> 
> [...]

Applied, thanks!

[06/10] dt-bindings: nvmem: Add compatible for MS8937
        commit: 07d914dd683f9ccb62a530fad76c36d5d4e6d894

Best regards,
-- 
Srinivas Kandagatla <srinivas.kandagatla@linaro.org>


