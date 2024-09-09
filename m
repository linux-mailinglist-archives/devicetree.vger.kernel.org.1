Return-Path: <devicetree+bounces-101216-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id ACF54970FE2
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 09:32:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D8E151C2033E
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 07:32:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 707441B2529;
	Mon,  9 Sep 2024 07:29:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="MZa6ALjS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08A6D1B251B
	for <devicetree@vger.kernel.org>; Mon,  9 Sep 2024 07:29:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725866959; cv=none; b=LTOESHXlhhvtBz1M5i5DcWHXY3JJ+PsvkYwta4uZX8HByw4Mn9u0gZqWDIgRt7nmUFJGgU0YYv/sZt3pJ7gTVvKQOwZxc0ZaD+682i3emVbOKDBLQDWGsifUhJUrNj86EfiV63X75l9z+taqXly6RtimHn3dpt6+F/uByICf0Mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725866959; c=relaxed/simple;
	bh=8UibZ3uXYG2UBfk3N3nLRgW5LTyv1BfVUDlFslh7MIM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=AoBqQKxNxQ/03OpVjxkNeMMqLDMza5LtbXGIO62OPxKcBzYqAkYRzHRCXLhMoTvMCuKVs6ogFutBlI088v5q+rSH+Cpe4vmn7CG7047eb3sia89ZJ5a8XV4DNYFHzdsuiN3XZNBf/+RtPZyB46r3VUy/eUNuYDidt6SNBn8RLMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=MZa6ALjS; arc=none smtp.client-ip=209.85.215.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pg1-f176.google.com with SMTP id 41be03b00d2f7-7cd8803fe0aso2854321a12.0
        for <devicetree@vger.kernel.org>; Mon, 09 Sep 2024 00:29:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1725866957; x=1726471757; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8EbzoF2CIeQ13tOfcxQzqTx9tox0wQ/Af1PggQmUsF0=;
        b=MZa6ALjS65jB3ky8rIm1rIfqdu3x5N2UAWEU3tY22W87gRIw8EcZbHMrwH2BX9wr2h
         G+Xc559qm/iAgThUv0MSVhXucnwQJJmFuYNSyp0oeMIL0mMAb1JTYjT5Uhum6a1mUvr9
         753dGYEwAtvZUS53liRNnY1EElgSL3uNJfeJc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725866957; x=1726471757;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8EbzoF2CIeQ13tOfcxQzqTx9tox0wQ/Af1PggQmUsF0=;
        b=e0PsP8HT2B+1XpWE8AYPNUca+C4tbia42J36r0HZEMzmsVPNXnkxbSWScN9PVdD5Zv
         mGCLT5BN2T/JEoQUaXnUR29GrtPJuOur9g0NnCjDwofuWHTl/kTXeQaoaY0IjkY3fnC3
         gSJmRJXSgaJ08L0zqUb35JGKGlTrnDqVz3XG2ezbhKFT4Jkqz0TGSFiUt4/7xb233dR5
         SV/ptJful2bwvWnbfaVa3dfXLhhmm7YqKVL3iC9SCLC0pv0gG5j7otTA+0fqoLUjWyzC
         Bv57qt481Y1nEhA6EkiN10NTEkHR1j3Ysh0nfaa6XktBvznwG9p6vw/TBJS2RZfJYilv
         Ef5w==
X-Gm-Message-State: AOJu0Yz7E3828vmsouHVyuGa633rDEEcoZOPMd1F2bcB20fSYJxOPztJ
	XcgcIRD9i1tAM65C2V53fTz8z+/+ELt9YX6z1+c3qcgev4zXxFbGSjEvmBZKN00EtW9SS1c/HGo
	CdQ==
X-Google-Smtp-Source: AGHT+IFjL7b062+is93Jx29/CRZIbtK03YhVGX1Pg1wS2Fwc/CY8oz/ekfV7ybVyzECSpb0riIOWOQ==
X-Received: by 2002:a17:90b:4a46:b0:2d3:da6d:8330 with SMTP id 98e67ed59e1d1-2daffa3a743mr9135392a91.4.1725866956638;
        Mon, 09 Sep 2024 00:29:16 -0700 (PDT)
Received: from yuanhsinte.c.googlers.com (30.191.80.34.bc.googleusercontent.com. [34.80.191.30])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2db043c3c51sm3841065a91.21.2024.09.09.00.29.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Sep 2024 00:29:16 -0700 (PDT)
From: Hsin-Te Yuan <yuanhsinte@chromium.org>
Date: Mon, 09 Sep 2024 07:29:05 +0000
Subject: [PATCH 3/4] arm64: dts: mt8183: cozmo: add i2c2's
 i2c-scl-internal-delay-ns
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240909-i2c-delay-v1-3-4b406617a5f5@chromium.org>
References: <20240909-i2c-delay-v1-0-4b406617a5f5@chromium.org>
In-Reply-To: <20240909-i2c-delay-v1-0-4b406617a5f5@chromium.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Hsin-Yi Wang <hsinyi@chromium.org>, 
 Enric Balletbo i Serra <eballetbo@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Hsin-Te Yuan <yuanhsinte@chromium.org>, 
 Daolong Zhu <jg_daolongzhu@mediatek.corp-partner.google.com>
X-Mailer: b4 0.15-dev-7be4f

From: Daolong Zhu <jg_daolongzhu@mediatek.corp-partner.google.com>

Add i2c2's i2c-scl-internal-delay-ns.

Fixes: 52e84f233459 ("arm64: dts: mt8183: Add kukui-jacuzzi-cozmo board")
Signed-off-by: Hsin-Te Yuan <yuanhsinte@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-cozmo.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-cozmo.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-cozmo.dts
index f34964afe39b5353de7b17e82d14d1fba88551ab..83bbcfe620835ab6d34cd2f4c2183fbdf11d0909 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-cozmo.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-cozmo.dts
@@ -18,6 +18,8 @@ &i2c_tunnel {
 };
 
 &i2c2 {
+	i2c-scl-internal-delay-ns = <25000>;
+
 	trackpad@2c {
 		compatible = "hid-over-i2c";
 		reg = <0x2c>;

-- 
2.46.0.469.g59c65b2a67-goog


