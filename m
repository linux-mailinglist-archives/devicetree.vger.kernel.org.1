Return-Path: <devicetree+bounces-144565-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 43B16A2E7B3
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 10:31:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D913A3A6E6D
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 09:31:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3BC31C5D4A;
	Mon, 10 Feb 2025 09:31:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="N3udUKmH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0A071C4A2D
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 09:31:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739179886; cv=none; b=kKzE2agfLvE1JvLY790v+mVm/cAXTWs3WKj50nZhjksqRg3jzcIT61S1/5Pn47DrnuTLZDlsHACy5UoF+qdm6mSrssks9BoBRE//Oa8q7bUPbrLlmS5QdEt5N4YrzWKCNwHdimPrS6FfDRVk2sh+pIDNkc6MPSyOnt8ZCu1H2Lw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739179886; c=relaxed/simple;
	bh=3iK9dqQG88KBmhm60ZuGRWIxcJgWWJvBwh7KKVLBzPg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=gxZQbrhsn6sKwnNxRy9lerlvg2ZIwXbc5BlT057DRtsoyoEmpnmJD038hG79ZzzOPmBxfNgT9tYyDHQM0ZlN4uO8rarKR65z3Li6XaUJtbZL2Y3rhlj6JPFb/2lW7qLhb9YA0ofzdYSRMJk2kb76bQqOmSf9u+VDVOZ0UlEE9s4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=N3udUKmH; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-307d9a13782so36117191fa.2
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 01:31:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739179883; x=1739784683; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LCNlscT97V9uOIoODPoJkucU+X2AI35SBhIpZ9hJ5mY=;
        b=N3udUKmHdJlK6aYc5I9LPiyWmu0drmx+mjlU66uglhM6KPRnd7CFyOxDj9/hHqjjsp
         8R56kb9DrxpWcoksf40eAekxUpuY2xFBpmqos87Cpxs2cJuiOCvSGA+7qptJUBqmyCG0
         5PKh1rK2aFJQVbGYcE6r3iDLyqbriuSBXAZ74kQNDF76bG6DpaRwtoRsE4H873z5UGqm
         FUsPGtYCiPZxQIbtEnxo7K1KYdIG3klXSjI02zOIRkaT8//4283O2bbSzKCw1YMTqUsS
         2cx4UsOES58knfKmYYsjiOgcD+UziNOCMRHrDUpbtPGUnA7rT0wJ2/PgyCEz2FFzayTE
         aGcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739179883; x=1739784683;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LCNlscT97V9uOIoODPoJkucU+X2AI35SBhIpZ9hJ5mY=;
        b=SjNrSkBcFgeLXedy0c2ZFtT5RtzjZzpa4fGfTofA390RIqihOgzVHl0XGXhOp/3Ddn
         /qoXEcRnDlZGrv9Y89XIWLTQT+CV0y+i4m2K20nY0SNCvUNBhBi6ZNFMtH2Ix+WiehyG
         41iuofiixvnLf7CpxKPsff1eSfy9jotNNlqu6oxCcSEiHyOwDH6WInWSmP4oEfp6VWuK
         z0l3GL2dUvBnJ/CeQ7PBlHEGKFCzlnRf4k+rl0jnZ0ytId2O7hFCKfYyGKra2pBw2js8
         9Q3DBLTbMP/WKL9rgZ0IBltAizL4QcIGhWpV6fvKLo7XWaQQR2y2zMJNmvi4nsXqE54l
         L+DA==
X-Forwarded-Encrypted: i=1; AJvYcCXw+aRvTIBnRP4EO7iU93PjYXxZYW5Fn0P8eXXVe0UmYRbJfaFtKjNaIMYCHJwLFmSDFMxTPlM2IzGw@vger.kernel.org
X-Gm-Message-State: AOJu0YyM1FokuIou/42sOqyGZRNE2gc/tOTDgzD4+PVcbThbZ6bR7DfF
	k0iJ+G1LPryp/6DwJfkGA6V6WUjsKKFCYwd4yzHWeCjxso2F9ScInGWeyIrliuk=
X-Gm-Gg: ASbGncs9GhR9V8KZ7svPQDGYyFQnbSB0yMT8DaEzKc3mHtyLRvBX8m/m5Zq7Z55eRYp
	psxwgtJYenBdA5U2DgxqNFGp7vJtniBv66kBjG8nczh9AS664NbNt+wI3wBSNwqvMQ9HSH85zid
	J6GWLswuJXxocAPs7Q4AOukSf/u8xMopHqLJpcdmGDF5stg7IDr6MQY3MXsndfL8qvjT9LGkslq
	RM46JBQ15V6lFhXSoswCt0QOt+3J3c/q3oLGg+W0Uq34nw1GhHg1bqkc2gt1U53YNWx4eWxbcB7
	TkPUgu8G+Vvb9iXF0oIivS+rGw==
