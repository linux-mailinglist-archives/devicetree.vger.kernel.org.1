Return-Path: <devicetree+bounces-84241-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DFCD592B937
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 14:20:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 95F5F1F24730
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 12:20:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58AAA15FA7C;
	Tue,  9 Jul 2024 12:19:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="or84GZKG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75B5B15B987
	for <devicetree@vger.kernel.org>; Tue,  9 Jul 2024 12:18:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720527540; cv=none; b=XfzedXkxKuytZEg6CNH3/VRN+Xdn4QPU9Pwlf6L0Pvos6Vljj1+gD5erPCapfM5gK3g7YU/CZ7ZhSWTaoLMhP1CrEHNNAKY5NmAGmb5K/epYoCAdQyaTzCKugw6u8RqvVnCCla0PiDKFhJDC4eT/iBAdv79e50VzTkA2V7fuJ/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720527540; c=relaxed/simple;
	bh=zbv7YtRcsrRh/pS+I8vDNY8xLImRuljkKUBamUIJCt8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Oct/OENa2/6U54g2TlY2Hr58LEvMo+uYJw0Rk14gTRAjI52h8EVFHe5U2p4NOhr8v/t75DUqINzLJePQEMEmDS3cZC05qQL8dyoEEgv/j4v8zcKKyt4GHDEgc8Hi5Mx+k9SVYHq2n3CFd7w7haW2fmm1qHqKmVXytCEMdVlU2Wc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=or84GZKG; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-3678fbf4a91so2587095f8f.1
        for <devicetree@vger.kernel.org>; Tue, 09 Jul 2024 05:18:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1720527536; x=1721132336; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3xkkRcegYeGDwTK0EBHvtf6oVMqW1P2Fm8Nd7gZ3YFY=;
        b=or84GZKGsaYXy8peTodujGdFIsk5fuemOto8wfaj8lHC6+dkyUpWbSPmtT6gPSAd7T
         jPESnuYEWA6M/4S/p/UBquOK3GEb+go1dR24osJZGyZIvQehFxIK+NyEjvMdNPRUJqsh
         i3RP75577Q10WbnDMUMOhTwavtrK5T6PhFzQqx3weNNiNJIEw2onrit8CTGblfUznFzF
         020MPCTcQX7GS5zIaPi7jsbQV03asuFAXd1vwtGdv/ZXhvobgUo+yIRzOx1/jAmJRjQ6
         XeQ5i4HHgK4+rPpIkhpdCGKSV04lVAtqAzaaVT75/sdk9bHCQEIx/JA3gXjiniWtCvoe
         NbFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720527536; x=1721132336;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3xkkRcegYeGDwTK0EBHvtf6oVMqW1P2Fm8Nd7gZ3YFY=;
        b=ccXGTzgrvc8I6W7SyDfepWHqlrSV27bBzErlEekmTff4xtVOSdo5SI161bEIQ9pZTa
         t9eKvAVANIxE8vJ6TefmMhpT1WABvXS7cqox6Q6s1WydKsMmKikkJtFXyvWCheHK1a0v
         FXZKMGK1Cq+CnDibIWfaWSxHg4PybakYXLyCwodoFjuBi1UJiNO1ukvEyzQ9PcqJSYS2
         xXuvVRLptpZlx9ooEZQPmAd2JYuS3T7ffWRjbS7Xw63PFq/N2QnUPQOmfEAs1e6s7WyO
         lUx+JYYnmt1sfgW186GNdWxSZSNBWxGEM7Rige546Q/91/S/CAi4wouGg6ibz6NQBNSw
         STsQ==
X-Forwarded-Encrypted: i=1; AJvYcCVltvtjBuoAtus2rBhgm+Dr07nRLT5DC+2kX5+yKwf7MkpWpQ87fogckT1siFah/R299Is8C9MVMJmI+f6QYSnkVgP+K3FuBr/ctQ==
X-Gm-Message-State: AOJu0Yz1zajnxwdrGbJ9jywKOZaNxpmxUY7g+GLwmo5hpbneWW9XTSed
	2i2jgqaJ0jZbir/NOAJDdwU8g1MJWyiT3wzWUbatxKhgfFK7FOtbOgRimrPC+R4=
X-Google-Smtp-Source: AGHT+IGbtHeJCzfGlW4lffEYrD+3Hvy5yFV+C9UCgAKFOnwMqXuUOQm86YyADUBf6ppXYEi1giF97w==
X-Received: by 2002:adf:f70e:0:b0:367:9b22:28cb with SMTP id ffacd0b85a97d-367cead87fbmr1561380f8f.59.1720527535974;
        Tue, 09 Jul 2024 05:18:55 -0700 (PDT)
Received: from [127.0.1.1] ([2a01:cb1d:dc:7e00:c270:70c:8581:7be])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-367cdfa06d3sm2390574f8f.75.2024.07.09.05.18.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jul 2024 05:18:54 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Tue, 09 Jul 2024 14:18:34 +0200
Subject: [PATCH v3 3/6] Bluetooth: hci_qca: unduplicate calls to
 hci_uart_register_device()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240709-hci_qca_refactor-v3-3-5f48ca001fed@linaro.org>
