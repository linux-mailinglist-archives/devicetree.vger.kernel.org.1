Return-Path: <devicetree+bounces-72914-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BEAA58FD614
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 20:53:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1A5BE28658A
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 18:53:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F66413A3EF;
	Wed,  5 Jun 2024 18:53:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RYw7HwFZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com [209.85.167.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E23922301
	for <devicetree@vger.kernel.org>; Wed,  5 Jun 2024 18:53:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717613626; cv=none; b=Fqm/7oH9MYbjOsXD8ezRWUI9VLsqlpyxFTATNq2iZmcyuFfHchXWq9Ra1DgM1InUoE2vPMmQuvb6acLYqOU6iVECaoqpXlW5MCVXzGPXa/QQCeaVpbODl/et1HGYcqgq4AeZyfKmxMbFVos503oGVp5KwDz/9jyD9RkeoxjeJSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717613626; c=relaxed/simple;
	bh=Q1HUZVz4p1ozI3U704h2eey+eiXul/YK515+3JzrWjE=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=JFgCXJ4xc/m9DSRTlhUHvUodvk7fE9wZTpSCRxf/71cAyYDFMV1mXbJCqnk6pACsY1fkAKNGqOWNiCOj2+EAcJoT2k1ou12lgvxX3LcoR8q1o6kxOqa7NClXc0ffSvniLY+WnPdVpXLqAgr1hv0krvgT38LRH8bOHOMJfJGM2p8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RYw7HwFZ; arc=none smtp.client-ip=209.85.167.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f173.google.com with SMTP id 5614622812f47-3d1fea41751so40465b6e.2
        for <devicetree@vger.kernel.org>; Wed, 05 Jun 2024 11:53:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717613624; x=1718218424; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=rkYuIXr6MTp+AP4kp9JC4PD2ibEBFF8+Uy7EKgtY1A0=;
        b=RYw7HwFZW7Wf3+lU7UhYsM7ksTEFEAg6v7T0iotOi4UMAVpc11AWpbG5cT3Z/aOATj
         HjtlKDGX3Fp/9mPMN1KgWOQq4ioSTRVpqd5eFQUTJ70uw0r2j4rwyaYQUccVPP0IT4pJ
         AhDsixlzMXR2ukPebFYl5Cy/ioFAaOLiEwLBQ8qVH2jvGwdhkpSEQF2LM/o68sE2wDgE
         cVtuPUrkifDKPcy0vXQPBhXoURRWTkA1duut2ZaVg6gwI2SzB72y/ASeRWvcfdUCZahk
         XaCEI+RJEqrLt8I4ObKPVzx4wUlnNveoSKFrRJuCwYZtgl7rC30xWz4bqUht2tumFdTx
         Mwxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717613624; x=1718218424;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rkYuIXr6MTp+AP4kp9JC4PD2ibEBFF8+Uy7EKgtY1A0=;
        b=IWQGPJBDbxwpPkTkzTxjK0CczKIC1p7aN+Rxn5LN8cGjpOkaOdAV8JjgWuJRsWydBI
         s8ge53k44Ybx5Do7svIu7/mDQLiTGC8OaF5Qy2/xY2+EMn/k3KsDWsiAci/kuR+MkXiz
         zZOV/LtiFHe4fazIncvYM7drw31Hpy8NutdQen8zWrXFh9tjdixnXAexQsu+g7sHqHxb
         /RI1m64AhhKKStJN8hiN0I6FOQeUjdiidiv9xgvKkr9ygz6n0280znxGoEaOjx/OJIGd
         2Wr2eXt91lE1AGG2QZXO4Uz1vKHeFI70Px2iuTR98C5P99Ki+VwCSw5Ir+jRBdZml67L
         YZ0w==
X-Gm-Message-State: AOJu0YwWWXRX2yHfEtC/kOpjarizMT2neB+JXHNAKjovhW/6PCFFuawK
	jSRYr+aS0/e8xzZ2dMnTslGdo1OdrL9+cHJfMiMhKbQDHjnPThFs
X-Google-Smtp-Source: AGHT+IGSoTI1pK54RCYlafymqJqjf77YgnYNdsMjkPx9ZztVUKuCkDSn2LaPF667npg1ks2E2P3h/w==
X-Received: by 2002:a05:6808:146:b0:3c8:6551:8125 with SMTP id 5614622812f47-3d20425aeb0mr3121843b6e.6.1717613623904;
        Wed, 05 Jun 2024 11:53:43 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3d20a7a37a1sm29684b6e.4.2024.06.05.11.53.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jun 2024 11:53:43 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-sunxi@lists.linux.dev
Cc: devicetree@vger.kernel.org,
	mripard@kernel.org,
	ryan@testtoast.com,
	andre.przywara@arm.com,
	samuel@sholland.org,
	jernej.skrabec@gmail.com,
	wens@csie.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 0/2] Add Anbernic RG35XX-SP
Date: Wed,  5 Jun 2024 13:53:37 -0500
Message-Id: <20240605185339.266833-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the Anbernic RG35XX-SP handheld gaming device. The
Anbernic RG35XX-SP is a clamshell device, but hardware wise is very
similar to the RG35XX-Plus. The RG35XX-SP has a lid-switch and an
external RTC that necessitate a distinct device tree.

Chris Morgan (2):
  dt-bindings: arm: sunxi: Add Anbernic RG35XXSP
  arm64: dts: allwinner: h700: Add Anbernic RG35XX-SP

 .../devicetree/bindings/arm/sunxi.yaml        |  24 ++-
 arch/arm64/boot/dts/allwinner/Makefile        |   3 +-
 .../sun50i-h700-anbernic-rg35xx-sp.dts        | 145 ++++++++++++++++++
 3 files changed, 156 insertions(+), 16 deletions(-)
 create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-sp.dts

-- 
2.34.1


