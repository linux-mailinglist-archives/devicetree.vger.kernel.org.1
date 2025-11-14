Return-Path: <devicetree+bounces-238612-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D444C5CB7D
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 11:59:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 039094F1DB1
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 10:52:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F5AE313E2F;
	Fri, 14 Nov 2025 10:52:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MQrYut4c"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34FB5313279
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 10:52:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763117529; cv=none; b=hnlC4Fo3reqZ9y8fB4yKA7foy2h7etuvsSxDSlCj6GETPTfjt7acmkVEfhG1XhJvsZOTz1jW1PLZCEQbBQAoxLxK/RtB27+7pgNYap6HNijV3WaO4zlj+3j/zsQGWpw9CW3MKCMNlmkrt88UF5aGXP8PBRMmYxbwBuKHz+yGyr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763117529; c=relaxed/simple;
	bh=iDr+sjQfrHDp3DxxIo6LAV+CM7T5ZIZH8WpOIp7Dj7k=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rCTuVnQob6ofOmk64cjmu2+dbj0Asc3JcMG2QMwdnlTEAm6FCzP/829AMJLGVp5Haqvy1H032S6/qdjs/l8hPxieStOVsL3uakZAewyIwZ/ha11mWbHKMKkXYbqDoC72+T/sjm1/n1ONU9kwDXAnJnW+FFaIO2PXFpke5qo8SII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MQrYut4c; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-42b2dc17965so1575470f8f.3
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 02:52:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763117525; x=1763722325; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sE9iX1ursNOQzfwEha6Mc4rDjGJl4IqWi+8gkqilwc0=;
        b=MQrYut4chTP6Ud3I4s6YI2vVmEAGucr7ICqauo98zFsEDe+mpr8DLt04JRyE8uyixx
         kxSaogSkXd99wmuv8U6LoKmocHh/QTuGutEcQTHWqU/5GSw+ybQp1tnHSlUG/cu27v+A
         5dfzUHbwZ4C0106KjaOYUk2vHxUW9fVAlfxoy2Yn77NBrjXNWXHSjtsQiDr7wQb2c+Ii
         nLmctwGVhPTabZN4ncM3k3nGMEPY9ufWs2qZa31CR/Qmy9uA4FJBFOtQNukR7fzQQDZM
         +DuZEZ3G88QLJc6DBbDWGglm9ORqX9vrOG4TmU/B+jYmiedxmISWQFHFfkwNty9KG4bn
         LLZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763117525; x=1763722325;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=sE9iX1ursNOQzfwEha6Mc4rDjGJl4IqWi+8gkqilwc0=;
        b=pVB1sfWsAo1hHXhFhR6Xyt54Rc1XTV7SZxCUnzMU5ludzT9jnU8qq7BaSX6nAQ8kvf
         zb/l5PbL9JoAEcLjrKXnF8Wt5RlTfAnO0cA1CCbvv8gQhDBdqLxeQDPEs4p8b60yPsAk
         p6nNHIWYyriAG9P+L79zQmpXdDoY8zu0EEcfrioG0EvIOncld0ZqDYrvypDZxf44fraQ
         m36LbcP6PMgAZTEAZNQm1uRaivgEA5qusqRTttFZmuPk71GGln+LAWfL+g1oKSjH3kqz
         o8ao7Ckz0oJiXVxV43cXdOZzgIS2tdhfEom0/2nSowE8HhZZqjO6vMvj54hxMivCPDzD
         lStg==
X-Forwarded-Encrypted: i=1; AJvYcCVLcaWMm5Sr3pQRzPz5U46NoIBOV/b0/eBwB8I3S0SUnVVvcj41A5D4kQ3ArzhjED8hUbrLFpbiBKd+@vger.kernel.org
X-Gm-Message-State: AOJu0Ywqk6D2EecoNH84lG7a2hCRnh5Emp8FytDhjz/ALZflj6NsVxcA
	aBFsagPaawV50k3yi1J17RXfWBvef2uzCjHU4vEB+7JRmSgAl4rOq+Dg
