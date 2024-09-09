Return-Path: <devicetree+bounces-101366-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 71FB6971662
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 13:18:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9C8AE1C22BE5
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 11:18:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3944D1B6523;
	Mon,  9 Sep 2024 11:17:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="fW4ivqKn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEEC11B5EC4
	for <devicetree@vger.kernel.org>; Mon,  9 Sep 2024 11:17:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725880675; cv=none; b=An0Ml6JdKFOz5/WR+Wfr1HnL5lvza3YACE5nUYieVqeMQmfxz/lWd/kQqeMM81HoWXF2gUpvAdI1C6YtOnOI9OeVPLMNJlREFcUnHr0UhO/HTMdmGXgSjAtUhg7w8D8Uql2Y8o1l6xse/Vy6ha2BFaBntPIXD0m+dzjY/67EvAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725880675; c=relaxed/simple;
	bh=0YCgwRc4vIhMJ9igxdzG1axcp5ZQTpIeozNXDLWlA3s=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=W2tDE2wrhB2Hhw8QBhRBOH+GjfrUWLLMZOwCfjjmy6FD7wQ3OaM9zuNoFWUL72F5PDc6WaNHkawcwA0RzXZ/0iDHkW+IUPMdqaoKZ/YYCXmrcth8pzeAUF+tja9F3PvfLh1e+yk3Gch27IXEQiO/Q6WHFe2NBEA5bqkEnGkn2T4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=fW4ivqKn; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-2057835395aso36957805ad.3
        for <devicetree@vger.kernel.org>; Mon, 09 Sep 2024 04:17:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1725880673; x=1726485473; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KFcYjNN1qXzDlnBkl6i0qfOJ7Ms9qe82BWNfSpUlHsY=;
        b=fW4ivqKnDD9rTJauAopVFIElbtMF2Xuvc0BrYpQwyq5Ti1IMHqPhbN60RVwQZZGMQ3
         bR/l9YZs3mEliAZ78tiba40uNfcXQK4/rlzX7BZMQdBHkFoGPh1RNcJi4THZ3tU02Hnm
         J2oXDwo4Z1jMtUk0CyPU9+Hl0wgrpLeMk3mzA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725880673; x=1726485473;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KFcYjNN1qXzDlnBkl6i0qfOJ7Ms9qe82BWNfSpUlHsY=;
        b=YYdJwpMTLy/c1nqTnsndSV4mvtne2MbaaqIKMq2ykvkVqNhQtTR0vX+vz1qr4RYFfB
         bpRFl0imxaG8+KKX6QZFhMzd+75f0vf8loe+peWQFw0bBr6iCZDhR9B4vsn0RzvZjSds
         KRC8cn7OvroUOLDHn5or3u1VLny0B/La+2G3kyuNp1RIgNNixp0trFlS9NHKUB8XOIUo
         0vo640s7cyVbLgRkNdRIWCFanWR0lazTdtzV8Wfg5fr4uzoYBZfXFFSiOXIj2m+ulaz1
         OPbZG85Ua5u1UJZo49YOf49jrJriYf9ZZaq4koLcIbllmuwbj8fO8/2hWtdZo7yLzwlK
         G3cQ==
X-Forwarded-Encrypted: i=1; AJvYcCUykb8WJmp2my6PqAf3/VVbYzNF1/IHm/HXxboOpf7QZxxdkhICqg0gttAXeV/pE7mlUUfa0LcFVeiR@vger.kernel.org
X-Gm-Message-State: AOJu0YzPPiuBb2F46WZRTmsBcel9PDKdJVltPoAb8YnEQFlkmC/qJBBO
	3gI2dd00ALVZ5JMMfx8rNlXVjLIdZsusB/AkfKS/2KhbX9mXlF4kTo9WxARabQ==
X-Google-Smtp-Source: AGHT+IGW/m/QWYy+K8SbOWl6PqefCafd3OQvK1UrzaePRrUeDkDzlOR+CjxwO5NOu5/gsy/3FH/PBw==
X-Received: by 2002:a17:903:22c4:b0:206:adc8:2dcb with SMTP id d9443c01a7336-2070a537840mr96366815ad.25.1725880673325;
        Mon, 09 Sep 2024 04:17:53 -0700 (PDT)
Received: from fshao-p620.tpe.corp.google.com ([2401:fa00:1:10:6647:6d5f:dd48:8f5c])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20710f1dc55sm32039745ad.186.2024.09.09.04.17.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Sep 2024 04:17:52 -0700 (PDT)
From: Fei Shao <fshao@chromium.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Matthias Brugger <matthias.bgg@gmail.com>
Cc: Fei Shao <fshao@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH 02/13] arm64: dts: mediatek: mt8188: Specify CPU big core cluster
Date: Mon,  9 Sep 2024 19:14:15 +0800
Message-ID: <20240909111535.528624-3-fshao@chromium.org>
X-Mailer: git-send-email 2.46.0.469.g59c65b2a67-goog
In-Reply-To: <20240909111535.528624-1-fshao@chromium.org>
References: <20240909111535.528624-1-fshao@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The MT8188 SoC features two CPU clusters: one with 6 little A55 cores,
and the other with 2 big A78 cores.

Update the CPU topology to reflect the actual hardware configurations.

Signed-off-by: Fei Shao <fshao@chromium.org>
---

 arch/arm64/boot/dts/mediatek/mt8188.dtsi | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8188.dtsi b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
index cdd2fe14effa..788dfb5484bd 100644
--- a/arch/arm64/boot/dts/mediatek/mt8188.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
@@ -203,12 +203,14 @@ core4 {
 				core5 {
 					cpu = <&cpu5>;
 				};
+			};
 
-				core6 {
+			cluster1 {
+				core0 {
 					cpu = <&cpu6>;
 				};
 
-				core7 {
+				core1 {
 					cpu = <&cpu7>;
 				};
 			};
-- 
2.46.0.469.g59c65b2a67-goog


