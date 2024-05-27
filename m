Return-Path: <devicetree+bounces-69486-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B62D8CFF7B
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 14:00:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 363652810E1
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 12:00:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0178B152DEB;
	Mon, 27 May 2024 12:00:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZbE78n4V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C39D134B6
	for <devicetree@vger.kernel.org>; Mon, 27 May 2024 12:00:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716811213; cv=none; b=WlyjRRLYxxRhIbEwccVaySpSEAQqdnsEBf9SGE/1zekFRAi3EW+f8maUEnB+NALAKKDnSFbXBFW2Ucr9RlUaMqseOsJ/HXCA40khXrgE9qF28ULwaK2iZz/wwxNxyUf9M9DXVjOCllTrKJVNFsd//EPBY0tB/pFWTtVPbfeSSdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716811213; c=relaxed/simple;
	bh=hCCFMqs+6z5VOeYftsE0W99hWXyjywd5/dFJKaW/7ZU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=R1XZoTnll4SxAMqGQ243BZDl//dL6UvLYuKqGh8wUF7tY0ENuEqZwuTN8WTTY1pLNJf+wF41TkjvjK+keSp7U3NbaaMloiOWFba61fGfx3OVQ8AsyyJ8YjkyxySQmQ+aL25lf0VOe5zF8Imb/I6z2uvKfDGUScQN8BonhxwZNRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZbE78n4V; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a61b70394c0so912227066b.1
        for <devicetree@vger.kernel.org>; Mon, 27 May 2024 05:00:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716811211; x=1717416011; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=D4b6kxHXn2wrQHXxVcVKCdXvHs0ACru8nrxrnyesn9I=;
        b=ZbE78n4VoVtzRCPqHmpGpk8OoIF5JXGwl3IU+UConzlwub9odony84txWVnN4FiiQQ
         nz49U68zpCdMKISbfuiO+h4k6G4jzUnJX0YRDiVfy6fuzmZSv5hngkVsYz5AT37ndq43
         rPXl3r90t84auFxMt5TJmn5N1/vkSPI/oGBtutMQTbdrM7q0J4zxFPUZYYljm7WLkwjX
         yukKIi/OrqgsJcY/33smUDQoH7cnHBXsdZSixxZONNw34BzTKL2uLxO60HLNpPV6IeFv
         tIF8GTGzR7TuL3xrsKT17W2l1BLFzoMv5/BDV8YTKsZ6SnDB0Uju0y3qp3EYT7ZJHwQU
         vJsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716811211; x=1717416011;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=D4b6kxHXn2wrQHXxVcVKCdXvHs0ACru8nrxrnyesn9I=;
        b=tFmgV3RAhc79qF8Ga8KStdt27mvEBHrBxEMLfGL4kf2Ua+r3QK68NYVuHQOXkM4jGf
         h+Up14kAJANvPN/uqq6AtO1McYSoDBlrn8o7aLEo0Ct7v+X3itbK9ahNKrp5ii7glzPV
         e+hRi4SvXd9YBxdXX7DYE/1R4J8J60izWh3ytjgErdKiEYIBj2knIjTSr+Rcyn3/lnX0
         0R0GBh+W9JXepn7jR/sM7A6sDq6JacThysaElyMqJscf7WwyhWsY8oyEr2Xpr4ykVnVP
         oM0o+kTBTdOZnaYrkGxT02W9GtmB8Yzz+OXEGdIUppdu1upmJ6skRdzrAJtMTBuUhfvy
         mycA==
X-Forwarded-Encrypted: i=1; AJvYcCV/RwVVriSoyag7n7s7uy3OJiuHvF4PW15nPXxCObupHsQ7r/AXxwP19ZfF8WnyLpWuLj6Um2gmluAWSSPoTo4Qv2DmcuYlKs6jig==
X-Gm-Message-State: AOJu0Yy7VnFFBfHkIa5pvNZVq8AjCfMsJ2fDEP93fGCQJULmbqF41w5P
	QEEFjEiTTBfd2tbznAWIezpSsOidWNlaHg2Pv++CVuomEUqQ3uZV
X-Google-Smtp-Source: AGHT+IHuImaftf9Wnm9N4conq8Nnfqpipw/+l9o3eMb1o8R7JwO+DBYQObs1z8e75S+0TjhobGg1vQ==
X-Received: by 2002:a17:906:2484:b0:a59:cb09:41d6 with SMTP id a640c23a62f3a-a6264f120damr576511066b.49.1716811210521;
        Mon, 27 May 2024 05:00:10 -0700 (PDT)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a626cc8da37sm484669766b.183.2024.05.27.05.00.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 May 2024 05:00:10 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	Hsin-Yi Wang <hsinyi@chromium.org>,
	=?UTF-8?q?N=C3=ADcolas=20F=20=2E=20R=20=2E=20A=20=2E=20Prado?= <nfraprado@collabora.com>,
	Macpaul Lin <macpaul.lin@mediatek.com>,
	Heiko Stuebner <heiko.stuebner@cherry.de>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Chris Morgan <macromorgan@hotmail.com>,
	Sebastian Reichel <sre@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Sean Wang <sean.wang@mediatek.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	openwrt-devel@lists.openwrt.org,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 1/3] dt-bindings: vendor-prefixes: add OpenWrt
Date: Mon, 27 May 2024 13:59:31 +0200
Message-Id: <20240527115933.7396-2-zajec5@gmail.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240527115933.7396-1-zajec5@gmail.com>
References: <20240527115933.7396-1-zajec5@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Rafał Miłecki <rafal@milecki.pl>

OpenWrt project (with the help of MediaTek and Banana Pi) has produced
its very first own hardware. It needs its own prefix.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index e474055359f1..eabc353b8512 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1084,6 +1084,8 @@ patternProperties:
     description: OpenPandora GmbH
   "^openrisc,.*":
     description: OpenRISC.io
+  "^openwrt,.*":
+    description: OpenWrt
   "^option,.*":
     description: Option NV
   "^oranth,.*":
-- 
2.35.3


