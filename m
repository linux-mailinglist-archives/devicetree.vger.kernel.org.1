Return-Path: <devicetree+bounces-147373-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 662BDA38226
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 12:45:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4CEFE1884495
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 11:45:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B65521A436;
	Mon, 17 Feb 2025 11:45:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="OPIR4ns4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 702CA216E11
	for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 11:45:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739792721; cv=none; b=Q3HIiRydLr+4nY5tdd3Qx6Jaq4f9JQnlIOYMXaWf/7LaVPAE/BlkqIBvtfeombcM7NoCIVj7j0BIUUa4/2J4m1p3l4MOpPvnLWxZfTDwC4GFaMqqpcekk6apltpp0uAbrgk1jVEy02AdtA7S2Eiw7bnQHmTwtCN374/bYbDOpOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739792721; c=relaxed/simple;
	bh=LJzyYC27+HOlViAPyDrmNg+XNfhv7OAIpEW0t4wLg7g=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=cnm76oM0kPXwkDBuaWVR15Bgz5ViipJKvHxAMIfW4NwY0x1COI6yMR7GvHgAZ8TsrJsYfqQXi/O8x++TmbyZpjqdpuIUsvYr7LAUeNeEI2VCObJo/y0YyzzFeKmCC+TSRIwJSnpoeCLslfPDWKvJY/xpInNBQUoFQXr7K527VBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=OPIR4ns4; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-38f286b5281so1920549f8f.1
        for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 03:45:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1739792717; x=1740397517; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gslSeLU065wOuo/exeqAIaqsKgFJISNX/u1ft+G91Cc=;
        b=OPIR4ns4eFhm5u+AqWjyQ2Ew1OdbYk+Kw5fcmBiGDx2Jm65SR5bSLGArH1t/mmU4/8
         NJXrElDgBw8GEuaYCElkweYR45eLIbfKPXGXcaafKrfkOVeSafWcdTG/DbZbqRD7LRa2
         w10HpSl+i89YsufNCC4gV8b61Xyal2l1TOyjI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739792717; x=1740397517;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gslSeLU065wOuo/exeqAIaqsKgFJISNX/u1ft+G91Cc=;
        b=oWPTBBMcFvmc/ks5dH9fnmcb1fyRNfXnniiMGOl08MQVQXZq39yXpB2CWccdi4M2xB
         2178ezMfMe1V6HEBsR6OL/PKIuBn1FW34kOIzJyl+Z4umSWdNKc8yw2KoX2llg8RsQdy
         frd29UXXPEhEbeoAdHoQCeDrlfBf6COuwxae80kTQym4YnKIH4vZuZacp7St/lZKsjGy
         FUFedV7A6FtqbDPkMiLGOkXBdb81TgQMSIFn26UxiD0D/IgC2kAOjoYsSD0LacJ/SCRj
         MR4ddwtghf5TXDXcQeK2GE/Ruy/EyvlSEKwzvPiU0yVN8NGj+MxoJIPkYEBS/O0jk7vH
         Qt6Q==
X-Forwarded-Encrypted: i=1; AJvYcCXUMc0V0QGjabB+mnamS2w1RI9stDkji9+ZacJDqNpl4xv4iYp33MZ45/iTvYRZzcYnTIukn4Awkr5S@vger.kernel.org
X-Gm-Message-State: AOJu0YxrGnGd4U75LXfYeIMcejfLHg1j+SI7q+T+PthBIElzTMfni92V
	Bvn3hKnpEFL2OEPRB5TTK1Y5NwSdQML5xVvuKCLC51HqBwFgzymvb4lofv8T3M8=
X-Gm-Gg: ASbGncuMvPaMpqRu7hfWa9DnfjoUYpEapIv4CozosB2tnWqWJeIY+BLMCuojE5MwFJ6
	b4g5QUCTiNvE+BMsjhQirhFTQFtUmXas2hGDspLZhzdIuHeNQZQLi1iGWq22NFKy1OLL22CbJYL
	CedYbiQi4Eyo11Wz5zq5uuYuH2wBSLvnEoDkj6YKHBUrWbIKncFdrKljgt0a9x9Sf3mCmYwkrMA
	uxUbx1/bOZHMZuCAwZ6SPJM6Am+xql1121r+hakVsVKaPDCAyvkH9to9XDTarzF9fh8Q8lFoxPu
	+q8F7ENBb7SOCZUbQpUMORyhqRBWgyXlE4hetVRd9hh0sAcXwbckEFZ8QWlGNQMrvizT5lCGEcm
	MeGtzfPQFOWA=
X-Google-Smtp-Source: AGHT+IEWoZF68RXu+nKi7MNugaByBfNsuJdBAp6ZRW5eMiRrJibFJTDidK0cVOcEQlNep0we4lB5PQ==
X-Received: by 2002:a5d:47a3:0:b0:38f:37bd:1707 with SMTP id ffacd0b85a97d-38f37bd18f8mr7646742f8f.0.1739792716753;
        Mon, 17 Feb 2025 03:45:16 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.amarulasolutions.com ([2001:b07:6474:ebbf:78d7:ec72:38e9:87de])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38f258ddbe0sm12181637f8f.39.2025.02.17.03.45.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Feb 2025 03:45:16 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH 2/2] ARM: dts: stm32: add usr3 LED node to stm32f769-disco
Date: Mon, 17 Feb 2025 12:45:09 +0100
Message-ID: <20250217114513.1098844-2-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250217114513.1098844-1-dario.binacchi@amarulasolutions.com>
References: <20250217114513.1098844-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

As indicated by the board silkscreen, there are three user LEDs.
Add the missing one.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

 arch/arm/boot/dts/st/stm32f769-disco.dts | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boot/dts/st/stm32f769-disco.dts b/arch/arm/boot/dts/st/stm32f769-disco.dts
index d52e36aedcfb..535cfdc4681c 100644
--- a/arch/arm/boot/dts/st/stm32f769-disco.dts
+++ b/arch/arm/boot/dts/st/stm32f769-disco.dts
@@ -86,6 +86,9 @@ led-usr2 {
 		led-usr1 {
 			gpios = <&gpioj 13 GPIO_ACTIVE_HIGH>;
 		};
+		led-usr3 {
+			gpios = <&gpioa 12 GPIO_ACTIVE_HIGH>;
+		};
 	};
 
 	gpio-keys {
-- 
2.43.0


