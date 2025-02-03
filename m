Return-Path: <devicetree+bounces-142447-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C815A255F5
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 10:35:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CFC471649D9
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 09:35:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA5391FF60A;
	Mon,  3 Feb 2025 09:35:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="arzT5eo/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A603C1FF1D8
	for <devicetree@vger.kernel.org>; Mon,  3 Feb 2025 09:34:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738575300; cv=none; b=XqvBlpIY6kuALcBXV4laS+ZgmiGpdNg7cbcfA9hqc0pdv6dSrr7t6nG5DlnfG5Leu0/Ez0o5tz+B+0q4k86dfkydQ1mcIF03HhTWr1LmDBYADLwrBxrzvwMk1CRisjTNUj8B763iwtJ0MM9NBkDZkTg9pHdUNuLY0C8tBvtrTIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738575300; c=relaxed/simple;
	bh=FQq+RvU/nx827rTHdk2gvuy7rYaA2bdFnPUICZ34hOE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=KYK+KNLyVxJhz9tC1zch/TDvpB6bHEZGAOaazWRwN+xyJHtR7O639JrNvHARwSE2nUTtVYVcc3/sJ+s6Mouiye+bQjinbRi6t9UG4ZlwW5EalGLkaFYu0u94Igi8lNZNTHFELtPYOjIm/1FnvD8VcmHYylAyXvmD3uLfNdjlREA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=arzT5eo/; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-385eed29d17so1950791f8f.0
        for <devicetree@vger.kernel.org>; Mon, 03 Feb 2025 01:34:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738575297; x=1739180097; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nnSS9f3MD8fKZAuW9eSUSFbsKwmpz+6ZY7PPsWdPvPY=;
        b=arzT5eo/xuX+4SYjdSe4KzfpTJk56cRsZBmkcY2AOIy/5BpicRhmPU8tl0gnC1AtoY
         8H/X475w/3iYmHRIQ7MFA9s9Z0BOhX7W9aPH7om369Jae+BW6jNfhRYIWprq6u/XTPiS
         bQY92qyQJz8xS2jW1TXCtm5PJyLjH6IYRMTPNY2Se+u7sIFMV7eI595Q9shf4zph9OMz
         1VBVe4HJJdevTedv3ArlYKhmkpImzKvSmsQiMFrwKbCx+UK7Xf6rfTgFJQiK8DjtvYeB
         bc16faBVeqIKCL/A3r9feUvLBLy4PLusYbTc8K+FOn0XOBggOAIKFLmWtGTzOw2iDJLK
         io/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738575297; x=1739180097;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nnSS9f3MD8fKZAuW9eSUSFbsKwmpz+6ZY7PPsWdPvPY=;
        b=pRDleCDVip5e7Jh2/H4xizmNd3wemmmYD3f8SEMIEmGqZAxisI0A7D24JzFDRKiUHl
         ubEKzrHF5JRtUU5Cp8RKanSdfAn41BxGuUdI7gY08XWf/OqdhFziX+M/NXELQruGV2tt
         6XL8dcs7qZMJ803RWkBCz1OULqr5Vo7L87NAt6rTz1MmHvTy5nu6Goy97TRexbjKs2bG
         bjSQTL0ny8E2j898ntlXTqBafvK7rCeVWPC9mzDWFDJHJoTaTL+H4XbTfdiA7hyV2dOf
         HgcZghL/z29KsKz+35+GSV3qjjxaXWlREI1jeE4kujrs36vDGmrwfqxPLgXq1O1WD+wC
         mYmA==
X-Forwarded-Encrypted: i=1; AJvYcCVd18TNa/xxUZ/XxOSQXKlgDINXQBk6sWiZFMFbZntQgE7uB3aFSFABn2xfcJVk9CYooGH6xKgEDuw3@vger.kernel.org
X-Gm-Message-State: AOJu0YwJTvINPVWxXclqvGeia/H8bLRUGvPmavWmXdrz/c9SN4raK74/
	FwKzKpogJloZJIT5x2omSwUKzB7cLCg3tnmdPXOQD7chmciKDF2UfvVqQj6ejM3A3YzsPZc6SXS
	P
