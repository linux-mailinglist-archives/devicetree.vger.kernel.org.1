Return-Path: <devicetree+bounces-84240-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 11E0792B92E
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 14:19:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BBBE4284442
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 12:19:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5874415B562;
	Tue,  9 Jul 2024 12:18:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="m2zmY/Vf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A68A7158DB5
	for <devicetree@vger.kernel.org>; Tue,  9 Jul 2024 12:18:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720527537; cv=none; b=aUnUas7hM8SydyauTKzbZ/La7Pt07C07PXy3hlMOiTdGrwLgrTedIhDKdeXf4GyKH03yVtURT4tLL6JOGCZIMw9dfG0bVASZPU6IgZABXLaKvEuM65h015/+pSxdT7jY8HvoMiHTP7aCD62Ok8/QbbxwlY4z44NW84q9OdKHBaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720527537; c=relaxed/simple;
	bh=2y7nb7ol5yHvIHYnEo8Rlt1vj2/K7xBwxKBJztod+d4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=aAYjCKOmZea+fPXHB0NqLwxtim2oMJnaA6HL/Rj/SRoeKp9sV8xWrGXp4hQkGu3lDxrOepjT0wnzG5RdWr1MQ8XrVrlKEg7nc0WVy0N5vkpgGHSSz6UGhN43nmuqcOo3C3chxwXEOqg6lQA2/HWK14RUcTpHG14vOgtwptPEOPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=m2zmY/Vf; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4266eda81c5so11176045e9.0
        for <devicetree@vger.kernel.org>; Tue, 09 Jul 2024 05:18:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1720527534; x=1721132334; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=e+dtNPqMpO1JSuQuP+EiUeVQ86+1hBOBnH1yWFrsboA=;
        b=m2zmY/VfbQb8Da632sYuUKUceRoCFEHGX5DH7rCXI2OvW3ecX8A0rHGu9szD+vbatR
         nMpJXuGUPUnlyFDc8D7HsPOlNzA1TqEoF6du542Y8VSD7oBX+ixN8MXCCsYfX0a+vGMO
         WkwFnGGbFH8AjIh+UM8cYAUEhFJH0GeCsLl2hzP7Yw89h6VXs58iM8/xE1uUcJ/qSkL9
         6K3rO07AE3gaePVmIuKAksvAJnfLt/w41n/1O97h2hGOETpGM6hbnXqn5d9qA3wbS7mN
         PO6bA51x2pcsO8NRpERb64HfFHOrsafd1cXw1aTwoxplXXZP+ZUz5TeHm+jd1bwggLkB
         53Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720527534; x=1721132334;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=e+dtNPqMpO1JSuQuP+EiUeVQ86+1hBOBnH1yWFrsboA=;
        b=a/Arjn0/4fQjejk+1kciUjMLC+s0HwcaNugzMkW7g39UhF0qslKhpKG2q3b1k/QBka
         wQaLsihgrQH0zy/Vdy6/F3Lo9bTrr1Pi0rnPv2P+u1ifc7OgddLZOV23G3a1Qz7xdmul
         SnnCvmdcSTGARsTNbuG3E2/32lLwM4ZdknAH7YCH082FWhL0M55RlH5DQQTnb0tREUe2
         a2j/9rmMKDX8wrwAk41nkuFfnHmlq6HxTyv7G3/UQxqpGzRVfrq1ll1ZygzmR/PHqUdU
         iZAD2wM7vPZzrHAUNKdrqcfmMVc8CPNjvk7uzlyF2a3ni/vxgaPQb7Q8Lo/LiXhjvQrj
         C68A==
X-Forwarded-Encrypted: i=1; AJvYcCU3D1ZSSy/UVJBaq9szJtzLcwKhLqTv1MiMY0fyC1j6g/PNdu7lGfWz9todcfHtdBgbTdcx5JNUOaQoSDUVaux/SBvP9QPA4B8V4w==
X-Gm-Message-State: AOJu0YwZ3SEnX3ENmR1xfbcL2q/VOhOWtrBw7k3HnD4lIZsI1l6ZV8/5
	unkbb97lBdgU+ChxWd7mxmpZCrwUpoZMy5XwGpn+jaJQdlCJcpgunIJ+3X7re8w=
X-Google-Smtp-Source: AGHT+IFweA1issX/4HQiTqhohofCoOEZBVGTbbhnNOb+nxx592TLdaUnqZj+a67Ky6K+2Dl2ZpPX3g==
X-Received: by 2002:a5d:664a:0:b0:367:9c0b:374a with SMTP id ffacd0b85a97d-367ceadc925mr2014606f8f.65.1720527534081;
        Tue, 09 Jul 2024 05:18:54 -0700 (PDT)
