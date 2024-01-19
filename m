Return-Path: <devicetree+bounces-33185-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A4438327FB
	for <lists+devicetree@lfdr.de>; Fri, 19 Jan 2024 11:48:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EA2841F251F0
	for <lists+devicetree@lfdr.de>; Fri, 19 Jan 2024 10:48:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA08E4F5EA;
	Fri, 19 Jan 2024 10:45:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JkDcVPQU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 333384F1E4
	for <devicetree@vger.kernel.org>; Fri, 19 Jan 2024 10:45:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705661144; cv=none; b=IpFbNij0KrCyvSf5y6VVJSJK4I20KmVjgHeXDQCFi43zqeE0+G2j8nBTxSdCDbUlCsADUM+zBLnJR7SozE7gNDy8OL6SaKn2mLLwqvrp51VHP9s+DIBK76cItH0+/4L2ilWHWnhr9mRD6R+tUf65hT0xXzX9OT+V+oWbOx910rI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705661144; c=relaxed/simple;
	bh=yyPxa+2O3PUiMwwg0ga5y4EkBLkh+hUE/RHLPR2apyE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=lSpX3BkMEdSBHbMSEN8GPPD+5Aa04cV9aYA5IdpsaOBGyvF3BNWMpyUbdHiFfyQ0yCnqsKAAjtG2sFvVXnW9Zm6fhxuemgMSRqqvHIea0iZVZ19RE9F+bpgmE2AK8EtgbH/hxua85NN/4tsEqWiQXC3uiBuVh70ttTLSaXrCCm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JkDcVPQU; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-40e86a9fc4bso7733305e9.2
        for <devicetree@vger.kernel.org>; Fri, 19 Jan 2024 02:45:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705661141; x=1706265941; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BKtqqOLjqJGdMtonI4P5mEMTKVliGwJ+zwCnWH5C8bk=;
        b=JkDcVPQUrStKHVzWG+vOilni6QBhiBU2uCIY8gzHTHgveta/kDtaGwKlMF4M2sO5PM
         ovB+p//Zu0E8y7pylMIxXIiPmor+3VYg0US9fv9bUk/m9bVu87pEdfAJAiod6oCWoV1H
         ye6g+zgQhwa5iXZMX+OyUQ8auH1Hjt1ijKspPrsQcOLWIslq5lGUD4BMf7lie28l9JJ5
         Pzly8bf2rpTltcGZSnr0/XmJtfK6C+PgFKAdJCRCwYpTHp/LmFuci1EAZvMYHhQvfofO
         mJQ9I518tZfwEeIFr9iv8xAly/1i0BnfWvxlnepqXUlhfouWo9advrOCOvMhvj1OCbXR
         guxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705661141; x=1706265941;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BKtqqOLjqJGdMtonI4P5mEMTKVliGwJ+zwCnWH5C8bk=;
        b=b1o+oLl2n9Eu5IqAbAID2oAg+7HQXjMpAqCU6XyuH9DZk2iivsdQV4muslkH9csdce
         dYH5Tm66QpMHAbos0gF4olAgXPw9F3WXpY+r5qzum0oAKyf9ikPDmYX2I50vTsfKQ7TQ
         slEkHWJeAAs/LuvjVKNBVVNqwnbuA2KDvzqrH6M8zDi0i2N4nSC3jT9GfiRVkwnIqXLf
         X+nb3FrVTd2vyQHKBcH/HzQVo8QLaoUEDLYKu92Rxq6KXvRFQPIZhmpVTaTER3UMStdp
         pnctjgbooRapGuYWlAtPzmjEgxEMHpD3uy+qTvfLtKIfL+Tb1K0X/Sczs+Fu7P1MnWcg
         lsmw==
X-Gm-Message-State: AOJu0YwZWS6Q79fPz1HWsCXCD8orHmoD8wF85xWN9dZqaY2qbK2I7Ima
	siew8iUBajjaMwJoamlLUawL1CbEdVmlWOzw2jW1apPxtWf13I+QeGzHzlXPSfw=
X-Google-Smtp-Source: AGHT+IG4Y1qsP7t7ylEa/vU+m005rweLwKBMwyulcKNBD5OybDrKdZCdyTNr5tSCDvcQkIt7aSdNiA==
X-Received: by 2002:a05:600c:5116:b0:40e:86c0:1d16 with SMTP id o22-20020a05600c511600b0040e86c01d16mr1301827wms.150.1705661141695;
        Fri, 19 Jan 2024 02:45:41 -0800 (PST)
Received: from ta2.c.googlers.com.com (88.140.78.34.bc.googleusercontent.com. [34.78.140.88])
        by smtp.gmail.com with ESMTPSA id fm16-20020a05600c0c1000b0040ea10178f3sm77470wmb.21.2024.01.19.02.45.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Jan 2024 02:45:40 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
To: gregkh@linuxfoundation.org,
	jirislaby@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: alim.akhtar@samsung.com,
	linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	andre.draszik@linaro.org,
	kernel-team@android.com,
	peter.griffin@linaro.org,
	semen.protsenko@linaro.org,
	willmcvicker@google.com,
	Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [PATCH v2 13/19] tty: serial: samsung: don't compare with zero an if (bitwise expression)
Date: Fri, 19 Jan 2024 10:45:20 +0000
Message-ID: <20240119104526.1221243-14-tudor.ambarus@linaro.org>
X-Mailer: git-send-email 2.43.0.429.g432eaa2c6b-goog
In-Reply-To: <20240119104526.1221243-1-tudor.ambarus@linaro.org>
References: <20240119104526.1221243-1-tudor.ambarus@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The bitwise AND with the fifo mask is used to check if the fifo is empty
or not, it doesn't care about the length, thus the comparison with zero
is implicit. Rely on the implicit comparison instead.

Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>
Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 drivers/tty/serial/samsung_tty.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/tty/serial/samsung_tty.c b/drivers/tty/serial/samsung_tty.c
index f8a8b459a86b..333ffa3a76a3 100644
--- a/drivers/tty/serial/samsung_tty.c
+++ b/drivers/tty/serial/samsung_tty.c
@@ -988,7 +988,7 @@ static unsigned int s3c24xx_serial_tx_empty(struct uart_port *port)
 	u32 ufcon = rd_regl(port, S3C2410_UFCON);
 
 	if (ufcon & S3C2410_UFCON_FIFOMODE) {
-		if ((ufstat & info->tx_fifomask) != 0 ||
+		if ((ufstat & info->tx_fifomask) ||
 		    (ufstat & info->tx_fifofull))
 			return 0;
 		return TIOCSER_TEMT;
-- 
2.43.0.429.g432eaa2c6b-goog


