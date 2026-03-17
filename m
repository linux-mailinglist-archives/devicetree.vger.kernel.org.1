Return-Path: <devicetree+bounces-276869-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wMeJAk2/uWnJMQIAu9opvQ
	(envelope-from <devicetree+bounces-276869-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 21:53:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 60ED02B2705
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 21:53:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8CF9B313FF33
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 20:51:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8266338C2A5;
	Tue, 17 Mar 2026 20:51:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hO62Zr5w"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF85736EABC
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 20:51:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773780664; cv=none; b=aeFP+YNDl2GEYd4e2NhW+e7oAPq4zEexzE6ntSl4dBof40C1gqtC9Bnvq3WiQ+Ws4NNI9ZZPIGqo4ERpkGidn4kjx1/vG5IBj0/bo+ORM1C4nAMOkpk+jgChk4GNhYplEUvSP2BgsgPuAxhZdfQ0Cbd2RtzsCX3yVPEFbvcLq2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773780664; c=relaxed/simple;
	bh=yntkghlcCP7ZIzwF2Sh3ioPGHdXavGN3D4wJZF+nEE8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=bdKb8UB9zpOcpLy+BKNexFeJdX1r8cquxKlBba3C9Maak8Ynh7hgcqn9zGnzqQV4q1HAUje5wiYeQqoLGHP8YeiD8zQHDpHVTV5mXU1Ash/tWQg4OKOlgC3P+5BFybRqgaYKCgnVn8LqrykNViWRgdai2XMZrQlLELp9a9hdodQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hO62Zr5w; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-43b4121c40aso57046f8f.0
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 13:51:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773780661; x=1774385461; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7yFBJVJpKs5V7I19enN0uxv92VPjioQfGoucnyTKKqE=;
        b=hO62Zr5wXn+5fG2NSIxA3RysgKWXYEBt6HPcheu54DQ5dabEVi24bbTtV4dMy8lsYU
         z3zMDIlZ/haDHvtboukDXmFeqa21qI+QBw7DkM70u+mC2dtqZJpRC+8X1FczxYye2NMe
         GHuXiqrzgcrjWXt8FP+YK1fAoB3WSA+olJ/icOQ3B7+0GoVyKIsTQl8zIqyCNhi09sa4
         0DXOcoY9jb0Nsqpyiqi536yR2eWVooJwzeRXaB1nhS3CEnubeIo7ilDfkD3jkEOBbQUd
         qRzPFiZSy8RlLSmXF49SSXErLRM7cR/QlfpqBcFLHQmKjioyzFJfJ1KKrD8aKQKAHbwX
         Ij3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773780661; x=1774385461;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7yFBJVJpKs5V7I19enN0uxv92VPjioQfGoucnyTKKqE=;
        b=ipTE1JC3/FEsqmTV3GHYoOHXHlim3CJb6Wed2pGdHzqIMCjpMdhD+D1ai7JZhX9ao+
         fic8Uw4RuwnZXgsoB5KZskFa7TgnD5eKzCD89tWy0R4V7sh1hpAbZjQR0JV8tOVYrLxP
         tVP8W+GLVyKCgb4Na+q2spo2eBdJwZmJanly4kNrn0ekjaDBLFO9SlpqbP+SWYEUa/gb
         W1qZjFuY3DlXYQ07HWMOv2CRsZjMKotvdMNt58JORBijWBhLAdEkFrsomG1YATlHei2n
         xRUq6yXDyU3xGk86Om8MacyjNs5eB1sHI5A2lxHliXneUo5wAAc7VhyV4nh6aMv4fmg9
         sOAw==
X-Forwarded-Encrypted: i=1; AJvYcCWdhHtTYbyKj3zf7oFRriIIvbdAt8RVLBnMR97q2xT9SzCsdSmHAZMOy292ZWHy3L46H+8GF4ySZl6T@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4hFkhCMR1Leo8kWRhuqK84BBDSPcRkoG/naLTotGBp3C1ET6c
	3LVudNCJWUpS7IuUSUjBFgibi4BU+OXpJoFwkXwCjMuD9120G1o5JxTGcw4srxUQS5Q=
X-Gm-Gg: ATEYQzzeE1tHO31QqrYneGK5JLLwSNASFTBzA9Cr3QTLRPpk+kUrxi5cjM5r+wTxCZk
	dwocEpQbEpvJHt/Ikzps5J9V9FAbSzCHPUphfvE4hHVX9wQ1ReZ4De2BOw2GlYg4Pnu00DwXnTl
	cnzS1ZHMa+luvMM6IDoVuhJxAsQ2+MQwrjEgKzNcXZE+pva+F2ETCwgysnnjs4pD5yJBs19lZ/q
	5fNrFGDmV9/T2EgUsg43a/FLnmI8u294pJ7X0+KrPxWtC9nEWScsjmdLPUHvOWtWx1zQ7IqQBA3
	6WJmqWjWVBznT4oqgtE+yzWerzvXyuxjd4u0DQ+2Y1fgPJtDcDsAr0Buh5hbnP5f+CD+JkpOftQ
	4ZwroA3qmY+Qr6l5KyIQd9xrW8TXLJzXRYC1GWZ+qN0p+EoOppk7U589AroxlNwQp9NvqYFXnEq
	M+vOA7ddxuJQv4CCT48kraew==
X-Received: by 2002:a5d:584b:0:b0:439:fe98:20f9 with SMTP id ffacd0b85a97d-43b527c4d66mr1136366f8f.27.1773780661024;
        Tue, 17 Mar 2026 13:51:01 -0700 (PDT)
Received: from localhost ([87.254.0.141])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b518522d7sm1706550f8f.13.2026.03.17.13.51.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 13:51:00 -0700 (PDT)
From: Colin Ian King <colin.i.king@gmail.com>
To: Binbin Zhou <zhoubinbin@loongson.cn>,
	Vinod Koul <vkoul@kernel.org>,
	Frank Li <Frank.Li@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	dmaengine@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH][next] dt-bindings: dmaengine: Fix spelling mistake "Looongson" -> "Looogson"
Date: Tue, 17 Mar 2026 20:49:38 +0000
Message-ID: <20260317204938.120729-1-colin.i.king@gmail.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276869-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[coliniking@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 60ED02B2705
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

There is a spelling mistake in the title field. Fix it.

Signed-off-by: Colin Ian King <colin.i.king@gmail.com>
---
 .../devicetree/bindings/dma/loongson,ls2k0300-dma.yaml          | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/dma/loongson,ls2k0300-dma.yaml b/Documentation/devicetree/bindings/dma/loongson,ls2k0300-dma.yaml
index c3151d806b55..8095214ccaf7 100644
--- a/Documentation/devicetree/bindings/dma/loongson,ls2k0300-dma.yaml
+++ b/Documentation/devicetree/bindings/dma/loongson,ls2k0300-dma.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/dma/loongson,ls2k0300-dma.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Looongson-2 Multi-Channel DMA controller
+title: Loongson-2 Multi-Channel DMA controller
 
 description:
   The Loongson-2 Multi-Channel DMA controller is used for transferring data
-- 
2.53.0


