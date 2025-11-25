Return-Path: <devicetree+bounces-242047-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id A3CF1C85B2D
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 16:12:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 648474EF22B
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 15:07:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A42B232860B;
	Tue, 25 Nov 2025 15:06:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VVQfRq+i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6ACA326D77
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 15:06:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764083206; cv=none; b=PnJGNN0NlD46ovodhJn7fpFpHSAey7z4VNopr2aY2lKapr1uwAQnvjC5zul0hzzHmE0pMH/EjUlIaHquAAUv8/2lh1BvtW0EHHJw4NsiZ9cKszMIBMh+nNH2Mci7t6OfrCuH6iAJ8qDf1aIsBu8ZqWmJ4474AyPi2JxI9RpCmYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764083206; c=relaxed/simple;
	bh=bvZGunteSrM/a/WIsIyYRGnLG558EPF1JJm16o36fLE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=W0Fbiq2LUcl3wWfA4ddvlOfKhvuIHUchBLppCwIeLJ7G09OAoaPAW1ZOMNDZHT0RXBk70TF8mN4wB+duxiYFO3e1fSyajtphnzrylE9WMHGswyGQtYTGwOOstujFlEVJlNCRD0Q3u4dNx2PtMzovPI9oUmnr5aAN4ywOFcO1TTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VVQfRq+i; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-42b32ff5d10so3979825f8f.1
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 07:06:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764083202; x=1764688002; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RTZQaQp1phCcJN1UymBMs2ZvVQGslFeouD+Q/OgyOGQ=;
        b=VVQfRq+i4LAfI5h5YX9zU8lM15uQM3PG/JBFiigrZ7LcC7xk0dv00sZODAu0kGHcD9
         TP8ImiwQcqh3w/fdneHPq0/haaLU+wivSang6cIEA/JzNNF4DFajs+6mIK/YMUct1JCK
         8dkg1XuKA51WSoyTBNYn0ks5d8vpuln3G4QxOfxIFGTG+NUt/m9cGk5Qse+Tz+cm22UH
         tsthKsapmN4ivArAhoQOYanOJWQEprk7jAdj3xx70/jpcSJ/qHALuCQJJ70Y5BO1LeiA
         5ccy0K+9O1xuNlW5q2+8NBVTVsA9x8ZzVgxpE87GapMKoRVLrPFRvRuyI2wYrP8M/5vO
         5IWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764083202; x=1764688002;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=RTZQaQp1phCcJN1UymBMs2ZvVQGslFeouD+Q/OgyOGQ=;
        b=u2rb4OMTHLurcgeY99FBYHZXxbvLrfpXLEbKlt2zmYjeLyJCc0fmM3vFLhQdGMP0Po
         +qJ4pjWOlrjipixpNcRrg0f/vHXmwDd/U1Hs9OiMuVkPWkIQ/tFR04N70M+gDDf2sU4x
         In4FcsDBKguTJV049KNKzS5UnkRuBzEBdXzWzmwXSn/Ltv88NkmQl3Cp7j/6UctrV2mW
         ityznBwEpW51wbt2VoDDzlW+gK1ZPKi2+r+MWXvJPdQFtF3XWkeWOF85c13fFJfV9jrR
         SkBcjzIzogla5ioMf5R7O+75lqL80UAAJ92tHZvcr5KqN+qPs7UJnK8rt6gQv9RZbB5S
         0NSw==
X-Forwarded-Encrypted: i=1; AJvYcCXHL3fRz9ngBpfmtrgtxk0AfTHaZo+I3yFOOPbpJrDnybORkUo7ohGNNgN4eBWdoRw4t9IKCj1YcMPG@vger.kernel.org
X-Gm-Message-State: AOJu0YxlfhtIb9pbI5BBQxMnV5pzVHjkoXtEj7azo2sIvjiKcDdxDkE0
	j5FWtILCjD2U84mDjQMMLwHyngmjOt+UDWPJ8En045daNdnLgsqT1CeU597c5w==
X-Gm-Gg: ASbGnct3t6wMyxFNqH5iVPaLH8JH6ygQwZwZTNgWD8KrYthINI66tHjt5KykttmjSal
	wxlB+nUOPXAWH6gk8ND+RSfd+4lS3uq+gioL09MMb6sfXNGp5rBU3OAmY7A6RMsXInmJ0F7uisz
	YdVqYrbUrZ4B4Kvn0UNycH7lcYVdvBBHhRlNSWyLMZlwTFKyd0fnBdsUmHBE09p/x2hQ3Xk/Z/W
	pxfqU3rEs/uOZmc2Phys5iMw+NInaT7isFQK4QqSQHk6WnZ6fpsxUMJAAbu/VJ++3v0ZmDHgRtn
	8Np72+3qalz2Vxs8c2zvhSDrcz8vb18hqLP48j1b+ZNylIHWWkFX+oyBA3MC7Ss/HLjN7x5c2VQ
	1BppIbqJZ8xdKpXyXnDaUkrk+LyUqc3tRz/IXD3f8/eCp9smEmX/vXXG5FVfQpxOns5UjyUcl3H
	DUrNt1Wa0eXfn/nbhb1JWAT7kGlTZfOUcnsrybBI7Fk6i6TbePQHW/AIX72nZdvfiZqKNiJyDqg
	NS3jw==
X-Google-Smtp-Source: AGHT+IH7BC1ZyxS8oRXsiprnT4CSaHhz6BZHzWN5J4GKslWr/kg1x38bb9Tm6SchIBbfW4h0mucEAA==
X-Received: by 2002:a05:6000:1863:b0:429:c8f6:5875 with SMTP id ffacd0b85a97d-42cc137bbe6mr17916074f8f.20.1764083201748;
        Tue, 25 Nov 2025 07:06:41 -0800 (PST)
Received: from localhost.localdomain (host86-162-200-138.range86-162.btcentralplus.com. [86.162.200.138])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42cb7fba201sm34797809f8f.32.2025.11.25.07.06.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Nov 2025 07:06:41 -0800 (PST)
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
Subject: [PATCH v4 08/16] serial: sh-sci: Update rx_trigger size for RZ/T2H RSCI
Date: Tue, 25 Nov 2025 15:06:10 +0000
Message-ID: <20251125150632.299890-9-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251125150632.299890-1-biju.das.jz@bp.renesas.com>
References: <20251125150632.299890-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Biju Das <biju.das.jz@bp.renesas.com>

The RZ/T2H RSCI has 16-stage FIFO. Update rx_trigger size frm 15->16.
Currently, there is no user for RZ/T2H rx_trigger. However, the later
patch uses this variable.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v4:
 * New patch.
---
 drivers/tty/serial/sh-sci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/tty/serial/sh-sci.c b/drivers/tty/serial/sh-sci.c
index 8869c25eac95..ae76705baba9 100644
--- a/drivers/tty/serial/sh-sci.c
+++ b/drivers/tty/serial/sh-sci.c
@@ -3324,7 +3324,7 @@ static int sci_init_single(struct platform_device *dev,
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


