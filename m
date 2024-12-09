Return-Path: <devicetree+bounces-128647-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FCCE9E9328
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 13:01:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 26EBB2835F2
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 12:01:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C03472248B6;
	Mon,  9 Dec 2024 12:01:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="BndbPVXi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D25019882F
	for <devicetree@vger.kernel.org>; Mon,  9 Dec 2024 12:01:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733745674; cv=none; b=HYK8mzOZGGGR1CencyaiD8zx25O1ysSA+3h22z6+Up6ORQ1i4EBrDCOl+S4wNPXNYXxN6Q+lEnXlIsb2sEQg/jEg6zSoA9A3tt9g3F26U3QK/wucrFgDv1Io2CIS6gp5ptt8rJy6EKuksZbP+I21WafxuZATgq1FmNxk0qVDt9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733745674; c=relaxed/simple;
	bh=8pFX+27nmjk/7KfdfuKsPNR83Jiahya68QV//JkHJU8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Fi49lMOkOKsBZzMhFONlNJHmY0xEPghGVR9aUdjV67TCqscIbCdL6VM+M3QzSrKy9RcDZuRRdhEYIH5KVdfmxDACBUrlGeLw3mt7idL5r9v9dSRR/83yeCgrDFLSpfmbCC7ZSoPhFvqoTOQJ0ly/VNRmwnzvSMITeIKOzdcUZ9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=BndbPVXi; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-aa64f3c5a05so359833066b.3
        for <devicetree@vger.kernel.org>; Mon, 09 Dec 2024 04:01:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1733745670; x=1734350470; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0tR6QupvutEPi+0B6/genbHIfRkFvdzSANWIhNibRjA=;
        b=BndbPVXiWkZ2Hymlx4djmvk3gopkES+g2ciCMtH9KuwLm8K+AKenJwUnTmlB/GOHGS
         wMonUq50IRzSn65wKpPNKm98Aq/INhm9tZQp9EMohv2B/OYFNPS6tpm/m0rGXSMckI3l
         6QvvheUI4ft+hvwcntSi7r/aOghQMpsNiQdcUwGVNSbM1YM8a5SErFyLN5cNCcntNJmb
         U8OM2ROcxY1oFdHvdXVxMBNbeoAgV0vi0B3gkYrrqhxxa3PzJOps2TF0xE25omtiNzRY
         R4XD658MZRpjGFdtaRVlxnfoNX2ApzbIHHKesmRu7Xg//cK7epW8/LhBUnjftgwoMW5C
         xRFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733745670; x=1734350470;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0tR6QupvutEPi+0B6/genbHIfRkFvdzSANWIhNibRjA=;
        b=kE8wOWCbkr1ayqpUTWknRA9BTnlR9uYPfA7nQNNkSaAotRfWYt+bbmaMfAUtzserVB
         u1qwDy97SN567dXI1cUjP0tMSqjDKmZ2qLeFxJIMz6aYnnzHri4RxlNc726q3PFJHVuL
         sHx15SgnKNNXaFG7tkxRYL+qTmdU5Foszl9aTs4tW+88M8yZTRp60e2PJeWlqM0uCGsd
         QW9/nOIFDcE4xxm2avv8VTLEOygi/QpMMI+NiXesyAmNtguDdFgpJ+RlR6aWfJQfPVn5
         AuY1OIeK78sYFO9gsWDEO66TYtjvu2KJUh56FqggsZjRxd4wddiUEmyPDgJahokKHNw3
         qE9A==
X-Forwarded-Encrypted: i=1; AJvYcCUUYSNUX9S0/Kgv00u0uDfpEyAf594c93uKcEpp6quQhkrpTx6JJAO1A2bgRAyW4rmhxhhanu7KTogv@vger.kernel.org
X-Gm-Message-State: AOJu0Yws/N/XFYsjaykEWSGOdChWMJYoZOm1vYpiKNFMb2eo5e6sdPQY
	ONs3PG1j/ikhl4B2q3ESEtV4FrOJlfi1GJyp6CPdfq21nhIbMtvRBda7LtXcZes=
X-Gm-Gg: ASbGncs4X+C8k08YoIW2+mvN0JaPDhU9mWKdQTTdOqaWl9esNFA4tq91uVCjCCQwcF9
	bbLjePp8B56BHAZ23LoLk718/sZVLJ2fOERHsFt2lFVeIqNiy6Cq/9xgFCZZLvPZfyImjQrQ9c9
	QkBA2lJ07Nre03X4iaN6lY+wahV7AB0uM7oYlltliLYuTP+ydv2NsCVXCeI10J2VlkBXlsXyiWW
	g+iy+H/ZDb8ueleOJ5kfFSktB97SooJlcMgvfcyjwOmwk0ips7J/ezXVieuJhzHaYWMN6RRC0/X
	Yg/FkElIEoR56l8iqZfrNaHvMFw/rITnqx7RN+tj9whYUWsTaegRQ5EBWty2y7nvRg==
X-Google-Smtp-Source: AGHT+IGCASHop4+PMr/ElwoRqpZmRPYooFBqBNoyvG1DRpnbL890d/4qkOvn0rbSSu4AIgl1YOMZNg==
X-Received: by 2002:a17:907:aa6:b0:aa6:945c:453d with SMTP id a640c23a62f3a-aa69cda0d94mr5001966b.27.1733745670385;
        Mon, 09 Dec 2024 04:01:10 -0800 (PST)
Received: from [100.64.0.4] (2a02-8388-6584-6400-d322-7350-96d2-429d.cable.dynamic.v6.surfer.at. [2a02:8388:6584:6400:d322:7350:96d2:429d])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa69afa395csm22555066b.71.2024.12.09.04.01.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Dec 2024 04:01:10 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Mon, 09 Dec 2024 13:01:06 +0100
Subject: [PATCH 2/2] media: qcom: camss: Restrict endpoint bus-type to
 D-PHY
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241209-camss-dphy-v1-2-5f1b6f25ed92@fairphone.com>
References: <20241209-camss-dphy-v1-0-5f1b6f25ed92@fairphone.com>
In-Reply-To: <20241209-camss-dphy-v1-0-5f1b6f25ed92@fairphone.com>
To: Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Barnabas Czeman <barnabas.czeman@mainlining.org>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>, 
 Caleb Connolly <caleb.connolly@linaro.org>, 
 David Heidelberg <david@ixit.cz>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2

Currently the Qualcomm CAMSS driver only supports D-PHY while the
hardware on most SoCs also supports C-PHY. Until this support is added,
check for D-PHY to make it somewhat explicit that C-PHY won't work.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 drivers/media/platform/qcom/camss/camss.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
index 9fb31f4c18adee886cd0bcf84438a8f27635e07f..b99af35074cdf6fa794a0d2f0d54ecf12ac354d9 100644
--- a/drivers/media/platform/qcom/camss/camss.c
+++ b/drivers/media/platform/qcom/camss/camss.c
@@ -1855,6 +1855,15 @@ static int camss_of_parse_endpoint_node(struct device *dev,
 	if (ret)
 		return ret;
 
+	/*
+	 * Most SoCs support both D-PHY and C-PHY standards, but currently only
+	 * D-PHY is supported in the driver.
+	 */
+	if (vep.bus_type != V4L2_MBUS_CSI2_DPHY) {
+		dev_err(dev, "Unsupported bus type %d\n", vep.bus_type);
+		return -EINVAL;
+	}
+
 	csd->interface.csiphy_id = vep.base.port;
 
 	mipi_csi2 = &vep.bus.mipi_csi2;

-- 
2.47.1


