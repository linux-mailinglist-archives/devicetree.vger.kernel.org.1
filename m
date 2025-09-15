Return-Path: <devicetree+bounces-217131-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8037FB56E00
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 03:52:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D06AD1896F39
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 01:52:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3756A218ACA;
	Mon, 15 Sep 2025 01:52:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hG6ylNpV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF5995C96
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 01:52:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757901131; cv=none; b=rjzZ6SNGeMym7aTT1f5d/AKw2vIUIEX9rUUfy79lFK75gM4cQfHdmFXFl89mxW3VL30r6mvwi5YcSNaWsdaRUXLE8EEn8fqo/vRsc+hjqaAwKJyBjBLmbNzhSOIlwYOYmoQv93KbhA9NQRzllWiJIwfUh9L52F/D0mLUxnx5w80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757901131; c=relaxed/simple;
	bh=nEV1xIt3tWltM6HcFTPL9++suMELB5ydP0fIn7qC2Sw=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=k7A0xctvmFM7WpgFxJmf1UpYgbKEMs6NnyYM5NqGECnU6RICi0kgAe6WoYD64Hk8DJ8ZalFIhmKVSovUKBZ65eQU8VuXuvMdKsSr5mGBPaGJ2OdWWeJxTWGdqNHrgBJTf1di++aeU9CQ3h6pjG/AepmmMwejTsEZxiXgwCqmc0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hG6ylNpV; arc=none smtp.client-ip=209.85.216.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f52.google.com with SMTP id 98e67ed59e1d1-32e0ef1ba46so847077a91.1
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 18:52:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757901129; x=1758505929; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Mi+Q3MX+Nh87QtdSLZzXC7Ij30Ba/l8ZeRTlSODhCu8=;
        b=hG6ylNpV5TXL0I7QQFDa0nD4zNabsiaQEM0cOjGS2WdBjWo5kBXd5StcqvZsP3jskE
         QY1pIHEPZUBxd3TEUU+mR+/xnviJcABarCrNAcKDuZac1MRCvJ1dEH+yRxzBaoCVvetl
         sibvK5aii58yYj8kCE4xP5vhkh6zGMOWxG2fF1Egx9G2ixFukSjJqcwHWpKL91nmIarh
         m+pA1G/QllANeEt4kYKB3Ff+SCucWEhhCpYwWXMn6sV3wldInEVHjqYE1TMxEnwR/9v2
         S3dQeyn6D9gaSW+5hyff3ilsobB1iXtYYY4AigpflUzXN8nIFgAK97l475tVE+7OKIb5
         Gl+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757901129; x=1758505929;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Mi+Q3MX+Nh87QtdSLZzXC7Ij30Ba/l8ZeRTlSODhCu8=;
        b=DOeE8dsAsT5yZUc2oJmH+QVwlDaH/9RhrGsnGgYOiqJ2y7dENo9u3jsTTFtCu75nz7
         Dz3HchijOQXWsXpcCHww6cw8IprEjiuhe3VHRGv2+L73+zmvF78KoSURVYWNUPxDlFUF
         FA0HGY6ypD0YPbyizISWI2yNM5YhPG8wZNC1BswcJVNnrKiDlO1hTQqgy/2eicPUwcP4
         AXzn0hXIrGEF1iFyPOL5V0vjsT/b/euNhJ4OZRxurmV5HUVongyahzr1IR+bIEIB4UmN
         G8mdgzzlPpPbySC3YB1NHvlB6hqn2eiNjLRZS10yN6vUTu0fBTpnnJRd4HDKtLAjBU78
         riQg==
X-Forwarded-Encrypted: i=1; AJvYcCUUA7SbTp1QPx51U37Ot8ED+yd27jC//piBQF1F9zT1/EUY3+XUVMtuDa4e+9e7GL7/yKGITR5XAnJ6@vger.kernel.org
X-Gm-Message-State: AOJu0Yw5PGo5/Vl6aX9+XrL9cCTjTc1/qscxcE3G5kjtRMvWU2TSwzni
	l249ZB6rwbZjjIC37Yy/SO5HRt785CbZIKj75KD/qMq3QpXiNWBK3NAN
X-Gm-Gg: ASbGncvIaVVUK0yk45iJlP5ydS5unBkPOBfLsA5EppCtDBTc5ZVzRLgdYLBHw05lybf
	rCgU/+HlHg5j0fkUrEtNfqvznejYGJjg8yUarwjZLWRvmpr4tZOJpzGQeNszaB09EH+e5XefeDM
	6ByfVTr2VVMUUz336f91ukWlq4vf8jxumb6HI+9K8RP9pwVNFzwQdjO6TbrIW6TQ+v2YFw15p3w
	XiP+wsBKzwAab7o8xDT2W0ASj55Y3moeKgtZppIv3gzIEj0at2l37hOrv2YTWAAj9mUdR3VRxXX
	sFyhs6Oju21tZGFuWQ+eZnSidE5GQtfPwaRuGZDBc9igk4pv/nRENMERwcGPD8BElZVrNQhVOEM
	y+Pxm0jaBFnL4BQWRWkDMcPLR
X-Google-Smtp-Source: AGHT+IHWF+AzJX+M1VdVgQWjvhWFRrfFx2K9ZCZ7H1PPT0SBPU/undvXo0rlDVawqZIzAu9ueFerMQ==
X-Received: by 2002:a17:90b:3b92:b0:32e:ae:8748 with SMTP id 98e67ed59e1d1-32e00ae8779mr8787581a91.5.1757901128968;
        Sun, 14 Sep 2025 18:52:08 -0700 (PDT)
