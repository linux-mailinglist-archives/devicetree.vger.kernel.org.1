Return-Path: <devicetree+bounces-102061-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A453C975596
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 16:35:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2C703B22237
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 14:35:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DFD11A3A88;
	Wed, 11 Sep 2024 14:35:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="ClJSpsz4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com [209.85.167.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84ADA1A3049
	for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 14:35:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726065313; cv=none; b=Vcn6PgPF5QmahW0U0lirdAEBWkGAXMY1OD4jsPxmO881OBSs+jVJII4eIweoIuFIKqDNE9/3zQQeLWDUdm6lc3bvRfz0iGH+HyZnWtgjGLYSi+2glOLdhY3iBGZkOgwoauI3EVPbdYcgxc44hTnqpOy84EJbynCW3vOJ4MoLMlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726065313; c=relaxed/simple;
	bh=r9BppIE7R66P1TIPMWs++sO3aD+nAwDYSw3lqZE0RcM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=B7Q2Ztd+nSPdBEAVEQqThGrlL9O0N5zTWMFxYkWsJ3JTbMq0vwlHqtWkCJu8nVVsoF3aOEAUJ1a9B+HhSbYoqb53mOU5+dJikc3997pctIg/bplHxFNxy/310hTZ8FOc7OskIvs5ZX18tLs0e5PWs6tbx0dfmwlz1hq88adjgzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=ClJSpsz4; arc=none smtp.client-ip=209.85.167.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-oi1-f178.google.com with SMTP id 5614622812f47-3e049185cfeso1273657b6e.1
        for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 07:35:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1726065311; x=1726670111; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gnJ313n4mu2c3Gv27Gu48uhKalN/G5CTdU7jzWSbSxk=;
        b=ClJSpsz4iCAbOPqTTGo/j8/4xLR8cnuCvI7MS+oYQTYsIx7vdBFtohn1/sLsmWakeT
         /XljqwWB9I9VBZXuamHpGiWcbFnZnfzykooqQynqysOuERoTdlCjy0w4yC5JFwq3AaKi
         noQhvSjYZZ8zb5/2WH2H2GAb33Va9FwdQ2fkY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726065311; x=1726670111;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gnJ313n4mu2c3Gv27Gu48uhKalN/G5CTdU7jzWSbSxk=;
        b=K7zK6jkuzxX/FLdRLrT6/85fiAJw3mTnmPEOwAw/dMG9fNqvbdeNX028cZx3qK8QaI
         ljeQJA8fTZCJdcXnOmJX9LC4JSS/J/3FNnyT47ft3roi9s297IZSvv+7xJoIksCUP6KK
         9OoOqGi83kRhQcHfWYMtNK5/s/OW38igdPGUgJGM+kiRveBFhHWovdPqWZGASFU4xkOD
         ufhQNLGAryqSisarpbKR3HI/wm5yyA5SkGHJCSnQ9keoBG7hHQVFgeUUPUFfwMRidtcs
         IISXYoc36EsBPhaJQ41Zn87/btbrxTpgpYHNFmUC6aQNirv3wgMDphfBNJxOJzaT4jKN
         BW7Q==
X-Forwarded-Encrypted: i=1; AJvYcCULrQNakHcikYgLKoRMZwhl7Ixin5ntLNYIqFC9TCBIscY6JOeQB+nZ1plMGF0Ab3/JsiuxWBcy32gr@vger.kernel.org
X-Gm-Message-State: AOJu0Yzf+kKwNIAZ9Ebv12ZZz3p7IBIp76jqUuNeFzJduwisjmCzzzNZ
	JeQKDnhvMXfhoUxnapNSbwIPJezrE+oP+oaLj2Wulee7fpALfZ332Yl7Z5KgRg==
X-Google-Smtp-Source: AGHT+IFMamFHGmhxPFHOGWER3aFhQ1jLAPCLcwDI6yIOXvYykC7XUTDUyt75MOdeg3LnVxx5oP82RA==
X-Received: by 2002:a05:6808:14c7:b0:3e0:3dd9:9053 with SMTP id 5614622812f47-3e03dd994bemr10549858b6e.11.1726065311408;
        Wed, 11 Sep 2024 07:35:11 -0700 (PDT)
Received: from fshao-p620.tpe.corp.google.com ([2401:fa00:1:10:102f:d738:6069:fd4b])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7db1fbb5901sm46620a12.24.2024.09.11.07.35.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Sep 2024 07:35:11 -0700 (PDT)
From: Fei Shao <fshao@chromium.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Matthias Brugger <matthias.bgg@gmail.com>
Cc: Fei Shao <fshao@chromium.org>,
	Stephen Boyd <sboyd@kernel.org>,
	"Rob Herring (Arm)" <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH v3 1/8] dt-bindings: spmi: spmi-mtk-pmif: Add compatible for MT8188
Date: Wed, 11 Sep 2024 22:33:54 +0800
Message-ID: <20240911143429.850071-2-fshao@chromium.org>
X-Mailer: git-send-email 2.46.0.598.g6f2099f65c-goog
In-Reply-To: <20240911143429.850071-1-fshao@chromium.org>
References: <20240911143429.850071-1-fshao@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add compatible string for the SPMI block on MT8188 SoC, which is
compatible with the one used on MT8195.

Acked-by: Stephen Boyd <sboyd@kernel.org>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: Fei Shao <fshao@chromium.org>
---

(no changes since v1)

 Documentation/devicetree/bindings/spmi/mtk,spmi-mtk-pmif.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/spmi/mtk,spmi-mtk-pmif.yaml b/Documentation/devicetree/bindings/spmi/mtk,spmi-mtk-pmif.yaml
index ac99883a3f29..7f0be0ac644a 100644
--- a/Documentation/devicetree/bindings/spmi/mtk,spmi-mtk-pmif.yaml
+++ b/Documentation/devicetree/bindings/spmi/mtk,spmi-mtk-pmif.yaml
@@ -25,6 +25,7 @@ properties:
       - items:
           - enum:
               - mediatek,mt8186-spmi
+              - mediatek,mt8188-spmi
           - const: mediatek,mt8195-spmi
 
   reg:
-- 
2.46.0.598.g6f2099f65c-goog


