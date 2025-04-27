Return-Path: <devicetree+bounces-171270-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B8292A9E08C
	for <lists+devicetree@lfdr.de>; Sun, 27 Apr 2025 09:45:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1BDB45A7D75
	for <lists+devicetree@lfdr.de>; Sun, 27 Apr 2025 07:44:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E65BC24E019;
	Sun, 27 Apr 2025 07:44:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="LwdTDLCM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3374824C071
	for <devicetree@vger.kernel.org>; Sun, 27 Apr 2025 07:44:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745739858; cv=none; b=lrvMHuxDgydTmkRBJbAhQtVzcu+5rTHAjpZ9FrHK8Q1F5SkIfHgQWGkZi8LAe5UYaU1aIAJndo8mOUKLBILhhEtxCECWdBW379imDbCIeMrkHeUH4aTvhu1qpv6S+rGupRlRpylCyFFX/zscTqNAOzpdvPvvzFv2Q09MPTtVC6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745739858; c=relaxed/simple;
	bh=2FOgtbU77ukSFaTqs3+C1Yzc7I3qiEYjCzzEQTK6S3M=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=cIVUpGnJCh+q5k056b+n1fS9ZJEtMlCnp6kHQveAE/h9/ypWk033sOlaqRS4te3ULnnde8Pbqh5lJI1u5nqQyo/sGdA11c584OxuUnjJnYsY15JeLoLzQOyra6qdUnHmcg1yJXDNjt2se7zHr6QfwzGV/2NCLzM4m5VRE8JkKUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=LwdTDLCM; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-43cf05f0c3eso23519865e9.0
        for <devicetree@vger.kernel.org>; Sun, 27 Apr 2025 00:44:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1745739855; x=1746344655; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=URqZNBSvISpfkOaSlJCBjJ4EBAiXVSB4aYiQ2cb72Ks=;
        b=LwdTDLCMo1a+GCDc4emeVZn5x9d6ll454wkCVhgzJf+bJae3wRdM/oozaSwVdYGyFv
         W5GsYw4ulBdYmsmMMauJHH5fVly0MvdmAywkMIpbKTezGVY/dohdEJf7tx1FaeUi+isJ
         50dCpEGxSwF3iUJmBuGpVa2iu6YegqGYubk1M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745739855; x=1746344655;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=URqZNBSvISpfkOaSlJCBjJ4EBAiXVSB4aYiQ2cb72Ks=;
        b=WtZQlj88bkNuoN+XXgX+Atb5UPsFd14PeGwMsisqEQyWP+m422JBNBYqy0VlAhTs9l
         O+aijq+hDBPqtGwMHDXU7Nhu87gRn8lgqU9Vc4XLo67E5DSBq73clJRxzJ20ZpJKBZfs
         ybtipoiG6+vCdgWeDc0Ag7UDN4qC5kHl4um9fxvabAQWCNlxoKesxttndHpbmtDWE37n
         cCUjIyHu+omNj9PzCvz3jWieaf+krM2LFM7jePfh1WJNi7KqfQik1NOzdFk7xG1u1vtU
         aYjh+IQ6L+YGAx2JNyMhgW85mN0ZmL7UIqG4hPFDRdUoGRoDprxOKhu9FkPbTZuDrHAC
         AZZg==
X-Forwarded-Encrypted: i=1; AJvYcCXt8KRwYFNayqQ7/xIGoxccaPsv7byldCkebU9qe0SPyJaBOpslxMW+Gbpvm4DsgDedMt5b/mdAAkyQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yxo1XWLqP/s3BQxUKfLtrQU5DGec9qcht0py4fuMKet1SNRdGTc
	7u259oZ75VuH6VDClG97FWmUp58uXVPcUDtj13TjIHJRwZLMz+oSS0mKVbSQsHw=
X-Gm-Gg: ASbGncug8V9MU+iILI8EQCyya+NXQeq1OmHnu8c0B+Nvo3mulCyTL360pWIDjy4mRHo
	a4cpN+vXQicssfoPLOK9FULMti0fYPH4vCYCXR9cIt6Ao7V+1zWg39fwn5XoOmRaHnMlfVVw76F
	93MvvG6PdpJMLlRyswzUXQ4fZgmOqodD2CJBShUidM3F8WOyDmj2PW/WQl6yihmVW+EihLpfr7S
	r2exz+M8lsFPg1YkNIebglCHLo0IyaYmO734bQ4z7ZPTjn3HEuQaYaaEL1d7eJR0g5E6At0k1OO
	gg4pyHWj+Y3EurGJWm64/Q21zxl/QtWw9KokLlY10kBK0Wm798JekU1S3EMMuh40MLPOmVoI/Va
	RJV1JSA==
X-Google-Smtp-Source: AGHT+IHhG82qhDLAZy00txDJNFJskd3rBxAaXWQjSVQfnIUphGYgfQ2PTE3YQPQE1g+s3Wfi/jBgwQ==
X-Received: by 2002:a05:600c:3d0b:b0:43c:fc04:6d48 with SMTP id 5b1f17b1804b1-440a6346aabmr74474805e9.0.1745739855396;
        Sun, 27 Apr 2025 00:44:15 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.40.180])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-440a52f8915sm87682015e9.7.2025.04.27.00.44.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Apr 2025 00:44:15 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>,
	linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH 5/8] ARM: dts: stm32: add uart8 node for stm32h743 MCU
Date: Sun, 27 Apr 2025 09:43:24 +0200
Message-ID: <20250427074404.3278732-6-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250427074404.3278732-1-dario.binacchi@amarulasolutions.com>
References: <20250427074404.3278732-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add support for UART8 by applying the settings specified in the
reference manual RM0433.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

 arch/arm/boot/dts/st/stm32h743.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/st/stm32h743.dtsi b/arch/arm/boot/dts/st/stm32h743.dtsi
index b8d4c44c8a82..2f19cfbc57ad 100644
--- a/arch/arm/boot/dts/st/stm32h743.dtsi
+++ b/arch/arm/boot/dts/st/stm32h743.dtsi
@@ -211,6 +211,14 @@ dac2: dac@2 {
 			};
 		};
 
+		uart8: serial@40007c00 {
+			compatible = "st,stm32h7-uart";
+			reg = <0x40007c00 0x400>;
+			interrupts = <83>;
+			status = "disabled";
+			clocks = <&rcc UART8_CK>;
+		};
+
 		usart1: serial@40011000 {
 			compatible = "st,stm32h7-uart";
 			reg = <0x40011000 0x400>;
-- 
2.43.0


