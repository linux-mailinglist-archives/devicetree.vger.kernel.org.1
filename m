Return-Path: <devicetree+bounces-234056-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CF8E3C28161
	for <lists+devicetree@lfdr.de>; Sat, 01 Nov 2025 16:35:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B48CF4E285B
	for <lists+devicetree@lfdr.de>; Sat,  1 Nov 2025 15:35:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D2F01FE451;
	Sat,  1 Nov 2025 15:35:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Q8hLat10"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C9CE60B8A
	for <devicetree@vger.kernel.org>; Sat,  1 Nov 2025 15:35:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762011330; cv=none; b=aaKLaXZDzK7UsTIZkfPwBQ0JcZpoeUmbU2kQ8G/DbJgxlEgIvkJ3AFQ1KAnTtyvWkT14U5D6fqcH9fQp+QA9afUWMJ/rih1jDYurF+hJU+HqEArZIo0lhUAI0F0XjjmBEz2DD46spKKo4YExu9xVZrkT8KbhhXUxk4YPePH5l4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762011330; c=relaxed/simple;
	bh=2l14iCi71vkVUgeo+E1Q/tEM4El2uFdeq8BhYm+l/kM=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:Content-Type; b=aFSTDxgxkMIrNU2x8P8Jg7DP831vArAej7RopeJ9ARrMA94tO3dcfsvyR6v5/WggXVFag7+bB4lvHylrMVOPrfXP+Sft98m/mhmvYiTh//nXrYQpB8CH0R3kf7XvJfK++rq6N4pwfmUmaH2brKwA4JdqKBZZmFoTrp9XaAQ7mwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Q8hLat10; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-6390fdaa1f4so681291a12.3
        for <devicetree@vger.kernel.org>; Sat, 01 Nov 2025 08:35:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762011328; x=1762616128; darn=vger.kernel.org;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h0Tk9dDcYmqBenbtFC0DeeXVXsg2rmtasPdJhxUdBos=;
        b=Q8hLat10cBiTqyiSayLxowXV9Md4o03S2ySShBAk9A/3UNNC2YWCSdgHGRauYwMmot
         AcrTfEUXGBXyd7j3V+0fu2+upl71lyrKwU2dxxONyhFXl733R2zFegJke9TbsBNRKhor
         N4wfehNo2YdW6FX6QOdRHVaIZyUyl9XCN/uTXioOZJA6/UTuajJ+EnWzCjGywvpc/BfI
         doAQQu36ps1rj1yUpxkSU4R0Pfq3Wh6dUD5i/+w1w/PaVMChAFFRrQ06nB+r24U29Q4k
         +E1aA9wHNw4GlSP0bN/mvZjEA1WOK10IgzrGwxh1tZ4CtnkBJQS4zd4jooux/WtU9PJu
         kA2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762011328; x=1762616128;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=h0Tk9dDcYmqBenbtFC0DeeXVXsg2rmtasPdJhxUdBos=;
        b=iLhI/Ne84WFNhSsxsFaMC0RPv+P2O7fiuTtIOHC4gSXB9AqdmIEE0izzzBpnf3EiNP
         IxanBQ4vD4qA/Q2NWcy+kpua9czF6u0RbTxGgSzYw1lzXMapbnapLCCPRUtCrfMMce79
         YZFQM4ZVV9Ee28lJQGV8Gy2p/rq+YGE0QCKfyVAHiw2clk0wenaVovFDQFxrut5gmmS5
         RD3snxNcxmwbFfUGMExyqBf/NQDpOK/OP0aFlccQW4bxWhItF5ftVsWIXNffTfwe7nBc
         AKCjqo5rWT9QX8OZ0k0X6ZCCigRT4TylkJ1uvhUFDzhVkc9UyYSA1AbVz5B5+4u58rbm
         YX0A==
