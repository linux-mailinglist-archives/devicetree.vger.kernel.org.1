Return-Path: <devicetree+bounces-242150-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id BFBADC873BA
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 22:32:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 6213E35240B
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 21:32:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DE3E2DFA31;
	Tue, 25 Nov 2025 21:32:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CEZs4Rsu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50BDA25B1DA
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 21:32:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764106332; cv=none; b=Trdwb2jeylAhvgQRxNTxfMNQSCUFmCMHO/zvXkVGaVooKbEShA1Bm+sP60wIznFzSn1K+gR3QgMf/CROobnjewgje+4hTHddDSxMHhM0jExvI6BRbuDqr0NMzYIYZEHXamMZlPZ79VYyKdpV6QKciV1mjlmjsnnJoc9w+F91l44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764106332; c=relaxed/simple;
	bh=4eY4f3c5CBEwAGbkB4wJvvuf+PLHMBF6XvcBPNG1Lvg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=DDDyDYjG7y+qUOpGWKq4R1iIxQqEZmLwi8uPj0C9mKpRDNtJGMFf955WHuqL38zA0BE88uVoucZ6OkAWl4PN8aW0PEHuomvx1rYld87on+vBEYFeNRJEDyqMb/iEjGg/UeP6/DTc5GrAUDNdVnea1OHAY2Dqu2d/+w7KZWtJzGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CEZs4Rsu; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-42b3b0d76fcso3749173f8f.3
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 13:32:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764106328; x=1764711128; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=EW3Z3TOeiqfSEGbu4L2QHhccduvq/CsDNdyBw1wE2+0=;
        b=CEZs4RsuFcL9zh24Kbu2OztyIbDBYmSQQEOD2zdBNLAkX43oZLZKZVYJDHaHsgZnAX
         X7VzR8LFsh93EfFhAYWxec9Bs2ysnQFMnh3YlZIP+UrRMyiB20fF/etOnUBrJYS7UpTB
         LbRSrIchY77FH3GX2FIXpF4tgT5TjEo0AnGhiMBjr2q0S9RQBXqnaLv0WlMCYQK/IgWe
         6fUMeMV5BmHnpXtOn/ZqIEitrvm3/QhhuERdyEo1WXtJ3lbjRmjOc792nemgbwo1rVPz
         RQFF+L9v/Ew68vKx50VCIKmhp3vrS3sTyM7B6XPTsY+Wqcg1rxgKC91PEmENwV8sFBBp
         +n+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764106328; x=1764711128;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EW3Z3TOeiqfSEGbu4L2QHhccduvq/CsDNdyBw1wE2+0=;
        b=bhrti0PsWYu9jMTLWU7KZdhZ7HpTBDKsPTZXEELCyz0tXtFXfD4S4GguXPZcuTG4Uy
         PJA1eRkdkSzDL11Xx/pj2/2LjHSfQkFQaWjsQ1m2czKHp7CIga6aGOnuOAo5jG//YHNq
         g/d6QVq+nyziz4bwN4hsQPGPzF7AnV2D3qoiqNuJQKGKim/mjt2yTmCInzYNA4WdHIwf
         ++WcygUFFmm8DFO42xuqDqzkrZeeRyLYPCOdhcbKb7F/F8bjBtSGKgiurAQMirPR9SVh
         VYEVZ95ge4HfBNOO6xm46C/5LYIr2sUKQLQpQqJRBr9EpMh6Fj0QcCtjZpgxOkDXm1Sf
         HiYA==
X-Forwarded-Encrypted: i=1; AJvYcCXEN13ba5RLY2mUPcS822Fgc7D4mzv7qPDxiBiSNIUVccoLsxezvUVZbynW8YJHVidK0WVzxGFI9BAG@vger.kernel.org
X-Gm-Message-State: AOJu0Yzm6WT9ooCXEs9IADAuJ3XFzDXU5dto/4CZoQODRW4dkTksf9i4
	2EjCN3NsuOD0PRgozsWYkTuD3Ym0Uw1iNWEToK6KoLt1VoSESMZfC5Zr
X-Gm-Gg: ASbGncvQeXPZ5HYwUW0jHaZvRtcKW0e7BGQnfRyYkgych8s5kTX0zc6velAURE/F0Rj
	kccA7ymjrWhpcdJIIOozHTC0HUrUkQnfv0Uo1cTJVDS8vY7XdSAn88DG4M3ZeqYcXhsdMp1DbZi
	csjxOHe3BH92hxBBTNveGVyXL6QcVhB5666E5Cn7sgJgat+DCSdaRhDoSAHKqOqzAY8pPf6x4KT
	tSF81WEi6LgYAyKov62zCnvg9GB0ETn/B6BF6ERZfYIwo6ipM45Y1YgE5N8+YmznT65bWZzI+pd
	Ppmun+WwiqZizI/KVxNHMiHcYAA/kiZhq89OwaBfLdaNfFGigMbubjI4eJToq0ngpV/ZomkhIJN
	zi48YqHTed3uWohQ6E+U7TsuG4+YzcEakfTlBd442mQLWrGrrHLQwovOicmFM8637QBus9KhyIU
	Z4auJek7nFRcsMSPRLF9Zug4DM09JGnrwGCw==
X-Google-Smtp-Source: AGHT+IEyG5TEPMhtRSwEbZVRNInhQdMO9YJuiq5JJwv0euWXBPqshkSS05tv8q4B91RRowkrkw7O7Q==
X-Received: by 2002:a5d:5d81:0:b0:42b:3ded:298d with SMTP id ffacd0b85a97d-42cc1d2d5ebmr17987399f8f.32.1764106328405;
        Tue, 25 Nov 2025 13:32:08 -0800 (PST)
Received: from iku.Home ([2a06:5906:61b:2d00:325:d7d3:d337:f08b])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42cb7fd9061sm36677163f8f.41.2025.11.25.13.32.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Nov 2025 13:32:07 -0800 (PST)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH] dt-bindings: interrupt-controller: renesas,rzv2h-icu: Document RZ/V2N SoC support
Date: Tue, 25 Nov 2025 21:32:02 +0000
Message-ID: <20251125213202.270673-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Document the Interrupt Control Unit (ICU) on the Renesas RZ/V2N SoC,
which is architecturally identical to the ICU used on the RZ/V2H(P)
SoC.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 .../interrupt-controller/renesas,rzv2h-icu.yaml       | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/renesas,rzv2h-icu.yaml b/Documentation/devicetree/bindings/interrupt-controller/renesas,rzv2h-icu.yaml
index 3f99c8645767..142aef5ec1f0 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/renesas,rzv2h-icu.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/renesas,rzv2h-icu.yaml
@@ -20,9 +20,14 @@ description:
 
 properties:
   compatible:
-    enum:
-      - renesas,r9a09g047-icu # RZ/G3E
-      - renesas,r9a09g057-icu # RZ/V2H(P)
+    oneOf:
+      - items:
+          - enum:
+              - renesas,r9a09g047-icu # RZ/G3E
+              - renesas,r9a09g057-icu # RZ/V2H(P)
+      - items:
+          - const: renesas,r9a09g056-icu # RZ/V2N
+          - const: renesas,r9a09g057-icu
 
   '#interrupt-cells':
     description: The first cell is the SPI number of the NMI or the
-- 
2.52.0


