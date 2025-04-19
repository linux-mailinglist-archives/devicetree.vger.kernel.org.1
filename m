Return-Path: <devicetree+bounces-168762-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 143A2A9445B
	for <lists+devicetree@lfdr.de>; Sat, 19 Apr 2025 18:01:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 619A87A2094
	for <lists+devicetree@lfdr.de>; Sat, 19 Apr 2025 15:59:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBAFD1DE4D5;
	Sat, 19 Apr 2025 16:00:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MXJca3H0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396F517E
	for <devicetree@vger.kernel.org>; Sat, 19 Apr 2025 16:00:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745078459; cv=none; b=ZGdUkzoNlXjfKaujr/j2e6MoLHAwKj6qtnblswvwWlcBhDy4Qw3AjXpEAkpnW31i63XFN/tDPPvwzwPkEGkmCb6z++sRqz1M8sNF5yGKX+87Zywc3fB3VBm6YTPzhaBNZofRHtOS5DniXwykQWDhiH+aDWY5Laqaous9sdUtPUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745078459; c=relaxed/simple;
	bh=rlh4EjIVhJN5IBowA7mWxMHg/irPG8SmD6ZGXExhwkU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=T2NDgbKThRyOJVDL6JhgoB3BNyesxrKQiP/MBE8QHNpEjm7VzeBQ7lZD+28hmOs3pXtk8HADRZS+n/lxP+aVS3tbLwKn6FLiL/ayCb9POG/+iY/ZLNQBUpZ+fF4CZ83+gyIjigh5OlvbpZf3Rn7ZLawAjEdp0dHObhf/DTOdH0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MXJca3H0; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-43d07ca6a80so13530795e9.1
        for <devicetree@vger.kernel.org>; Sat, 19 Apr 2025 09:00:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745078456; x=1745683256; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=W/fbFejZy4nIPoWrA0dBRfXvnbry7Fz4n31+Xfuj1TI=;
        b=MXJca3H0t/Nr1IfGJzR38+oHHrNZtE1jiFTlVMsY1dtDI8+chTLb0Kwz1Wy6NdmIWO
         NLhxCI1Whh17PgyYIP8RoKQ6nAY9HOOYJ10TgM0t89/uVj4HAbZtBkQJ1CHyvgmhuuc/
         Qo8cmKYd4fE/jamNgGh/nmhPTxp8bOT0NZQlLf6pBUy3I2szBCLwHpl0F+IdK9lXfTJv
         9nn9b2FxYvYwIGMg4Gy7lqHgxoMTffWEIP92/dka39TC7BGty1kOjsEhNqOhDiWPmH5L
         74wcteOVoHdiIY8iMitigbw39MLs3H6yzCv5a7P3nHf/4iaDmjHwByuX6jVnqzOQIRGW
         igLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745078456; x=1745683256;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=W/fbFejZy4nIPoWrA0dBRfXvnbry7Fz4n31+Xfuj1TI=;
        b=rAr1LNVYm/dDaROi9RnmtW2vDtOXBLKrev4BN58pV6vu4xJZQdpyxY9fqTmHWg5wqs
         rjKNougKzXWqi24Ye8GuZahTW0JEAL+P5IpXVrsmAsmHw2F3wLz/pVbolsps4dxlMRwZ
         XhAMVU1KAJnDSQYtrsHYamcgTv8RKNZi00gHtC516GCygUvBJuJwxBT6th0XqKXj2PLW
         JPqxwgxOChSlGj0oqpKJec2FgdWG4spubsyD5QGKhUOSVLsrT+GYurfIO7nFZNTZc370
         UMxv/2Ow1z3Nf9Y+5DsIZOtwRFiitvS1A08qvnXcmri/5OaysIX3OVuL6f6eutTPa8UJ
         3QXw==
X-Forwarded-Encrypted: i=1; AJvYcCWZdyR/ba4JzKuZdt/A6+NzXT4vCurxJjB51rgRlIGYS+Htkg+PIRUE3hkWpLBXXwoEzpz7Ld4DP/DZ@vger.kernel.org
X-Gm-Message-State: AOJu0YzavRI+WojzDpBylXJjpMEEvyZtxyReyOHVtJje0h/hsw7hVvYi
	0+dAHAbROYooE7uqWLNHVidVaB4Ca+U70eYLGvi6Ou0B5vIUuACN
X-Gm-Gg: ASbGncu/53RXsxZzbALaH0sH2MpZX8QLSnEtYh7DHEJmhV9BwEEqFOiZ1pRqKjMxRiw
	7EvwFBOSUGneXSZB/rditfvHyjD5uD/BTp5gfgJ2Tm9iZDyL9jZLpftLSAxJXEmf5KsSy1h3LaB
	/+g1iBAosSOiwDhJlEPwkLzy08ozeLawtaDMSTJ+bY0QWcDLYHhz2xQiTfLHq1YyRpaoUulfWaX
	UVVlbT2UrT+v5GJ/TTkrYNTnJruaLUs+ro1hK+Jt8sjI3NS1SHAW0TzNXkPmZQSif1gU/3WGJFn
	8QF8BsH61/pD4cAzC3f9/aZBlWsTTaD8UYzF24nd+k/5/5CS9GH0y3YPYJQ2n9RPKnEP+mk5GK5
	XzvzrXaWzkST0f9wFR2hBGOBwuLBQDuOJBG0JDtcMf55A5KJeMrSnkoq1tChSkP6+kVe3XjyJYd
	g=
X-Google-Smtp-Source: AGHT+IGnC36Pr2Pwb4ykt7IfU37k/BXh1PqT9qkdlZ9ToWVt+IpsfmlkELLWVuksNL2ab2S/sOLkPA==
X-Received: by 2002:a05:600c:1c07:b0:43c:f6c6:578c with SMTP id 5b1f17b1804b1-4406aba5a1amr65142375e9.15.1745078455985;
        Sat, 19 Apr 2025 09:00:55 -0700 (PDT)
Received: from cypher.home.roving-it.com (2.c.4.1.7.3.6.4.2.a.a.3.0.f.c.2.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:fb11:2681:2cf0:3aa2:4637:14c2])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4406d5acdd4sm65136215e9.14.2025.04.19.09.00.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Apr 2025 09:00:55 -0700 (PDT)
From: Peter Robinson <pbrobinson@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev
Cc: Peter Robinson <pbrobinson@gmail.com>
Subject: [PATCH v3 0/2] Add support for WiFi/BT header on Pine64 A64
Date: Sat, 19 Apr 2025 17:00:45 +0100
Message-ID: <20250419160051.677485-1-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.49.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the BT and WiFi pins on the WiFi/BT header on the Pine64/Sopine
boards.

Changes in v3:
- Explicitly disable mmc WiFi section in DT even though it's already
  disabled in the SoC DT.

Changes in v2:
- drop patch that enables the WiFi module, it'll move to a overlay later

Peter Robinson (2):
  arm64: dts: allwinner: a64: Add WiFi/BT header on Pine64
  arm64: dts: allwinner: a64: Add WiFi/BT header on SoPine

 .../boot/dts/allwinner/sun50i-a64-pine64.dts  | 18 +++++++++++++
 .../allwinner/sun50i-a64-sopine-baseboard.dts | 25 +++++++++++++++++++
 2 files changed, 43 insertions(+)

-- 
2.49.0


