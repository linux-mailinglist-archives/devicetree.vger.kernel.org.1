Return-Path: <devicetree+bounces-239846-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 28E5CC69F1E
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 15:27:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id EA69A4F5232
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 14:19:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BA2435A13B;
	Tue, 18 Nov 2025 14:18:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TUPcV/+D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 556D935A132
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 14:18:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763475527; cv=none; b=PCYEmwvWO1v1nv7AukEQO1UAtS5GV+iV/Xr4tReP+uApOdSf0sqt4su9gHLjMZj+rXsqOrN8a1DC4/pXAz4cWaznZVtCprFdM6RsP5s7vKKaSFic4zigvuZdFhgbqSY3UChAPIhh90k7FrN9lR3G0wDUxUzez86l+VFs/9lNEPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763475527; c=relaxed/simple;
	bh=haSsgGLj2LFR4rRVPSrOVj0UFTthpfQ8j7ArNRNCmRc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=PUGIeXxL22ObuuMV57Qaakk/H4NKR4zbSIsW01CUN0W0uD9SnKOcSTuzaXKclLIV93mCECftfYxKmht3cp7DL8DzYLcw/cIc+zxfqroJxQ/tecLBiGzsBIudMXiuGCEIdVjyTRat0/EiJJkwaDt025r/PgwCgHAk8xFNcvhQARk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TUPcV/+D; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-42b32ff5d10so3897956f8f.1
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 06:18:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763475523; x=1764080323; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BJmzG04+rJ9YMJz0FDJL+2PqD89ccz+qPnT5FslFWMY=;
        b=TUPcV/+DBsqRpDm0weqV/UA+OdNJQI/WjH/1YIb7qZBqStvbtcKffvs6smZOjDOhuD
         6yTDGoYJRkE6Hu8qfDPFqrlecYuoF1ShKmvpPwsq56izBfwBm918AC0PbOmOydnEaRJV
         ts7+2UoTJj/ySwgtpkTCZq5UpcBhmGakerFEROl8FLII+TD8x8K/vlnq4DS7xNmbxtTD
         cCqZvaiS/X/OnVOJPKbrmoDg3R7N+RjwwRZmvrOtP1FcLMjNvYPmrOG+IFxu0dvwKuta
         LV/Q721Gq0gZoRQ4G+cT3BfHU9dxvmWSg1JXiNG9hRvnIn007+ocHH4GPpzd93bYdvW8
         kTpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763475523; x=1764080323;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=BJmzG04+rJ9YMJz0FDJL+2PqD89ccz+qPnT5FslFWMY=;
        b=lIdiBuF+e6E2PA5lgW1RFdpOqQ6yc+OUWQdQIiURzsHMa1RQxz2tgScfNG6PWkAgcC
         dRaI5orLCE/2L5dc+gcM3BbgHyapbHbIpD8WcWvQniSYfZ0+TCQf+28b43Ql+hXQxsf7
         T1u0MKNF/2lfnzF5x1gv29HqBgDrq2YJTaqOxAuEJAJ8ZaSktOe9HUoFz87FPzhaYB9K
         9aAXRbSza3VKJoTyJ6ZGIFmHxS5euPbA5cDDkDZ1igb/ItvAexmjy848ygjGdG7LQNJP
         AyppJ9K0WsmyvfsBks47vxL+gSYPXJITJKSvJRmFL24rX9S55AY5jLVW/H3JigvraSdY
         gq5w==
X-Forwarded-Encrypted: i=1; AJvYcCV9Nrpd0OhuohLDSvPHTy7tat+IyZbuBZrw0/6oTcFfN6XI7MSrrMFsvNRVj56xFCBjaDOLwi2YhWFe@vger.kernel.org
X-Gm-Message-State: AOJu0YxyGcMH3Et0dvDwELue1pVSutmAUa90MvFnvI3h19nkHYHkb5O3
	m0/n36n/gD5N4BWFJLnZQMdGo/+FUpwhhiiqya6rodVVN4QcTrAclJdE