X-Gm-Gg: ASbGnctiMBa7O+4PKgWHF2ybz8GWDUfEQhwWgUFQZXf+pbT+XOchQef0HVt1+rywOyV
	+RbTvV9Uq4mAeYkdMGDevte+EWIu5WHzulLQ6HU00xWrXmsJD94pCsuwEuODPVV7T/AMkmxSRms
	19lmRb1Yml3voEed0MurI8rcQLJobirUt2tFdetUiBKQY8jnFkNvjmQQToTEkVwAEPoVr7x/oPo
	zeBVZT2wD06/WDJWHiZDy1GbBEf44ji+Rp+xtxo6dV5ohDWdFoiU7lAAZZ5f8VE6ERKR5HJZkQJ
	6DNX7kobLa/b
X-Google-Smtp-Source: AGHT+IHVup80fVqySU5QaAbNVEA/8sgh1BuT2rEc7XuRh35/kJbhk8uzXo9g1CG43bnRoXlXegX1SQ==
X-Received: by 2002:a5d:634f:0:b0:385:f0dc:c9fd with SMTP id ffacd0b85a97d-38c51974c0fmr15234519f8f.27.1738575296879;
        Mon, 03 Feb 2025 01:34:56 -0800 (PST)
Received: from localhost ([2001:4090:a245:80cb:f705:a3ac:14fe:4e1b])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-438e23de35csm147774385e9.10.2025.02.03.01.34.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Feb 2025 01:34:56 -0800 (PST)
From: Markus Schneider-Pargmann <msp@baylibre.com>
Date: Mon, 03 Feb 2025 10:34:10 +0100
Subject: [PATCH 1/3] arm64: dts: ti: k3-am62x-sk-common: Add serial aliases
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250203-topic-am62-serial-aliases-v6-14-v1-1-f26d4124a9f1@baylibre.com>
References: <20250203-topic-am62-serial-aliases-v6-14-v1-0-f26d4124a9f1@baylibre.com>
In-Reply-To: <20250203-topic-am62-serial-aliases-v6-14-v1-0-f26d4124a9f1@baylibre.com>
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Vishal Mahaveer <vishalm@ti.com>, Kevin Hilman <khilman@baylibre.com>, 
 Dhruva Gole <d-gole@ti.com>, Sebin Francis <sebin.francis@ti.com>, 
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Markus Schneider-Pargmann <msp@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=694; i=msp@baylibre.com;
 h=from:subject:message-id; bh=FQq+RvU/nx827rTHdk2gvuy7rYaA2bdFnPUICZ34hOE=;
 b=owGbwMvMwCGm0rPl0RXRdfaMp9WSGNIX9C6qS0ue+Jl37bOqBIu9Ng55AncafCY1Fx9Jz7+Tb
 h25hGNCRykLgxgHg6yYIsvdDwvf1cldXxCx7pEjzBxWJpAhDFycAjCRFzWMDMtvJ+9KdPhq7hua
 an89wbW6seXwyQKPrDy+AO26uxcUCxkZruU2H5MsZ5HIfq0R1RphveHAm6sHwj0nNhYcvVmfnNb
 HAwA=
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41

Add aliases for mcu_uart0 and wkup_uart0.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---
 arch/arm64/boot/dts/ti/k3-am62x-sk-common.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62x-sk-common.dtsi b/arch/arm64/boot/dts/ti/k3-am62x-sk-common.dtsi
index 2f129e8cd5b9f127b1d1baab17be868938fae013..d52cb2a5a589a8e5eb325fd90324d57ec1e3783b 100644
--- a/arch/arm64/boot/dts/ti/k3-am62x-sk-common.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62x-sk-common.dtsi
@@ -12,6 +12,8 @@
 
 / {
 	aliases {
+		serial0 = &wkup_uart0;
+		serial1 = &mcu_uart0;
 		serial2 = &main_uart0;
 		mmc0 = &sdhci0;
 		mmc1 = &sdhci1;

-- 
2.47.2


