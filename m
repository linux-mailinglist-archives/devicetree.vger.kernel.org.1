Return-Path: <devicetree+bounces-124603-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F0909D95A3
	for <lists+devicetree@lfdr.de>; Tue, 26 Nov 2024 11:36:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ED98728501D
	for <lists+devicetree@lfdr.de>; Tue, 26 Nov 2024 10:36:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4D3E1B87E1;
	Tue, 26 Nov 2024 10:36:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="hChHMJIL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F0D3192D8C
	for <devicetree@vger.kernel.org>; Tue, 26 Nov 2024 10:36:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732617398; cv=none; b=V6S76FCKLOZ3i9lVQoMbVEWfR3eGyNCAzvWRoixLljgRpmygMeQUxlI6Ydj1lIBo6hnfmGn9Lz/LdIaDKGTrwjhwu769GRTqX6Hrsb7m0a5xbuzHtza3peTCO9CEixJHYFA/z6AQhR9VLoBSDyqwo3Y4cf0H8PzCA7dROMVVIjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732617398; c=relaxed/simple;
	bh=2d22fSXH3xHtYPQeuQ5/HB+WWNcQefsX3YBG8H/58B0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ToH5Le7heJQ0Poa3YkSOQGrjUOZns+/uvhgTzj2f7rdQ7rnj6WEH70TKdmna+Z1QQLuRAJR+cdGv1jGX5Y86cEY0D0sCekM3KTCRw/t3Bx5aySlL1sHHl7b9BZE7DAjEAZrNAVTYDvdEwJhCpiBqRUeK5O6LWHIbhmEdbVp40gI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=hChHMJIL; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2ffc3f2b3a9so29068581fa.1
        for <devicetree@vger.kernel.org>; Tue, 26 Nov 2024 02:36:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1732617395; x=1733222195; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=w9WF3O3Q9CqJ+jQNAGLBDdeZMuKGc8yveqCJFxa21hM=;
        b=hChHMJILqQz32sUdizG7YcSxmhh92GE4neRI/rqgf75g5SkAJ2Zb1Dx7MRRzynU3lp
         fYY03esQe7T2RJPiqwaLElPSgKIiHDe8hpV366mJWKLsrcfT52DBVywOuhewE9GPxjED
         uENsjQaTB2mMkQ4cTMvWRdhxKuuSlYCmDY1zQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732617395; x=1733222195;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=w9WF3O3Q9CqJ+jQNAGLBDdeZMuKGc8yveqCJFxa21hM=;
        b=pppYpvi2ohLBGmaj2Xzr/MbSy3t/fXQcgZ1NfKc7RjE7MAkigTlqzT8F/INIwT4JwI
         zU1FgC9nzhL1STxkcM2RBQuReCAE9ZKb3wSsrayActH8QdLh4S+681gu+RvG2gJ5oVgg
         eUpbGPI6qwSKDDL6Wkh8t0fdgjLuJNGL27+4BCMBYMTaFd774SCTLcU7sM4d5WKAg75X
         73DG8RYfDcUqN5hOWxU5ht5Dblqh3HizAWeA5fHCtvyR680ODg5jNjIFa/EbDK+D7mW9
         vTW53OkL1/raSmbOvJBoplY+ADPSgZ5oNwp9YVPJSQcUhqwKJvI/O46e9QrpadD9U/Cm
         LKUg==
X-Forwarded-Encrypted: i=1; AJvYcCUTctVLBfzwUna1s3H8VMcbMdaRv4JpWZHsLtCA1UJPuZE0Z+zk/fxeqmiCGJ1Zhhwc4s/5VT4aFOtH@vger.kernel.org
X-Gm-Message-State: AOJu0YyCKq1x+C3ExeDTyUsmPtOhnqkxAeru8bMRVDTTuB780LDGN69/
	lv0OkykJVEfIsB7GpRnsYieT2j+0Aaf6TIzsyA9QXe5sdSp8IhcQxpwv6Huo7A==
X-Gm-Gg: ASbGnctEzdJ7px5mIJeUW77ORFNc7M00xvCOUdHxuM+5khmRB1nEnuTEIBNrv2nTP81
	LoV+kNUr45Wkrj4F2sw+/PRFAhTdaMq+MLKS2+xFB6CC0CG8WamQU2i7nyL1Yq7vneS8RlAl7lD
	LGY+zv1NI1ygYfY0aye01iNUYhDIy1v4RLPexBcNpdmZp6/ao8A8JgZM/1/UwILicc+vs5xfcWo
	cm3Mer0MAB4BvdzcRDm23gDiHZMNT0bWm7deaxRfNIqksmzjs4cUWMMRcnZvUfe95A0dzFUCi79
	MuQ6744F
X-Google-Smtp-Source: AGHT+IHUd82WHFzG3Ngfmo9+Qx0VDQrc7wt1+aqc5AYj5jle85lRZhKtCbEOP9pPHyNo7rQmWMAmcA==
X-Received: by 2002:a05:651c:54f:b0:2f0:27da:6864 with SMTP id 38308e7fff4ca-2ffa711f902mr117712941fa.17.1732617395232;
        Tue, 26 Nov 2024 02:36:35 -0800 (PST)
Received: from localhost (30.171.91.34.bc.googleusercontent.com. [34.91.171.30])
        by smtp.gmail.com with UTF8SMTPSA id a640c23a62f3a-aa50b5b6e9dsm578926866b.172.2024.11.26.02.36.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Nov 2024 02:36:34 -0800 (PST)
From: Wojciech Macek <wmacek@chromium.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Chen-Yu Tsai <wenst@chromium.org>,
	Rafal Milecki <rafal@milecki.pl>,
	Hsin-Yi Wang <hsinyi@chromium.org>,
	Sean Wang <sean.wang@mediatek.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Cc: Wojciech Macek <wmacek@chromium.org>
Subject: [PATCH v3 0/2] Add support for Starmie Chromebooks
Date: Tue, 26 Nov 2024 10:36:30 +0000
Message-ID: <20241126103632.419469-1-wmacek@chromium.org>
X-Mailer: git-send-email 2.47.0.338.g60cca15819-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add an entry for the MT8186 based Starmie Chromebooks, also known as the
ASUS Chromebook Enterprise CM30 Detachable (CM3001). The device is
a tablet style chromebook.

Wojciech Macek (2):
  dt-bindings: arm: mediatek: Add MT8186 Starmie Chromebooks
  arm64: dts: mediatek: mt8186: Add Starmie device

 .../devicetree/bindings/arm/mediatek.yaml     |  13 +
 arch/arm64/boot/dts/mediatek/Makefile         |   2 +
 .../mediatek/mt8186-corsola-starmie-sku0.dts  |  31 ++
 .../mediatek/mt8186-corsola-starmie-sku1.dts  |  31 ++
 .../dts/mediatek/mt8186-corsola-starmie.dtsi  | 465 ++++++++++++++++++
 5 files changed, 542 insertions(+)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-starmie-sku0.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-starmie-sku1.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-starmie.dtsi

-- 
2.47.0.338.g60cca15819-goog


