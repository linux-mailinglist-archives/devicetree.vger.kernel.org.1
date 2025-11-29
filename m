Return-Path: <devicetree+bounces-243142-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 18E11C94389
	for <lists+devicetree@lfdr.de>; Sat, 29 Nov 2025 17:43:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F31693A58DC
	for <lists+devicetree@lfdr.de>; Sat, 29 Nov 2025 16:43:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D50C30FC13;
	Sat, 29 Nov 2025 16:43:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="E1xEiAYQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3AA530EF66
	for <devicetree@vger.kernel.org>; Sat, 29 Nov 2025 16:43:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764434614; cv=none; b=jbTCCkmdDp1xaxXmSybpZqNq7n//SXkT2+xa6GihiDj32fabF16jPAInupl00fxKgkOm/w9I6DM+n2GL2rdICjG4qa53rr6J6eZ9e0VZ7Hz7zZsqTM5RojrM2RBelXEyBEREOYAXd8KDvSjsV8iXDKn6sMX+Ai3Sy/VFSHPoSMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764434614; c=relaxed/simple;
	bh=B7v9qrW+paFhlhLozJ6lRj0AyNxXth9PHBmIByVEUjs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=IxAn9IIK5FnDr5ulKDsmu1nlJA4mVcXY/E9zr1uDELjMvW/9FJoGnlZbrs319wqWuA+0MgAZCjQMC56wMjO28xdN2j/ITUS9oVrenjc5INnko3uJr9U5x3Nyg5eC4uVTbOhRgOre/fy93QIak/KF/qdoRP5X4wA+Cdo9qz58vog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=E1xEiAYQ; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-42e2b90ad22so129505f8f.2
        for <devicetree@vger.kernel.org>; Sat, 29 Nov 2025 08:43:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764434610; x=1765039410; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9bPqYF9HDpkdMmik2D0hgGXuyr4x4ACsXKFxzvuy0gs=;
        b=E1xEiAYQ2C1PazrD72ycPw7SLh4D76mqE04qlL83CHBwHGDYC3W3kYCXQnXqOpb+eV
         mM3rYbDBLElRwLRIp2wUjuXRh9FkNhkLIuxtrDXVzc8q2NhNTLrTc7LCXB0cMUL7IVoH
         YZXzvYLzXJk7Gwqli5HYIKk1mAh8XcVBw4fJBT6Zu3ETbVt03reJf8QJwk8Ik2Pp/Mgh
         WMipaRZcy2m+up3oG7OMdTitxnL1jPaGlmmJm5t3FAZWJSd6RKPVF5j2BGp4LjFqAZA8
         reDoBGvLMjkI1auSb1vzhdMMnvWPtc6YNMl8KrVoe5zGsek5eG0RMHcu6vNreFBngUfr
         FMew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764434610; x=1765039410;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=9bPqYF9HDpkdMmik2D0hgGXuyr4x4ACsXKFxzvuy0gs=;
        b=pHWSbTo10DiMCSDsTeKOmNyYBT8KZf+Z4IyfgcD35kG8MmqTg3r93MunyCPIb9i5jW
         2e3GI47hoOefBD1cRy6rjaeKkl5i+ImvkUZ8iXN47vvCFjSxIHJ9xfrMpWEgRL47OuCV
         4B6yX5gwVBANREOqZ5drkW9Gb50J09aM322gs+IANeIDfiYRRrP99rItOuLfbL5T3yd3
         +WHy1KZ2ZTREG8hE6pZSqWJMo1/fwv2Iv3Ctvp3Ni4LTI9kTY+hpGsP2G2T39azNmGEv
         pZScpCbXPy+PWps6UlZT+lJsHwa+1Sfy65L76fXNzwxcoSVlHsaFr6jLqHSbOgFyqlnI
         u2oA==
X-Forwarded-Encrypted: i=1; AJvYcCUfhOgDADIgmg0LeRqcEydsSgoBaUjqbfycBbIan1urWVR8cYZAFjwXesFLAkkwobDkmgNKYaTZ4PWW@vger.kernel.org
X-Gm-Message-State: AOJu0Yw3E2VzdKtaJsrdlhvBm3t6mJlduxF6eVWV/tHX1ovpzt7xLFaj
	x32dNHj/fSIagqz41Zx4pqIyizWI/GwikBx3uvRM4muXXJk4uqrVvkn6
X-Gm-Gg: ASbGncsxtXC8b0Doco0Z9cIHA5zcgLCkPXpkNraw6NNtFwjCrbYhWmW9bNGKDr+kXlw
	HrKrak+T2IzIoTzojZcEbwNzW+BqdK/lcD5+2oN603DQ4W1iejCSFBkGaTPSttkUHEaPY+AflZm
	TYB6zWdHFiQjOhbFuulzIutk/sPsJnpBWkCsZNQkzpfBKPUo25+DE4l0aRyWwN5UD3/IyEpZNcZ
	YrMhBKu+V6aY7qKS3eFh39l749wgx39yqx60HCJaRFz1UqZlZGXI8g9GC3/WOB0hO6/rqdsMoVn
	W3xqADvqPThOlznnQAnf7DjmxIsOGhYWKTro0QphcR0XtQTu2al4037ERMPvJPkQhyHcKnJb+yL
	I3Woi489foqXIiVYwAXMjtF0py7EKQ5UoCqn2XGJKViB8HBK8sieTgx7BygbfzNqOjVdz+S0a+/
	p/FTnWu/W4SZ4Ogf4jKZee1WEnbZQ7+5DsQhCF9y9UblltO4ZFQ7SrXOFO5oLizSnki8SsV2Tw0
	kOvq8gBgCoY1r9h
X-Google-Smtp-Source: AGHT+IEEb2qZ0UYDHUie4Qwc62VO5FnkQXg1w3EqYcfeQhWXDStHqlNvLIDNuNrRiYbDT877KormhA==
X-Received: by 2002:a05:6000:40cc:b0:42b:3cd2:e9bb with SMTP id ffacd0b85a97d-42cc1d2e29dmr33566362f8f.32.1764434610050;
        Sat, 29 Nov 2025 08:43:30 -0800 (PST)
Received: from localhost.localdomain (host86-162-200-138.range86-162.btcentralplus.com. [86.162.200.138])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42e1ca4078csm15970060f8f.29.2025.11.29.08.43.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Nov 2025 08:43:29 -0800 (PST)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH v5 02/17] serial: sh-sci: Update rx_trigger size for RZ/T2H RSCI
Date: Sat, 29 Nov 2025 16:42:58 +0000
Message-ID: <20251129164325.209213-3-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251129164325.209213-1-biju.das.jz@bp.renesas.com>
References: <20251129164325.209213-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Biju Das <biju.das.jz@bp.renesas.com>

The RZ/T2H RSCI has 16-stage FIFO. Like other SoCs, set the default
rx_trigger as the fifosize.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v4->v5:
 * Updated commit description.
v4:
 * New patch.
---
 drivers/tty/serial/sh-sci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/tty/serial/sh-sci.c b/drivers/tty/serial/sh-sci.c
index 53edbf1d8963..28d665a9861a 100644
--- a/drivers/tty/serial/sh-sci.c
+++ b/drivers/tty/serial/sh-sci.c
@@ -3330,7 +3330,7 @@ static int sci_init_single(struct platform_device *dev,
 			sci_port->rx_trigger = 8;
 		break;
 	case SCI_PORT_RSCI:
-		sci_port->rx_trigger = 15;
+		sci_port->rx_trigger = 16;
 		break;
 	default:
 		sci_port->rx_trigger = 1;
-- 
2.43.0