X-Forwarded-Encrypted: i=1; AJvYcCUvpsQ9gXwSD0liOgk02S6Kbgyy3bERILL7jaIJCQv6N20EBWVEmiP69FeF6yhubZSoj9Kl4EnpWDnX@vger.kernel.org
X-Gm-Message-State: AOJu0YxzJlLxNwkskfprCXRpZhL4Juxr1ltdwqrsL2ko535zv+mQwYHK
	e1GMgLjBWICY6w065cpuXMNR46JtyhqtfzLI8OWFyOxYbYtx5WMho9pqeqJJlQ==
X-Gm-Gg: ASbGncvHH65ZyZC3UeP/gP/w81vG+l+XdzrwnteXxQvouxax0V9WBJWb+XxnS9laXG0
	4UkO16911W9ShUpXG27NeVioivvtOjwEWcDHWGmX9VxFMsHc7VjHTqToHfOO68L7ycGme1VUPmQ
	HfBel37UMN4F9qn8J4xpfTmDKO94F6WvrtVZjPwVexIcb47ZHwRLAL6dG4wcPPVneETrYMI6LcO
	tFsRDA0Gqe+Lx/zlOR0/c3mMtq8KkupX2psgqlfvEucknDnUPEuz4LABRlugH8/oxFrx3Cn2ZlU
	+GwJwKuYn8NSiBVgYZCB8rXcbvxvnVZ4bPLQ6IQsFFFJd7LsjAzq58wylit0RKJuGAIcyEsVWGU
	9618GVJ5Z/vbXKd5NdYsFJUR0GWitx7piCqSY71axAHdUXjeV4afHpcmHNiSZaXOwqr4RmNJqIK
	j/bxsCdGLlZ5kCYs5s1l6IQaiT4bicLsj+DaphilIrrRXnlfHi0Q==
X-Google-Smtp-Source: AGHT+IGGbZKmix+04v0yBeE+miuCe2f5O67VTMu7nJKCL7jr0B/QprRarMtQ6I/yofHU8ylwWgs/DA==
X-Received: by 2002:a17:906:730b:b0:b6d:5587:e336 with SMTP id a640c23a62f3a-b70708c8a6fmr418924566b.9.1762011327533;
        Sat, 01 Nov 2025 08:35:27 -0700 (PDT)
Received: from ?IPV6:2a02:a449:4071:0:32d0:42ff:fe10:6983? ([2a02:a449:4071:0:32d0:42ff:fe10:6983])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7077cfa966sm478124166b.65.2025.11.01.08.35.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 01 Nov 2025 08:35:27 -0700 (PDT)
Message-ID: <92714b6c-6c0d-4a10-afe4-73ed313c87c0@gmail.com>
Date: Sat, 1 Nov 2025 16:35:26 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1] arm64: dts: rockchip: correct assigned-clock-rates
 spelling
To: heiko@sntech.de
Cc: robh@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Due to some copy and paste from the manufacturer tree the property
assigned-clock-rate is missing a letter "s". Correct spelling to
reduce dtbs_check output.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---

https://github.com/rockchip-linux/kernel/blob/develop-4.4/arch/arm64/boot/dts/rockchip/rk3328-evb.dts#L313
---
 arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts | 2 +-
 arch/arm64/boot/dts/rockchip/rk3328-evb.dts     | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts b/arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts
index b5bf84322031..b9d4d78bff0f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts
@@ -184,7 +184,7 @@ &emmc {

 &gmac2phy {
 	assigned-clock-parents = <&cru SCLK_MAC2PHY_SRC>;
-	assigned-clock-rate = <50000000>;
+	assigned-clock-rates = <50000000>;
 	assigned-clocks = <&cru SCLK_MAC2PHY>;
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-evb.dts b/arch/arm64/boot/dts/rockchip/rk3328-evb.dts
index 3707df6acf1f..76715de886e2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-evb.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-evb.dts
@@ -101,7 +101,7 @@ &emmc {
 &gmac2phy {
 	phy-supply = <&vcc_phy>;
 	clock_in_out = "output";
-	assigned-clock-rate = <50000000>;
+	assigned-clock-rates = <50000000>;
 	assigned-clocks = <&cru SCLK_MAC2PHY>;
 	assigned-clock-parents = <&cru SCLK_MAC2PHY_SRC>;
 	status = "okay";
--
2.39.5


