Return-Path: <devicetree+bounces-224821-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B907CBC82DD
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 11:07:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CEEDD189557E
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 09:07:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 062AC2D77E9;
	Thu,  9 Oct 2025 09:06:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="QBaQGiWO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0FC22D3A9E
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 09:06:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760000807; cv=none; b=C2X4lIGx1Vtud8qkEaKqBLDRiK0abktHsesddWIkDuvELETNFNFWFbEaK8H1eQ+OjC9NpIXT5gwUBGCwZI9K0mYeblP/ELlm60cb7kM0VZCj0P6cjS0BdVy8U30josz1HVasOzeDNSUuIB7tK0cnUQAiG3q63e3sQU5arda7NxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760000807; c=relaxed/simple;
	bh=qJOv0iN/KQMg4cue3EwWtApI72quYVMhv24uY+typxU=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=W1CBDVSIWBLmB6+fSpHR30hsoKIX3eRdWBF5uN2Rs+d5B1tFt1uxU9zy1itGQXDU+9TNsQU8ENToalBf4sdcQ0PjIW5YyxRjrIGJSFe9eJpHdnV9PX1//p7J8MWbgNzCmbRv/+LGVjwZ2HBD/EBGzeJde6P/wGeHvUrx4vFCouc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=QBaQGiWO; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-639df8d869fso1330261a12.0
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 02:06:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1760000804; x=1760605604; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=SNhWTQ2jjRZ6dlj/JkxjEi0pSb9RpuzlHQTH6dcdfSk=;
        b=QBaQGiWOg1FZEDRiFa4WLwDaO36Q6AFSkTnuMUuODCUED905EoWXRDqV2IB8Fo9RK7
         n/yb/5+pbHu8aUz5tHAc5CKScQVbG5rRLoGOPYQtr9Xnw8UolPh6PFHV06fdagyI/s1A
         VO6ass0T2FgnFfUl8QbqXbBUQTMLsDFasSXMnBahZwT2WvuUbia/xmXagBIErn4dQLnS
         RBLIvVOMTJztKHPaDnhaC0ll19fnoaES+oZNvjLI9RcZ7YABweabqcZLkKDW2jbFnhAE
         6AjBNFv7TriiS/hCHC/R87y6Ch/K6TrtBt47H1tIg14DhFX2x1UpL5SOFPLRtSNfL6Jy
         kT3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760000804; x=1760605604;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SNhWTQ2jjRZ6dlj/JkxjEi0pSb9RpuzlHQTH6dcdfSk=;
        b=opUOQDwUXxkXmcLEj4KTXpcJDtvGzLSIS3E5OeauWKw29MH15S+U2VFBS5e9YNDxLv
         hqujSjl1pyxgmUCwv2MVrwZ91e+1nfMy7TQutyNHuVlTe+VfVYmdTx0UNss1eD5ZeKA0
         x/OEBSwi8fyALqPoetCYn5QGHz8J6h4JTUzgeeMAtRjFi728C7xVmtJtqiboSLIDukJl
         55W4rzojIKwXq4bdiH9YWQ3KlZnCVdgCjMkabnEoXd5aJxZbGGic0bbmnvMRNLuvLcm6
         dFI0Y/rPgQA8Y41lJv7OTGfL4qZQkSkc/IBqRUQXT3j4Xlm3PXyaXSYMiYRJK1E0kLAO
         29VA==
X-Forwarded-Encrypted: i=1; AJvYcCUoQDjfTjZ2FDicdcsEtH0o56NoZVLw1bV9Om/RVaGWeM0FFqd7xF6kFyVBOCaznILGGiQrD8C74klB@vger.kernel.org
X-Gm-Message-State: AOJu0YxUKA1BBldAZEdyMdebLk9d2wlD2tipUCzIj7VnFOU8s/38yUCp
	2QT/d9E0jy0xc5m/QQ/Bqwcyk0kM1GZ8VI0KTZIt7JaNbs+UWzc6DEWnLXtQZeKOC7s=
