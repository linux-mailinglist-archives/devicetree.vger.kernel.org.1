Return-Path: <devicetree+bounces-239882-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C737C6A462
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 16:19:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D7DC04F3B88
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 15:10:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20B6236827A;
	Tue, 18 Nov 2025 15:09:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Djqf4Wjw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7429366555
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 15:09:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763478549; cv=none; b=k0FSbUWznc9opDD8Jg0HPXmO0unUCSe53qUK6vreZn4UvNBfAVzUgepQIDf+Fra/U4ito9usGH9AoDt7rhxW6jTOCDOO4BtAPwcQjbCrQw1jm+iKim3bN1mfQNCLrUMGpjYeHPY9cETVE2ZfneW7aDLqF+xrExMeMEmgHKPVv6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763478549; c=relaxed/simple;
	bh=i1re2cUiEXJBYFku45EOpp/aHmxsH3AjrIbn7i4tX2M=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=gwipm7o/s6PGfoEL9EmoJTS1rjOOHi5e73A62z21lRxudweT0Gz3Ro/M10bxvSxWpsC3fHjC6vykWr8BCAVGF6wl88msDIstB3NAFE1Fvx4zOd3HlQAkGApVScV2ps3tLPtJOpLe7ojupgRDpGmEaZYTRgosm+rCeqdx6eQJWb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Djqf4Wjw; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-477a1c28778so30037755e9.3
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 07:09:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763478543; x=1764083343; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xn1amiUGhpNI5r8WdOtn7hNJ51WcbcveDFhQ+0agXLE=;
        b=Djqf4Wjwf8cca8kCMNteBoWAvVjlPvG1GDmZJMJTrF+Rk4+JSiKxYNL/BBmITcJ7VS
         oOcQQ9TCDxbCDUJNolzBz1AaWZcF9wAfNaTIAVfEVceTugyLPSzV8/iP+33obf1ro+z3
         tfmOg2x2uOHXRe6hgql7/Y5X4s6YY6Q/O+iPFXO+t55SBb3IpLlWcoc26JRrcWaDR2lO
         bYn8DhWlfcNchibUsN+6AmU5EIE7Cp4pMnLt5Kz87uthY6gDPFRDu8wvew7+ti5qleNV
         y+hgNtUG52kSt1x77Ll+ApaGbWxY+1adMOamqzr5yh1gtDWpE7z7zbdPzN1BZLtqKpWH
         UYig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763478543; x=1764083343;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=xn1amiUGhpNI5r8WdOtn7hNJ51WcbcveDFhQ+0agXLE=;
        b=jh9HvESrRLK7Ks3ji54MxZvWvXjnNQvKHNXk/MWD7AivO51gLLO8Bq7rSL+vLCcVQy
         j/dz78c1otAqkk1PxCsPDy1JwiHjHW0wH3I+Sgm/HR1rrDWTeyVCRWBn75KVdsMU+KwR
         r4pCHqsCrt8/2mMHNst1UCAPj8UVbkB/PRCzdgzmi+n2zu2eDwr62uSAdWu8NdYFZ+qE
         432J06rjyRld1LzfdzLLWVn929NsZnUDOmj33z6B4KPCQIH+ZiwmBLFN74msOp5g++Nn
         j6rj8gLHyeO6jbPO3PtIxKMlmRRyvgmdHXHsS1/32nV3zr8JS+4J9u3d+Ncmi99R8jVo
         UCdg==
X-Forwarded-Encrypted: i=1; AJvYcCWyytRKfW+Z81K42+0SYet1ZmaLcv9GAXyHkdA2a8di4BQFQ7IoC8raJFrazQ0isxZLsplDq+cp+CJA@vger.kernel.org
X-Gm-Message-State: AOJu0YxrHCPO4oMf7di+CK+XrljBaDKepG7mI4c1vU9RjwTilBkgHwzI
	0VxGPuKYzXZXLVwvRabGzr0YOM9WGcyAJwlIUv7w/uTHuTwVWuRvi2n5
