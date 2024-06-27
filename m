Return-Path: <devicetree+bounces-80705-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A749991A3D7
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 12:32:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CB8A21C212A0
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 10:32:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A576113E028;
	Thu, 27 Jun 2024 10:32:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZtwRljwq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD64213D260
	for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 10:32:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719484360; cv=none; b=p/XlvT/AXJLED3Vfkkk0GwqObJbBzz5sXrPeJltFcD8a10RPB/gHf8gde4LEYJlE/yHeFTDAVVa0b5kJ4ypGDL6EGDP1UHwz7JNOGSLdy25TgXfy72AlLX5H7S8bOoY7uHZ2Ui7Tssfv8espozfcc1Z7HHIh/Iag6dLAIa7mb6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719484360; c=relaxed/simple;
	bh=Zb33PnEyoq7JgdCVFQY8c3fsqudJzBtmqbZshBBoQTU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=LpiWMGFowTyVcoujJyigXoVrkI+wVVF4pBhR8dwuCVRA1CUKjl6kKs5ZjPVPoVxPi4+F51Ys7FfSzeAwKmyfSkQIMICinNi6m2+NDMLmqvowa/o6EBMvAYYl3pnS9h9NDFrBfR0h25CnY30m/KGKYmbLqN5gSUf6jV2LYMJ/v4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZtwRljwq; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-3626c29d3f0so4096613f8f.1
        for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 03:32:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719484357; x=1720089157; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/pocliNAoVNTjwAmPI4SdlGncSkrq4T1ZnfC3MYG3nM=;
        b=ZtwRljwqpfNEUZ0Ftp59yf4EWU0noLC/nNieqXlUJGvmccHAfpJe4w3zgkxpPKPpEK
         DL8ty+/lMTeVCSwY58zsmotaqmszMpfrSxwHJCgahRWCYz5CPCicGRbqLaue5iOdk4Om
         SLdP2AC4/AR5sMZ7via26mIdPkJyX/Rxvno4NPmLVonhPkNhItOYQnO+4Bvc9BzdzouX
         0VwfiRU59AVxdRYVsZMtDKvD3HgIxHGQPV+sdS+YA9BvN6RZH2y5h5AG3kHEol7srFG5
         C4UfYAg3/VJeAzRJL0T3jB/sQQpx3nJyaWTGvH15A96KZHUm5Ibon3qhSQ6XFd++fUlt
         dRxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719484357; x=1720089157;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/pocliNAoVNTjwAmPI4SdlGncSkrq4T1ZnfC3MYG3nM=;
        b=ZToDuZR1RbBGjSsPTxImY22fidN9i1u87IFqraeAIv0WI4FPy9ZfAPZIMnrPZxENgI
         RvBey9GfF/Kj+O2nPP1TOccQNLGOvbPDIihqwmpMq4i9IIstlYs7Kp5AsJQCxFC1eu99
         tPOUmNAOGg3HvBie6gewWRYj7Heu2IboHGX5pw6Qj4wCoh48DFApZufZreyciyI0HQWr
         X674rMLK+A5Pd9aUOxBLHneKFdS7QcgqJFypMH0Ve6NsVA1Rb/jrQZ5anSrslKYqZv/H
         hpMAva3JnQ/W3+JoUns5xGerHXFocD6iAnA8mfnuc2NX7y7LBF/WWjJgdkzp28kA6U02
         kw1g==
X-Forwarded-Encrypted: i=1; AJvYcCUCIwqqnLNxo6tg2X1Qva3vJcgeFiUzgIgK9Pmn9IYzkSvu33jlf0HoBZ9zhmpm2nyF8ppkrcbKjXlxtS5xlbr1f7iKrz2/UA/p0w==
X-Gm-Message-State: AOJu0YwrmaKQEIKkye2K2YxTlAOPNTninRmnH7DBJc22lmR1yIPkPNzo
	9+vbPe+EyOeLWLxkUDfZUz/0sLX8LrxBOh1yEUFwx+hiOFWP0/3NUCo7M4GBytM=
