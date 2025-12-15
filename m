Return-Path: <devicetree+bounces-246689-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 33BF0CBEEF4
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 17:37:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4F628305A823
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 16:34:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91E3423278D;
	Mon, 15 Dec 2025 16:34:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="B8YF4zkO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2C021DE4E0
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 16:34:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765816449; cv=none; b=NugGvxuO+tanPNQlhYt2NdZw0fjucPnShUm+HIX2DVN9xhwVl4QzEUGbQ7IiljluWRUoIf5BCeBOtqPPWjjEE3Ceetg2aVvmQTAGUrvR1mnWmpeMYjzQN2brTubkwMH1piyJdXTYbH9C7Eoz6+dfbYdV6arlr0BYR4XKFofFDy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765816449; c=relaxed/simple;
	bh=hFOqOAv7uVbbR5WcwgFciMeNnP/0OHxtKFdzXAKrw0M=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=jojG2zRk7iA5lpUa4S9gwSj1+RLtHllutBSNI942XHX2J6vkFLRFFnMbHSpKW1qQg6uSZ1BWbXezbTdGkIiYDvpyoVR1uoPdyxZAC9baa9Ojlwuc9O0fRa1H28/AFgvQGm8pYPKse0cHUh2LqVeWRmZUIym5NPYPNa/6zdV5CJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=B8YF4zkO; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-47a8195e515so30190555e9.0
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 08:34:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765816446; x=1766421246; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Nc6rFfK7Gz+qc8AeSVDPFVggINyHTEh1EA+170hv3AY=;
        b=B8YF4zkOeH8r+N8Cv5Wp8ukiCx8H/WulEGw92z2VzlOHbZyALiL+TxqDOskubVs5sN
         hE5vzZzDXlqHMf4678mh0eJhDTp3RV6e2CGDbqp8OEy6edpc+PUbVbD1vNlC9Rs2CMFy
         uRaPAnNtEWciamDzf58sRzO/nOZx3QDouQNg/5S/lMizZwz/ewXxaQ4YFdjQD3BJhAal
         qNUM7imXmDQj52qD1s1OcK1ICKJ5BgozbM1LvIlX9ccThx2jlvXjTTyBi5etefOTUwoc
         OVN6XDyMImZch8aqB9N/fgjVBxnETr+yiK0Q6rPPFedUq0huYJ5LJfNkTHf74y3KQh1N
         5y2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765816446; x=1766421246;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Nc6rFfK7Gz+qc8AeSVDPFVggINyHTEh1EA+170hv3AY=;
        b=EKc8DG21ehrs1AqK4YQ0TRWrN9anlCnyBluBObfwXAljks3Cb7eobeHYTmVEHSP/i5
         fUbF7FHHwqtgGM8/zDeERyDqeMIGiSjg+0KWMs6diM4VnGJGujFX5fqlByoJMi2OOiRi
         0tMlIzzsR63OPZDp/iYYYMTuJAeH1mBqavmHd1araqRlSmUo158LDnWG1iG2LYqaa6pp
         2z1kp15Xih1g7F1gEMwjnxfzond4uUeg4/YhBrdVaK7NUvDhDlKITk+iRtNz7mnQTWys
         /ryj6Yul2vr4LyPo1bXgnygvoG9pU5fAAIztNa3usSjTd1S6+K2HSDYvrkfKhUdBbns5
         C8Ow==
X-Forwarded-Encrypted: i=1; AJvYcCVXViVaqpmKHgkr6t1JbYyg4jykABARXs521yKkxUmz0sOjYWR2aVijmi8Wq98WXZvzD3C86QKULItR@vger.kernel.org
X-Gm-Message-State: AOJu0YxZIYwf+tfhErK2hn0V07F9ObIBSpUwD4swTZ0sAmdmqkShbAeO
	ljM8sXuL9gN01YpeK0La8ilKuEJNcaW2G7JWAc4iya+gN5FVcdVgHb3U
X-Gm-Gg: AY/fxX6jOgiXHYq3y3xmkK8Xxd9OlepZmMcQUciNg8SnZKvIRgS7FniXGL8fAlh6+FD
	NuVwQnT1UJ8i+QHpbYCqUi5HPstK7djOtzjJ3/443egaBh/OlScOjK9IZLvCgsf9689MLZGVH3V
	LctcFGi6UOyxFqPv4KTQRdzyO1Le019vyxksVUH17g65JfLNRh3xiCD5QrA3KYAs/uNu2XQmxQA
	VOTZrHcjBlGqOirL9/V0K2tx1gfjQXZoMmMfEMXmrda2Mu63eWV7jb64THOgivKYVGsyfbrVPvB
	OoyXb7rtV9v9JGWCbTQtXnJW39d1iOBv6oXDnfVPi+mPzLMmyirSQcrKKlL7mQCbew20pcBDOYc
	nJKpwd2DwYD0zg/9p8xM9odE2UAMqhLSBYatX4m9Y35IKBvfemiTBpl0ati33YKUWvYM3RsN/yk
	gLk2LZ3fi71RuV5cXyHu0gT7XRbt9/4ppdIW+mM9TgPuZUqULmsNGvfds=
X-Google-Smtp-Source: AGHT+IGJQDjr55225GtOMFt6JjCMMfs83+3wPGXQ71w7l4LaIX1V6FNmpVhtEikrmzWNAcp1Vf94BA==
X-Received: by 2002:a5d:5d09:0:b0:42f:9e75:8605 with SMTP id ffacd0b85a97d-42fb42c1a55mr11777957f8f.0.1765816445926;
        Mon, 15 Dec 2025 08:34:05 -0800 (PST)
Received: from iku.example.org ([2a06:5906:61b:2d00:f5e0:bc9c:3d69:b37f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42fa8b9b26fsm32609640f8f.40.2025.12.15.08.34.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 08:34:05 -0800 (PST)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH 0/2] Add DMA support for RSPI channels in RZ/V2H(P) and RZ/V2N SoCs
Date: Mon, 15 Dec 2025 16:32:28 +0000
Message-ID: <20251215163230.227849-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Hi All,

This patch series adds DMA support for RSPI channels in Renesas RZ/V2H(P)
and RZ/V2N SoCs.

Note, the DT bindings doc patches have been merged separately and are part
of [1].

[1] https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git/log/?h=for-6.20

Cheers,
Prabhakar

Lad Prabhakar (2):
  arm64: dts: renesas: r9a09g056: Add DMA support for RSPI channels
  arm64: dts: renesas: r9a09g057: Add DMA support for RSPI channels

 arch/arm64/boot/dts/renesas/r9a09g056.dtsi | 6 ++++++
 arch/arm64/boot/dts/renesas/r9a09g057.dtsi | 6 ++++++
 2 files changed, 12 insertions(+)

-- 
2.52.0


