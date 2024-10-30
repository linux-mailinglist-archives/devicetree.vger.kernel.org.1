Return-Path: <devicetree+bounces-117276-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D39E9B5C27
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 08:02:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4BF0D2846E5
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 07:02:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9F991DE881;
	Wed, 30 Oct 2024 07:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="UUOhdgZ2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC2221D1309
	for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 07:02:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730271753; cv=none; b=AhYpdVdlo0T6IfbVPEBIzqNAKXI+mNepKWMLbhgISJizLSbXp6muddGNFxurrUv19/XxrFixZoCBD+V1/LjOirYeatFqCqEaw7LF5VsScl2w33roeZvcRDI6usjjqbA47siJ8KIinW3qF9rPmFI0ZnFDVq/reeCX5xaETtIEtcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730271753; c=relaxed/simple;
	bh=jwXJO78GesC1vXpD3JCaVF3h4cMBY4hU/BwWhvMga7A=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=PsTCT1xSP/DhMpPrn3XtkJUGbL+iajnp++JH8zzF8ruu6nziwe41mIg3rgF44D4rhXALpeqvIg6QfzoOU6JsklORgPuJ7a2MMVD5PoXwi/Gjv2rgzO6myGunYP7ol7jHJUSMC35PyldMaZa5IX74U/c68TH2+KcYRWt1JZPQVng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=UUOhdgZ2; arc=none smtp.client-ip=209.85.215.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pg1-f177.google.com with SMTP id 41be03b00d2f7-7ea8ecacf16so4104694a12.1
        for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 00:02:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1730271751; x=1730876551; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KknQSR+eKemNJFp2M8/mGkuIkN4Spn04GdvZ2A49qtE=;
        b=UUOhdgZ2zV6ClA8SIRw076AnlZ/dopzZQPOET91C6bvj4wyclE0Hndq5ZUc97f+y8H
         Ih0bNzYgwzQg3UmCoop0yiz+h8AJxphqDeOLRHZ6ExWVSxVr1PBc5QQr/eeDNtHnYDta
         cKWIQCkvAN7JdjGm74pDyHCBJyKacdH+tQo4w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730271751; x=1730876551;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KknQSR+eKemNJFp2M8/mGkuIkN4Spn04GdvZ2A49qtE=;
        b=WA4sksimATpnrMcFWxwnZPsl3OI94MJyARBYPalg5LQdnnv4tKRaT2OyOy5BUGGQTt
         O9XkOX/597jYwidvqZTEPyFlFmTzBVWlClsbYBubNdkfqXNCUKbYAy9hIuz8ZrLkmD9c
         ZFlKs3H4MnQx8zXvyJ4TNX1luD8OXZZcYju0e0Y/Ra2x81oBveovYhUlr+wOteN+hDha
         kgzyv1k/hlFltS+Ccg/I3a1lHdgwJtWhK5m+BI8cHbL/QL0pW5O8zbfHtXZNHH3YtIxv
         ljGdEuqxjg6Zg50yhhzjNxwdOnGjmAqJyNchTItMAqg4WdnHwJY+YvZR0usfvBIzMStn
         O5Uw==
X-Forwarded-Encrypted: i=1; AJvYcCV0vuSxFnLngCb5eNlbkyRsftr262tbWrUKQLtPlyf49wQnWsi4y8kNKQpq1CMU/kquDikOg7sxBbwc@vger.kernel.org
X-Gm-Message-State: AOJu0YyUv5/HmW4S8R/uziHRSl78pWUSGxD/tz6en4lz6xIkfqots7Pm
	ek+1O83YQ/eo7bVCOqrJB0g7/hLeIj08vVL+x0NA/hrDYl3i6St4iypRqD2ONQ==
X-Google-Smtp-Source: AGHT+IE542rBFyNruVAgVa8rHIBdj9gp4Qb/CIOnHECLZLKhZmSrZ/HsHZquCKjl9UnkfF9hM4mmVA==
X-Received: by 2002:a05:6a21:1706:b0:1d2:eb91:c0c1 with SMTP id adf61e73a8af0-1d9a851d42cmr19985216637.42.1730271750941;
        Wed, 30 Oct 2024 00:02:30 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:d1f3:aa64:657f:d8a8])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72057931a94sm8635848b3a.68.2024.10.30.00.02.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Oct 2024 00:02:30 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/4] arm64: dts: mediatek: mt8183-kukui-jacuzzi: Drop pp3300_panel voltage settings
Date: Wed, 30 Oct 2024 15:02:20 +0800
Message-ID: <20241030070224.1006331-2-wenst@chromium.org>
X-Mailer: git-send-email 2.47.0.163.g1226f6d8fa-goog
In-Reply-To: <20241030070224.1006331-1-wenst@chromium.org>
References: <20241030070224.1006331-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The pp3300_panel fixed regulator is just a load switch. It does not have
any regulating capabilities. Thus having voltage constraints on it is
wrong.

Remove the voltage constraints.

Fixes: cabc71b08eb5 ("arm64: dts: mt8183: Add kukui-jacuzzi-damu board")
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi
index 783c333107bc..7bbafe926558 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi
@@ -35,8 +35,6 @@ pp1800_mipibrdg: pp1800-mipibrdg {
 	pp3300_panel: pp3300-panel {
 		compatible = "regulator-fixed";
 		regulator-name = "pp3300_panel";
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pp3300_panel_pins>;
 
-- 
2.47.0.163.g1226f6d8fa-goog


