Return-Path: <devicetree+bounces-147550-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BF06A3893F
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 17:35:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3BD503AE395
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 16:33:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87EC4225A30;
	Mon, 17 Feb 2025 16:33:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QslRI5Ho"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0151225766
	for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 16:33:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739810011; cv=none; b=M4/Y4LbbK0HbotxQTwtBVsUkNqshXJ69lgAsO2pSdpAzDWhv9/4FEMKad048sf4wxQ+OUTYpSuYI5Ct48i9SAXrZ7DSnYR0ufpkiVhK5HoOxldIHQiAE580A759vC2BPblENcDSGFRBxuoSGWrbeGuJstHCA3VEqEnRMGlgouYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739810011; c=relaxed/simple;
	bh=1bE1H788nkndn5WpT67KXk3syh82LSTU83DzpaERA9g=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hr39FMh0Bfnj4SL0pjzmue8cLIk+fOJaLVm7vgcxCsgfusC04I32BULfaY3U7LmZQ5W1LatsARRBCczxLQMtvcY10k+wobp4V7GG5ekJttosB1bb29doE2DR1gf9AmtSuRiJEuaWZGYNR0zQLH0CN4984BZcDa5U1a/UHnm8GXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QslRI5Ho; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-545284eac3bso3732391e87.0
        for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 08:33:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739810008; x=1740414808; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xqfY5O4DAa35IC0/x8APktybht+SrgKAkJthvFS6Lv4=;
        b=QslRI5HoHPHFkzA1x7ba0bvQEc7Rob9wxBkwiuryfT4ZxutAQ1kcz3gUGtlxnS9otw
         pFBojZeywbj3H8NZm/s7tNKWSF+Xt42r8RXDzP9Bu0yjOCb16Bn1DZl6zx6Nw0m5c3RH
         bADbzegG/bALVYIuo0Z7/7ZapJWyDL7Op/Uve4/VXaM0MTdGwimqEEa6R0pHPHlgKti9
         gFR1EY+nMRoJH7oYDwT1LpsOGgC+7DaiVQjM5NOqCMHoXUeBdY1mgxVNtgypf2EE7V+a
         OmotBfyAa9xXqQXryM9K6Aato8V83TK/toWFPHSTroTLsYnukMEYCmFMQ/1pP38B6N4U
         zGeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739810008; x=1740414808;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xqfY5O4DAa35IC0/x8APktybht+SrgKAkJthvFS6Lv4=;
        b=q+MiXBgDDHqy4tZYn4IjsrKFjxDod7bAymS7f59ljffd4A9NeQnDcwYdw1xncMJZRY
         8zKZNss6nqtTk5S+KnK7NVg7nPx3PwDmyzO7UoxtboLFJbrF69hrpIvRgObZWVjEjEuX
         pJF8q6FAUczfrdmIGKt57gYN4+S/2Onyn9kYmE65xcftrPJ5Ma5t6aoQHzC3fWrShCjH
         xsU238IQu5lJGwtp6+qUkkCY08Wsf99v6XdSP9huBdp/Z4qRJELialr5i2xc4Yc6eHR4
         AlVjh4jCshSB266n4vW7x6iKSs4VqObWKfL1GncFy71UjLAPeIie/VCUAcGL2FXAesO6
         EcOw==
X-Forwarded-Encrypted: i=1; AJvYcCXagy1sdwjLAa5PlfQGVqoiJ6HrzwnhDczEvaH4acvyOJWg5EwRs6hIwWiV/NozFfhVH4rF9C/YGxNO@vger.kernel.org
X-Gm-Message-State: AOJu0YztagnHzyY06lsMhUf4AAxjPzuobbhE3M6nWRx0pGFF2XIYp+UM
	1ABW1T6UAFTHgYgK6yxHkC7BjiwGgs6FBv4Tp5N2Gm+LI9/JX4GL8GxLPXR960U=
X-Gm-Gg: ASbGncusDX3p0ibEdwWngVLarWyzxiiA8wpumjbXaTeBrfduY9KpQ9LRB70+8/Rb22G
	BTP7L8f2Q0zpJ3+RhLDhflv/cqEGEjMjYA0aeLzhgfZzMhPiKCb9z2bNYW+cdBcbjAUgQDxfsMb
	SdQbwjO2aYHlxgQJdfEZrRobH8QUzbdlsD87CknV5gK+mNPck51unmaE9Pr6XbGGnoDqHfcLxge
	dnhBw+Jv8c0fZyqKhAU096pXAlyjBum1wSTIFJyG4uJ7BbgeITYPgDHo/7evwEvIaakGldfNOAt
	K5XKfmjmGiHIQ2UvzvBs1rFnOlmVaCh5s8s9HTJQeUtPhmh9ZuXe4p24c5k=
X-Google-Smtp-Source: AGHT+IGvyKTEtQYqLlzIkwF+KPWXzOWc1uhtIoRf0rAuPnLTDLg8j9JwQOoNLX/NFdBWeLf6hYNn4Q==
X-Received: by 2002:a05:6512:6ce:b0:540:3561:969d with SMTP id 2adb3069b0e04-5452fe8f8b0mr3703568e87.49.1739810007704;
        Mon, 17 Feb 2025 08:33:27 -0800 (PST)
