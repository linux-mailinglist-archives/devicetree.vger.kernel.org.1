Return-Path: <devicetree+bounces-235734-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 90CDCC3C139
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 16:34:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 44DB61AA7F74
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 15:32:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CA8A29D268;
	Thu,  6 Nov 2025 15:31:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=arduino.cc header.i=@arduino.cc header.b="aVM6n5z1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07B4529B20D
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 15:31:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762443088; cv=none; b=dFKiOEXHHNsZvvqN2QBCDyk+MfPSxitdaXgop7aUi4l1N3OqBRn/IXb8+ETW+i6bOksC+xXAP9FGtv+VgpP+atf+WKfrY1CyVRBYWt34pRmNUZ5aGBjC8YcOBfXxDpmIeunopbvy17yek5EW860z8IQbnXlXdM22JETsGf4KYHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762443088; c=relaxed/simple;
	bh=zyGou655DgPVWbvzpRGsIISTwPvEcU+Qm+OetkBFuJE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=cQjlRIvz9VyqDu8ceHclctuyOAo2y2/ZpZF+/sawy5xVHgpw7ZlzRgNsxuxnbCALpTzAy6S2IbEY8N7/vQcnZgbJOVplx+ADr4wX+EPzxhWYYof5QU7Jm4h/Ubp0HTtzz/W0Cny91fIGGmcycOFamYvwkTOWU2P9dF5SEQKCoTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=arduino.cc; spf=pass smtp.mailfrom=arduino.cc; dkim=pass (1024-bit key) header.d=arduino.cc header.i=@arduino.cc header.b=aVM6n5z1; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=arduino.cc
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arduino.cc
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-429c7f4f8a2so1203867f8f.0
        for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 07:31:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=arduino.cc; s=google; t=1762443084; x=1763047884; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qdoIcRkh0qAEi2h/VedrLcowdMk122XxoHkRGxzNBLc=;
        b=aVM6n5z1uAFpFgePUg9wHhkpERhSDjziYWcayZ0caqNPSDpvnmjLvg7zjipKEKXReq
         39BbbStvCa8mrwXBgPFvuoi3VFiJN3tpoh5NZNIqJVS6X9IQ3tOZ32ukdawEVVW4QS6D
         oUU9cb9cnVLUkT9aoYrm733298++GTdXiO7+g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762443084; x=1763047884;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=qdoIcRkh0qAEi2h/VedrLcowdMk122XxoHkRGxzNBLc=;
        b=wwrVkRGCt7xO3LHv/RuVP1LP8NUe6XB0Ch9bDZ+BrpP7d2QhgLxCObMqZSd8o9tjDw
         QY7ySAlY1mbRFyhPEwg9BBHhwTJs2E4qzb2+W22RJEzFY5em9g+K+BYQ6KSVSJdqiszx
         qcS6GyKYP00crFctiYSsuKS1E3x0ym3cncy21XkDq+BT1s+9NMK+oLBUaSTlggml0eDC
         2jL83r970QyneN1j5lzHQRfOZzJANMViTrNZrJJwd34QVL/db1hkmJK+oMElSJuFoA7w
         FWQZVlBuvq1F6f9kuPNaBYSY+Ycrt+2yhEpQkeIrDwRFUyiOOPypxkKMvpUXZvoe0lGD
         VVCw==
X-Forwarded-Encrypted: i=1; AJvYcCWNW6gRgWz/R46erpEGMQJSjr9LwntmG7E+e3OuPxMZS1+B9ZXPP0O5cyQY/gXfKFTJv4lUgTaDAoDW@vger.kernel.org
X-Gm-Message-State: AOJu0YwXfctuQ5O2ggNlFPnbTrpuBdR2MYcLGIIiT0GFbRoruoCso8ih
	DV5YVmMwBkMUyr+wiBbzVpIEyKPKOJb9FIS/r5nd0cLlXlZ8h/Oiw5NRgSMkn55ltzo=
