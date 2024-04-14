Return-Path: <devicetree+bounces-59137-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EAAE98A444C
	for <lists+devicetree@lfdr.de>; Sun, 14 Apr 2024 19:04:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 245051C20398
	for <lists+devicetree@lfdr.de>; Sun, 14 Apr 2024 17:04:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DC9C1353FB;
	Sun, 14 Apr 2024 17:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gG/BoxyV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f50.google.com (mail-oo1-f50.google.com [209.85.161.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4D5313540D
	for <devicetree@vger.kernel.org>; Sun, 14 Apr 2024 17:04:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713114272; cv=none; b=kWCTucL25qUbb11iDxwl+uCGJl6l0ekefT+LN8s8YQMQuHd0QXXN6fqVapRWNwC+fGIqk2oMJB1Ty4mx4WAueheSG8tWGtzibNifyyWphJ069pewKDAsWWtLPOS5+mshmU+pvSVq2RoKfnLomF42tXQK55bp84Xw6XePT7heTOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713114272; c=relaxed/simple;
	bh=KDEOtLvgj0Gs+rRWctvmMVAUHK65DzeB1xCcVbmAjag=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=mRI9LmAv4NSynsPlNM/aScQz/oDsXyiEB5qNT6rh1as/hxmXKr12BEKE0wOxITzWI+8l9CHKdG9prG4lml6u+R1o3hhwfKPV5Gzob94vPUeHa+oDVuLInslpvOlErvbmK2iBm/4g5Q4TaQVm9UEvv94vMu5Mgi7xPKtdV7EKQsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gG/BoxyV; arc=none smtp.client-ip=209.85.161.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f50.google.com with SMTP id 006d021491bc7-5aa2a74c238so2024952eaf.3
        for <devicetree@vger.kernel.org>; Sun, 14 Apr 2024 10:04:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713114270; x=1713719070; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=nEG6ZdeQXXzDaGLwOjwiQASB3UlmfQSpzsMzWbm05Uw=;
        b=gG/BoxyVdXYHz/+OK9WMMY9d/GSM9yX7huLo0iZPcybrvxyXbLH0F22me6adpeFEQf
         AKCCFf5/Zy7wgHRKsBO6ShU0KBzzeNyDKvlUN/hEGfmUdht2SV8SOBP2q4MNTlDcHtP/
         HbhrWmyFaqWKcBCEGD51pOtMziL3fbodtOevGXXpQG2j1Y9UKQQSHYGAaWSM/CEvMo52
         erlYUV98SYHF1AYBbg4soVIpIEC65uj4eFr1pzOgzPgiaIaStKqN7BeLzL7Af41FVfAr
         L7zS8jyVKHIFr166GdTTtF6HKvlBXrrv857COEQ0Y/TaRrHYy3LUwiLI0osdJhjY9wqQ
         3xSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713114270; x=1713719070;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nEG6ZdeQXXzDaGLwOjwiQASB3UlmfQSpzsMzWbm05Uw=;
        b=dliqnODoDySJdRd5HkiN6n+e3AU3D/5FiKWDXIaHzFK7nXz8LXSLudoupJPfWRAAlw
         YxRDcS45HDhLfHXX2hqFp7I2Q+1oejb2hDjDpiNrn6hnqozjrl6j9dP/RvlovUgLcgBD
         CpazI3TrsoFkWji1bCs3L2Fg9rg6WYdWw6YQqZLMRvXGUgWZBRN/3R1C/TXQ5uplPbox
         60+eFIAw+YaPBZJxl+oPJHtBzU5bFOsuFGPeWI4PTOEt3EVLSveoYHzs7m1JfSl9Bl5V
         Ht4mJNHvz3mgjsziSdF6xFySZCOFbk1KcBuX7w/0tzv5jg9h4O9kIjJe9UubTU+ajY9O
         aGcg==
X-Gm-Message-State: AOJu0YzKihD7kJLrstYj6wpJdV3JzPnKVW0ILYFvYaUsSA0sGRr64iCu
	93MKKXXjmQYdzdY8e2f0jz9vO5U+32xTX9hJb9Upmgoa53BzA5V8
X-Google-Smtp-Source: AGHT+IF7sVlNh3TJf1SIwxZWr0CkMVJdgNNAJu9f0fI2N2s1HihoD7giU//FZLDClk1FSOhkMdicwg==
X-Received: by 2002:a05:6870:f212:b0:22e:d463:3b53 with SMTP id t18-20020a056870f21200b0022ed4633b53mr9887531oao.11.1713114270594;
        Sun, 14 Apr 2024 10:04:30 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id mv5-20020a056871d04500b002338e2146f8sm1585305oac.17.2024.04.14.10.04.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Apr 2024 10:04:30 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-sunxi@lists.linux.dev
Cc: devicetree@vger.kernel.org,
	mripard@kernel.org,
	samuel@sholland.org,
	jernej.skrabec@gmail.com,
	wens@csie.org,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh@kernel.org,
	ryan@testtoast.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 0/2] Allwinner H616 NMI Controller
Date: Sun, 14 Apr 2024 12:04:22 -0500
Message-Id: <20240414170424.614921-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the Allwinner H616 NMI controller, which appears to be
common IP with previous generations of the NMI. The NMI is required to
support interrupts from the PMIC among other functions.

Chris Morgan (2):
  dt-bindings: irq: sun7i-nmi: Add binding for the H616 NMI controller
  arm64: dts: allwinner: h616: Add NMI device node

 .../interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml | 3 +++
 arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi           | 9 +++++++++
 2 files changed, 12 insertions(+)

-- 
2.34.1