References: <20240709-hci_qca_refactor-v3-0-5f48ca001fed@linaro.org>
In-Reply-To: <20240709-hci_qca_refactor-v3-0-5f48ca001fed@linaro.org>
To: Marcel Holtmann <marcel@holtmann.org>, 
 Luiz Augusto von Dentz <luiz.dentz@gmail.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Balakrishna Godavarthi <quic_bgodavar@quicinc.com>, 
 Rocky Liao <quic_rjliao@quicinc.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-bluetooth@vger.kernel.org, netdev@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, 
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1766;
 i=bartosz.golaszewski@linaro.org; h=from:subject:message-id;
 bh=p7sxdcO6Rc6Ch0t72rI1TR4Olk1v4kD+lhuXfG57byY=;
 b=owEBbQKS/ZANAwAKARGnLqAUcddyAcsmYgBmjSqptqLawNtZ3KFl93Vg9HGrtdMgp1clLaDmI
 ggdZz5L/y6JAjMEAAEKAB0WIQQWnetsC8PEYBPSx58Rpy6gFHHXcgUCZo0qqQAKCRARpy6gFHHX
 cvchD/9u1C/7sOWPpEFPIWSU47hw8fqylcNbzW48GZ1PPgd6zdXW6MOyPKZiLHIhNujuq6PyJRr
 Kw2YeVDc+C48VdJn/XRRL2De6Ni2R7WnWlG9/C441IbjsXGfsL4XfVXb0RAbv85UStOXJweUjmV
 WyoGVPg+oCnC+qrDLWWxtzL5YHA4tj3+BhlUXn+hpUr9LHDb/XfYJjV5U+YmlP8RBUJPF6vg14r
 woJd+Co7+g6+9CgNprJJRrflgrKbEMZs792shJ3UXHZjpIXBNY/JU/bJx7h4O4ae5I9535ODf5H
 6Xd1JkQdXN5tH9uLxMqFcKAyaLH9g9XFXrhp+EdNFP8OnlI+npOFb9J1x3Lw+tjlhIaewS2jUcR
 ZhgZZSp9haY+nUYKut1d0xF4nJPGzc/+rUP3k4vLG97hfmvFdgkgEE0VhGY1HOyEyDKzw+I9Dxn
 3vswdeSkCpbSIDfnewR/imEUvPlZq25AmWT3hh3eHsM+iFis7yCJQrvGu5Nuc5tVVpGTDrfwHo1
 uxIaiHufadMH5OsdvrNCzE/Hd7hSQM+ZqScRNv5k4ZPQYaCI6sME+1YEaBdptKn8cjQ5yKIEGaG
 cUmTwK/QWgZmlUxVHnIB5Nt70Bt2/LQ8ZJPDAYqxCJ3r2zHPKKAE9JMZAiniNdgkTw2XTyxpEzy
 ys03t6mqdm93JHg==
X-Developer-Key: i=bartosz.golaszewski@linaro.org; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Now that all three branches of the switch end up doing the same thing,
we can move the call to hci_uart_register_device() past it and unify the
error message.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 drivers/bluetooth/hci_qca.c | 23 ++++++-----------------
 1 file changed, 6 insertions(+), 17 deletions(-)

diff --git a/drivers/bluetooth/hci_qca.c b/drivers/bluetooth/hci_qca.c
index ace920261aa4..9d2b50c8fc93 100644
--- a/drivers/bluetooth/hci_qca.c
+++ b/drivers/bluetooth/hci_qca.c
@@ -2396,12 +2396,6 @@ static int qca_serdev_probe(struct serdev_device *serdev)
 			dev_err(&serdev->dev, "failed to acquire clk\n");
 			return PTR_ERR(qcadev->susclk);
 		}
-
-		err = hci_uart_register_device(&qcadev->serdev_hu, &qca_proto);
-		if (err) {
-			BT_ERR("wcn3990 serdev registration failed");
-			return err;
-		}
 		break;
 
 	case QCA_QCA6390:
@@ -2409,12 +2403,6 @@ static int qca_serdev_probe(struct serdev_device *serdev)
 							   "bluetooth");
 		if (IS_ERR(qcadev->bt_power->pwrseq))
 			return PTR_ERR(qcadev->bt_power->pwrseq);
-
-		err = hci_uart_register_device(&qcadev->serdev_hu, &qca_proto);
-		if (err) {
-			BT_ERR("qca6390 serdev registration failed");
-			return err;
-		}
 		break;
 
 	default:
@@ -2447,11 +2435,12 @@ static int qca_serdev_probe(struct serdev_device *serdev)
 		if (err)
 			return err;
 
-		err = hci_uart_register_device(&qcadev->serdev_hu, &qca_proto);
-		if (err) {
-			BT_ERR("Rome serdev registration failed");
-			return err;
-		}
+	}
+	
+	err = hci_uart_register_device(&qcadev->serdev_hu, &qca_proto);
+	if (err) {
+		BT_ERR("serdev registration failed");
+		return err;
 	}
 
 	hdev = qcadev->serdev_hu.hdev;

-- 
2.43.0


