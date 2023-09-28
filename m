Return-Path: <devicetree+bounces-4340-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 59D517B2147
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 17:30:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 50ED81C2099C
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 15:30:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F37A4F130;
	Thu, 28 Sep 2023 15:30:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E52B64E291
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 15:30:18 +0000 (UTC)
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com [IPv6:2607:f8b0:4864:20::52b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 14C38AC;
	Thu, 28 Sep 2023 08:30:17 -0700 (PDT)
Received: by mail-pg1-x52b.google.com with SMTP id 41be03b00d2f7-570a432468bso10819349a12.0;
        Thu, 28 Sep 2023 08:30:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695915016; x=1696519816; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=USo4wRG0tKgJ2qeKHabBE6AhpAZ7DR66yrvaU6oGcec=;
        b=AWwCq4xsLU0qAmwirSv+y2wkqOCv1vIhFw9CP0JdrIvF0Ci03uID9XiQ6rtZ56GUey
         34z9oAmyFYc9t8DBAzdmXrLyOr0Udac9iq/o6plNGv6cZehdObmxCU0FdGWrP7aBQEjC
         WXnBiKM6VGevw8oMJD0sHXtpEDQYnVNjHkFi58/+OQzzGCbMA/EnSMK5fEABlePRQy18
         ViSem7eTZRiVXVSb4+dH7R/nXv1LwJ8QiKgBidohSEg1Qxm/xBzxiOBivEVti5jdUuN8
         nphtZduzaOvb4Q9phpiXe9Y2LIKY46wh8c7yGBHYfaKcbyZun5exh1YnSoLHzZgX0rxi
         0ASg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695915016; x=1696519816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=USo4wRG0tKgJ2qeKHabBE6AhpAZ7DR66yrvaU6oGcec=;
        b=kVCKXmi9EFArSWKgFo9e8oyJD2VBoMXeEjoUUqRqEsebvhLXiUja7GwmD9HwnXchbA
         lTi6fpgtj9CMWMuY8IQ3QJ+xPrXf0sL+T0xg91ju/pd2G9bS2i5jYycy8ItPJwyohWh/
         7KXFwG+erze1tsdo3cNuuN+OcTSDt0Xc07FEnB0c9ZkTLlgnEOloPBLnr4LuYjfmA64A
         r9XBvYZBwj+ioL8igi895/MHsI6mLz2WPWcrgnmKMmqBNjhUf7pLrV44Jr7ZDGWficTv
         RnCa6eqD6Lwe+mdy3k/7y7qcczrbp9gA0FwhwhMU2LN2hr2f5SEdPR/xXm1Aokn38g0Y
         aBWg==
X-Gm-Message-State: AOJu0Yz+9WqiTZa7IKPbSnYqdXUPz46vScChjpnnPILlDEi5Cx9B6MzX
	PsGUuV6jy9mm8hy2hu9wxgUzZYFJQFg=
X-Google-Smtp-Source: AGHT+IESra6vuvk+hflCFcrBbaCinaKDc26/Cs0BqMmhB1cri/ZPa03TJv+TPzKPkalUbjtN7CMPNQ==
X-Received: by 2002:a17:90a:fe98:b0:279:e19:86db with SMTP id co24-20020a17090afe9800b002790e1986dbmr2568851pjb.8.1695915016137;
        Thu, 28 Sep 2023 08:30:16 -0700 (PDT)
Received: from octofox.hsd1.ca.comcast.net ([2601:646:a201:19d0:a19c:f3d0:698d:f7a])
        by smtp.gmail.com with ESMTPSA id m6-20020a17090a414600b00274a9f8e82asm3892318pjg.51.2023.09.28.08.30.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Sep 2023 08:30:15 -0700 (PDT)
From: Max Filippov <jcmvbkbc@gmail.com>
To: linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	=?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
	Max Filippov <jcmvbkbc@gmail.com>
Subject: [PATCH v4 1/5] serial: core: tidy invalid baudrate handling in uart_get_baud_rate
Date: Thu, 28 Sep 2023 08:16:27 -0700
Message-Id: <20230928151631.149333-2-jcmvbkbc@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230928151631.149333-1-jcmvbkbc@gmail.com>
References: <20230928151631.149333-1-jcmvbkbc@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	FROM_LOCAL_NOVOWEL,HK_RANDOM_ENVFROM,HK_RANDOM_FROM,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

uart_get_baud_rate has input parameters 'min' and 'max' limiting the
range of acceptable baud rates from the caller's perspective. If neither
current or old termios structures have acceptable baud rate setting and
9600 is not in the min/max range either the function returns 0 and
issues a warning.
However for a UART that does not support speed of 9600 baud this is
expected behavior.
Clarify that 0 can be (and always could be) returned from the
uart_get_baud_rate. Don't issue a warning in that case.
Move the warinng to the uart_get_divisor instead, which is often called
with the uart_get_baud_rate return value.

Signed-off-by: Max Filippov <jcmvbkbc@gmail.com>
---
Changes v3->v4:
- drop WARN_ON from uart_get_divisor()

 drivers/tty/serial/serial_core.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/tty/serial/serial_core.c b/drivers/tty/serial/serial_core.c
index 7bdc21d5e13b..3f130fe9f1a0 100644
--- a/drivers/tty/serial/serial_core.c
+++ b/drivers/tty/serial/serial_core.c
@@ -431,7 +431,7 @@ EXPORT_SYMBOL(uart_update_timeout);
  * baud.
  *
  * If the new baud rate is invalid, try the @old termios setting. If it's still
- * invalid, we try 9600 baud.
+ * invalid, we try 9600 baud. If that is also invalid 0 is returned.
  *
  * The @termios structure is updated to reflect the baud rate we're actually
  * going to be using. Don't do this for the case where B0 is requested ("hang
@@ -515,8 +515,6 @@ uart_get_baud_rate(struct uart_port *port, struct ktermios *termios,
 							max - 1, max - 1);
 		}
 	}
-	/* Should never happen */
-	WARN_ON(1);
 	return 0;
 }
 EXPORT_SYMBOL(uart_get_baud_rate);
-- 
2.30.2


