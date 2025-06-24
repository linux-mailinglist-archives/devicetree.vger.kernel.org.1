Return-Path: <devicetree+bounces-188884-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D5830AE5E39
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 09:43:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0B83C4C027D
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 07:41:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A04BA2566D3;
	Tue, 24 Jun 2025 07:41:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="O7ka1vV1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99765253B73
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 07:41:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750750888; cv=none; b=DIVjqraNkO5VZMdB2PzC1xlIjqjKIIanbTYWMdGsPXkVmNBmcDrU1hOyD0mDvx3y7QifBdtvB+SbFU+8A0yousW5y04SnFb3WiP1W0VIChCYc44Dj0cx99Eb+8FSD/zlPvyrG5dP3MWn0jO3WIBQIma9zHZ+ygti+qYk185fwWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750750888; c=relaxed/simple;
	bh=Bhb/MHmVMNQcLeiCquGf1kI2Y2EYkW1eLme9a23Qv6E=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=BzFw9mUbUuy+59JOfmtH4qS9sw53n4kIlerfL2DBRwP2QyRzzyqgmYBaFPpPpW4fCxVJu+1FgwJjgDS0srVL7tr86+/gL5B5ZsQnRUovQXJJvAabmMryd8dFFbQ6m8kuOJ0+V2gxu9hdmKGgjGPtKaCHXpeRAaG9DYtvoyZn9ME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=O7ka1vV1; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-553b584ac96so105909e87.1
        for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 00:41:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750750884; x=1751355684; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=mo/XCflE60eXenyp8kXSjuRKlrASVcRKOGaeuCM186c=;
        b=O7ka1vV1lWib+e3yt+nw++HATlX0D3thVtuHz7SUqe9XLfVjm21a5vsFokWXYbB0C6
         qJpRKAorVImXaMoTS/NcRyt0gKyl5Pd2n1L285P+PPKQgvbK9wYLXo9KHUhbHhYMHghh
         ZJe9SwDntWo/E7nZyPPv3NyyF4+QCSvw9xcchIfsVqmyNWFKQWh/v5GeUEed2sLS2abs
         vNJxtDgrGinxRLK8A0EpXM9iZBkuqJjA/DX3Nw00kuNSBK7BreHiLncwZkH7D/D1PypR
         uaGtSYMI8/FvpZ/rU+cH7jYHx8IAc2PzZ6PjpKCLI1f8UINGKdyoD354k7Xv/eehfEKr
         gxqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750750884; x=1751355684;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mo/XCflE60eXenyp8kXSjuRKlrASVcRKOGaeuCM186c=;
        b=MmqyQe++A3sshm73t8mgW+qVoP1ZZQp+SQO8S7BaoO01O5AdUQOl7SXLkqnDePHnY9
         Q+3A7EPkYZopgHDxJ3kQHXtnIEEYyBNSYRzSXPSAnpdwbw+j4gV3dYeMzpg7t7sNiCbG
         C62E25JzYSOL8cQmmonXwznSZGQntaFU3VlCcF871MwTfZ0BsxPcw1C5xiJDlBbJ0NLo
         UEsSwWJlgCl6t9LjRAIqlhOM/eP/EtaQue76IqYZNh1wd1JGUBzGGm+68nffPiDuS6FL
         fNcQHL4/x/5T0EPZ82QUU17RasyZLUueMgvoJOoIzivqQIgfWBP0KdJGXFgfr5q7utkt
         5gSQ==
X-Forwarded-Encrypted: i=1; AJvYcCX87EQuYolVBpckZZTx+Yrb9rBG5HZqe9wdTHdz1rXvyuX9/Fr67VB3RTvyo5kj5k5utxvXHdAI3Cku@vger.kernel.org
X-Gm-Message-State: AOJu0YyFdIVbRGVRdTfrdIxQfL3xdROkYTtK+qJe9yIW68kDK8YIXIqt
	QWyCpckj0fw8gk3H0wSMX3c6z1SvM9xn7lifE6OuzVwbQ8MFPDszJf4J8aTz3wQmB6U=
