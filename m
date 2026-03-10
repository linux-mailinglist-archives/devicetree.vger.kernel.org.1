Return-Path: <devicetree+bounces-273164-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UDyDIoRgr2kDWwIAu9opvQ
	(envelope-from <devicetree+bounces-273164-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 01:06:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D83F242DA7
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 01:06:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D342B300BE85
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 00:06:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C6362E65D;
	Tue, 10 Mar 2026 00:06:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VAywuMDX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f178.google.com (mail-dy1-f178.google.com [74.125.82.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EBAA22339
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 00:06:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773101176; cv=none; b=BEjvn0edbIo6YB3CGrgpxrSksvfGxfnOZ7L1kJmLdQEdpNK71QjkSlTTw7hChIRLUGlBp5/FTPab5IZwkn2EppWpYl/n3Q+Br5HCTKByggPKO9XXc35/3SYgvf4MgSJn+zmZdzbj+mox6zLRkyUQz0JMx4zJSxiiQ5icxtazGmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773101176; c=relaxed/simple;
	bh=ld0DrMvQU8Ko50j0hkr+b6ItAjzhfHy/8Pn0kDki4xE=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=Z/DO6+9ZnUslpWUFynShbQxP06qUMipKR241erS4SorEzRgMAjesr6hjZPVQ8DDCPaqQ1Kl3ykoOibbD9t/yH63BoxBwLW+ikTAc3qW8cgaqdWF3uQ28JVfUBCD+rKro59Z/flgvCTf5C/DmKvlO2kYVQSRaUALd4xosyZUjFZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VAywuMDX; arc=none smtp.client-ip=74.125.82.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f178.google.com with SMTP id 5a478bee46e88-2be1ab1fa7dso5154508eec.0
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 17:06:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773101174; x=1773705974; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=TxBEXmZ3IxqnfxhtIXFBTbR62Sv8OmJlWP3djti/sgE=;
        b=VAywuMDXoCE5uJ+PX/WoiYR1TmmVs27IDG6N2UBlldTHnUBh0irmPzuGG/5dBliYwh
         sXvGsG2xw44t+fr+cFs5So0W949lYBdHy0lFcVZb8v8aArzwGRUBLDctrMaRGpCURLkq
         DP7YN3ZyJcYcyBlR8KyTl0bDeqTSXX1GjtHKccTwwUbI6LZEFtYKdhQbSLIRkHdCTKzQ
         reQFiffinVmx9jp0SePO4Lg/tdBzMOpKTgDS06iKsoPrCivBh3A+3+NIB82KRWh/Z8lv
         lGJyp5zE+6HnreoT898+fpeCFn+KavXT4uY+LBLR2Sg2nr2aWSSkAiYoqSCEsEwbrrBA
         Sgmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773101174; x=1773705974;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TxBEXmZ3IxqnfxhtIXFBTbR62Sv8OmJlWP3djti/sgE=;
        b=WeafrMnfsql7N6/eTrrMC+qCdkIkP8rTzDhBd2J+ZCY3NYVn5SrLCKCvB3+gmJQq/2
         q8X1NRy/iwyCT8fLYBqRUtb3LDelG7KhPhJ5dstoYTLBfWjhfpGAQxs3Fc4PulTVnR7m
         9ZmADV7/8Sazo6Drai7acQF7jILotyMECd5P3X+uMd3J9mqQgSCVaDTbZs1eO6Hvv3jz
         2Iehsxip2Giu7HDY1b/wLj4FisgetRqWyRY6wloF3AP++J+tyWPmMY7KV/CF0u35bdgL
         1E7TMz0y45s6LCnsfsPmVQQZtBIFFfKhSqaR3TECLqxMTxZ93aA/+Ie0+KLdlAyeTzKS
         4jMA==
X-Forwarded-Encrypted: i=1; AJvYcCVtneR0jEi7ILAObc0WM/3U9VdJL+j7173j191k6rgFlkj4T5Br1qD+Y2KnJeXQzNVkJTaKvaLDlKEL@vger.kernel.org
X-Gm-Message-State: AOJu0Yz8QckHBuMbBmAJFs73WC6ai0Zvl8mngN1w+/ztodPaE3zC6U0f
	xew6rD+qckHCBAauPWXH0IGUDPccRUhUoGB+E0ZaLnFsRdHcXXUZyNLY6z12fg==
X-Gm-Gg: ATEYQzy7fZMS9hbc+o/fK8V2PgZnj8Yu1OCkcdncBsQ9dCqv/lJbGscERz3wP31t/Ar
	mShg0qlzM6O2jeQsJTbJzXVLgn/apAd3Sizn0yVriNWkUa3xtEctevRs+zykeW91DBZMqy/JIUi
	a6yXH0oFQCjWR2IqyocF7qEyE+jQ5+/Wi+VbrAbUZzzDhobl4y4UMCQlrCQJcU4LozQWIs7wmHh
	fW1vIiSI0zntMG5Jbbvra1JxaDrRotIXt3DAlH7YgAPPCMsfvnl9U/4DAtU6gDZlA4nTS5ScZiL
	joVE5u12nPegefWkK2xKWsWGLxuGkwXWOYMeMkyGBqM6bPyxXbB1eW5Mumpv79kEz1lcq5VPPdK
	hGjnmntOThKvlELni9rNU6fN8pcduOVHpQPmMtJSGOvfIRRl+ykPBGagFLbsAVcvhr12rnyez6C
	7J/WjKsU+SObxywXWlgo5iPUKXfedCPvvPmL0ImyXeYa3/SlJjQBTRKHiK/OGI1ZRh4jB7
X-Received: by 2002:a05:7301:658a:b0:2ae:5d3b:e1ba with SMTP id 5a478bee46e88-2be4e02c092mr4872425eec.23.1773101174092;
        Mon, 09 Mar 2026 17:06:14 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:1b3:a802:e566:5060:45a8:d0c9:5e8d])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2be4f9836b6sm10959358eec.31.2026.03.09.17.06.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 17:06:13 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: gregkh@linuxfoundation.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	Fabio Estevam <festevam@nabladev.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v2 RESEND] dt-bindings: serial: snps-dw-apb-uart: Add RV1103B compatible
Date: Mon,  9 Mar 2026 21:06:06 -0300
Message-Id: <20260310000606.415206-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 8D83F242DA7
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273164-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action

From: Fabio Estevam <festevam@nabladev.com>

The RV1103B UART is compatible with the existing DesignWare APB UART
binding. Add the rockchip,rv1103b-uart compatible string.

Signed-off-by: Fabio Estevam <festevam@nabladev.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
Changes since v1:
- Make commit log more concise.

 Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
index 6efe43089a74..685c1eceb782 100644
--- a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
+++ b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
@@ -71,6 +71,7 @@ properties:
               - rockchip,rk3568-uart
               - rockchip,rk3576-uart
               - rockchip,rk3588-uart
+              - rockchip,rv1103b-uart
               - rockchip,rv1108-uart
               - rockchip,rv1126-uart
               - sophgo,sg2044-uart
-- 
2.34.1


