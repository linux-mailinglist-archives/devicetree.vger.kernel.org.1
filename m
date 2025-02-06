Return-Path: <devicetree+bounces-143614-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D3E7A2A919
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 14:08:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EA7913A7A1D
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 13:08:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9278A22F38E;
	Thu,  6 Feb 2025 13:08:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cOS1BBfY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A831922E3EC
	for <devicetree@vger.kernel.org>; Thu,  6 Feb 2025 13:08:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738847305; cv=none; b=X6DPWfL6J6/9tZ/x0sdYYnjFcAR9jWuf2TRsThHx2xIRakBeNiBimGKMAoMYFjlHL7xf/Sr+wGA0Wv8arCQJa2wKzqKT6+wp+SuehFsBMUCO7Y5vWm3YnHVb6hmaz3wnz5LvDaSp5GpscN3aPI4G+FsbjFm9ihzlLD0B0FTXHwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738847305; c=relaxed/simple;
	bh=YTG9xptoyrfZ+iyT/y9FYepYTHdoDzEqJMV6IaGD2nA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=VhAayDaKIbjNoSxQxBAEhS257sJm3anA08HKkq3DTMB6BARojimVBuG1ulCkO5lrRti+yZ9O0OnvxPl1BamCycmx0/+M1V4SepXUjKbewEfwY9salYB0X+mp/iB4qpsLNw5PAFKo+nNC5JVzb1P297eZrJcYCM4gWIJu1pfHMG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cOS1BBfY; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-ab6fb1851d4so177529466b.0
        for <devicetree@vger.kernel.org>; Thu, 06 Feb 2025 05:08:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738847301; x=1739452101; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2REuoysCPKRak0tj4nVzCn8fUcKqMMqOYeUqp9AjQG0=;
        b=cOS1BBfYN//KiGLWBufrTnguRCX3wZkZRsbaqke/HyD21ibt0gziHYBRPnjuMUSHDC
         dpbySd3bexiUIGUr69zRuY1tlOGRDVLlYn24C8bsCvBB7R67pZ8VlN+vA8dXFc+Th5h8
         8LPzwTxZQGG/tSgCWMnCKyzWSd027utxJCvxpRERDa6H4vzHtNniDXZ+Mbwb7Ht319zr
         AP9EnoNLuzLd3bweuTW9vVMvQdNCVhBOFncbZvb7e3wxmoN4nLspYyeUNfin/tWulhg1
         BfzAmEGYibBSB7uZHDCwzBoooxIdJ2UJPsKqxi0upN1wTFN2oTF9RGUvYytfYM+vCYC1
         9QzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738847301; x=1739452101;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2REuoysCPKRak0tj4nVzCn8fUcKqMMqOYeUqp9AjQG0=;
        b=rd/XInWITl0HncqX/gLiFnHLoTJ0yS182rYe++qzpMdqWUxrlXfLNSOANfS9MMhA3I
         VCuTm3CanGBI3xSZPlINK4MuY2cATBV4SlnwLe2wf42dma4HvlcLAwsIJHFFII2vgS7M
         J6GVgoxNa4hTZZk9el6BnlLb0Io2CzsM9winD4ZlyQIiNsrEzMUem+nFwNvQwPl0Rk6p
         RQ/UTQfM9h37xXv8WmG4Bzqq73W/qfStgf80gU7XykwOqayM8dHWkLg2+Omb3/xFZohX
         yPx9iLfwy4q7LJz9pxYfl85uUW37AGYjvNUdcTb1TQyhzn+FmD+wA3gxtcsxu9Nkjd/j
         22hQ==
X-Forwarded-Encrypted: i=1; AJvYcCUEzPmsMDQhbNh6t3sSSKEtrPHgdVgBt86I4dXRrAZM7BI5+7FsMlNbODzk7Sui8+iHveXJeN/9p7eQ@vger.kernel.org
X-Gm-Message-State: AOJu0YwTyiKGegbrG/8aBMMEt4Zd3iMbCJ3szCgvWdYt4rCBYGy2BWeC
	eoE9YsjAMJhCkhiViPdfZm1sUZltPvJobAmBdywd2lM7jE15Yz9KadPx7w9h9q8=
X-Gm-Gg: ASbGnctxblUKhFpxcp4eH08jb6KaS0EjWsp2r2P9ZP21zTj2C0dWLVxrd7RMJQxJoE8
	SaubuzQN61pesu6E5ySPR5Y5WgViTtc2Iisf9qhI9VIdGrebrynZzMuK/hjyUS6wqZTlJN6iDjw
	zKhdfI9zBZcB3Ja+bbPUAdkEzIpm60lRVFJzLCvnN3mRNEm6XG0TBMnbxVe1KaUWWfUXhaM3XLK
	6GS+Mhuwh7Oi/d/F3UqxA3MJTVPJ+J+nBszdq3xxELUfH//bQ5FLwnpB8QNyIYQ1hogs35VRNzL
	ACPziBdKB4LckkGmLYy3c+EUfvfeg9J2F0imbnZcXXsx37+QLPgCl0BKbVPqfxjdrhEr2ukZGe0
	=
X-Google-Smtp-Source: AGHT+IF1BlIvboKtAcfd9MgfY7h0B//QZpwtD6hvZuGWR6NA7xoR+qRJFpfzOckYvT3dhmaj0oJQoA==
X-Received: by 2002:a17:907:97d3:b0:ab3:47cb:5327 with SMTP id a640c23a62f3a-ab76e84c45cmr374142766b.5.1738847300776;
        Thu, 06 Feb 2025 05:08:20 -0800 (PST)
Received: from puffmais.c.googlers.com (140.20.91.34.bc.googleusercontent.com. [34.91.20.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dcf1b73f8csm830235a12.8.2025.02.06.05.08.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Feb 2025 05:08:20 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 06 Feb 2025 13:08:19 +0000
Subject: [PATCH 2/3] arm64: dts: exynos: gs101: align reboot and poweroff
 writes with downstream
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250206-gs101-renppt-dts-v1-2-cdfe993fb3c5@linaro.org>
References: <20250206-gs101-renppt-dts-v1-0-cdfe993fb3c5@linaro.org>
In-Reply-To: <20250206-gs101-renppt-dts-v1-0-cdfe993fb3c5@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.13.0

For power off, downstream only clears bit 8 and leaves all other bits
untouched, whereas this here ends up setting bit 8 and clearing all
others, due to how sysconf-poweroff parses the DT.

For reboot, downstream writes 0x00000002 whereas this here ends up
setting bit 1 only and leaving all others untouched.

I noticed this discrepancy while debugging some reboot related
differences between up- and downstream and it's useful to align the
behaviour here.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index e78dcd506a5c..4f45bfeb33c0 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -1401,13 +1401,13 @@ pmu_system_controller: system-controller@17460000 {
 			poweroff: syscon-poweroff {
 				compatible = "syscon-poweroff";
 				offset = <0x3e9c>; /* PAD_CTRL_PWR_HOLD */
-				mask = <0x100>; /* reset value */
+				mask = <0x00000100>;
+				value = <0x0>;
 			};
 
 			reboot: syscon-reboot {
 				compatible = "syscon-reboot";
 				offset = <0x3a00>; /* SYSTEM_CONFIGURATION */
-				mask = <0x2>; /* SWRESET_SYSTEM */
 				value = <0x2>; /* reset value */
 			};
 		};

-- 
2.48.1.362.g079036d154-goog