X-Gm-Gg: ASbGnctH93F/VyOi5pjH4537pP7KFdxlnKDcZkxa+EyrWxB+zJ1XMLKgX2eN2eQdOV7
	Amdpfeb7JV7UBGtlzCJHimv+P0dvEatVTQ/10zJfXCSrD1f+zCRBZJS+m/B4+ZUeB1sdfHuEcut
	t3u6TtiBRk/biEBxSpJ9Yoh38Z3k/BBoil4XxjtfUj/uboVIcwJU5yb9pZBwvanVQKSX0OFNObP
	hXnMBAkGH5fc+ROE6olRlXH88hTidkSf2OZRp7nWBcICxIcycBaAWv96Y6j4eKC2Hq0cU/4c2dw
	om3ZyJJ6CVwPyfyw5VQXxydFWETbcNx1dkgF1Pti+GMHQSyR82+SzwhybiyLuN0aIs0AAAcA
X-Google-Smtp-Source: AGHT+IGUQT4E8qBgpqIErYrHXkbmHiI9ZkWkKf48SfV315wJw6LVotC1160ilhwa2xyg7l0yMC7Rlw==
X-Received: by 2002:a05:6512:6ca:b0:553:ac4c:2165 with SMTP id 2adb3069b0e04-553e3bfec72mr3907707e87.29.1750750883353;
        Tue, 24 Jun 2025 00:41:23 -0700 (PDT)
Received: from [192.168.1.140] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-553e41cc0d4sm1702545e87.197.2025.06.24.00.41.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Jun 2025 00:41:22 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH net-next 0/2] net: dsa: ks8995: Fix up bindings
Date: Tue, 24 Jun 2025 09:41:10 +0200
Message-Id: <20250624-ks8995-dsa-bindings-v1-0-71a8b4f63315@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJZWWmgC/x3MQQqDMBBA0avIrB1IopGkV5EutJnGQRhLRooQv
 HtDl2/xfwWlwqTw6CoU+rLyIQ227+C1LZIJOTWDM86byY24a4jRY9IFV5bEkhVXE4YxuMF6G6G
 Vn0Jvvv7XGYROFLpOeN73D55d4ttvAAAA
X-Change-ID: 20250624-ks8995-dsa-bindings-b08348231519
To: Andrew Lunn <andrew@lunn.ch>, Vladimir Oltean <olteanv@gmail.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Imre Kaloz <kaloz@openwrt.org>
Cc: Frederic Lambert <frdrc66@gmail.com>, Gabor Juhos <juhosg@openwrt.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, netdev@vger.kernel.org, 
 devicetree@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.14.2

After looking at the datasheets for KS8995 I realized this is
a DSA switch and need to have DT bindings as such and be implemented
as such.

This series just fixes up the bindings and the offending device tree.

The existing kernel driver which is in drivers/net/phy/spi_ks8995.c
does not implement DSA. It can be forgiven for this because it was
merged in 2011 and the DSA framework was not widely established
back then. It continues to probe fine but needs to be rewritten
to use the special DSA tag and moved to drivers/net/dsa as time
permits. (I hope I can do this.)

It's fine for the networking tree to merge both patches, I maintain
ixp4xx as well. But I can also carry the second patch through the
SoC tree if so desired.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
Linus Walleij (2):
      dt-bindings: dsa: Rewrite Micrel KS8995 in schema
      ARM: dts: Fix up wrv54g device tree

 .../devicetree/bindings/net/dsa/micrel,ks8995.yaml | 86 ++++++++++++++++++++++
 .../devicetree/bindings/net/micrel-ks8995.txt      | 20 -----
 .../dts/intel/ixp/intel-ixp42x-linksys-wrv54g.dts  | 75 +++++++++++++++----
 3 files changed, 145 insertions(+), 36 deletions(-)
---
base-commit: 19272b37aa4f83ca52bdf9c16d5d81bdd1354494
change-id: 20250624-ks8995-dsa-bindings-b08348231519

Best regards,
-- 
Linus Walleij <linus.walleij@linaro.org>