X-Gm-Gg: ASbGncsFLBqM+0fPI8j+8pqa6rMfsoL/oIrYm1OtW4go/60i1+Sloe+xOHLRfswhhLJ
	WoFI7ZuLSQxB3dPzUlVrTpDuHVMeTJvAhJDSpoG4saAE6vrYnHuSxR8fm7a7bm/WzudlKKT3uft
	FceORzouGkAtFpQ79XI0OlukV676P/z9QvkW9TYaMhi7DjlvGM5o76T2HT0CoXRjFTxChcBxbbA
	9STljnC/o/NgpY5d3/hxlYabBphNiUc1L4NlyvmpkzXC/eS57kOALZ/+ZYSY+tUhe8eTw623/cX
	+kjNyHVFHc6B+gXIrMhGtBu9rBX1lidtOiSlRcsVIxf+LGEVG6ZuyX69uWJ4yIh2fyjnfthutpK
	pFBB5hWBOGktM7vVa0X+gSaRI/AeCX+A9MDofQhVKGpcdDC8aB3iLpF1TSYUnbY77RsJo3e2OW8
	8LBHnkP4kL88r/C1UEg3sFjBHgMmI1fZjLfYTWY5Sv9wTObNNkx+ORKVCiGD4uoHeC0ggrPnMFQ
	Ryi1GrrZgws4fUI
X-Google-Smtp-Source: AGHT+IGHfWRtYZTGPPYbxiOYmTOURyjIxMB6TDIV7lM+NaODJHSbF+ffu7r1vpKDpGdS19OrhVSrbg==
X-Received: by 2002:a05:600c:a47:b0:477:79c7:8994 with SMTP id 5b1f17b1804b1-4778fea195emr185980455e9.30.1763478542674;
        Tue, 18 Nov 2025 07:09:02 -0800 (PST)
Received: from localhost (2a02-842a-9b20-0d01-432b-0dab-f195-2b25.rev.sfr.net. [2a02:842a:9b20:d01:432b:dab:f195:2b25])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47799768409sm199879815e9.3.2025.11.18.07.09.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Nov 2025 07:09:02 -0800 (PST)
From: =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <legoffic.clement@gmail.com>
Date: Tue, 18 Nov 2025 16:08:02 +0100
Subject: [PATCH v9 6/7] arm64: dts: st: add LPDDR channel to stm32mp257f-dk
 board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251118-b4-ddr-bindings-v9-6-a033ac5144da@gmail.com>
References: <20251118-b4-ddr-bindings-v9-0-a033ac5144da@gmail.com>
In-Reply-To: <20251118-b4-ddr-bindings-v9-0-a033ac5144da@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Julius Werner <jwerner@chromium.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-stm32@st-md-mailman.stormreply.com, 
 linux-arm-kernel@lists.infradead.org, 
 =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <legoffic.clement@gmail.com>, 
 =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <clement.legoffic@foss.st.com>
X-Mailer: b4 0.15-dev-86b30

From: Clément Le Goffic <clement.legoffic@foss.st.com>

Add 32bits LPDDR4 channel to the stm32mp257f-dk board.

Signed-off-by: Clément Le Goffic <clement.legoffic@foss.st.com>
Signed-off-by: Clément Le Goffic <legoffic.clement@gmail.com>
---
 arch/arm64/boot/dts/st/stm32mp257f-dk.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/st/stm32mp257f-dk.dts b/arch/arm64/boot/dts/st/stm32mp257f-dk.dts
index e718d888ce21..5956d77f5fda 100644
--- a/arch/arm64/boot/dts/st/stm32mp257f-dk.dts
+++ b/arch/arm64/boot/dts/st/stm32mp257f-dk.dts
@@ -55,6 +55,13 @@ led-blue {
 		};
 	};
 
+	lpddr_channel: sdram-channel-0 {
+		#address-cells = <1>;
+		#size-cells = <0>;
+		compatible = "jedec,lpddr4-channel";
+		io-width = <32>;
+	};
+
 	memory@80000000 {
 		device_type = "memory";
 		reg = <0x0 0x80000000 0x1 0x0>;

-- 
2.43.0


