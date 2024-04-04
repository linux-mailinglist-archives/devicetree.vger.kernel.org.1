Return-Path: <devicetree+bounces-56312-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A64D989878C
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 14:29:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 46DCB1F21832
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 12:29:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B89CA12CDA8;
	Thu,  4 Apr 2024 12:26:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PnIv1xFS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0C8112CD9B
	for <devicetree@vger.kernel.org>; Thu,  4 Apr 2024 12:26:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712233600; cv=none; b=KkwOddClNvEnolf/v9TqinO9srfbqA/invsn6jXRpWg+mmdiOBs+ZH9jq3kXpCzw2kjxXUNeVXJqzb58/GSQAKBTe0uAcZkylR0RZ/KToo5wpcT8N3XL7vXaQL2zQbE0Nfs8pyqoOvV5hWjX5aEk9uXMIT6xOqgJZTgE7OqEUOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712233600; c=relaxed/simple;
	bh=ZVqYn4HwzkGZ3NORH7tsH/YjN519R6At8CFrNLiJlP4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Vm+LDiUKuLvPCrvsjZdMVWJSh23nuudaUaoR5zeI8HXUq7x7jcU2TUR93g49H7IaRapqC1a1+eVHXEOdgPjJ996qI8Bine80dRafqpbMAP9CnNZybVnxqzO45Tz5IR1CJPnLbKsxdMDOtI7VXkL8Z09ZsUftWpb1FJfdPfIgbhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PnIv1xFS; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-3434c6e1941so456887f8f.0
        for <devicetree@vger.kernel.org>; Thu, 04 Apr 2024 05:26:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712233597; x=1712838397; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nXdNsPRMeRxKNgTMvoC/YAjHT8cRrzE1LWBWedHVt+0=;
        b=PnIv1xFSetuTntTpKBn3ADePES8dq7kv/PSI9xfp1L5cxBxSmnEevldAyagG7ANFz1
         VBlsM35fKy1q84sP+yTCZgvJEabTTeyJTX5JG19AtVQt7ZGzrrlwagNFv0PeG5TLfPco
         l7rjb4595TH4api0so9ieOw+DHTAdNU0MW3/yDbg0Is07E4V2acwmfiYJwHtMtZY4N20
         6DRo2lBVwmDo+r2ltBXuOm62WJ5c9rs/GnoUSnulTFM9179hJ/tx6RzJiMHy1Dc7LCo3
         zyqxgZlsEaVA2fxF9ERkCuliO6EElrN5C7lB0IgmRHlCOiKxRkLJ0u7cZ42iQyXpKQR9
         9mfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712233597; x=1712838397;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nXdNsPRMeRxKNgTMvoC/YAjHT8cRrzE1LWBWedHVt+0=;
        b=Ez13nm/9j650sx7GFIcT4tOkx4AzxJnLOzVb1xUJuRJBqtuIxsZ2MvqeY0zb1+zr+y
         s8Bbm8qlda/7CxHdAqzZ1UWoH8wj3z9e6+Y7dTIMQpsPZU6JaaLdpC8aIZQUFsVpUyxd
         05cfXSS8IKwaVOn7NDdykSO28HbnEdQ2XMImX8fsFqTj9eh1xBX1TDNuIqSPzxsg5phg
         j+9JQTDYY/+SjG9ssE+jfbIb8E7yb5jz5pzKXZklVPhhT2SooEonhiMYAT/aojyuy/2s
         SfbFz/EaQJxexonqubicEjKlhCzSbKtHGgE1D26k51hUj34gyOdidSzeBQafwo6vJd2H
         a6xw==
X-Forwarded-Encrypted: i=1; AJvYcCUwVYbDISsz1lPB+zgDeVYLArT/iGn2bPpUN1u261InD1i/BPXlVKupn/mfJQRrC0xMLi4/uABCA7OtVJQaCibQzAHapQu8qftyTQ==
X-Gm-Message-State: AOJu0Yxv0JVTh0GNXy1nWCbcDufLjmL96Z2TjEozmMTlBWgNFOQ5Z4xD
	DfTHehHESsSHoW8tmleKdAfQ0PiZ4ZOazaGB1NHvp3oO4/MFfw9uVnwmoQi9Q68=
X-Google-Smtp-Source: AGHT+IG4W3L5dd8Mb63CZZWsH81KaevKLECBBmrLli4fW9RjtXnQf5HkEcp1WxySDAX4sVMmwjF8dQ==
X-Received: by 2002:adf:db46:0:b0:343:7884:fb52 with SMTP id f6-20020adfdb46000000b003437884fb52mr1946795wrj.50.1712233597343;
        Thu, 04 Apr 2024 05:26:37 -0700 (PDT)
Received: from gpeter-l.roam.corp.google.com ([148.252.128.204])
        by smtp.gmail.com with ESMTPSA id bu14-20020a056000078e00b003434b41c83fsm12106303wrb.81.2024.04.04.05.26.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Apr 2024 05:26:36 -0700 (PDT)
From: Peter Griffin <peter.griffin@linaro.org>
To: mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	vkoul@kernel.org,
	kishon@kernel.org,
	alim.akhtar@samsung.com,
	avri.altman@wdc.com,
	bvanassche@acm.org,
	s.nawrocki@samsung.com,
	cw00.choi@samsung.com,
	jejb@linux.ibm.com,
	martin.petersen@oracle.com,
	chanho61.park@samsung.com,
	ebiggers@kernel.org
Cc: linux-scsi@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	tudor.ambarus@linaro.org,
	andre.draszik@linaro.org,
	saravanak@google.com,
	willmcvicker@google.com,
	Peter Griffin <peter.griffin@linaro.org>
Subject: [PATCH 04/17] dt-bindings: phy: samsung,ufs-phy: Add dedicated gs101-ufs-phy compatible
Date: Thu,  4 Apr 2024 13:25:46 +0100
Message-ID: <20240404122559.898930-5-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.44.0.478.gd926399ef9-goog
In-Reply-To: <20240404122559.898930-1-peter.griffin@linaro.org>
References: <20240404122559.898930-1-peter.griffin@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Update dt schema to include the gs101 ufs phy compatible.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml b/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
index 782f975b43ae..f402e31bf58d 100644
--- a/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
@@ -15,6 +15,7 @@ properties:
 
   compatible:
     enum:
+      - google,gs101-ufs-phy
       - samsung,exynos7-ufs-phy
       - samsung,exynosautov9-ufs-phy
       - tesla,fsd-ufs-phy
-- 
2.44.0.478.gd926399ef9-goog


