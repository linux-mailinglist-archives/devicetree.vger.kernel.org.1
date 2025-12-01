Return-Path: <devicetree+bounces-243218-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 898B9C957A9
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 02:16:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id BAB6C4E0F7F
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 01:16:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C0B62AD00;
	Mon,  1 Dec 2025 01:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DKRO9QXr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3A72381AF
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 01:15:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764551754; cv=none; b=TnIshyhR7mA2Xuf7rclYtizOzBIYJ0j7t1qATo5K1NHAoTosHZJIk+gS5l+0FAEKwhMZnhcOfg1lHRjDG0GkgQDCJBKiwko9Xq181LP43Ssw+JRNrb+UL7EenUNhcCiUhde1UeEcV0yQ+fWGlRCyqyllygOl4DXLEak1SgWRgaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764551754; c=relaxed/simple;
	bh=8fxORl1I8YAECASFsj9/Ws4g18jKmbkYYWVQiXzVhnA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=IgnniFZf8dkqzqdPntXYZNFF71++xU+iw9M9fXPbMxKlysQb3nP0Y0+MYYXNGtDtH48ko8a0UGL+1lKN3gYDmNUJa6479EK389/DdC7J1TQj5xlW/EkuwzYtowPpVj6MZrCdaFwzeFlNDkkVuK5WCuJBSFAaP73axHoJSljZW/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DKRO9QXr; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-477a2ab455fso38394885e9.3
        for <devicetree@vger.kernel.org>; Sun, 30 Nov 2025 17:15:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764551751; x=1765156551; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XHyZ6FAtJU5qO1dJcRGwRE2nReT0pakALIINJQlT6dM=;
        b=DKRO9QXrpzp8z0JDS36Ax/pkIudX7mwe39x/bOlEZNerBn1nyOJi+pNNMIiJzPZt0I
         uTXDqvA/slPcpaNjl+3qOCwK2Y1aE+5lb4H1ZSSN0VIzfrHoqI4NDzrjrdF1qN54Mqy/
         s6eT+9RO6SvD57fjZCnxGFYl3Ua7SwiiOr3hCBDZhqhNrzKBXzO5cGAShbTgPhhfszdK
         nITLpL/CrC1r6BQHm8CeIfCh0mpea81enTOzyMNaC0TsItwmF0GOAV315HO2EXvG8i8J
         wFLe7H2OdRYoB9gOGrIFjBkvLcLRKVUNUYBSTr7zVDm1gV7DZ2GcCoA77glPi0xmZ1Rw
         Sm1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764551751; x=1765156551;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=XHyZ6FAtJU5qO1dJcRGwRE2nReT0pakALIINJQlT6dM=;
        b=KVxvEI0ChSjusiS7icNq8R8dUjiVow3N+KPUsthy800SBKn+CRnGWe2DU9THRVTVsV
         NhgUAqRkgq+Sv8modMkV2DRbs7SyflXmUQ53IHjTylN/gHoaPWZqy2DDzlTnNa0NcNfd
         TAv7x43nPlYeduWisajyaAVH1besyyrglXv+4PgJ1B1T6IVOgrVjB4RHSYzISLM0w9nn
         UGb8nulfIvAqSm9eajbINmYYTXaQg2TREWp6Ak5ZRYzGq4XqIpca7Tfj0qVpz5EoQm6W
         zGiCreDoYj27EyKTVdv+uMpny2OG2edevrM31PQniW32HeZ0VaOanbTv0SesCKyO5EzQ
         9UTA==
X-Forwarded-Encrypted: i=1; AJvYcCXqhEDJ8eKWpsxrpW16DrQMO/3lRPbG2qcngKSbZmFPyaSUUiMCBbf/8t2clNcr/tzs5GFFZZt+vI9t@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/0WyN2JRWlQ0m7XzCDkrYc8Q5nzm0qKC6wjQbNC5xxOtaxlp2
	69jEjN9fxeQwszJecDOBHac06vO/RzuPnTAMQhB2JcHLrBgIOd8pxbvi
X-Gm-Gg: ASbGncsGVV3uc/+o82PggPwqu8DcYrRh+Hu3xrTzewC8og/uDA1U7jo7DvcI89GOskF
	sJtzOAu3XyXXtwZwZ6LP64po9iBcJy6rFRaB3IOesyW2b+4i9QHhsWzFdbSpofEVGv8FsBNlHUo
	l8c21qom0G40pTcAQ+k+SUWCurlIdMp5s+UF8E3XMuSxfSEhtHwWO1lFPSw+1djguB8y8MXvZBP
	Fu4Pqz5EQCwKHrYdwTmygfAiFh/DsPwRBrY6CYlGD69w1HPuF3sx2Agc4FDyPQuOUgBhnTJ5lZy
	k3+8r9axz4wJpsr5RI+cVk5HmMmUnReWYDTj9oEHB1NKya/loyzdJCobx/FTWqMgepZUVkbxewZ
	PSHM1LmcyszeENluABnDeFVyA3yiMCMB2pwe3qrNkF2saQhwwViuBpE/NJwDmlq93Tmwo8YTsSr
	nMSb6XkPIOFzAaImOhycx6zR6zq+WgLMnd/A9T9yHGslwZeHD+PKjEGg==
X-Google-Smtp-Source: AGHT+IEpYYe3gL2BsaA1HL6btRIHeyw309tXCm0NAEh0Lw3rFgKYmMUnXtp740D13O3MvOY049xzmQ==
X-Received: by 2002:a05:600c:3551:b0:471:131f:85b7 with SMTP id 5b1f17b1804b1-477c10e2bc2mr418877175e9.15.1764551750742;
        Sun, 30 Nov 2025 17:15:50 -0800 (PST)
Received: from alarm (92.40.200.0.threembb.co.uk. [92.40.200.0])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-479110b6da9sm216152305e9.0.2025.11.30.17.15.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Nov 2025 17:15:50 -0800 (PST)
From: Dale Whinham <daleyo@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: =?UTF-8?q?J=C3=A9r=C3=B4me=20de=20Bretagne?= <jerome.debretagne@gmail.com>,
	Dale Whinham <daleyo@gmail.com>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/8] dt-bindings: arm: qcom: Document Microsoft Surface Pro 11
Date: Mon,  1 Dec 2025 01:14:42 +0000
Message-ID: <20251201011457.17422-2-daleyo@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251201011457.17422-1-daleyo@gmail.com>
References: <20251201011457.17422-1-daleyo@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Jérôme de Bretagne <jerome.debretagne@gmail.com>

Add the compatible for the Qualcomm X1-based Microsoft Surface Pro 11,
using its Denali codename.

Signed-off-by: Jérôme de Bretagne <jerome.debretagne@gmail.com>
Signed-off-by: Dale Whinham <daleyo@gmail.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 18b5ed044f9f..e35e7764dd8b 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -1069,6 +1069,7 @@ properties:
               - hp,elitebook-ultra-g1q
               - hp,omnibook-x14
               - lenovo,yoga-slim7x
+              - microsoft,denali
               - microsoft,romulus13
               - microsoft,romulus15
               - qcom,x1e80100-crd
-- 
2.52.0


