Return-Path: <devicetree+bounces-40111-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C860984F4A2
	for <lists+devicetree@lfdr.de>; Fri,  9 Feb 2024 12:29:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 37F141F2B510
	for <lists+devicetree@lfdr.de>; Fri,  9 Feb 2024 11:29:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 951CA28E39;
	Fri,  9 Feb 2024 11:29:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=northern.tech header.i=@northern.tech header.b="dmQ57Xu0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 687FF28DD2
	for <devicetree@vger.kernel.org>; Fri,  9 Feb 2024 11:29:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707478159; cv=none; b=U4h4cZcFpfILXl9o2Bu5ergw0MUkyyeeqr4NL/dVMY8o5uhLLry+UCbAP9004NPk1tgmUtkSYC/C/LMFr0RmWDIZQkTFb7q1Dh7WmfzXJ/Fl2bwGI7oXRAktC+NUindquVES2uImApXF+Ji7HE52QJ3qSe0oIoTYisL6pkMxbLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707478159; c=relaxed/simple;
	bh=uXn05HTNeK17S4EFHfrNe1D1KfUmXrN5DtMJAXiQlIw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=beONoeGo3LgTn/jIaCEmKlTp6nLyJBHl5Qpsmt2UuB8pgjXXrHyOCBJNlGsAPCKSs/PbZpbKcVyTWiUMXIruAFPK7xfKbIQ54fwUPvDuJkv5n+iUfXKLe5csg0ZPUwJBIKCHzsgpPdpSRTZ9IJb8W8ZJG4fhk/YbyhSABn8OXPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=northern.tech; spf=pass smtp.mailfrom=northern.tech; dkim=pass (2048-bit key) header.d=northern.tech header.i=@northern.tech header.b=dmQ57Xu0; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=northern.tech
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=northern.tech
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-5114c05806eso1270787e87.1
        for <devicetree@vger.kernel.org>; Fri, 09 Feb 2024 03:29:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=northern.tech; s=google; t=1707478155; x=1708082955; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=FyFCxCsEZK8CXF6NB/E1Fpp2yQNMSs6bghTaRTsKzw4=;
        b=dmQ57Xu0u+X2r6e194nQ5LMpIUoxNm5MWgwmrzyHmtZ4pjXNUWx2zjFobmlN9At7uK
         R1ZjNi5JIc6DHO6f1hFjn2/xMWC4Sr4Q28PHaLKvECQCixbQbYWmtOXAj4EaHZJPmDg0
         NvYpeJ64AvqgkGvCPlQd3v0yWQ9McUC7hAH12cqVZtRB9px9Stnql32klOWwYNgwyEDx
         aBdzJuVaMdrXhTCxSszes+Re9O6ERDVypjDhYxqZBqXtwGGQknmBTEr7Jh2nUYNOjuuj
         pT9zvFJ0mwiJArsGq+ugR/l75ZXep7olvqxs8dDrrtf1LAt3FNg/o+yLqG6yKN4ztiQV
         iIfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707478155; x=1708082955;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FyFCxCsEZK8CXF6NB/E1Fpp2yQNMSs6bghTaRTsKzw4=;
        b=fWVQCHCiyE4FGrwlo5TJt5GLpBRCKlSTDppVArv3HwC+SCNVa0zgIC86AJXiRAaT1B
         OH9bexI1c7CurqFmJNojRtz/OZLg8bpLc7c0pU00wsTKlTTXkC5cINmyH1MZSr0LLoy0
         t2W6F/Xp2VHN6FAlGVOdDBhPOTR/LilPFOTHY6VwgjqLyeK9FodIVnMB2RNItiDpd1R3
         OmxrAQ7bHD1LoZ0k7Vt5e3f4i/OA3uiHT4tQXUZo2yGNmn3Th1u31kYr0A0OCWovzKDd
         xl68OXvcCqjwDoiRvO5g4+2q8QhmxQ/FugRSyeACdBFEs4LuztruAsI3awhzWPavXADP
         nSBw==
