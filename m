Return-Path: <devicetree+bounces-151570-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C37E4A463CF
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 15:53:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 39ABC3B729F
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 14:51:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F0C92253A1;
	Wed, 26 Feb 2025 14:51:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nJn4NZlH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD2CB223329
	for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 14:51:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740581472; cv=none; b=R1bPY2/tyP0c3L57sb0XkvjCswctxpEZSvFEeVoYEBSPNgn6B4blsLjJpB7AzM8aaBNjeEehiEdB1/qlANn4id0XwtFsvrz71gRd0lQJSQmJ/08/eO1feklcFVivBzthpy0yo3bTn3hp0coBtU25J86ag22ArtuUnkCjBLevi1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740581472; c=relaxed/simple;
	bh=piZ8Qx7Zly2LRu7vla4X/tFQmM9QLWzUUZoYM5vZihY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=MAzv8BOHCbNZA//hSAQMVN7Qvse/t1vr/cARZhPDCuVjc+S5L+tSbjs9Ld7wqy7Z4NavLI6DuerQqUQJvc1Izlfb9IpGdeN8C3Eg295uUlO8TYk3sdp6E028i53wcCoR4imogr7NLmeYiUmUfYiN8Eo/C6cBrdSRtjS+1yYG73E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nJn4NZlH; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-5ded500589aso1293721a12.0
        for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 06:51:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740581467; x=1741186267; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fPL5OtvPOd0OiAnfy72yXUM/L5nYTRUqyQwYMjGIY3I=;
        b=nJn4NZlH/ffOdqXN9qH2kkkxc4CzCN/uTLvpSzOD6xNxgFckwyxBUScL7ey7tH6rSN
         792Xz/uB9h2IU8FLgq4zfrrrjIkxEVpOrpcRkVZuaJAvIki8snyKnvmelehOHnJm6JJF
         81MM8QStl2QJ+oGRds9/91sxXEJb6K7Zq/lyWd2BpXA4eD7EjWJ/AbB9dCUTXYFbqc/j
         0xpBQw5OQq6Yhd9Pf1yD8i1IVX9WdZIpZlRR7WoY4Sgj8BmrMzWVYfodDSE+LmzTe+1/
         XlrxPCnCUQidfprdquLnmrS5hS15BBRqvmyCztt6s8kVBlzXQlJ6JDG5+wVkv0opLdSv
         C7ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740581467; x=1741186267;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fPL5OtvPOd0OiAnfy72yXUM/L5nYTRUqyQwYMjGIY3I=;
        b=pN2DV/DVE91D1SIA+tlJWpLouTbRz8bd6NKxKkQ/vbWdA/rZ3oztasVUg1360kIM8s
         9W0bcU3g2GSzE+RYHZGpIF/XLlgM9/9g3Mi0o9ijt041xlXc3E9FkUE0gB58CPYMWWDI
         VFLQpnhIL3oWnIdDBgh5FL+GLnYFw14LBjhhjjL8SpXh9pTrpEZvckmxCSw4yroPhdxa
         Th/xOK68DQ20n66SQOrG5+aHVIoBZvvaQOhni3BPBYRnFteqEWvW/BFAs05BaIavzYlp
         k8dTFvvFyYnRlywW/P1XhweKK87rh389lvH6ctimbdWGXUnI/rjba6bLGt+6jMRRag0Q
         QtPw==
X-Forwarded-Encrypted: i=1; AJvYcCUW5qEYMpfkiU92/vC2LvV8/NXLX5m91GhCBhDWOh5NNJR0gaOhdGnp35/YZ6d/cnf6aSRzbW+B84Ix@vger.kernel.org
X-Gm-Message-State: AOJu0YxCzjB9L530Tru/0TFbHwKIYnQ/7upsYYZ5Y2KrsP/m+SxbnMR0
	7BCGgZseKjkBUC7kJlwee0PPT1ypWq8zXPGvpQnhk0uNN/c0XVeIuPUgURL4+Bc=
X-Gm-Gg: ASbGncthvUKxJVUT1QY2ZgS19TXluSrI/vKmUxkmE+uLuZrf70qu/amrY51xHoSXkz6
	vUNZfJFJ6COhZ1HQDcznZR6dw7tmlYzfaV9rXBfvZBgzW6Eyw0yKjjIk0EvyJ+fzDOsvtfs5BlZ
	SkgHonaCbtU6YoavploMI7uLlP6JxM4uSMEEsLI++RXEJXglFF6/E1YHrnV3zhwATWwSwQeY1xH
	zCCqYT5JKW6RAwRjui0eizCOQI2v/LOgvpCyt4d1MStatCIU+F5Htm7tj7Ixpmjy9dRaJe/XRT0
	UC2SAc5Ixfp71xuOCHbp0dSzc7WoshxJN5cMO5Ba/0fNiVOuTzFLDU7Nng4GMQrsDTtlLxybLJG
	lKA==
X-Google-Smtp-Source: AGHT+IEblvH9C+/IxOlb268xBLoBJ6CHeZV4hc+SEnuQVt9gsMb7Ys0EDvzEpZU/6FgDLvXxyTLMng==
X-Received: by 2002:a17:906:2453:b0:abe:f613:bcff with SMTP id a640c23a62f3a-abef613bd71mr115534566b.0.1740581467102;
        Wed, 26 Feb 2025 06:51:07 -0800 (PST)
Received: from krzk-bin.. (5-226-109-132.static.ip.netia.com.pl. [5.226.109.132])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abed2054d9fsm339110866b.147.2025.02.26.06.51.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Feb 2025 06:51:06 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Mathieu Poirier <mathieu.poirier@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-remoteproc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2] dt-bindings: remoteproc: qcom,sm6115-pas: Use recommended MBN firmware format in DTS example
Date: Wed, 26 Feb 2025 15:51:03 +0100
Message-ID: <20250226145103.10839-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

All Qualcomm firmwares uploaded to linux-firmware are in MBN format,
instead of split MDT.  No functional changes, just correct the DTS
example so people will not rely on unaccepted files.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/remoteproc/qcom,sm6115-pas.yaml         | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sm6115-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sm6115-pas.yaml
index 059cb87b4d6c..eeb6a8aafeb9 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,sm6115-pas.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,sm6115-pas.yaml
@@ -127,7 +127,7 @@ examples:
         clocks = <&rpmcc RPM_SMD_XO_CLK_SRC>;
         clock-names = "xo";
 
-        firmware-name = "qcom/sm6115/adsp.mdt";
+        firmware-name = "qcom/sm6115/adsp.mbn";
 
         interrupts-extended = <&intc GIC_SPI 282 IRQ_TYPE_EDGE_RISING>,
                               <&adsp_smp2p_in 0 IRQ_TYPE_EDGE_RISING>,
-- 
2.43.0