X-Gm-Gg: ASbGncsjIcyySarqsaFujl5yVWKXxLRA1uC4dS3m81Cx99hmeDUI34N864dZdsskWId
	XOrXJhHIb6JFc22WLs6Q1ETlqv7Ms0PVIagLtRnhH/RrDpjHMsy8sYlCBvdW4MQ0GhQioJnTACr
	5RTxb8qw2ufXEcR7a95ShlvdGL3XU33M9ch5iLm0L/S9c4p69h142qdQOMlsIm6HsznY+LWODCq
	yjuqyLGtCOEw0rlGKxnvHbebdra10O6wy/lA/IL50u1yFQRzCrjkpzMxewz9nJZk/AOo2gS6OZl
	0lwsVmUNZCJbwCoPpZQYcQlhUczzsuw/3Aa/QvaqmlIPp6qY4aOQpbBcOwlGg4Svg+HGvN0rDxk
	VYTU1do6nMO/lKoX0RHpcMUX6WolkaEDyU63HB5PfM3oJ0TV4ErOT1YG4gjSSVkrH9ZRmeGiyfT
	/CLcQy2JaG1QhZ5+Xh2wkmoWvXAltn
X-Google-Smtp-Source: AGHT+IHVbQo3PobfFCRfWXYrwqODGaxC9rU9vZlXDMJPWoPDWQIzlNupR0cyBhTPPVPrWCFXXZGF6g==
X-Received: by 2002:a05:6402:268b:b0:634:544b:a740 with SMTP id 4fb4d7f45d1cf-639d5c31e7emr6572648a12.22.1760000804306;
        Thu, 09 Oct 2025 02:06:44 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-639f4109046sm1905755a12.44.2025.10.09.02.06.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Oct 2025 02:06:43 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Subject: [PATCH v2 0/6] Further bringup of SHIFTphone 8
Date: Thu, 09 Oct 2025 11:06:30 +0200
Message-Id: <20251009-otter-further-bringup-v2-0-5bb2f4a02cea@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIABZ752gC/4WNTQ6CMBCFr0Jmbc3wV4WV9zAsEKd0FrZkWoiG9
 O5WLuDq5XvJ+94OgYQpQF/sILRxYO8yVKcCJju6mRQ/M0OFVYtdjcrHSKLMKtHmfAi7eV2U6Ug
 3ODWIV4K8XYQMvw/vfchsOUQvn+NmK3/tP+NWKlQXQ1ob3dYd4s2MLIv1js6Tf8GQUvoCxMlAK
 r4AAAA=
X-Change-ID: 20250930-otter-further-bringup-f9e640c4008e
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Casey Connolly <casey.connolly@linaro.org>, 
 Alexander Martinz <amartinz@shiftphones.com>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Luca Weiss <luca@lucaweiss.eu>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760000803; l=1147;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=qJOv0iN/KQMg4cue3EwWtApI72quYVMhv24uY+typxU=;
 b=sUH9RKnqzC/H1UaTofL2s1bspY4tzj0A5UBraEAbGB/ov8r06zcLDBS7PuxigewegJS0UOLnO
 6nLhLGb1d4nBXl/piRRi7EjIzVdrF8zsFgFm6rFzwo45JSsMfMAdVP5
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Add some cleanups and fixes to shift-otter, and enable flash LED, RGB
LED and Venus.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Changes in v2:
- Pick up tags
- Also remove polling-delay-passive = <0> for thermal zones
- Link to v1: https://lore.kernel.org/r/20250930-otter-further-bringup-v1-0-7fe66f653900@fairphone.com

---
Alexander Martinz (4):
      arm64: dts: qcom: qcm6490-shift-otter: Fix sorting and indentation
      arm64: dts: qcom: qcm6490-shift-otter: Remove thermal zone polling delays
      arm64: dts: qcom: qcm6490-shift-otter: Add missing reserved-memory
      arm64: dts: qcom: qcm6490-shift-otter: Enable venus node

Casey Connolly (1):
      arm64: dts: qcom: qcm6490-shift-otter: Enable flash LED

Luca Weiss (1):
      arm64: dts: qcom: qcm6490-shift-otter: Enable RGB LED

 arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts | 75 ++++++++++++++++++------
 1 file changed, 56 insertions(+), 19 deletions(-)
---
base-commit: 3b9b1f8df454caa453c7fb07689064edb2eda90a
change-id: 20250930-otter-further-bringup-f9e640c4008e

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