X-Gm-Gg: ASbGncuVCnLByrMp78fqpDeO1cL4zuxRkox2KD9UXNs53ws2Q7dFGtWaB4M+Gp5KuYa
	N4Eka+aUzpWznHtuN7APYsQQqmjQA/z4pAbC8b71GaHSDcS8OGRzg/vSY0NjJpttLOD2glJWHMx
	KjrcvKm/AmNfzT/3oMqcHLIqQxM132ZTmJNnee8aSi7fIo06NtitCDlv0a5Y6miSGT3KL+kIwM4
	0iIZGoFnL/QKXhbwpUM1sWZidvTzwRnZIOFZQAnUArVkwRlsuGywGpI62h3tbvv2ttGvpPwEW+O
	sjgmvL5IkHOrvpUkB1U3Y7hNbEi76A9n+FHenkvDn/aTAxI47IfAJaRPaLSFW7UCKgR1+fsiPxr
	YP2l+CNYVKeDUguQRva7XY8xU278dH1ZlGnNUTQnXDuW3wo5/9JzlQVwyyBS1k30qyX8+RPU/4V
	QhbcoZAW/hOrIjFMotIaalTtqq
X-Google-Smtp-Source: AGHT+IE11tqb7MERlvkENeEoJrFa0Bnsi91DGqfmPPudaUG+82H0TbZwLnEcFpdLbyB2kEFZoFWXMw==
X-Received: by 2002:a05:6000:26cc:b0:425:82b4:a099 with SMTP id ffacd0b85a97d-429eb0d7665mr3707607f8f.0.1762443084189;
        Thu, 06 Nov 2025 07:31:24 -0800 (PST)
Received: from riccardo-work (public.toolboxoffice.it. [213.215.163.27])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429eb49a079sm5966719f8f.32.2025.11.06.07.31.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Nov 2025 07:31:23 -0800 (PST)
From: Riccardo Mereu <r.mereu.kernel@arduino.cc>
X-Google-Original-From: Riccardo Mereu <r.mereu@arduino.cc>
To: andersson@kernel.org,
	konradybcio@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	broonie@kernel.org
Cc: linux@roeck-us.net,
	Jonathan.Cameron@huawei.com,
	wenswang@yeah.net,
	naresh.solanki@9elements.com,
	michal.simek@amd.com,
	nuno.sa@analog.com,
	chou.cosmo@gmail.com,
	grantpeltier93@gmail.com,
	eajames@linux.ibm.com,
	farouk.bouabid@cherry.de,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-spi@vger.kernel.org,
	mm.facchin@arduino.cc,
	Riccardo Mereu <r.mereu@arduino.cc>
Subject: [PATCH 1/5] dt-binding: trivial-devices: add arduino spi mcu interface
Date: Thu,  6 Nov 2025 16:31:15 +0100
Message-ID: <20251106153119.266840-2-r.mereu@arduino.cc>
X-Mailer: git-send-email 2.51.2
In-Reply-To: <20251106153119.266840-1-r.mereu@arduino.cc>
References: <20251106153119.266840-1-r.mereu@arduino.cc>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add spidev item in order to describe in Arduino boards one of the
interfaces between microprocessor and microcontroller.

Signed-off-by: Riccardo Mereu <r.mereu@arduino.cc>
---
 Documentation/devicetree/bindings/trivial-devices.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
index 2eff6f274302..c44fff4ce2e2 100644
--- a/Documentation/devicetree/bindings/trivial-devices.yaml
+++ b/Documentation/devicetree/bindings/trivial-devices.yaml
@@ -59,6 +59,8 @@ properties:
           - adi,lt7182s
             # AMS iAQ-Core VOC Sensor
           - ams,iaq-core
+            # Arduino microcontroller interface over SPI, e.g. on UnoQ board
+          - arduino,mcu
             # Temperature monitoring of Astera Labs PT5161L PCIe retimer
           - asteralabs,pt5161l
             # i2c h/w elliptic curve crypto module
-- 
2.51.2


