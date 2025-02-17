Return-Path: <devicetree+bounces-147372-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0588FA38225
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 12:45:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DFC19188609E
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 11:45:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B6BD219E8C;
	Mon, 17 Feb 2025 11:45:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="pxW2Dmf8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70255216607
	for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 11:45:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739792720; cv=none; b=KOOla3kLlofMaFTPXiicjn/KL83S0J043xzHnKhNB3Qlczhkd2zRSN6WfQfsEYh7KANskcElchY5tSiCqfkXavUJlOUZfvFeUqUIo3CyFyTwCRIGoFQvXK6Wr4hO9vxR/91Jz1GP+932C16HlEKUnvBJtsm/OCiFf6/0pUA6akI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739792720; c=relaxed/simple;
	bh=o8xILJ09LYlj4RHvPWNUC2zF7GvZng7IN2WtTiu1ub8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=CoSmOA6NKQe+qAgCAvYje7JVB0DTYgi1Uz3YJSep8nIRy0EBSdljkmZD6YLBnrLaqdtpR4MT45Sh0Gf/f2LaLRE14b6D7DonKEuHlwwe72tf4/28wB7CW5xIEppv8MH9cGirU7dn2Ch7Tc5ZD1rDTmkt3laQNk0TfkDQE2TKqf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=pxW2Dmf8; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-38f378498b0so1342846f8f.0
        for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 03:45:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1739792716; x=1740397516; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4wD4WIcZmxg1bV/511uzbm9dEqsTwVeyjkL26ur+v0E=;
        b=pxW2Dmf8rL6rV+1Baqni/TI7QJaghO9zt9WibP9rGFfePpjneDUHNiONylK4ZkzHMn
         FXqBwdfi/5LxZm6puICNUU0qSC0UDZVaGxXWaKa2i8ZWdAUVXic50dZB256vWVr9G5L2
         Sz5+0jgTMpDQ0VJZbp0DvLGwDA789mMt9Lw00=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739792716; x=1740397516;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4wD4WIcZmxg1bV/511uzbm9dEqsTwVeyjkL26ur+v0E=;
        b=EMYSCPB9oPsMxL21BdINeHbuxal+AIMFXIYXGZLMFA/qeB1h9YHWOBOeQHgD4ACRVS
         bX4sCYtYRIe2/S1wSkYqTdZoVfA237pue4/c8uyk+X1ivRGxEnMnvpPKUsZzNahxcqeT
         kMvSm8arphTBk8fYsezvi546i/ZEneYSjQC5dwN8O0jlab8ZqBLN3QEeys0d+fLeqpK3
         cwWfMoMQ54MYlP9uULiNQS478zJxTyUDf7Jnpg8fEl2d56trcEk6vvJAbWuzSgKNCiuM
         pOxyi3t1DUK6Vr24btvbCUDRP6FxD7frJHuxhO7LLpce+Lzaa6xpcBPi3qoTHQUJIsEQ
         b4mg==
X-Forwarded-Encrypted: i=1; AJvYcCXL9cxnnBRVcUKpCVq9Wmdm8E2/1IbqFo6TcDl6xM512sfkW/xQ3ClSD9YCk7d4Nf1psCIOg9vt0+se@vger.kernel.org
X-Gm-Message-State: AOJu0YwbkaZWfn9NUUWHV8LcWN5SnVyCkIGp40eKLcflEDgi9ryJTTkH
	PfildAM8cFwndguJyxiw16plnsPT+gr1pwb2qqsalgYuYDUHrt7WpH7OS3bRyjY=
X-Gm-Gg: ASbGncuPJNg1i8Gcv1hshSVntvVn+abltS9pp7IBR2K+T+4UxqFx4Rjw14LRm9nMtQS
	SuPdeHkJqSaKey8Gqp2OF+J7qy6GrC2mkHu5ujfOKbFRrKMeE8cTw3RO+IMdCtYDE8ND51PvS0u
	tvrIgGdJN4YBT5hcdnKnCvcnfgIHuI0O12N+bXPBh3arDy/l+lmfvzThyEQjkZnWaU9SssZZ6Z4
	woGMvkJKy8/z88FGruZsRW7SBsNFFlOJdKQk7C3tysL/YZQWIa4Nb6w/4p25MSk9N/wLaYpqDs9
	qpd/oGc1l4YL4jtVQVPcFkzt8Tci9KkWmoZICrx561gm7vfHWcF9zcJrCaQOUtTHsW/OmUWi0K3
	Q6iK5YOAaiT8=
X-Google-Smtp-Source: AGHT+IH4HZR8AI05mEm9pkEq128S5TzlgBTTQQpv9pmG8gm704yEZzj5BkD0hyM6Bc9Lk5oPYaBLNg==
X-Received: by 2002:a5d:470d:0:b0:38f:2a49:f6a5 with SMTP id ffacd0b85a97d-38f33f271c2mr7154894f8f.15.1739792715727;
        Mon, 17 Feb 2025 03:45:15 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.amarulasolutions.com ([2001:b07:6474:ebbf:78d7:ec72:38e9:87de])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38f258ddbe0sm12181637f8f.39.2025.02.17.03.45.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Feb 2025 03:45:15 -0800 (PST)
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
Subject: [PATCH 1/2] ARM: dts: stm32: rename LEDs nodes for stm32f769-disco
Date: Mon, 17 Feb 2025 12:45:08 +0100
Message-ID: <20250217114513.1098844-1-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Associate the LED node name with the corresponding board silkscreen for
more precise identification. In fact, the board has a total of seven
LEDs, some of which are user-controllable (i. e. usr{1,2,3}), while
others are directly controlled by hardware (e. g. power, overcurrent,
...). All these LEDs are either green or red, so using the names
led-green and led-red for the two LEDs mapped in the DTS does not
simplify their identification on the board.

Moreover, this patch is a prerequisite for adding the usr3 LED, which
has not been included in the DTS.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

 arch/arm/boot/dts/st/stm32f769-disco.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/st/stm32f769-disco.dts b/arch/arm/boot/dts/st/stm32f769-disco.dts
index 52c5baf58ab9..d52e36aedcfb 100644
--- a/arch/arm/boot/dts/st/stm32f769-disco.dts
+++ b/arch/arm/boot/dts/st/stm32f769-disco.dts
@@ -79,11 +79,11 @@ aliases {
 
 	leds {
 		compatible = "gpio-leds";
-		led-green {
+		led-usr2 {
 			gpios = <&gpioj 5 GPIO_ACTIVE_HIGH>;
 			linux,default-trigger = "heartbeat";
 		};
-		led-red {
+		led-usr1 {
 			gpios = <&gpioj 13 GPIO_ACTIVE_HIGH>;
 		};
 	};
-- 
2.43.0


