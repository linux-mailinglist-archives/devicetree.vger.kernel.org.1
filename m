Return-Path: <devicetree+bounces-67722-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DF5B8C95ED
	for <lists+devicetree@lfdr.de>; Sun, 19 May 2024 20:44:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C13BE1C208E5
	for <lists+devicetree@lfdr.de>; Sun, 19 May 2024 18:44:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71A2E75809;
	Sun, 19 May 2024 18:42:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NeIoUCkH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8D5374C1B
	for <devicetree@vger.kernel.org>; Sun, 19 May 2024 18:42:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716144171; cv=none; b=Q87AE5RW4U4GzuW2ppik6g9sXpNxYmxuAuHR+DHchhc7SKykkDubC7J+J3/OAMzFMbL12WLEpq5jMoynFi26OO0JkIu/uTUiPHZSj5JdkZIXtDipPHlGXRLuK2UY9/VcmTcnGxiWgEhmmbSRogwbldrI8/JMXY+sEBqcONKCO7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716144171; c=relaxed/simple;
	bh=tAtKZ4eMAZIAat7ACERGaIxU5LkfrqC2mr48OZ1Too4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=BWmKCq6Iwz/mQAukzqgWPoqaU7C/Usu3cVIMBWgVQrFAZbBnYfNlq0W3Pn9b78pxejzt7t5aRXbAMR56TD+ALdGJOMDMRgD8dtY+ex3eYTr5dK/8gJIDNESJHD/AlCmPJoowz8HVu1kH0SOXHSXxDddgcL88l9RF90UYI7pSpGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NeIoUCkH; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2e564cad1f1so31629601fa.0
        for <devicetree@vger.kernel.org>; Sun, 19 May 2024 11:42:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716144168; x=1716748968; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DCQY2UwLMwXuUNNo6TcYvWSj/vr+JcFRqOkL1wG1t8o=;
        b=NeIoUCkHJ0jtyIohoI4j+FZMCSloRlhOPHgzDF9FT3ebteIRYhB/ZT0KekdWL7hIqw
         dz1P4RXo74be8TkBBt8VBhNGL28IBrVKjcxOfRtmFNk5et6IhztMGslqjG5yzfdZD2Ky
         v6ElrY1h3u/qWN2VPW9IKXSIacZ2wLurg0i1AyaQAxvXNGdNB1UDReawdajCAzXTuxgr
         LUJCxrLyauq31xjlOvONmdiYUEMgwG9O9p1LjHlHlfbqoyZwxq7VIxRkYjtHlEZAf5fo
         dOFbOyeNLwfZTwxcIAPwkOHKoM0fK60OKzZo83gJxmeZmPqswOrLotwgL/ERnsMYJbtU
         ONkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716144168; x=1716748968;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DCQY2UwLMwXuUNNo6TcYvWSj/vr+JcFRqOkL1wG1t8o=;
        b=mdow/oDZn/wP69VVBgng9g7Y00nImHfE9c3USXdx8Q3zW3O7u0eehWyerb18cKCJOt
         ubuGJMSrYmZ0m91Lot5VUigrAvR6P4RhletliuxRrWwXtuBmFSTbNNQjw8QcZq29U7cE
         EEUVCoOMYYS800BflsTcF3j9UTAwVQqGcjS8zVMx9MBZHtGJpPA2mYBRCicFBk1f6ztT
         ju/298DPbHQ2EdupwaUx4xcQ8HjgM2XkQLeN5QG0vttMmFTdiPu65LpipKa6QEFL8h0t
         HKGjHTNDcnGFXRaUAU7y5tso1gwZVQfhpCHEh1RFczfb7NsYf683CZ70KEz9zhZiSwtn
         SrIg==
X-Forwarded-Encrypted: i=1; AJvYcCWR3L0L8y5orZfv1tf6oP7UBz/xGYgIBL2pBtmmK6VZem10KBc/MbIalzB/nm1cZaN5rDCSeaVc47F7DDe+bpzT7OwtAPoqoTqu1w==
X-Gm-Message-State: AOJu0Yx/CFHK7Kadhz9I+8H7GrLm6dwanp/A8QlXv1/0MwtkIsZ1oDHW
	ioJr9GHPx204UF5lRiYiQk0DHFk8V5iFHy3KF9zClD8x3MTuy0QusXqndZRJvzE=
X-Google-Smtp-Source: AGHT+IHYPuihIXhluNHez3N+KuunvyY4tIr2+UXnoFENn1VT4VQP6VriJDbZ4RWRXYZ/YtPnfWtfrg==
X-Received: by 2002:a05:6512:39c9:b0:522:33dd:dcd9 with SMTP id 2adb3069b0e04-52233dddd7amr19396692e87.33.1716144168172;
        Sun, 19 May 2024 11:42:48 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.206.169])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-575313d97desm1789397a12.41.2024.05.19.11.42.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 May 2024 11:42:47 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Sun, 19 May 2024 20:42:23 +0200
