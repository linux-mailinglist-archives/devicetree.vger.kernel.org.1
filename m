Return-Path: <devicetree+bounces-139857-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DB8C3A17315
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 20:23:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DDDBE7A2408
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 19:23:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E48D1E5738;
	Mon, 20 Jan 2025 19:23:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SksLpgGp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA90D8479;
	Mon, 20 Jan 2025 19:23:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737400986; cv=none; b=V0Xt8b8F0xtxI7vYKWF+KqO07KqZcdTdoJWL1yIGc7yZw83KEInHloRPO7kIoeOykA9uDF0Rm6agbNVZDRnFtdJyV67bwPyzCVPNAUFbrbw1M8ZguMgyqQs8UZaXD6Y8ZkmWIY+4fjMDOfkj9q9KWE50L2bzPdiSA2sxOrglBhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737400986; c=relaxed/simple;
	bh=UQf76tNPeFw670A+FDlUpizi4uK712nfyrh8vXWuH1k=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=gtMkKu1L02/oqJGwyxlBT8wBwR9FpHu/WS6dKSEp7wxG0P0Eyhh+NlggStV1jX0SHL4mq6a0mUtyUta2/JCgQz46gw8P+gumZkNXE0zzZZ/9zaNPFtaDrJmh/xKZFOiKIEN9EhJb8wtT7+LIPW/FDwYkSrCHWp1z4JxKz5/pc2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SksLpgGp; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-540201cfedbso4482014e87.3;
        Mon, 20 Jan 2025 11:23:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737400983; x=1738005783; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=TbNRXkcRyF0tlmC6FGx5LqgTK6hjgJWXGfuNeKftOQ0=;
        b=SksLpgGpelSeFSZ6NYvNHDvn//KJI5qU9gnB3f47m5cMn5BVQL1miv91cS+f4FTuIM
         AMsqY61AKHMJMWNna8bmgliJwTzvW2LQOZo9FmOzJhdcAeI/ef/+waLXGwUabGV5w5zz
         uuAYx+3mEbVy8n2iyKMQKMLHOcKOvaERC8b9appKe9uWCScg7t7A2LTNfLZp5OiSC7V1
         MSqXwtoKmEiGE100RjBEGxDpYIa0Mm/l9jKRZhN6vd7waHmHpelg23pLbW+hQ7fiKUR2
         JM7h5u+UubZfgo5NvuRq9kVwwTbdgU1/rOUoajeE0HzxV4RPjumvo86UGshJgqUkGHiv
         qeYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737400983; x=1738005783;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TbNRXkcRyF0tlmC6FGx5LqgTK6hjgJWXGfuNeKftOQ0=;
        b=cP4gNciVzkLxyiVxTYAl1XVXA5nMcobOyfgtEgTdzs8/7/9gu0PiW37SfW/RWVclbi
         B2PHrbyCo5HfnEAQEWw44YBi/UoAvSWLKlcZFKugdv9uqK7FZvDu08i3p76SUjbzWPtH
         F/scNAxeJwHrscyiMFntq48Y4WBE4I/SumA+nLRrhJq6lxlcX18T/lOpehhgOeNuztdO
         42iYZl+rym+L2FgXriyfumEzsoP4KUPjrP6mKXUC73R9cgsxRPhs+7G5UCcXDNqRYFte
         zTCODyrpl3GS1Do2pHtAtb8Lw2FN495qkQeBR5TRuVAsIWcmfQfSJcgTmD7qcW7RdpBv
         zQUA==
X-Forwarded-Encrypted: i=1; AJvYcCWd/nVq6OEdj6xd2LeD4lbLKMkVhmWhl1FLMJvHLT7JBx2R1AgXgdoEjt94DUE3Wz/gK+pP0uIqUzhkaF0=@vger.kernel.org
X-Gm-Message-State: AOJu0YzUGJDafyX1+csQ/SNZECAJrcMoWlRXqSisLQDAbagKStt0kkn/
	oTBkhweYaTRyHKxFU1eY2QcO21gXlyiMNxacjX6tkAIvpT5b+0KO
X-Gm-Gg: ASbGnct9nDl0YlUIVTcqGjUzD8jjK8s+cIB0iR9qeAKMc3RcZ14vXsbpuiw4DycMQ2V
	ZhItq2FIu/K6R+JKMPTNqrLnCP2RvJzVXonSHVV+oVYx/1ltTgCspSVRRFpEjJXi371/5Oh06qN
	9BXjZ4sz0rrpltk7Jet22XoDVQiOU6JxvTycMuWdODjY1ILNzhfGcVPz3cV8FRmqv36YxCH8L0h
	Jlzp+n9LAx9BhcsnGKraGd60+CoXDzj4yew6yCLYnWjYpwtWHxF+5+aKKGbCdDdHkCmEXQ=
X-Google-Smtp-Source: AGHT+IGr49WU9BhdIDFszJomy7IZC0MsVfpvVAJ7VOlKiHTdCZ06Qn8peWJsF+uAk6nP3W4Y1Yz8hg==
X-Received: by 2002:a05:6512:aca:b0:53e:37e4:1457 with SMTP id 2adb3069b0e04-5439c280723mr5124215e87.33.1737400982537;
        Mon, 20 Jan 2025 11:23:02 -0800 (PST)
Received: from [172.30.32.150] ([185.204.1.212])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5439af78fb0sm1460156e87.247.2025.01.20.11.22.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jan 2025 11:23:00 -0800 (PST)
From: Alexey Charkov <alchark@gmail.com>
Subject: [PATCH 0/2] arm64: dts: rockchip: Fan updates for Radxa Rock 5C
Date: Mon, 20 Jan 2025 23:22:45 +0400
Message-Id: <20250120-rock-5c-fan-v1-0-5fb8446c981b@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAIaijmcC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDQyMD3aL85Gxd02TdtMQ8XUOzFAvTJOPEpKRkcyWgjoKi1LTMCrBp0bG
 1tQAm5U7vXQAAAA==
X-Change-ID: 20250120-rock-5c-fan-16d85b3abbc7
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Alexey Charkov <alchark@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1737400976; l=714;
 i=alchark@gmail.com; s=20240125; h=from:subject:message-id;
 bh=UQf76tNPeFw670A+FDlUpizi4uK712nfyrh8vXWuH1k=;
 b=TMyVo8vcwj2r4jcUALxh9vVoMsAPW3huM7SQAfS8P1HFA9A0nKAuIvCN78QKCOm9g3y22jqaE
 eNRUxXEEAavBTNWy2VZkXXnPNhtcO7Fa2knTgzHr8o6ubnAbWXHtAq1
X-Developer-Key: i=alchark@gmail.com; a=ed25519;
 pk=xRO8VeD3J5jhwe0za0aHt2LDumQr8cm0Ls7Jz3YGimk=

Couple of small additions to the recently added Radxa Rock 5C device tree
to improve cooling control using the onboard PWM fan, similar to other
Radxa boards already in mainline

Signed-off-by: Alexey Charkov <alchark@gmail.com>
---
Alexey Charkov (2):
      arm64: dts: rockchip: Add finer-grained PWM states for the fan on Rock 5C
      arm64: dts: rockchip: Enable automatic fan control on Radxa Rock 5C

 arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 34 ++++++++++++++++++++++--
 1 file changed, 32 insertions(+), 2 deletions(-)
---
base-commit: 4ec376748558ba132a2a49513acd3b08774384e3
change-id: 20250120-rock-5c-fan-16d85b3abbc7

Best regards,
-- 
Alexey Charkov <alchark@gmail.com>