X-Google-Smtp-Source: AGHT+IGzsKQ645okLvBapJa1IPZvlBlt1QswcG6XLfpau6Jwa+Z4YLVVxe1f2AvIV7KeLFUfMZXx0A==
X-Received: by 2002:a05:6000:178a:b0:360:7887:31ae with SMTP id ffacd0b85a97d-366e95d37d3mr12440454f8f.54.1719484357309;
        Thu, 27 Jun 2024 03:32:37 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-367435852afsm1384352f8f.53.2024.06.27.03.32.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Jun 2024 03:32:36 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Thu, 27 Jun 2024 12:32:17 +0200
Subject: [PATCH v4 1/7] dt-bindings: mfd: syscon: Drop hwlocks
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240627-dt-bindings-mfd-syscon-split-v4-1-dc6699a9f3e4@linaro.org>
References: <20240627-dt-bindings-mfd-syscon-split-v4-0-dc6699a9f3e4@linaro.org>
In-Reply-To: <20240627-dt-bindings-mfd-syscon-split-v4-0-dc6699a9f3e4@linaro.org>
To: Orson Zhai <orsonzhai@gmail.com>, 
 Baolin Wang <baolin.wang@linux.alibaba.com>, 
 Chunyan Zhang <zhang.lyra@gmail.com>, Jacky Huang <ychuang3@nuvoton.com>, 
 Shan-Chun Hung <schung@nuvoton.com>, 
 Khuong Dinh <khuong@os.amperecomputing.com>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chuanhua Lei <lchuanhua@maxlinear.com>, 
 Rahul Tanwar <rtanwar@maxlinear.com>, 
 Lars Povlsen <lars.povlsen@microchip.com>, 
 Steen Hegelund <Steen.Hegelund@microchip.com>, 
 Daniel Machon <daniel.machon@microchip.com>, UNGLinuxDriver@microchip.com, 
 Nishanth Menon <nm@ti.com>, Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Jiaxun Yang <jiaxun.yang@flygoat.com>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=845;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=Zb33PnEyoq7JgdCVFQY8c3fsqudJzBtmqbZshBBoQTU=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBmfT+73BMgXoynDW3Ud4fMi0zPipmaTcLImpE92
 Fx4eYJBxjeJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZn0/uwAKCRDBN2bmhouD
 16o9D/wL/sfLuiHFTg9X1nKfJ4SjKti2z2aIxrrkHixYzPqk9OVt2u06E9hv1CcjXD08OnHa/S8
 zof6DtwKy0pQAL7ssRH6yo3KB1aM+LSoTChO0a3m5zI9OSz44GP0n1bc8dpRIffi0+kBFnZ2gPh
 d427I1oayBlX8Ytb6j5fzKvFWZ89Q0wAq3wNTOdeX17aok/YxCUp3pq+DunObpZofs4X9J1GQpR
 Fhz7daq8HedFR/r2gmliyhKtZwGgkk7bMQjW0cQhNWdtg5YvK3gcNQfsPI8XztqXzTAKI4OXIwp
 NP+yh/adub7xzF89QnjAsmKIlcSrZVEBxcY9iA0JtnavLamYgxgdTWIDL/pHfGTW0SQxh70kMQE
 Gg7AA8gi10NL32yzcJHz2nKaCP7HLka3B2dJ71ZW4R3/gIsk5Cn2jUFWspjeOqCgWYgbg515RG8
 ECXerrLy8VdPq9DoNazpg+0FT7BP4n0iA0oqgp5DuIWzGn4p5Zj+ANpb0s6leGzXNsM8ogHQsl6
 z5z53Olh/1BP1fWeUOKo/XcEkjYdOuHNpK92ISrwXnspc8uEd36gCKfe4/xD8p8Vz8316gKYdVF
 B/+zrB1if+/LOi7wcfxS6zEaCfiedcpPsbjae2j9LRi52rX8mkcaB/KilcsHrNAXmt9XPwH9Ra9
 GfQ9OLSIrbXNWig==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Apparently there is no in-tree DTS syscon node having hwlocks, so drop
the property to simplify the binding.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/mfd/syscon.yaml | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
index 993460c3cfe1..cc1e9fec5cc7 100644
--- a/Documentation/devicetree/bindings/mfd/syscon.yaml
+++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
@@ -143,11 +143,6 @@ properties:
   resets:
     maxItems: 1
 
-  hwlocks:
-    maxItems: 1
-    description:
-      Reference to a phandle of a hardware spinlock provider node.
-
 required:
   - compatible
   - reg

-- 
2.43.0


