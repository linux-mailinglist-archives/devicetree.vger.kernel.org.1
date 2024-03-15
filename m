Return-Path: <devicetree+bounces-50699-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B7D0C87CC26
	for <lists+devicetree@lfdr.de>; Fri, 15 Mar 2024 12:17:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 59B6E1F21805
	for <lists+devicetree@lfdr.de>; Fri, 15 Mar 2024 11:17:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A9351A5BA;
	Fri, 15 Mar 2024 11:16:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="CggN73De"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E02691C291
	for <devicetree@vger.kernel.org>; Fri, 15 Mar 2024 11:16:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710501397; cv=none; b=PfB85jk4KwEJy7OINKr+sztdGgQJr2X1Fn6H/OD38wHBp4OZwDKQkQSyEkddoUBjtnNj1MBFXfdsCsR2rZ1RLGGXWFlFyI3+cgP7vu6gcgW/wCJr1w16UxP/S6Sv2iqrveQgdSzinnOTQl+d3yx5JjVoR0eM61P+VtAnGHFiL7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710501397; c=relaxed/simple;
	bh=YpK9B0f8PSiwV/jMDxO+BOeqJp7bjd7POHW41IxWz3M=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=d/P91arn1mgEgsr3n3RtJIJmu4WNGWWbyBc2vm+hbw/iXxl2+RRWhf7Q/TeLtonAiLCmrhzHaECX6uCSVQ6PldKou675qAUDPZY1uOZhA8pX2JQ99+6aGpWIItuj+4QIVM4WjOpVc6QJFkqxUxQiuV4NX21RRg9SBBJh/B3to44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=CggN73De; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-6e6f6825102so684254b3a.1
        for <devicetree@vger.kernel.org>; Fri, 15 Mar 2024 04:16:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1710501395; x=1711106195; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=al0RWiU4gJElSS4Z7Unyt/qe+1B4tsgOmYSta+HjBpc=;
        b=CggN73Dedi/tTO0cb+sRDWGvs/nn6XwNSddLkfZ0CAs1R3wVIzNnETtPloUmmB+ORD
         UlXdPYvBSm2k64Uj7QqbVNZoJK83255JwytNOmDrJvSXNGgfnqB8KzeaT4CrGx27SVa2
         Ul/IjisPuzWlJrAOiTMtRCNfv+46vDCBhga4A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710501395; x=1711106195;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=al0RWiU4gJElSS4Z7Unyt/qe+1B4tsgOmYSta+HjBpc=;
        b=uGTOjNdfzjaRBQEQn7yg8ZzJxGBwMXwmC9wjvc8z1N49ub1SG3eePunI91qUDSvI05
         75jSpyWI1/GVd+FMelSQ+8t0I8YCQHKpfIO++ZE+j8uC+hIooKDiqI7jUx2nrIJNQixp
         LRZ60VUOmqfpqy9ujaWV5hCgm3VF9hOGxwiwOb+0W5QbxdsXuYvD4mShQCv9+7qHBOY2
         sOyUg6BdP2kImODL1Ph5AXPhR08M/DPlKI7DreZkZpPmmN4DDxMZeBxONr7Glp7fmeJl
         8m1OMFjFUVIoPzBngJkzo3EWMxybQp6uq8QrKzID9bbtMpRriPMZMIKhmQj0Vo5PO9RF
         KSsg==
X-Forwarded-Encrypted: i=1; AJvYcCX2Od3nfqwvsb0qPQEgsFsiKIkquXW6ZngIbsE+WeKZKqFjApihxaV0QwGtkVGPS/BWT8su//D3gbfcmdu5xZkcyQD3wol3GuAStA==
X-Gm-Message-State: AOJu0YzundkMdNQ6g52XMNwPW/3/kQojAM6/l9hnubhBRELzPg/ID8RP
	erQooKoBBZMgrqLcNdj8kS6Qea45IHEBH9pScxy0cLLLs3Pau+B3DjxH7rJopw==
X-Google-Smtp-Source: AGHT+IEAdPZ814mOPF422g9xOunYnTCRZxGPQITS45msqmivfaAABFu1iB7POKJ4pYGf6WbFacC8iQ==
X-Received: by 2002:a05:6a00:2389:b0:6e6:5374:411a with SMTP id f9-20020a056a00238900b006e65374411amr4806672pfc.18.1710501395445;
        Fri, 15 Mar 2024 04:16:35 -0700 (PDT)
Received: from treapking.tpe.corp.google.com ([2401:fa00:1:10:2f9c:c00a:bf1f:e53c])
        by smtp.gmail.com with ESMTPSA id c11-20020a62e80b000000b006e6aee6807dsm3122683pfi.22.2024.03.15.04.16.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Mar 2024 04:16:35 -0700 (PDT)
From: Pin-yen Lin <treapking@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-arm-kernel@lists.infradead.org,
	Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	=?UTF-8?q?N=C3=ADcolas=20F=20=2E=20R=20=2E=20A=20=2E=20Prado?= <nfraprado@collabora.com>,
	linux-mediatek@lists.infradead.org,
	Pin-yen Lin <treapking@chromium.org>
Subject: [PATCH v2 4/4] arm64: dts: mediatek: mt8186-corsola: Update min voltage constraint for Vgpu
Date: Fri, 15 Mar 2024 19:16:05 +0800
Message-ID: <20240315111621.2263159-5-treapking@chromium.org>
X-Mailer: git-send-email 2.44.0.291.gc1ea87d7ee-goog
In-Reply-To: <20240315111621.2263159-1-treapking@chromium.org>
References: <20240315111621.2263159-1-treapking@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The requested voltage could be lower than the minimum voltage on the
GPU OPP table when the MTK Smart Voltage Scaling (SVS) driver is
enabled, so update the minimum voltage constraint from 600000 uV to
500000 uV as listed on the mt6366 datasheet.

Fixes: 8855d01fb81f ("arm64: dts: mediatek: Add MT8186 Krabby platform based Tentacruel / Tentacool")
Signed-off-by: Pin-yen Lin <treapking@chromium.org>

---

Changes in v2:
- New in v2

 arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi b/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi
index 3dea28f1d806..1807e9d6cb0e 100644
--- a/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi
@@ -1296,7 +1296,7 @@ mt6366_vgpu_reg: vgpu {
 				 * regulator coupling requirements.
 				 */
 				regulator-name = "ppvar_dvdd_vgpu";
-				regulator-min-microvolt = <600000>;
+				regulator-min-microvolt = <500000>;
 				regulator-max-microvolt = <950000>;
 				regulator-ramp-delay = <6250>;
 				regulator-enable-ramp-delay = <200>;
-- 
2.44.0.291.gc1ea87d7ee-goog