Subject: [PATCH 8/8] arm64: dts: apm: Add dedicated syscon poweroff
 compatibles
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240519-dt-bindings-mfd-syscon-split-v1-8-aaf996e2313a@linaro.org>
References: <20240519-dt-bindings-mfd-syscon-split-v1-0-aaf996e2313a@linaro.org>
In-Reply-To: <20240519-dt-bindings-mfd-syscon-split-v1-0-aaf996e2313a@linaro.org>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Lars Povlsen <lars.povlsen@microchip.com>, 
 Steen Hegelund <Steen.Hegelund@microchip.com>, 
 Daniel Machon <daniel.machon@microchip.com>, UNGLinuxDriver@microchip.com, 
 Nishanth Menon <nm@ti.com>, Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Jiaxun Yang <jiaxun.yang@flygoat.com>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1218;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=tAtKZ4eMAZIAat7ACERGaIxU5LkfrqC2mr48OZ1Too4=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBmSkgX9SOPpNnSuOTGPtZ7tkW+pTexnue70E836
 cEAIxN6+0yJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZkpIFwAKCRDBN2bmhouD
 19O8D/9RgvRkGf482wMxtimAsqJZs01DLhPsX8MgpZLhHhdvZS+8pXsSJtMr8RgR37s/Ghi5Z3b
 GIRq951+2Tvo7qwXAag0Swg8b9Tz1+UJMcYZ5W4RztboXnT4ji7pZysMcP5c/5ACAGwQ1xxtRMp
 elXklhLNY/6GQAPVewLInWo15FY8zS3RJvO95h2HHt2RSz8ERWgdVHxlqSP7igcTJ0s8sNxXUdK
 X123rQ1t9iDKjYIyLEZ+WWur7CeG3tHOzmRcKdYBw9qi0X4/HAw74an7ZMKNonFhluX9XoZnwzt
 FbAOWj++6X9JY6YToPbW8qQIJZbNC1L8f8sSAKeDoDbFnTEAbIaztFMtmbwnPlyvKdOVkXrsFxo
 t+leHW5vgJgWcEFtU62nM+Meu3TQnjFlcm/K5AWqCK62waXbojT2O0F0WzTYu4Ett7u0W39eu5j
 F4z59+Akx2KQJYt/ZnREnnMHj2zMW73s8xceCT8apxzXYN28oLb/75vzPAFq9gIvoh6P7AxY7WG
 x28lY8X+eqY1fmNcDoCpz9RWkU+P+WrIQVQKVq+EdpvOfi0G8H5NJPn1H/xHtHkhBPFcEHfQ85k
 5vBwEkrqBmnXU4Hd7Fna0ULhrzbEG+jARNgN029Xzk8xTM+k/iu1Q+zCoGThTGosVywiBgEI/bg
 E5s1s7fwqw4hefQ==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

syscon nodes should always have dedicated compatible for full/accurate
hardware description.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/apm/apm-merlin.dts  | 2 +-
 arch/arm64/boot/dts/apm/apm-mustang.dts | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/apm/apm-merlin.dts b/arch/arm64/boot/dts/apm/apm-merlin.dts
index 6e05cf1a3df6..b1160780a2a6 100644
--- a/arch/arm64/boot/dts/apm/apm-merlin.dts
+++ b/arch/arm64/boot/dts/apm/apm-merlin.dts
@@ -32,7 +32,7 @@ button {
 	};
 
 	poweroff_mbox: poweroff_mbox@10548000 {
-		compatible = "syscon";
+		compatible = "apm,merlin-poweroff-mailbox", "syscon";
 		reg = <0x0 0x10548000 0x0 0x30>;
 	};
 
diff --git a/arch/arm64/boot/dts/apm/apm-mustang.dts b/arch/arm64/boot/dts/apm/apm-mustang.dts
index e7644cddf06f..2ef658796746 100644
--- a/arch/arm64/boot/dts/apm/apm-mustang.dts
+++ b/arch/arm64/boot/dts/apm/apm-mustang.dts
@@ -32,7 +32,7 @@ button {
 	};
 
 	poweroff_mbox: poweroff_mbox@10548000 {
-		compatible = "syscon";
+		compatible = "apm,mustang-poweroff-mailbox", "syscon";
 		reg = <0x0 0x10548000 0x0 0x30>;
 	};
 

-- 
2.43.0