Received: from [127.0.1.1] ([2a01:cb1d:dc:7e00:c270:70c:8581:7be])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-367cdfa06d3sm2390574f8f.75.2024.07.09.05.18.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jul 2024 05:18:52 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Tue, 09 Jul 2024 14:18:33 +0200
Subject: [PATCH v3 2/6] Bluetooth: hci_qca: schedule a devm action for
 disabling the clock
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240709-hci_qca_refactor-v3-2-5f48ca001fed@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2033;
 i=bartosz.golaszewski@linaro.org; h=from:subject:message-id;
 bh=y4oPN0IOC//w7yzibHNZfMLbBW/mUsBkavbOtcL9zSQ=;
 b=owEBbQKS/ZANAwAKARGnLqAUcddyAcsmYgBmjSqpJCae7x7FrVb9GKhCI8aiIZDqi6smv/2Oy
 TCnRJhiqvCJAjMEAAEKAB0WIQQWnetsC8PEYBPSx58Rpy6gFHHXcgUCZo0qqQAKCRARpy6gFHHX
 cn2YEADO+QDT3FIWf4bzh+JPwSy0rMQN4XWAUz37lis0Ug0ZO6xI7H8vZUipwOWWYPZWNtVVY6h
 lzMS8dQ177QIiwrQ7GutREK8L2R34RJ54q8WxNp44UR0DwByxg8TGXPQPlXmIZiFcSUnfASKXIe
 G6bVpTwZ+YQ9T6GTkWhxP4AAIlpq++B4mJOugt2sTo3OAJ/aPCeElG0Z21F3yFHSc4KLKMityxj
 BimREouOxh87iddSK8y9iTxwcoYKfgvjPU0OvHHz4SJTAuwJywGUByvBmF0oa0bNHGHGDgfdm0U
 Fw4gUoiMhyKzO3Xe1k3el0LwV19VwoPjCjiSNfpcAs0UvhgCBEsmMoXQseb4ZUcpiYuaikPXc6I
 VBrO3TiEg76J1XkdyWMEwCEfUBw/6gYKXR/gBxlHKv/x0yfsfma9QOnYSlxUVn4XhdrcXTiC+u3
 Vd4B2NNfgnvEpOkRzoI2WP1ZbeNqoxjCITI0MvxkGloLMIvlc9epbCMm0XRYoqHAcPsBKlHuSYt
 k5dzq2UNXt8W1gtKcUo5ieMZf13yCK5dqYnbEuR8Q8s2Hok3FV2Ifwc6eoZAUVOEFjYV/xWkpGq
 zBPIGlKwZ1lzT2wJ9NHTAQ/RzT1lsrPCaacCAaCVmMLiTXhHT606QL+qQ9U7cI858JMjnwweneC
 r1X2H6DXfBNPTow==
X-Developer-Key: i=bartosz.golaszewski@linaro.org; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

In preparation for unduplicating the hci_uart registration code,
schedule a devres action for disabling the SUSCLK rather than doing it
manually.

We cannot really use devm_clk_get_enabled() as we also set the rate
before enabling the clock. While this should in theory work, I don't
want to risk breaking existing users. One solution for the future is to
add devm_clk_get_enabled_with_rate() to the clock framework.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 drivers/bluetooth/hci_qca.c | 23 +++++++++++++++--------
 1 file changed, 15 insertions(+), 8 deletions(-)

diff --git a/drivers/bluetooth/hci_qca.c b/drivers/bluetooth/hci_qca.c
index bc6a49ba26f9..ace920261aa4 100644
--- a/drivers/bluetooth/hci_qca.c
+++ b/drivers/bluetooth/hci_qca.c
@@ -2295,6 +2295,13 @@ static int qca_init_regulators(struct qca_power *qca,
 	return 0;
 }
 
+static void qca_clk_disable_unprepare(void *data)
+{
+	struct clk *clk = data;
+
+	clk_disable_unprepare(clk);
+}
+
 static int qca_serdev_probe(struct serdev_device *serdev)
 {
 	struct qca_serdev *qcadev;
@@ -2434,10 +2441,15 @@ static int qca_serdev_probe(struct serdev_device *serdev)
 		if (err)
 			return err;
 
+		err = devm_add_action_or_reset(&serdev->dev,
+					       qca_clk_disable_unprepare,
+					       qcadev->susclk);
+		if (err)
+			return err;
+
 		err = hci_uart_register_device(&qcadev->serdev_hu, &qca_proto);
 		if (err) {
 			BT_ERR("Rome serdev registration failed");
-			clk_disable_unprepare(qcadev->susclk);
 			return err;
 		}
 	}
@@ -2477,15 +2489,10 @@ static void qca_serdev_remove(struct serdev_device *serdev)
 	case QCA_WCN6750:
 	case QCA_WCN6855:
 	case QCA_WCN7850:
-		if (power->vregs_on) {
+		if (power->vregs_on)
 			qca_power_shutdown(&qcadev->serdev_hu);
-			break;
-		}
-		fallthrough;
-
+		break;
 	default:
-		if (qcadev->susclk)
-			clk_disable_unprepare(qcadev->susclk);
 	}
 
 	hci_uart_unregister_device(&qcadev->serdev_hu);

-- 
2.43.0