Received: from [127.0.1.1] ([59.188.211.98])
        by smtp.googlemail.com with ESMTPSA id 41be03b00d2f7-b54a387d0aesm10354491a12.31.2025.09.14.18.52.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Sep 2025 18:52:08 -0700 (PDT)
From: Nick Chan <towinchenmi@gmail.com>
Subject: [PATCH RESEND v3 0/5] SPMI dt-bindings and nodes for Apple A11 and
 T2 SoCs
Date: Mon, 15 Sep 2025 09:51:56 +0800
Message-Id: <20250915-t8015-spmi-v3-0-f1d51031a708@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
To: Janne Grunau <j@jannau.net>, Alyssa Rosenzweig <alyssa@rosenzweig.io>, 
 Neal Gompa <neal@gompa.dev>, Stephen Boyd <sboyd@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Sasha Finkelstein <fnkl.kernel@gmail.com>, Sven Peter <sven@kernel.org>
Cc: asahi@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Nick Chan <towinchenmi@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1659; i=towinchenmi@gmail.com;
 h=from:subject:message-id; bh=nEV1xIt3tWltM6HcFTPL9++suMELB5ydP0fIn7qC2Sw=;
 b=owEBbQKS/ZANAwAKAQHKCLemxQgkAcsmYgBox3FFf0q6xEhYxdTKU4qhOvp7PkOYLr0XN5DMF
 VdVILtp4++JAjMEAAEKAB0WIQRLUnh4XJes95w8aIMBygi3psUIJAUCaMdxRQAKCRABygi3psUI
 JPHUD/9UxVZqOz2cw72C5eSRIZTzEUA0p0te6QP9znCqu82I2RjHH+BwYf23Eko69k79/DGuSbs
 FGUBwP32VuCgenwa7IWruwwLWB8pm66q7jR01mXpnr9lwhUDo70LWRoEVnDYLNmp6n6MZu4knDZ
 WxYX+iZmOVrmeKQjB61WMdhrd9iDFLooUSmnZID6v6on9rJjUFNy56qnzjOyy6LaDK4R7G0dCPr
 l0VCegDEartwKOdK4VComtg62wUPBI38/T0yUysheJECDXvR8UROAHn/nLnhiz6PdexdahzsjGC
 fB8/eTuhdRp1nMoxIffl1Y9k8w/FOFS2CcF/8VsWIK9rpSvcLfbDZBPD1llb43BA5Ik7LkGsw85
 E0LJYrSaxdLrEhITZi4Ujqm206j9C7B1tc9YU9mBoeYaH2ulcmYcONcOz2bhK0ulLoGLvhjobBI
 oQDdnASJPWbPnVkCnIVWnaJV95iit9pqXzQ3dej5cSnmx28rYtch22kRUR57ThpquBY8j60AW+m
 PK4lV1doEGExtWpocejgmPM+wariey7WeA9CY+pmaGQM7naIKdkfE0ckvj8MflOFYud2QUrggCX
 Uit4pCRosgsiymjHL3S4aeaORsMMyRlfpSibdJSOVGAsRRnEqAx6u3yHQ+1P/XptGoz68zZ+r12
 aiptbgtn0ThVX+w==
X-Developer-Key: i=towinchenmi@gmail.com; a=openpgp;
 fpr=4B5278785C97ACF79C3C688301CA08B7A6C50824

Hi,

This series adds dt-bindings and nodes for Apple A11 and T2 SoCs,
and the existing driver appears to be compatible. Drivers for the attached
Dialog DA2422 and DA2449 PMICs will be in a future patch series.

Signed-off-by: Nick Chan <towinchenmi@gmail.com>
---
Changes in v3:
- After discussion with the DT maintainers we agreed not to extend the
  generic compatible[1]. Change the series to the agreed-upon style.
- Now depends on a patch[2] adding the t602x spmi compatible.
- Link to v2: https://lore.kernel.org/r/20250811-t8015-spmi-v2-0-a291acf0d469@gmail.com

[1]: https://lore.kernel.org/asahi/12ab93b7-1fc2-4ce0-926e-c8141cfe81bf@kernel.org/
[2]: https://lore.kernel.org/asahi/20250828-dt-apple-t6020-v1-22-507ba4c4b98e@jannau.net/

Changes in v2:
- Rebased on top of v6.17-rc1
- Collect Rob and Sven's tags
- Link to v1: https://lore.kernel.org/r/20250609-t8015-spmi-v1-0-b3c55ad01491@gmail.com

---
Nick Chan (3):
      dt-bindings: spmi: Add Apple A11 and T2 compatible
      arm64: dts: apple: t8012: Add SPMI node
      arm64: dts: apple: t8015: Add SPMI node

 Documentation/devicetree/bindings/spmi/apple,spmi.yaml | 6 ++++--
 arch/arm64/boot/dts/apple/t8012.dtsi                   | 8 ++++++++
 arch/arm64/boot/dts/apple/t8015.dtsi                   | 8 ++++++++
 3 files changed, 20 insertions(+), 2 deletions(-)
---
base-commit: 062b3e4a1f880f104a8d4b90b767788786aa7b78
change-id: 20250527-t8015-spmi-838bb49d34ae
prerequisite-patch-id: 801a5b0bb76e74553fd30469734e9589acc09b7f
prerequisite-patch-id: 371cd14886cc2c5d6f6e8f8eac41f710b26c403a

Best regards,
-- 
Nick Chan <towinchenmi@gmail.com>