X-Gm-Gg: ASbGncteE8+BgetimLQcFNCYLh9H9nG8Ylc9zdAdTJHPfmwPjZtgDpkQC5nb/ixPu6c
	7m9fcegv24tj6F2e2RdGCJbEPcP02EIrg7phUlN3uT9pbN3IswFCiltk3Jj6nqWf0j2eKg/ydLh
	lWT9iZvcVfu7GI68aS02O7BdX5IM+XTC6oZ4YNSW4eFw20B99qgFq/vsXbWTzvLHs+r5oxR+27I
	Wh0aLJyTM3L9iVUYRg71A98Ay0DbHzl1OoQMn3zkMdxHYyOk90T8lQqPfNVrA8wZdK+2HDtdgf/
	5unTkGFmRwZp2p0YYTkwhUvN/cRkSlYnL303BMnN6wJuP/ufHh9PsFZvaSdCFyNTfgT989oA/ft
	wy3g1qXWgw/f4pfhgZzr+IYLvP5DpHGL0sFre+xZlo30AMFABlU1llDO4IYqUR+cD4t/05lDXog
	UMKwDrRAss+0MaQLfZFW1lsfdu4drlivn+3UYvBNijyivQyfDgYq6WxxpgboiyQxVgKTBUYhNt7
	gpi39EYSgmI8i4QRlOFHyXYndw=
X-Google-Smtp-Source: AGHT+IHh5EhVhpsPi+K/X6iNqc6qBAFlJJgODP+ZykzrObwqlrD1Pj83VU22VCd8tYUDjSmwsdu2Nw==
X-Received: by 2002:a5d:5f47:0:b0:42b:3825:2ac8 with SMTP id ffacd0b85a97d-42b5939ce2emr2119323f8f.59.1763117525277;
        Fri, 14 Nov 2025 02:52:05 -0800 (PST)
Received: from localhost.localdomain (host86-162-200-138.range86-162.btcentralplus.com. [86.162.200.138])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53f17cbfsm9031255f8f.35.2025.11.14.02.52.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 02:52:05 -0800 (PST)
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
Subject: [PATCH v3 02/13] serial: rsci: Drop rsci_clear_CFC()
Date: Fri, 14 Nov 2025 10:51:11 +0000
Message-ID: <20251114105201.107406-3-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251114105201.107406-1-biju.das.jz@bp.renesas.com>
References: <20251114105201.107406-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Biju Das <biju.das.jz@bp.renesas.com>

Drop rsci_clear_CFC() by reusing rsci_clear_SCxSR() as the contents of
both functions are the same.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v2->v3:
 * No change.
v1->v2:
 * No change.
---
 drivers/tty/serial/rsci.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/tty/serial/rsci.c b/drivers/tty/serial/rsci.c
index b3c48dc1e07d..9681e8ef4bfb 100644
--- a/drivers/tty/serial/rsci.c
+++ b/drivers/tty/serial/rsci.c
@@ -199,11 +199,6 @@ static unsigned int rsci_get_mctrl(struct uart_port *port)
 	return 0;
 }
 
-static void rsci_clear_CFC(struct uart_port *port, unsigned int mask)
-{
-	rsci_serial_out(port, CFCLR, mask);
-}
-
 static void rsci_start_tx(struct uart_port *port)
 {
 	struct sci_port *sp = to_sci_port(port);
@@ -275,7 +270,7 @@ static void rsci_transmit_chars(struct uart_port *port)
 			break;
 		}
 
-		rsci_clear_CFC(port, CFCLR_TDREC);
+		rsci_clear_SCxSR(port, CFCLR_TDREC);
 		rsci_serial_out(port, TDR, c);
 
 		port->icount.tx++;
-- 
2.43.0