X-Google-Smtp-Source: AGHT+IF0ul+u2dEeOp3LqnjYMyturrxBFsVvJjJz6HlDQToqwwLAAyyKMNFXqRlaK4DudcIvgifQSg==
X-Received: by 2002:a2e:3502:0:b0:308:e54d:6195 with SMTP id 38308e7fff4ca-308e54d63b4mr16025771fa.24.1739179882786;
        Mon, 10 Feb 2025 01:31:22 -0800 (PST)
Received: from [192.168.1.140] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-307e09a1df7sm11645321fa.23.2025.02.10.01.31.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2025 01:31:22 -0800 (PST)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 10 Feb 2025 10:31:16 +0100
Subject: [PATCH 2/3] ARM: dts: ixp4xx: Fix up PCI on WG302
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250210-ixp4xx-dts-v1-2-6b752d745e04@linaro.org>
References: <20250210-ixp4xx-dts-v1-0-6b752d745e04@linaro.org>
In-Reply-To: <20250210-ixp4xx-dts-v1-0-6b752d745e04@linaro.org>
To: Linus Walleij <linusw@kernel.org>, Imre Kaloz <kaloz@openwrt.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.14.2

Looking at the board file for WG302 v2 was not a good idea
because the GPIO IRQ for slot 2 differs, and v1 uses GPIO
10 instead of GPIO 9. Fix it up.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/boot/dts/intel/ixp/intel-ixp42x-netgear-wg302v1.dts | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/intel/ixp/intel-ixp42x-netgear-wg302v1.dts b/arch/arm/boot/dts/intel/ixp/intel-ixp42x-netgear-wg302v1.dts
index 19d56e9aec9d89ce0ad109fbc6bb6e26327997f9..af7b6a976d3dd61f3c6846c73b8788437dea20e3 100644
--- a/arch/arm/boot/dts/intel/ixp/intel-ixp42x-netgear-wg302v1.dts
+++ b/arch/arm/boot/dts/intel/ixp/intel-ixp42x-netgear-wg302v1.dts
@@ -57,7 +57,7 @@ pci@c0000000 {
 			status = "okay";
 
 			/*
-			 * Taken from WG302 v2 PCI boardfile (wg302v2-pci.c)
+			 * Taken from WG302 v1 PCI boardfile (wg302v1-pci.c)
 			 * We have slots (IDSEL) 1 and 2 with one assigned IRQ
 			 * each handling all IRQs.
 			 */
@@ -70,10 +70,10 @@ pci@c0000000 {
 			<0x0800 0 0 3 &gpio0 8 IRQ_TYPE_LEVEL_LOW>, /* INT C on slot 1 is irq 8 */
 			<0x0800 0 0 4 &gpio0 8 IRQ_TYPE_LEVEL_LOW>, /* INT D on slot 1 is irq 8 */
 			/* IDSEL 2 */
-			<0x1000 0 0 1 &gpio0 9 IRQ_TYPE_LEVEL_LOW>, /* INT A on slot 2 is irq 9 */
-			<0x1000 0 0 2 &gpio0 9 IRQ_TYPE_LEVEL_LOW>, /* INT B on slot 2 is irq 9 */
-			<0x1000 0 0 3 &gpio0 9 IRQ_TYPE_LEVEL_LOW>, /* INT C on slot 2 is irq 9 */
-			<0x1000 0 0 4 &gpio0 9 IRQ_TYPE_LEVEL_LOW>; /* INT D on slot 2 is irq 9 */
+			<0x1000 0 0 1 &gpio0 10 IRQ_TYPE_LEVEL_LOW>, /* INT A on slot 2 is irq 10 */
+			<0x1000 0 0 2 &gpio0 10 IRQ_TYPE_LEVEL_LOW>, /* INT B on slot 2 is irq 10 */
+			<0x1000 0 0 3 &gpio0 10 IRQ_TYPE_LEVEL_LOW>, /* INT C on slot 2 is irq 10 */
+			<0x1000 0 0 4 &gpio0 10 IRQ_TYPE_LEVEL_LOW>; /* INT D on slot 2 is irq 10 */
 		};
 
 		ethernet@c8009000 {

-- 
2.48.1


