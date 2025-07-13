Return-Path: <devicetree+bounces-195794-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 76FA2B03104
	for <lists+devicetree@lfdr.de>; Sun, 13 Jul 2025 14:46:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 839C1189E238
	for <lists+devicetree@lfdr.de>; Sun, 13 Jul 2025 12:47:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE82C1C3306;
	Sun, 13 Jul 2025 12:46:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WBuaHjNm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 054FF1DA23
	for <devicetree@vger.kernel.org>; Sun, 13 Jul 2025 12:46:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752410808; cv=none; b=pA87WqPgIkWRZy3R804jEN8Mfh0IuFocwRgmcECeXsGKDCcFX7kUbWBTRvkfgAwrTwVMndqEAp1AanLCmlXvlEtg7P1cN+oPs9Q7whhbDcsiA2OgWdZLkynVWj0lylkMtjtPr2aZUaOmEqpCixmge5Nos1UYZMydFgedpzl6tfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752410808; c=relaxed/simple;
	bh=CTLQ1hf8YF/BxJ03zAJvfKWuzlRvoivCAalOztiHMkY=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=MlS91c/fNCHBh8GjudJs1RNmWqNk/M+VXiykXseO6/oAfdWjfdqjbtX67tzYxGbgMFuClyMyBVoLT43sUuzzoS6rl9VhUN+V1GrDCDDzMiYVJqZVka9EbI5XeHF6REu56AfhqE/lmzPJla9Sv2lX94EPa4Cde4jvruiglV0XOLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WBuaHjNm; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-456053b5b8cso651005e9.3
        for <devicetree@vger.kernel.org>; Sun, 13 Jul 2025 05:46:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752410805; x=1753015605; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=NNz1F+rRHg2OHfi6CTNAI0f/wy5uxaLTWsJ5ep29OW8=;
        b=WBuaHjNmsR4l1tBV+dE5EAjkCdyv6wXOv1O55CIYG2Xe+lAqWO3bBhX4lWmvjl0E6y
         U6JMoKf+W3wa9RpquC7QHxDT1vItobk+HFQY4joSdpiBjGRVFYq4nZt1wXxb9Yxr914o
         2WL+h/l/TXBZUXEpTmnpqefkRT4LSe2MFmNj3baorMsYzQqA1ntfLTziGVLqwc/LY0L7
         vBfp369pbZMNA6CSLD81YuJUBnl+7TvIrnAYkVhfTMIKWUHRcOJRbS+izfutHU6AOS7+
         PS+esv9u9TpzcM/Mtyio50HryKDScIk16KtpC5UdVHkPa3X4AL5IKtiyb6hvm8TsUKUQ
         8hsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752410805; x=1753015605;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NNz1F+rRHg2OHfi6CTNAI0f/wy5uxaLTWsJ5ep29OW8=;
        b=RYg3hsJRZ+L/WjeVdnfcdnM/8fZ0khRacA1VThVqAq5i6OOxreWe+0ovAJtmGtQyMU
         rr+jGVtf8W8CsHA88Pe6u9ujUWg+sUOWsZcoMrArc0yvbpByXi78BwUb1NKId1pz92tP
         FnOB19lqsu+8yeNM2eFcs8GIFdc7Wfe0MYb6/d7bWGINSfUm9rtnDNj3brS5MWZ6O0nd
         2u3k9ZaztXAmqkHeiB675ebuSQvNiv9kwQGPDAJtCCqws3pyIjL2KtgjUGa4fu5ikPep
         7aR6UxMWiyjMXfCDxLG588NoozIz4Czx5P0ETypJuGGgMjKcXRTNDPHxdkj7SkFwt301
         wO0Q==
X-Gm-Message-State: AOJu0Yy+6saYboDcx4Oo2+ES0Fw3yN9RJ6QTKl2mHF29NWxe7eNgB90j
	rB4tkqFT+DKQNn/aQkP62Zve0UJSk1JI9FMlPvYkN1LRh56iTyC0jSIsypy9KD7dWW6Cb379YtB
	ocIDt
X-Gm-Gg: ASbGncu9W2KcMg5F0sxTA8jREkafLgje2MSaAF4JV3SapA0HqJsyQ1C2Cfdfk4Kxxh2
	umSige98/jaicnGa/L1oZwOBZp2vh5dBPqnHbm1wvmAAwFNP8YV630w0bBX7Pn+uBuDL2TAbMV3
	BK3/NlUlycpgZVck876YP2BRhC7cUKCisygt28yHSZ03FdIJPF9RrI6Yi0mSS2OkvgX4IfLS+Mm
	h0c230Q70FqTQPnKD9yhMciC1j2s2PYrnKrIwQhuZNvAtpBvn7+lRkXRK2d0BEn1jhKVORoTLdV
	LwBtac5kjrQWMUdI2m+W1GtNxAgqTMv2w07UzLgYo43H0A3Q43GigcRSkeMa1TyNjLN2OjCl/wX
	+tDEHEIHlQpAgmaEmqBQxGBpY2rtDqQGsLsVu