Received: from [127.0.1.1] (2001-14ba-a0c3-3a00--782.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::782])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30a2cef18d1sm5695991fa.76.2025.02.17.08.33.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Feb 2025 08:33:27 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 17 Feb 2025 18:33:19 +0200
Subject: [PATCH v5 2/5] nvmem: core: fix bit offsets of more than one byte
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250217-sar2130p-nvmem-v5-2-2f01049d1eea@linaro.org>
References: <20250217-sar2130p-nvmem-v5-0-2f01049d1eea@linaro.org>
In-Reply-To: <20250217-sar2130p-nvmem-v5-0-2f01049d1eea@linaro.org>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>
Cc: Akhil P Oommen <quic_akhilpo@quicinc.com>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2178;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=1bE1H788nkndn5WpT67KXk3syh82LSTU83DzpaERA9g=;
 b=owEBbQKS/ZANAwAKARTbcu2+gGW4AcsmYgBns2TQDQ74eoBJ0Ob47kSFE87N3HMHSFSlm31GV
 LXj2Ym1GsmJAjMEAAEKAB0WIQRdB85SOKWMgfgVe+4U23LtvoBluAUCZ7Nk0AAKCRAU23LtvoBl
 uA5oEAC+rBH1y65jn+MdJB9Wr8vIjiEhX90bpsuoUJainU8PP0FH78HJv+4/EhA4JXs+iTeNqqe
 dwUwHtGFEIOirfOlJp+Gw7yV3gGkHvuFCtT8VqhKU2zZOQ6kb2gWe0gUp7wA+nPGkOup64e2uxt
 N7O9tS1xvr1HyRmeCKGcacm1ddcSlkSEgSlWBgbF7G81cedftPpWazLUla4fULGybklJyQa0sAA
 0MJi8U9TrajgTelQy39D2MwSFLwmeXQlgDa2k6HUFBl5qwsc9RdfPMiZKW0dbn3pvT5QTlpPKlJ
 nOEYZcu2aNUpsAIh3UH7K7WhOmpsj0RtpjOjGGR/5B8/bLf9NMX+u9oIB5tuN02SKuOyV0eHia0
 msnfqo5lfsG0JRBA/aY31W9suAUdkP0EOGYwvFJ0qvqQumZ+HksvCPECMwIhm2knnY0tLEQIGLj
 VYBfTA8O9gX5C3Q0atLaqwJpBj/01mYpaMeSmtan05yoYW60NZUCcRno43AjMaFNopaWyuHPmEY
 GDZed4u2teOSl03EayOXaUVtkopmVD0fo6JwBITW1PXOsNnaAiJGbJxzOYlVIE9XH3QFLO1+Pjb
 deAlE1Wk7jkniuN8s9GmGBdhP5LGznyo4u/Zk3f453HyxTDNUHYdYcOlT/zrT7P2qU74Xrf4mDb
 9lZEJpVvzDPdxtw==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

If the NVMEM specifies a stride to access data, reading particular cell
might require bit offset that is bigger than one byte. Rework NVMEM core
code to support bit offsets of more than 8 bits.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/nvmem/core.c | 24 +++++++++++++++++-------
 1 file changed, 17 insertions(+), 7 deletions(-)

diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index fff85bbf0ecd0f638e21f127370105d9f79c00d2..7872903c08a112f11618a5aa6a42ba505106ef6d 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -837,7 +837,9 @@ static int nvmem_add_cells_from_dt(struct nvmem_device *nvmem, struct device_nod
 		if (addr && len == (2 * sizeof(u32))) {
 			info.bit_offset = be32_to_cpup(addr++);
 			info.nbits = be32_to_cpup(addr);
-			if (info.bit_offset >= BITS_PER_BYTE || info.nbits < 1) {
+			if (info.bit_offset >= BITS_PER_BYTE * info.bytes ||
+			    info.nbits < 1 ||
+			    info.bit_offset + info.nbits > BITS_PER_BYTE * info.bytes) {
 				dev_err(dev, "nvmem: invalid bits on %pOF\n", child);
 				of_node_put(child);
 				return -EINVAL;
@@ -1630,21 +1632,29 @@ EXPORT_SYMBOL_GPL(nvmem_cell_put);
 static void nvmem_shift_read_buffer_in_place(struct nvmem_cell_entry *cell, void *buf)
 {
 	u8 *p, *b;
-	int i, extra, bit_offset = cell->bit_offset;
+	int i, extra, bytes_offset;
+	int bit_offset = cell->bit_offset;
 
 	p = b = buf;
-	if (bit_offset) {
+
+	bytes_offset = bit_offset / BITS_PER_BYTE;
+	b += bytes_offset;
+	bit_offset %= BITS_PER_BYTE;
+
+	if (bit_offset % BITS_PER_BYTE) {
 		/* First shift */
-		*b++ >>= bit_offset;
+		*p = *b++ >> bit_offset;
 
 		/* setup rest of the bytes if any */
 		for (i = 1; i < cell->bytes; i++) {
 			/* Get bits from next byte and shift them towards msb */
-			*p |= *b << (BITS_PER_BYTE - bit_offset);
+			*p++ |= *b << (BITS_PER_BYTE - bit_offset);
 
-			p = b;
-			*b++ >>= bit_offset;
+			*p = *b++ >> bit_offset;
 		}
+	} else if (p != b) {
+		memmove(p, b, cell->bytes - bytes_offset);
+		p += cell->bytes - 1;
 	} else {
 		/* point to the msb */
 		p += cell->bytes - 1;

-- 
2.39.5


