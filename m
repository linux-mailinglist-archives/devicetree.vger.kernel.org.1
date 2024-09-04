Return-Path: <devicetree+bounces-99779-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E76D396B2D9
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 09:28:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A43F22873E7
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 07:28:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9387E150980;
	Wed,  4 Sep 2024 07:27:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ebEkPiDs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C58EC14A62F
	for <devicetree@vger.kernel.org>; Wed,  4 Sep 2024 07:27:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725434858; cv=none; b=T8grKiJ47nWH7tPC7/x295z1EXvgr1RScRzxrXlsEKs9VdWrDJvBu7PtnffEZy34JHr6vBdx4rS+ph7DWytuBOkEoeQ/bsTQ+Ip1A9VtKUQSbExKQS8ubObvc69sIwJExJxdr7zJrrX+W/O6lvkuxaXyVlbZptGFaz1hoIdnMrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725434858; c=relaxed/simple;
	bh=HFKyY5jobT+EEiF3Y/0HETSYeKrn/igGtDbnGCiZFP8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=SmG329SV3UlcD9+KG/G7HjRf6wf/8RacHLvflQd+sW6UbInp8dJQ6wCEGSGDpNYc04/Isnuirl8yfV/gGd0kv2x4lBNx0ojh0gQABnELdyFbTZ/JrtPB+Rz/mrzTFGJJbsFXRBWBOhVKqnV8mR8Gt8Fk1ENru6APb0s1yomlm2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=ebEkPiDs; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-a8a1d78e7b0so54175466b.3
        for <devicetree@vger.kernel.org>; Wed, 04 Sep 2024 00:27:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1725434855; x=1726039655; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hYWMKG4k6/aCnq2O9xXhUdz5T7fph7bWB64VuOzrqxY=;
        b=ebEkPiDsLR/GtP9vui31LC3vHDF18hQOr8DGbGHqXvtsdslCY7xkojGs710lkVpgtV
         zSikKwDrPGmuXynWgmUfKb+mJeJM4XfzDICdS/2TTknI5CiVy5Mi9IhmBQzlAoO24n8D
         F/6aLSFfY9x/OTzf3/KqOERKHCbE50KD2A5QBz3eVh7yHqAANsOaLvSNJuu6O3fnMe0d
         djGE/4UKiqDKQEQ8pvlcN/2WD4RlP5pMPgz/RqTKHR8O7S0tgz6Olxd5Cla4U/qNrm5k
         cJGq4P0jHZugjH+paiUb4TmtyD7d2P1VcTwlEmz3inmrdlWlLv7dmLX9w+fRd0qYwXd3
         FYkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725434855; x=1726039655;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hYWMKG4k6/aCnq2O9xXhUdz5T7fph7bWB64VuOzrqxY=;
        b=ddUOo66g4AWkVAAg4+1qRcV9h6isd6tT3Ajf8XkMDhQIsMV2lFqOnRmpZqI0qya7Yu
         yhvueLVC1WApVATtOOJ/GgBS6pJfq9I6mGO/nSNG0wD9cLoh8BmqFXVaa/umwxbaOA9i
         dRn+y4xtqGW6nWnqOc+DjqngQGh6KdBkB9W9uZUmoMdCIyV1/jVvHSNJEwMDxkQv1Na1
         wYU6SX4un0k6er2jJcKT6QokATwgCt6nWBJ6dBWAsbS3cwUzfBWChQetjIMwH0P95pOH
         +EDYlmlCDgq1xYBLinZDLg6W1S/gYELemjOSLKR4TeELdY/tPq6JymHGiSjJnAoLYOAA
         xvMw==
X-Forwarded-Encrypted: i=1; AJvYcCVFF9QRbuVSkmerYxUntzVZuKIliRf/bAaezEmA0fgN2KizEBzxZMKiJijRw44suCKHekSLKllzlhYm@vger.kernel.org
X-Gm-Message-State: AOJu0YwpkoWTLB5F40uLjaUxnqxs+87TSf9kA9woRomN4j8HLCSLnsXh
	xnFF85PwZXnywnOnfefk+J1a/LiTSiobVPHx6gJG5xE5voPdjEGBTWB8tzDtTnc=
X-Google-Smtp-Source: AGHT+IGLQXVdPTy6P4iJ6b9Hi7B3TbN9tg+qBPzfs/dxh4CRJsgPSaigTu3J+7vG3GRr4k+zsHFqhQ==
X-Received: by 2002:a17:907:3f9c:b0:a7d:e956:ad51 with SMTP id a640c23a62f3a-a8a3f183312mr111185166b.21.1725434854106;
        Wed, 04 Sep 2024 00:27:34 -0700 (PDT)
Received: from localhost.localdomain ([188.27.130.242])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a89891d77fasm771151766b.167.2024.09.04.00.27.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Sep 2024 00:27:33 -0700 (PDT)
From: Alexandru Ardelean <aardelean@baylibre.com>
To: linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: jic23@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	lars@metafoo.de,
	michael.hennerich@analog.com,
	gstols@baylibre.com,
	Alexandru Ardelean <aardelean@baylibre.com>
Subject: [PATCH v3 6/8] dt-bindings: iio: adc: document diff-channels corner case for some ADCs
Date: Wed,  4 Sep 2024 10:27:14 +0300
Message-ID: <20240904072718.1143440-7-aardelean@baylibre.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240904072718.1143440-1-aardelean@baylibre.com>
References: <20240904072718.1143440-1-aardelean@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Some ADCs have channels with negative and positive inputs, which can be
used to measure differential voltage levels. These inputs/pins are
dedicated (to the given channel) and cannot be muxed as with other ADCs.

For those types of setups, the 'diff-channels' property can be specified to
be used with the channel number (or reg property) for both negative and
positive inputs/pins.

Signed-off-by: Alexandru Ardelean <aardelean@baylibre.com>
---
 Documentation/devicetree/bindings/iio/adc/adc.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/adc/adc.yaml b/Documentation/devicetree/bindings/iio/adc/adc.yaml
index 8e7835cf36fd..b9bc02b5b07a 100644
--- a/Documentation/devicetree/bindings/iio/adc/adc.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/adc.yaml
@@ -37,6 +37,10 @@ properties:
       to both the positive and negative inputs of a differential ADC.
       The first value specifies the positive input pin, the second
       specifies the negative input pin.
+      There are also some ADCs, where the differential channel has dedicated
+      positive and negative inputs which can be used to measure differential
+      voltage levels. For those setups, this property can be configured with
+      the 'reg' property for both inputs (i.e. diff-channels = <reg reg>).
 
   single-channel:
     $ref: /schemas/types.yaml#/definitions/uint32
-- 
2.46.0