X-Google-Smtp-Source: AGHT+IGKxdR63CRDBNOLZ+xnH+bV9+GQzIi23h84ybE2zHN3tNa9bDvkPvWDqkGPtM5fd2DFwY7ztQ==
X-Received: by 2002:a05:600c:8b21:b0:439:9a40:aa27 with SMTP id 5b1f17b1804b1-454f4283cdcmr32693535e9.5.1752410805244;
        Sun, 13 Jul 2025 05:46:45 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.222.89])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b5e8e14d07sm9828835f8f.66.2025.07.13.05.46.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Jul 2025 05:46:44 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 0/4] docs: dt: Document established practices:
 compatible and file naming, subjects
Date: Sun, 13 Jul 2025 14:46:35 +0200
Message-Id: <20250713-dt-bindings-docs-v2-0-672c898054ae@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAKuqc2gC/x3MMQqAMAxA0atIZgO1olKvIg7VxJqlSiMiFO9uc
 XzD/xmUk7DCWGVIfIvKEQtsXcG6+xgYhYrBGtuZoWmRLlwkksSgSMeq6B211hjX9c5Byc7Emzz
 /cprf9wP6aSikYgAAAA==
X-Change-ID: 20250713-dt-bindings-docs-a9d320095699
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1084;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=CTLQ1hf8YF/BxJ03zAJvfKWuzlRvoivCAalOztiHMkY=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoc6qtRczrxmk7FN9BemQXR3F7i5zodTfOPGSnB
 NAPp1gz7PWJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaHOqrQAKCRDBN2bmhouD
 1+tED/98FkNTiUjhfK7J4n1bssiiTRX2rBLPxRnm/aGb7kiXR4lgM8S844Njt+4MSwSQwm4RbYl
 hK56HfNQtDda1mxF1Hv47QwHUVLzCdrCJAomp7e/Din2CJieMeHNLvlP4nXLj/kHoGNjsK19JM0
 gIJZLrbpzhc/7EvJvFclkiLpTJD0Cv9qD1JwQgpkYHNi610/+tJkP7kwCYPhz+JBHWJGmp/lieR
 1pCRvpQechQ6RA/jrywcpTFZi0RcJIDH1iVQeeh2IAdF83Z6wewzvdMxg/w2fh8vjdll48QQC3j
 6yxE1HkQogGEQHsoZUG0b/7vgEBkcl3ox2sAqp1wmy03ZUgdmapSRBsUju5sYLTsAGW4dQXFzrm
 0/+HlvqnGyc3rGd0cjbmoW56hOoSA7e5UZ1LSfDzYw1EMdhsZhucm8zA8IbNv2gtKhEB1E0qUFK
 iQO/RCrsHVT3hcwo/3s1yttzC9VXfujxEGaCAa4PdL8gZ9TzF0Gt3FxSCvb3Df5j2IIkSz3Vprm
 qNyGzU2c7GimvVT7jGlSauAxJUWCp5WCwR1lUuOrZEW6TmY6bEdrQly0faogXMvEyRa0hLFDkM0
 06ZzCf3VDguDuJ/q2C634Mqpvql2xJigDqBOC9ynZaw4b1LkIQMfQMS4yJVUt/C/dc6bk6N5eXT
 4VGgIk2GCJzpdnA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

v1 was only one patch, here:
https://lore.kernel.org/linux-devicetree/20250710085814.21810-2-krzysztof.kozlowski@linaro.org/

Changes in v2:
1. Rephrase - use YAML instead of schema, add another example for
   conversion.

2. Three new patches (2-4).

Best regards,
Krzysztof

---
Krzysztof Kozlowski (4):
      docs: dt: submitting-patches: Avoid 'YAML' in the subject and add an example
      docs: dt: writing-bindings: Document compatible and filename naming
      docs: dt: writing-bindings: Document discouraged instance IDs
      docs: dt: writing-schema: Document preferred order of properties

 Documentation/devicetree/bindings/submitting-patches.rst | 12 ++++++++++--
 Documentation/devicetree/bindings/writing-bindings.rst   | 13 +++++++++++++
 Documentation/devicetree/bindings/writing-schema.rst     |  3 +++
 3 files changed, 26 insertions(+), 2 deletions(-)
---
base-commit: a62b7a37e6fcf4a675b1548e7c168b96ec836442
change-id: 20250713-dt-bindings-docs-a9d320095699

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


