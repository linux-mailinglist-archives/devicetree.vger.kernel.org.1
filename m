Return-Path: <devicetree+bounces-115482-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 70F249AFBF5
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 10:05:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 30AEF284DDB
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 08:05:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77A151D27A4;
	Fri, 25 Oct 2024 08:04:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Zs8wWcOH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 934EE1CB9ED
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 08:04:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729843445; cv=none; b=sz3KuKhMp7XhMI112YFcUfnZax6uPpDXooR6mkHeoVwCsl9rJ49KY6CszNrpABDIyFbISIYbY+lhBYrTudePXhRzltLW5jL37cssM7pzRvKAOrANrLoYq+6oSSkkqy6R2oe1SEqKMXJgtUVHaExn6lwRzLLb+HnCOWagebllS4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729843445; c=relaxed/simple;
	bh=MKqyrRZYWKubYCITWw8Q5TrxroLI8BPgUsq2cs2pJ68=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=aurzu7pFixWVdnF/y14M3gzVBobLV464rAxKN2d1+KNFGYtF1tNWSJlfmgzxvnW17dTdhBPq6fA0mJhez1t/qDvnGwcQbUtymeRMCKA6CQaJF2JdHUxLjRElwsZNb4mrdVtehkSxxYVTzozRgJJKCl974TzgVJhcMHfXoGrAIAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Zs8wWcOH; arc=none smtp.client-ip=209.85.210.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-71e953f4e7cso1251144b3a.3
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 01:04:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1729843443; x=1730448243; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FboZURjVUcmqOH+JZsWis9+u/grJQW0lknJr+SkmBQQ=;
        b=Zs8wWcOHh/wbG33ETLzeDo1sJbtdUm1l9JaeuNLdwKJFaNAOEIGWVU4uQFmdlxMDvC
         10MPWyFrjhZjLOCKd5fhL0YrDj1KK3kgys4AcGRG0AZ5YigtxJmD0HiCrvKph8j3bTnH
         vQtx9oWaoaWD/TOTa7smxcTN8uVcNYso3b320=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729843443; x=1730448243;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FboZURjVUcmqOH+JZsWis9+u/grJQW0lknJr+SkmBQQ=;
        b=PAM97M+qXRzGYjusbr9on8KCmabfWJQ77aDHSN82sG5TtQkPWCmnEMhgbGUS7GYKEe
         QsnCrJDBQv2EhEGH0zxXqxdtL/pcW/w3sSsu6iD5Q2wB7SoURlaTd/rutWcymAcM5vks
         z7TwLfopYUzoYAekpD3H06I9LnQuR04fUeX1duiTk9hPNpDlYW8qYfZGEZEqeRD50NLq
         mY5qdt0Z2WFB8Ih00ZbMQq1U8PN7C6DhAW3AWMu6QW5YvrmFTHxoEbp6vjXo0kipIlzJ
         CcJT1W6w+QahDaUn97eJEOpcBO9gAQXHlCz2OgagmBZU6pMVtkU2igVFs5SWSZPPaLUI
         1UxQ==
X-Gm-Message-State: AOJu0YxJPdd/OYlXiUmghC90X4tA9IbFKGXnBfOXGIwx1Gkcb9F8Fbx6
	G5AS1qnYJk4rP0MGlbVeCYbHUYmK9KxyaKXMmAhkbhpMagt3s1I1T+o274fTsQ==
X-Google-Smtp-Source: AGHT+IE6aEDXPX7OUJEeP1hZS11M8BkJO1fdRVMhfFCbU/94VFdBQ35TBYN0pnrZfslaJJDKjmK1Ug==
X-Received: by 2002:a05:6a00:84c:b0:71e:410:4764 with SMTP id d2e1a72fcca58-72030ba9e6cmr12403053b3a.8.1729843442771;
        Fri, 25 Oct 2024 01:04:02 -0700 (PDT)
Received: from yuanhsinte-p620-1.tpe.corp.google.com ([2401:fa00:1:10:5a9f:16cc:8d5a:55e5])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72057a0d025sm558120b3a.101.2024.10.25.01.03.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Oct 2024 01:04:01 -0700 (PDT)
From: Hsin-Te Yuan <yuanhsinte@chromium.org>
Date: Fri, 25 Oct 2024 16:03:50 +0800
Subject: [PATCH v2 3/4] arm64: dts: mt8183: cozmo: add i2c2's
 i2c-scl-internal-delay-ns
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241025-i2c-delay-v2-3-9be1bcaf35e0@chromium.org>
References: <20241025-i2c-delay-v2-0-9be1bcaf35e0@chromium.org>
In-Reply-To: <20241025-i2c-delay-v2-0-9be1bcaf35e0@chromium.org>
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
X-Mailer: b4 0.15-dev-2a633

From: Daolong Zhu <jg_daolongzhu@mediatek.corp-partner.google.com>

Add i2c2's i2c-scl-internal-delay-ns.

Fixes: 52e84f233459 ("arm64: dts: mt8183: Add kukui-jacuzzi-cozmo board")
Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: Daolong Zhu <jg_daolongzhu@mediatek.corp-partner.google.com>
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
2.47.0.163.g1226f6d8fa-goog