X-Forwarded-Encrypted: i=1; AJvYcCUbPnFu+lwlDf3ExPnXcnoriDX19q7LsDayMAYeyeOPjo9OtVg2j4RCxNBXg/cNOcIs6vXGL7KjMa/358vxQqiiFnqpxxIfGKOU8Q==
X-Gm-Message-State: AOJu0Yzv9eTRCjikien+a2pjYY8KPdO0HY0iwiJbgBT0xHw0t8ziy1BZ
	KkLxGnsoTtI9Ay0NUvX6l9Knffb052xNnVsQPlUM5qC5Kj5bOOCVCfmARV+N3EQk1J6Hho5qkyD
	FVJ9Idb9hKoezEf7dF83YPisgdTbChOwo8uabz6p58OYcN3Xz
X-Google-Smtp-Source: AGHT+IHdzCEB8/xRoowQ4A7RyhL8lGJOHjysQWb0vn2jNrf+kFLWRRNAzDZxgIVVWWQLQrknLNIrHA==
X-Received: by 2002:ac2:457b:0:b0:511:5f08:f147 with SMTP id k27-20020ac2457b000000b005115f08f147mr805451lfm.25.1707478155262;
        Fri, 09 Feb 2024 03:29:15 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUcS4zzPPC8FbJWfRCm0E7vCFdz+Z6eLuubnzXSb/Qunsfwwn8BDs7Gp9P3jWMbydXyKGob+H19eU5jxd1ZvAZrhWJdDfeOaJjLwNnJ+RGHX2ouGPEL+DqCvSNYaRPabg5vG3ie5gmkTqnqD97f/0xAFoQIhj1hccR3lbpRAgPkCQdbkEO4pswpz9JqWStPzDSIFbiyE6gGyUUmTN3NnjHYuaj+cbjpx1CmJfHnn3P/XICwg3NBnqIfXiFt8W5JAIkWM/ccTFpoFHIcdy9fzYMNQq9/Kqz9n0+ehR6ez0eLxLCzIYV9dm9rDYHnexbIKSX87lXZZPxbsf/JniSuiKBw9EWm95qnvAT2TJX03ef51TnaXacx3eRXijccb/9/qiHn9PBzSdKcwJbP6Sw6hs1l2GRxU33PyJqV289Agjz9nmCNR+UqSXnWgIW2olcBcdeYNjGnCXztO8KW4GxDWy0hDfp16GgZLwA3DKQhwD070i6ZFc3jBUn08KXC6dbaTyKW20W0wseUswt0PwyflnI/Jdhbr6Af9g==
Received: from olepor.localhost ([2a02:d140:c013:1837:ca5b:76ff:fefb:c875])
        by smtp.gmail.com with ESMTPSA id h3-20020a197003000000b0051154ac7267sm264061lfc.25.2024.02.09.03.29.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Feb 2024 03:29:14 -0800 (PST)
From: "Ole P. Orhagen" <ole.orhagen@northern.tech>
To: linux-arm-kernel@lists.infradead.org
Cc: linus.walleij@linaro.org,
	ole@orhagen.no,
	kristian.amlie@northern.tech,
	"Ole P. Orhagen" <ole.orhagen@northern.tech>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Liviu Dudau <liviu.dudau@arm.com>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Andre Przywara <andre.przywara@arm.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	Shawn Guo <shawnguo@kernel.org>,
	Peter Rosin <peda@axentia.se>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/1] ARM: dts: vexpress: Set stdout-path to serial0 in the chosen node
Date: Fri,  9 Feb 2024 12:28:01 +0100
Message-ID: <20240209112807.1345164-2-ole.orhagen@northern.tech>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Specify v2m_serial0 as the device for boot console output through the
stdout-path in the chosen node.

Signed-off-by: Ole P. Orhagen <ole.orhagen@northern.tech>
---
 arch/arm/boot/dts/arm/vexpress-v2p-ca9.dts | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/arm/vexpress-v2p-ca9.dts b/arch/arm/boot/dts/arm/vexpress-v2p-ca9.dts
index 5916e4877eac..8bf35666412b 100644
--- a/arch/arm/boot/dts/arm/vexpress-v2p-ca9.dts
+++ b/arch/arm/boot/dts/arm/vexpress-v2p-ca9.dts
@@ -20,7 +20,9 @@ / {
 	#address-cells = <1>;
 	#size-cells = <1>;
 
-	chosen { };
+	chosen {
+		stdout-path = &v2m_serial0;
+	};
 
 	aliases {
 		serial0 = &v2m_serial0;
-- 
2.43.0


