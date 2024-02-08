Return-Path: <devicetree+bounces-39814-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E894D84E299
	for <lists+devicetree@lfdr.de>; Thu,  8 Feb 2024 14:57:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0D0EB1C25CB6
	for <lists+devicetree@lfdr.de>; Thu,  8 Feb 2024 13:57:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1214676C61;
	Thu,  8 Feb 2024 13:56:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="IQi58yFd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1E9677626
	for <devicetree@vger.kernel.org>; Thu,  8 Feb 2024 13:56:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707400606; cv=none; b=BjHxPrPvJSDFUP24uiroF8mXdSCOe33Iu7R1XHBuv9w9oNlxVtNnW+WnE/MLaO41mmLH0JWwDBVNYm6Tvxhx4b99zxFiwgYG6BJeSGkybpUtKNx6gfRhcG8f9u3SC5RirFRfrU+DdTzfjsaZw43YoEzeU5I4kjm4wqrBHawaVx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707400606; c=relaxed/simple;
	bh=bn0NcY9oMrS6LrrubXH3e2mE3DZDDG0Tf9WK+wT2N9w=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=T7HlBLPbMY8VLv9Mv316AwWBmnYlZFyhqWXLZ0hnWclVT2+OO8Dvjs5qmxxk4h545bRs9nCvM0XW2zyFDFgXU5Z4LeQrflR0tOoQPsLCFJMoSP9ecrXU9Ntt+BRZP7FTudsBvULIrZ45WUmPPYFUPGdDbR3nUhpiGcrperhdZUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=IQi58yFd; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4102eae7e6aso8446595e9.3
        for <devicetree@vger.kernel.org>; Thu, 08 Feb 2024 05:56:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1707400603; x=1708005403; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZLFsA5I/Fz9jsdK8SZL9TOtMhZ/+MDG8kle9oaKK1Pc=;
        b=IQi58yFdCFOK8kgyDfwJPUM9rnQ5tqdvPjBets/SsDwj0JDoK0QPCCIbdPL1khSBn+
         Yd2I9ksFOg4PY4VZcE4jafs/0TL9+FjHAQ9AKCsgjyb37qcgmdS4lI/5DgAdkkKJof+e
         3lLAJXXe+HE9WeqLDBrvNjtMqwGZJTjgnJHRNJndSRgqOIZVQrz9VWwI03fhHbRy0Hsn
         owe3dUW4ZC8iCvIFITqALGs0ypFEuotwNcVlt7Gn8pdHB1arpuDMUoiyFEtiZTXCPgcb
         DY5yI87yYE1S06f4Rr47KgYtaiqfuR1bzHg4zNoj3efkJHduJ7e/qYS8LoMHwgyC9TSt
         oKrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707400603; x=1708005403;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZLFsA5I/Fz9jsdK8SZL9TOtMhZ/+MDG8kle9oaKK1Pc=;
        b=W96PVtgh1bOkhZmuFWosInv0PQ24EitNU0+KOPkTZUkW8RaNXH++O/xd+uK015NjI6
         rdxDh4u0asnnNYMe8xMiG/SHbEH52rY9SSvwpRWNiidv0TgXUMVUhy68rtdVZHgyRK7i
         mjsN/DvPVYoqtzxtOCpJe6Q8Lp/2hCvnpnUh3F8z7ZtVwzxqvH2qTHiv2H4idMWfDEDh
         LarZkvi+3rQFr+9ZIJFwVrHGR/V3NFPGJsJLkr7PUuQeNlYjr1PNd/H0N8uwaoSJEzib
         mwvbBDGCek3YLK53yDMkhHV0DUlch2i17E0sF9iX8xCNl0OECJfORi8siLs2E/MdPyLk
         VmYA==
X-Forwarded-Encrypted: i=1; AJvYcCX3cKNExAkYLxIfmKFempvGRJEX28mOI+SheMtmYjP06PLlH0O5pQkw7nKFwhwOZv+wpDNmC/fWd/qSTrIFqY+xAuPusZdmAaJ/DA==
X-Gm-Message-State: AOJu0YwQtTaVMNU7/2Ql/6hSKqySU5nzabcXk8HG153LuhkmpEJ/4AZQ
	0Y9+rbLVU5QkyV6yNbF9Lm/J73IIkLxXu+fEDInQ9SQMTQGZ0ecdW1AUJ2raBw0=
X-Google-Smtp-Source: AGHT+IGX+jm/Syg7kOmYPVpoRSrD0yrtbSudVly2inmrQ/SpVebFdoebTuF9yCM+8FnbI0uh/3IzUQ==
X-Received: by 2002:a05:600c:5119:b0:40e:f1f4:89cc with SMTP id o25-20020a05600c511900b0040ef1f489ccmr6320525wms.25.1707400603111;
        Thu, 08 Feb 2024 05:56:43 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWK/QZqlCIo5oXoEjyUlWREZD2xYNlnmB9lXMcxmUhWPv+Y2DcLakLRBejaLURwaKjtK3jTVCGfDy9zJXSiPIZ1sTjZj7cvF4CLB90ls9Df9Jneu+4Ugs/iLnxEdtFEzCesHPL8+ZbN9UvtfxTgxktd43j7TYwY+7CnRey9YeVlImH9vk7LlaQZ3AjEV97HXsycBSIsDhOdJO/RPICZK8eQV1o/2PgikZ63ufNuwrkZTHt4YbIyIyFFL7ifIUKyGKLnGQQfPcObDqAfCw3qiuUmRKp47pv2i9G6PPIo4aCHtsKnIU8S+a805myVHjxUfcepuYD5C5rgGRKZfCYb/JXr3Z7oyQnS0Mbtdma+gC8j3H67lLhvseFJBpI5WbBl8eOjaLZwLwh/EwpKn+T8mTPKhSeRXVJqPhbKYQ==
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.45])
        by smtp.gmail.com with ESMTPSA id iv6-20020a05600c548600b0040ef3ae26cdsm1703058wmb.37.2024.02.08.05.56.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Feb 2024 05:56:42 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: geert+renesas@glider.be,
	magnus.damm@gmail.com,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	linus.walleij@linaro.org
Cc: linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH 0/2] pinctrl: renesas: rzg2l: Add suspend to RAM support
Date: Thu,  8 Feb 2024 15:56:27 +0200
Message-Id: <20240208135629.2840932-1-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Hi,

Series adds suspend to RAM support for rzg2l pinctrl driver.

It is expected that patches will go through Geert's tree.

Thank you,
Claudiu Beznea

Claudiu Beznea (2):
  pinctrl: renesas: rzg2l: Add suspend/resume support
  arm64: dts: renesas: r9a08g045: add PSCI support

 arch/arm64/boot/dts/renesas/r9a08g045.dtsi |   5 +
 drivers/pinctrl/renesas/pinctrl-rzg2l.c    | 397 ++++++++++++++++++++-
 2 files changed, 398 insertions(+), 4 deletions(-)

-- 
2.39.2


