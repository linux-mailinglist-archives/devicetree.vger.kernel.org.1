Return-Path: <devicetree+bounces-194445-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 116B1AFE3EE
	for <lists+devicetree@lfdr.de>; Wed,  9 Jul 2025 11:19:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 67C741C2162B
	for <lists+devicetree@lfdr.de>; Wed,  9 Jul 2025 09:19:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91F8D285CA3;
	Wed,  9 Jul 2025 09:18:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="WkMktpap"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37249284B3F
	for <devicetree@vger.kernel.org>; Wed,  9 Jul 2025 09:18:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752052727; cv=none; b=DeQB8FoHe+DkgSLFt73I/ikWC/QOSo5eqfaavLkyQkF7drQteHcPXZIhjsFW9hs490K1ljYL0gyMOyfJUbyq+QCGsA1g5A3ilpqZzY6UW5z9hL2jH+g6Q4zCaPGi0FSrFbjtjokjhyNRAERs3mS5ZNnham2ShFir2AYkrSve35U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752052727; c=relaxed/simple;
	bh=7JJoxQwx+4/wfRhr6BUnD92Rt+QxpRRv67tdCjuoJ3o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=KJ6aFzA9DkMHDdtnbFFS9Ys+iTto2mIhyBcPMhgIJFVyyGi+0a4U8vD9KgafNf65PAoMf6l8HEeOGE+2f7RXaFHg8l4fbCFk4Arla8v6P1kKXVsFHRMp9y09/vvoR4xnzT/RaPDOKj7X5ESbY4AjE4DjeT5FcrMu6LrYP6uzXcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=WkMktpap; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-ae0b2ead33cso134245966b.0
        for <devicetree@vger.kernel.org>; Wed, 09 Jul 2025 02:18:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1752052723; x=1752657523; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KtyDxcaqf+W6rW1o4o1i13PWl3ydZ1ok9YquBu8um3Q=;
        b=WkMktpaptbkQiclgmBkddw6afxQXm1IZuxPDIGHC+Mkykq1l8d1si5novmawXmXP1a
         VpDihgpCJyC2Cl1R5subZPqGplDLDE1zxmByQOOpbFZk3H/aRqbRqzDluCYywL2ibOIM
         2Y9KdWPZ7Ts0jqrTda5NzdhMUdq1rTRDoTCqPlRQJjCLgASCA18XbQtlVJVDir3KEdMd
         uTwwcPPTOoCY6yT2E8+8iougRjx4bn/TzA+wqMXSB9gs1UwcMvzWPL0CarFyyLudnhyb
         4f7WMHxQNqwu8toWwbdPx6+O9S6KVu4Prl+X5YpnT+DAtbYVwYLFgh+GSqoiOPKbZxOh
         aAfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752052723; x=1752657523;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KtyDxcaqf+W6rW1o4o1i13PWl3ydZ1ok9YquBu8um3Q=;
        b=i4e2WASj/YYxMDCv1SmOzrjdab1Xnf9ClKo4BldUq8KLkMvAqKnKV8X6L66SBUrCiO
         w5Kp3DUrMWx6Y71C9KcuqDfP4Z3ZwTSza+nRy3Z54PQXrT6Nlnvj/9apjrjKJyifABAE
         /jo7DOynuQDM3NluOwm3Xs1N+rwMqOW7FfZ9dFFAjZyZZ67HOq4gIFHwvr3H4laQ8vKf
         kzRG55PhUzdDjN/H5Y+/dRWt4wqfberkn9QETqLfdd3cN5pZ8MOywvBMWQBQLKd9KrUV
         2jJPj33IOYevOPNo+NEfXW6NS/Ha5aAPDhP7YXgs7cNyyzhh+sM+YnCTRtHk2lzcwUtn
         TLoQ==
X-Forwarded-Encrypted: i=1; AJvYcCWjkX7BwsFeOlTIClvT+9YXdqpdPhu6Mk4oWHofVNBq+S/nYY1cPP8vtC7G6BK3ROGP107ynHF+QPvu@vger.kernel.org
X-Gm-Message-State: AOJu0YyKOZc5ekLI1xQa5+eSkHs77YwCi8uvaCXGgT6uMp28cXAc9G3Z
	qa78MO1NUx6XmDHLGUV4v22fzgWtJS4MIu0i9VYQSeISrgAdrnUKs/0VAU/3hIfnQAs=
X-Gm-Gg: ASbGnct2faZSg3Q3ZCBFh2lMA/mb3dAsbSkZ8+MAIfYzOaS9xQSRjQAWWKX+70CHiqO
	RUB4Gpxqc/9eXroMdkv4FMKTCvy3F6pdcOb9eAGOYdrHgIHLBjRPF7ipqcztaFf5iF8wgYBhwuG
	+9DaMZtkBbzG5sRsgh8eZC1akTJrqVDdDYb+3P+3nuc9DjZpAvh724kA3WAOKGz90gxwxT8GgJ4
	WkwJLicGXKM3uFuMvi5tSeoqxnZY8VjeUSTPMAcPoNTMb535E7nOumei6JW1t+MwdvJVPrGdbWU
	EHTwip0jzylrV32iarS6DeeU8Zi4N/LlqAyqRwlRR9rw2eXb1WkqY/9YAwHImD+WmlFEdyiwpYG
	LcSM4Hh3O6GScYoT5YKu2z7ie0gqdKtqi
X-Google-Smtp-Source: AGHT+IFjTub1n0rD6n3C//VfI0DUfJzgzG0dPyTmQDEg3WymTFqbXYGq9le/+InO8pAn1caBoGUS2g==
X-Received: by 2002:a17:907:6029:b0:ae0:a7a1:593c with SMTP id a640c23a62f3a-ae6b2721112mr451588566b.25.1752052723357;
        Wed, 09 Jul 2025 02:18:43 -0700 (PDT)
Received: from otso.local (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae3f6b5e737sm1060116866b.142.2025.07.09.02.18.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Jul 2025 02:18:43 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 09 Jul 2025 11:18:16 +0200
Subject: [PATCH v2 2/4] dt-bindings: phy: qcom,snps-eusb2: document the
 Milos Synopsys eUSB2 PHY
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250709-sm7635-eusb-phy-v2-2-4790eeee7ae0@fairphone.com>
References: <20250709-sm7635-eusb-phy-v2-0-4790eeee7ae0@fairphone.com>
In-Reply-To: <20250709-sm7635-eusb-phy-v2-0-4790eeee7ae0@fairphone.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Abel Vesa <abel.vesa@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752052719; l=906;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=7JJoxQwx+4/wfRhr6BUnD92Rt+QxpRRv67tdCjuoJ3o=;
 b=oqiJgUa+pEZRn08K3xP+dwnnlVdD43KZEv90EWs1Nrv4/EhFmjFjk3Ol3Z2ZY5J0FzMl9SErh
 Br1G8yHy40UB4v66KWr2gkRj2YnN84GLBloqxJIe/DNzop3jd8tCHDK
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Document the Synopsys eUSB2 PHY on the Milos SoC by using the SM8550 as
fallback.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
index 142b3c8839d62d91377061ade3a7c400eb970609..854f70af0a6c1ff93615fa8dc1031b4c1ecc2e71 100644
--- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
@@ -17,6 +17,7 @@ properties:
     oneOf:
       - items:
           - enum:
+              - qcom,milos-snps-eusb2-phy
               - qcom,sar2130p-snps-eusb2-phy
               - qcom,sdx75-snps-eusb2-phy
               - qcom,sm8650-snps-eusb2-phy

-- 
2.50.0