X-Gm-Gg: ASbGncuhmqZIPyk+Na1P0VW/voSP16xNLHW829ewfwwqeMIhOoN2xIZsH5rQQFmiqLF
	Wh+llHwATDQnbVPgfa2j/yPhGfYZa/9DeUleROoMdsLtxFIhFHAlxWLXohUUuIrRW9bK4UBqGXL
	zaEEXHZ3kOhDh0aeT0/eZwxxoiGa+v+DurZdrOgL4xhaTH26FTNa65dBg2rQjdpHc7FC4ahOez0
	Q4uadTZHnUIhNL83alKcCLbfRW7NVufUty53ILOduLsYMx8r8eoWHg5NkNwmPDZ+Ub5e7YIxfP6
	h374MhBYhmV6qvvu9GrEXJJDQ7vHReWSk62aBFvnyUEanuuTpoL5lskyvjjm6SUPuRaH9NJcaqE
	TSF+VSir31pRqOcjDpsg8KS8k+JPniliQiUND03aaN5MfmbTM9mXRsjlfr0xpF8wEg3u5XHdkSb
	fu2xdGNXXvHmqndwDODhcdDRITiiFgiEEDy+tDCLTxncHTuQblnB3QJVdVMM9AENqAyP9FusVAN
	7EAHNeQahkAFZvO
X-Google-Smtp-Source: AGHT+IGr0W3BKAE2tNSYntGdfGD0jqo7iYO08Mgwtq3xJYbhwCRI1m3FKOoJ2p5oqbRAo7p+OICvDg==
X-Received: by 2002:a05:6000:290a:b0:42b:3108:5671 with SMTP id ffacd0b85a97d-42ca8cd2c00mr3388172f8f.29.1763475523364;
        Tue, 18 Nov 2025 06:18:43 -0800 (PST)
Received: from localhost.localdomain (host86-162-200-138.range86-162.btcentralplus.com. [86.162.200.138])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53e85e6fsm32487590f8f.18.2025.11.18.06.18.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Nov 2025 06:18:43 -0800 (PST)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	linux-can@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH 1/2] dt-bindings: can: renesas,rcar-canfd: Document renesas,fd-only property
Date: Tue, 18 Nov 2025 14:18:34 +0000
Message-ID: <20251118141840.267652-2-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251118141840.267652-1-biju.das.jz@bp.renesas.com>
References: <20251118141840.267652-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Biju Das <biju.das.jz@bp.renesas.com>

The CANFD on RZ/{G2L,G3E} and R-Car Gen4 support 3 modes FD-Only mode,
Classical CAN mode and CAN-FD mode. In FD-Only mode, communication in
Classical CAN frame format is disabled. Document renesas,fd-only to handle
this mode. As these SoCs support 3 modes, update the description of
renesas,no-can-fd property.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
 .../bindings/net/can/renesas,rcar-canfd.yaml       | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/can/renesas,rcar-canfd.yaml b/Documentation/devicetree/bindings/net/can/renesas,rcar-canfd.yaml
index f4ac21c68427..bf9a7d5288d3 100644
--- a/Documentation/devicetree/bindings/net/can/renesas,rcar-canfd.yaml
+++ b/Documentation/devicetree/bindings/net/can/renesas,rcar-canfd.yaml
@@ -125,9 +125,17 @@ properties:
   renesas,no-can-fd:
     $ref: /schemas/types.yaml#/definitions/flag
     description:
-      The controller can operate in either CAN FD only mode (default) or
-      Classical CAN only mode.  The mode is global to all channels.
-      Specify this property to put the controller in Classical CAN only mode.
+      The controller can operate in either CAN-FD mode (default) or FD-Only
+      mode (RZ/{G2L,G3E} and R-Car Gen4) or Classical CAN mode. Specify this
+      property to put the controller in Classical CAN mode.
+
+  renesas,fd-only:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description:
+      The CANFD on RZ/{G2L,G3E} and R-Car Gen4 SoCs support 3 modes FD-Only
+      mode, Classical CAN mode and CAN-FD mode (default). In FD-Only mode,
+      communication in Classical CAN frame format is disabled. Specify this
+      property to put the controller in FD-Only mode.
 
   assigned-clocks:
     description:
-- 
2.43.0


