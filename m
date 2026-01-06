Return-Path: <devicetree+bounces-251968-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D756CF96B5
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 17:43:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1219030C5218
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 16:36:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89961342532;
	Tue,  6 Jan 2026 15:21:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="P7Wtpd3g"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com [209.85.167.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40C40342530
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 15:21:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767712884; cv=none; b=U0s08E649KzPpaToXlFd3DKYqd8LcLQuPwQqxBcMBIFWfQaKxyYiimJezWCZCUN6MzDCwkWwKl/S+DPTxsQScO46J4cEPGKfbZOax2Oa78NX/pc9p0z1voD10mMr0/JC09Be4gDzSWOa9+pjVbH0OQCaVDLdzTcMLKB/w1hpKx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767712884; c=relaxed/simple;
	bh=/TeDlw/cAEB006wcLjZMrKPIkG2WYcBLIBb1X30w/es=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=gFyNl/8AV2/gWPR0vCdOAD8tKuJ+3oCVY1IN0KuoQYFnbV697GArb6jvA/ZwyBefqaodgn4Yl9ph9RpnL0gHJkVDaw8obI74fTZcv37eVB9GUsy/RRCyl6A/U0oowDnPGPxkqhgnNghUJi14batrad1AKaQP6cwgqMSVbpIwuTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=P7Wtpd3g; arc=none smtp.client-ip=209.85.167.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f179.google.com with SMTP id 5614622812f47-4557e6303a5so370348b6e.3
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 07:21:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1767712881; x=1768317681; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9mRFZgchHX2jb8eFhmYCpM7vKuPhTwBiqRXcoqsSVBI=;
        b=P7Wtpd3gapbiCdYJsrYAoi/Ejc0P6Gm/GvT7dlzgr21awmaD1eom2k8VHZPByanfmm
         l1Hfai/h17xs5Ew+Jpe7y0vmZO0mFXHBM/ZBVlKd1fO9TZey2DTqOve1WJDW3pLsDC6H
         t429Y0WNBoXw99tbsUwzGGoKdMaBP1K63mKHVbLGWpD8IO7Ah1wal0P+fBnV1SOLPMH3
         CFMteAkH6NQe8C5uuwYvUPmvGFiKl0uwPL6U45lWarCSCv6iwf5U43m5AA12gcMnUm+V
         s0rraW1r9+8eYcoeX3M5CNttQVVT8171lceeZnP8/DVY4vPVaePgF91e3Q6vuE213DKl
         FlFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767712881; x=1768317681;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9mRFZgchHX2jb8eFhmYCpM7vKuPhTwBiqRXcoqsSVBI=;
        b=RbFbS4HcI2LfGoDSyq6Nh88N+WIqRNKYXoXVVGZxV+td2KeIyAmU6lGetfOA9IV9XD
         AvneEFZXRtp8z6ihubnmqRShSJSBPOixa11swWYC51+G8npe8Vflr/XqrvDSU94LNJEG
         Ui6yyqdNwyX/mB/XL+9SyVE2XhKyfX86/ghR+UtLsbxrAzkjl246N2LXW3RR+YDstLo6
         TCIs4/sdfvTvOoIUZfuIGo7dqQdhgpYK5N8XvDAp5L+L23mTszoTx+EyqhAM938DYpPY
         lbG9XpyyJkVhrUrC5RKRkT5eWrmSY+ybY0U4tzkjDEM/AAhHpAk5o1100591iftrp1ah
         1rwQ==
X-Gm-Message-State: AOJu0YxS+PoCivJ82emnaYhi6S3Uwz1KX7XxUGkuFSNRVbfw/IU6/911
	MT0sh5TMmibotJnAnTTo+UqAiueixMAdgU2W5TTI7w63wAwdhjmHCZFxBf7aCkH1unc=
X-Gm-Gg: AY/fxX7Jl/lTswborbCahs/9Wu2QSkpBdctyVSkPBiH2LyaGObLfT4yTwmSGDv0LWXl
	Q153tkterw/42yF+NJEi0wxfqFBD5tKaWNfNXrv0UZlZ4QMWo4dHgGGxyWXDBK8id3FJ3fFhSOC
	SUwwHwmhzx7bvZ212fd4imUtuoa9vFPBN0OqAuJBd8RDODWFEHvY13pdgUquwQldVcrKiBEBNtF
	W7kt3cyEbRAsJ8/LLnQM7L1qnMuTz18akiWzNjBvR4K/jSs4YdzoV37v8Lw7Fa3xDWjmz4FztTR
	qdLN2P+3ic9JDG1U3XlPy9Ombug3fX5FS7nzsTpXkU+xhxrlmVKgc+KgzBSSOLju5lCjNrIxrCW
	2+1+2N1+sK31b+vgD2H49P8hzLSBxb/TMjrSsN8X1qwkzYqmccUYmkALttzGAZP5kP0QieDDJUn
	S36jP+Fbyim54cLRA=
X-Google-Smtp-Source: AGHT+IGjEHbpqU6LY4RJ8+CevaCM+RJCZaili7qB1Q46krb/sk3v4K9+clY3lM6bvdg7eEwxH/iBxQ==
X-Received: by 2002:a05:6808:1793:b0:450:d504:9295 with SMTP id 5614622812f47-45a5b2b3b89mr2066823b6e.44.1767712881182;
        Tue, 06 Jan 2026 07:21:21 -0800 (PST)
Received: from [127.0.1.1] ([2600:8803:e7e4:500:7f98:2205:4ba4:3e65])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-45a5e17cd81sm1041992b6e.2.2026.01.06.07.21.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 07:21:20 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Subject: [PATCH 0/2] arm: dts: mediatek: fix pinctl node names
Date: Tue, 06 Jan 2026 09:20:54 -0600
Message-Id: <20260106-mtk-fix-mt7623-pinctl-name-v1-0-33817c7f78ee@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/x2MSQqAMAwAvyI5G6gt1uUr4sElalCrtEUE8e8GT
 8PAMA8E8kwB6uQBTxcHPpxIliYwLJ2bCXkUB620VZmyuMcVJ76FhdUGT3ZD3NB1O+FU5pWpctP
 TWIAMTk9S/vOmfd8P6g9gGmwAAAA=
X-Change-ID: 20260106-mtk-fix-mt7623-pinctl-name-f8593953bed7
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 David Lechner <dlechner@baylibre.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=694; i=dlechner@baylibre.com;
 h=from:subject:message-id; bh=/TeDlw/cAEB006wcLjZMrKPIkG2WYcBLIBb1X30w/es=;
 b=owEBbQGS/pANAwAKAcLMIAH/AY/AAcsmYgBpXShbReLW6cOm6xpd2RjcDVAWadQN7gSIS90HC
 0BDe/zrsQiJATMEAAEKAB0WIQTsGNmeYg6D1pzYaJjCzCAB/wGPwAUCaV0oWwAKCRDCzCAB/wGP
 wCIaB/0fD0W9zZkaM75mQbeaPzXPA0VsiPREgfVmLDS/kx2YcuNqR3QeWd3VI/OZG3lu1JhTZeu
 gr726LqIwSLRbF/uyfc4GbWrQHxRL8mj6g9g4UGuovmonCzNnzYZRoaEoiDPlkmh2lVRUfRNNlp
 YdJUAWvD3YyVz4HvnDje9jJGl9Bk7jhNTZeZCsrYH4wOaKrOFpPDbJVVysjebH2Vdq2ckXeKbPT
 rB12pXOAVZhvk1mA87CO51/5vokOEyt9rtUi7kHjJjmEIykvIhJlOyDomh0aaFVDkE3HcKkN5+c
 MUXSc5zYcmO0ypk/lNkCytfhQf+IyAAz4DVPJsqPv7Hlo3D1
X-Developer-Key: i=dlechner@baylibre.com; a=openpgp;
 fpr=8A73D82A6A1F509907F373881F8AF88C82F77C03

While passing by, I noticed that the pinctrl nodes in a couple of dtsi
files did not match the addresses in their reg properties. Here are some
patches to fix that.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---
David Lechner (2):
      arm: dts: mediatek: mt7623: fix pinctrl node name
      arm: dts: mediatek: mt8135: fix pinctrl node name

 arch/arm/boot/dts/mediatek/mt7623.dtsi | 2 +-
 arch/arm/boot/dts/mediatek/mt8135.dtsi | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)
---
base-commit: 6cd6c12031130a349a098dbeb19d8c3070d2dfbe
change-id: 20260106-mtk-fix-mt7623-pinctl-name-f8593953bed7

Best regards,
-- 
David Lechner <dlechner@baylibre.com>


