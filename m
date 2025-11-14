Return-Path: <devicetree+bounces-238671-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 25351C5D176
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 13:24:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C83174EF713
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 12:20:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56598317712;
	Fri, 14 Nov 2025 12:19:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=arduino.cc header.i=@arduino.cc header.b="LzGDA1K+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBC2F31576D
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 12:19:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763122751; cv=none; b=U4wkq3G9J+3Lunqp92pcIOMEGfeWblJk+FC0pGYYfZX3QuY+IULUP9LEy1MMT1dgSORRnYhb5mdKH28mXkkgnIwA3h5DrRlzIH3Vv4RPqq6fP+5TgnT/QIEUyeBhncFnrH8IesjnqAYGd/qlH2mCW4AmRaf03NHRj/rdcNBbYYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763122751; c=relaxed/simple;
	bh=cEn/dm7a84KH+HW/lEhZma25VfMkOl2dvWsYvkdTdgE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JnOCavO0bhbL9G4WHItoqt59Epr9qbm9mkzwZP5OprRWBASmmSkTfmrJVqFWJdpXrJYzVh9CQcFGSFyfgJ6LpaxtV75VQ0E5DIw1UAuqrRcLXMzTkcmqeI2bQ4mcZQ7D2ZwwN21IzB5jcRE8+jsfkLjN1vdvr6vBfZUzRltVMAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=arduino.cc; spf=pass smtp.mailfrom=arduino.cc; dkim=pass (1024-bit key) header.d=arduino.cc header.i=@arduino.cc header.b=LzGDA1K+; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=arduino.cc
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arduino.cc
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-640b4a52950so2811243a12.1
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 04:19:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=arduino.cc; s=google; t=1763122747; x=1763727547; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a7NX34+cD9oODAkPpm/3FAcCNA5eKUq4/o0KGOvXUbc=;
        b=LzGDA1K+5MXMqWTM+rUANlfidmir2t34S/FznnWmj5jG7XWyL7nJjU7AtT9lZFTDfc
         VwSS6i3XkkfDNYUbE3Ae4fTSoFr4DXhJzsgnKbdgGb+4VoBj1ohmYjccary/XoqnEIDW
         t8ELJiA/sTa2ObcZOvmnBRLl2DmJhALsmPKnI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763122747; x=1763727547;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=a7NX34+cD9oODAkPpm/3FAcCNA5eKUq4/o0KGOvXUbc=;
        b=PWj2e5iqcqSTMocalQqNquyvArhiusJVUJo3ZyBbIhXFPpGirpuZW5KWUn41IKqY5y
         tFGk9XybEFEP/wIqO5DHj4LEGH6teGPxVQ2xLgyDgup+/9TrMIitM8b3qOjzE2xLrG12
         oOW5YIJJdzqAz3PTT62/l9MmRFKCDgx1Cv2dy/9BaT+uH6ItsyD5JEJeO2P06kR/v4NO
         p/EbWnDNl6RvDOUH9X7ppJS/5rTBFjZ+3tvZM/nvMkNg7X05aqXEHGOTYXvHRLnJqjsi
         dknIueHVwlz6dx7JtoW+11ZxmwexUK4BaI8lOX4OKX8OuRd5tTqXRBICXy7pE5KSccHF
         74Hg==
X-Forwarded-Encrypted: i=1; AJvYcCXVF4AQ54wkZBne3Gra16J0fAd/pya+U3ABDBnqtQBY7tZ7aX4y+6LCm0FDASG8ThL47cI8khgbXl1S@vger.kernel.org
X-Gm-Message-State: AOJu0YzCVpv02VQAjFyRb30boX3S2hanTKs6gxPVnXk76fdD2iuist25
	QYcqST+lO6j3UQEkl/qg3hMkguVlXVkW7QBwu1h0aYjgA7RvFJmkQczNrMG2+43YVYQ=
X-Gm-Gg: ASbGncucBar6Y4oPKe4krvxl+kgeKbGMAQ8VcbrLVjce1cVmTawG02PQR2i11i/43nT
	ikNoMcHSH7hxY2nhIXC0nluHZMBvu2WHmJYq8LKuzDumYTglF5g1CVfSI3pmZNf9VDLVLrlSCxp
	/bYDPoExoJM+a1tpp6k20wKTKI3DEvebA7kyrpHVadyvngS/l4iFhO9FvWZvJsK2EhQlp1XI7zF
	rRhgtHb0qsfI/rh46APRN/RXxbGhAGYMUm0Vwb9kMrcv8ufR1ZV2s62H4UXKM8tcQ+3dYBLrhKw
	UDjlhL5AYBW5sO/8uFJiDuVNDar/GpZF/EC9en83DlXoekPqudxvxHML1PZzJcbgKgnGEXOZJe+
	Brpnbhs2hbXFTJfvC417YElsFrTrAkGL7++INYoa2lCEqHbaf3DJbjVOb/hUvsSlmh0PKHg5BR4
	pWl6/nMTXp3ao3Eepv9yS0rSivFo6f1nk7okHTKS8dTv+tL2xrhz6HRwVaL8CFGfoTvoslCQ==
X-Google-Smtp-Source: AGHT+IEnawsi/KLnq7VI8wePAuKiUvi2n2elPHE4luxBCis3Jn3Wf9okll7eF7OL8bSBg/Qymrz8YA==
X-Received: by 2002:a17:907:94cf:b0:b72:c1e9:5f1e with SMTP id a640c23a62f3a-b7367808670mr284580066b.3.1763122747101;
        Fri, 14 Nov 2025 04:19:07 -0800 (PST)
Received: from riccardo-work.fritz.box (host-82-52-164-74.retail.telecomitalia.it. [82.52.164.74])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fed6315sm375295666b.64.2025.11.14.04.19.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 04:19:06 -0800 (PST)
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
	m.facchin@arduino.cc,
	Riccardo Mereu <r.mereu@arduino.cc>
Subject: [PATCH v2 2/6] dt-bindings: trivial-devices: add arduino spi mcu interface
Date: Fri, 14 Nov 2025 13:18:49 +0100
Message-ID: <20251114121853.16472-3-r.mereu@arduino.cc>
X-Mailer: git-send-email 2.51.2
In-Reply-To: <20251114121853.16472-1-r.mereu@arduino.cc>
References: <20251114121853.16472-1-r.mereu@arduino.cc>
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
index 2eff6f274302..d0f7dbf15d6f 100644
--- a/Documentation/devicetree/bindings/trivial-devices.yaml
+++ b/Documentation/devicetree/bindings/trivial-devices.yaml
@@ -59,6 +59,8 @@ properties:
           - adi,lt7182s
             # AMS iAQ-Core VOC Sensor
           - ams,iaq-core
+            # Arduino microcontroller interface over SPI on UnoQ board
+          - arduino,unoq-mcu
             # Temperature monitoring of Astera Labs PT5161L PCIe retimer
           - asteralabs,pt5161l
             # i2c h/w elliptic curve crypto module
-- 
2.51.2


