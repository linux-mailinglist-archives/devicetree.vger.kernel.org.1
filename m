Return-Path: <devicetree+bounces-168729-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CED48A942B1
	for <lists+devicetree@lfdr.de>; Sat, 19 Apr 2025 11:54:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 01FC817C14D
	for <lists+devicetree@lfdr.de>; Sat, 19 Apr 2025 09:54:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F0CD1C5F2C;
	Sat, 19 Apr 2025 09:54:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tbH3kEGF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com [209.85.215.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DF7A1B4F0F
	for <devicetree@vger.kernel.org>; Sat, 19 Apr 2025 09:54:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745056442; cv=none; b=B6OpFYYQDOVfSBsrrNPA3X5/AGG3//38TaYOVGHWRsSmsqAxkSbvxFMCS0W42X9FWGK3dC2KOSpXdElxGVSQ6XpXQK/hX2Mam4fpYsqeGuit+aNVIENWFJrmCsmDplfQ9iyu4aV2VeWbCoTSppY6EWaB0+lB5i8Zv/bx0B6ybOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745056442; c=relaxed/simple;
	bh=ILbRT/qRg9I8w+76+daOLvD2JyO9K0fujjCnP2kSBRk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=nAR1mFLfwNDU2xL9fj1YvARHY5uzLHnzPEfTpo5jXpcMwPozO4OpJYuIv8GO+aCnI7Z1R/ZVEUfoo1ihYO0MjRQjZj8YnElG58KaN6PfVmQFM3w029RWn8emAuZU161CDVjY+J4uTFVoiO5REu+8UzM0PRubSwsfjeIZPqnYvTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tbH3kEGF; arc=none smtp.client-ip=209.85.215.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pg1-f178.google.com with SMTP id 41be03b00d2f7-af908bb32fdso2220509a12.1
        for <devicetree@vger.kernel.org>; Sat, 19 Apr 2025 02:54:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745056440; x=1745661240; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Z9yKVzIA+FhMTC4rrM4hDlH+jkyt/OHi/VKWuwVsMN8=;
        b=tbH3kEGFBukkIE3DK6NLzjyBiKq27mDo/fNqIZ33TQPrgHhbfk+BX7YUdYQ+3gOJmy
         /22UY+j+OGrnJoO7awla7VaMvuOw8vM7l8l7ty5StU9h0hGdv05Mk92+BAADaZt/UEsw
         YYv8XWHO33pHS05V2g8gBrfeoBbOPScWk+zalFi2DujPN34wHvH0COZyuFCmpxs0oTVf
         J4RnpK4TxlWXCQL7s5yxGucLDDGcPLgzEylaxw5MMLy/lNjj9R1gCQjHciQcJVfljXv0
         qLuASlUBGq6rooxjL/xX60EC9CnaY3hbuRlsOK1HZZPQbQMi3bTykrmdkYCGVlol/ea/
         MYGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745056440; x=1745661240;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z9yKVzIA+FhMTC4rrM4hDlH+jkyt/OHi/VKWuwVsMN8=;
        b=ANAIOtimbZzU43BvF+f0ph+/a1jEfs0uOaW3j5offuwwnFpKcsi/kKZDALN2nk8BCU
         HAuFUjDl4B0H92/7dYuguDRAfRoLivVdfPN3mk2BqA6JdzEiCqJg3NXu7toM394giz0a
         ypDqKrsv6b8xgIi9WOMJIS86vND3qEzDCP66UHvjYP54mCkgCBedTDTXq1NptgH5qiBC
         wfVXM4x7mzmxmfZ6UsMu63bG184w85IvIe4D9qTj03FqSGPlCpP8gpjh6C5maURTjffD
         iPOzM3CFVmR/D7Kk0dfpOip/px1D9NIA/6JSFCcYPjBxmsKusVQssPJ7wP1aoJrXnPW2
         LxFg==
X-Forwarded-Encrypted: i=1; AJvYcCUKOzFD/LM9N5O4yZ3zhvCy57tuQhHb4IYTrh+3l6Npg6gq0ivFZkEqN7/Rb8WZ056bte+qrL7r5rqC@vger.kernel.org
X-Gm-Message-State: AOJu0YzOO3jvFEK24DcM4/zZYQHUds/o6RABvsgKYBTdtwV4n9x9EaOI
	gbMXKiIFB+pXZ55tzO01dPgFaJfb5IezVkBNFQq7ecS+zFASDHheD77mr+wUjw==
X-Gm-Gg: ASbGnctVreIx1X/MItp8NEE1N1t4Dy5MlhId3UlnYnVJeF76g535l9HPqcrD1vkwKKm
	SSdWfTc9Xy/w8PSafyPe0ozGa7UPHLFXgqarqShpS0VA5gp2pjDC7S9WHa45h07AS0sLTF+HoWJ
	nRoSIE79yerLLKwoSBlvT5wIgMCln87Os4bDOWbOJ+HzjfKRWosMutEc0lc4zBEEVyO2MdcIGOC
	eBLOsdw2JEEwYgRkFuP5C38RCmjuRcTBsTthKCgG+MsUim76gqgh3iiWdzt/jh4RrToLNhucZ0F
	x5LPQ3FSlUlkQEjw2t7XZ9gH0KdsjoLjy+f1I8lZwCUSYJOmDqBrJQ==
X-Google-Smtp-Source: AGHT+IE/nEJy748pRZBsgQs1pUuc+KJsoas+6d1SDGbI9MhgwRJ1z7aHS2ich2UbQnlsP6+skuAA/w==
X-Received: by 2002:a17:90b:524d:b0:2f1:2e10:8160 with SMTP id 98e67ed59e1d1-3087c36108emr8133093a91.11.1745056439818;
        Sat, 19 Apr 2025 02:53:59 -0700 (PDT)
Received: from thinkpad.. ([36.255.17.167])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3087e05db51sm2695542a91.43.2025.04.19.02.53.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Apr 2025 02:53:59 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: heiko@sntech.de,
	Kever Yang <kever.yang@rock-chips.com>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	linux-rockchip@lists.infradead.org,
	Rob Herring <robh@kernel.org>,
	Simon Xue <xxm@rock-chips.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	linux-pci@vger.kernel.org,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 1/7] dt-bindings: PCI: dwc: rockchip: Add rk3562 support
Date: Sat, 19 Apr 2025 15:23:48 +0530
Message-ID: <174505638863.29894.12853512494056448618.b4-ty@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250415051855.59740-2-kever.yang@rock-chips.com>
References: <20250415051855.59740-1-kever.yang@rock-chips.com> <20250415051855.59740-2-kever.yang@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Tue, 15 Apr 2025 13:18:49 +0800, Kever Yang wrote:
> rk3562 is using the same dwc controller as rk3576.
> 
> 

Applied to pci/dt-bindings, thanks!

[1/7] dt-bindings: PCI: dwc: rockchip: Add rk3562 support
      commit: 1d6d956497ded6ae02faff74ac493adefddc2c73

Best regards,
-- 
Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

