Return-Path: <devicetree+bounces-273235-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GDITJZWLr2nJaQIAu9opvQ
	(envelope-from <devicetree+bounces-273235-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 04:10:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3467D2449C3
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 04:10:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 812353028EB5
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 03:10:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38D243B8D53;
	Tue, 10 Mar 2026 03:10:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ausil.us header.i=@ausil.us header.b="FpeTQ8DO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f225.google.com (mail-vk1-f225.google.com [209.85.221.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E37E93B8932
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 03:10:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.225
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773112211; cv=none; b=ZeSdAytQjHDN6K3lOO9EcmaJTR9pykb6XvQYRZphoq7oXV4/g9BtL4sjh3SnrPiKyo/219yzGw7fVfLxZTqqv3Io+emWnknqb/X5n0H8HkERu64j4z5J7fI0+ay3t+SUm/9L0UoIFASCf3Y68TuehvKhKwRNnUIm60qh3MCbpsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773112211; c=relaxed/simple;
	bh=YOfFbIpwiNDmQQ6SnW9JqzlFwsdx7DsINX0gVz2lQkI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=oZygzUW7HqoMjxnKOMyh/AskkghkrsWlg6CO5IxbXyUn7QzUAmEfBG1ikAUpjXhDc7aY+nKDCTvinaT8FDo2DGfBf+v/bScT4q2kHFWsTEyF7kvZx2ZW6pPyWr+7HbKwRqQKns1g/CLgjG1fSOoKASxvziZKrvo629QXWz8ccNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ausil.us; spf=pass smtp.mailfrom=ausil.us; dkim=pass (2048-bit key) header.d=ausil.us header.i=@ausil.us header.b=FpeTQ8DO; arc=none smtp.client-ip=209.85.221.225
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ausil.us
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ausil.us
Received: by mail-vk1-f225.google.com with SMTP id 71dfb90a1353d-56a857578a8so4241065e0c.3
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 20:10:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ausil.us; s=google; t=1773112209; x=1773717009; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C8HDblj7fRKJtovg4Bo+ljGQF5b9QTgQki2w/2Xqdco=;
        b=FpeTQ8DOgPx2P5UwZ8BrRt4GWXtWRxKMWslZZI1OSLxVvLMwv8HgsvfNVxgJRoAM13
         dJzqQuPuDPINY3fJC+/iEJ1Fvq9kZRbGdU0UmvJnnsNlH1PQz+tXggLCrGiEmU5/3sAG
         4o3O07dAHkle9ZgF74CAgo9w4BTqkQt6ISi7B3xc+oHdGfW8VhwKxWNHHwfRc4db1zLa
         PPsVzG8tw/ubtd4uMQ5qOKrkLFsStn6CXp3Ny16QLzAEJvC6pQUczPtAyWhm24z1SNSN
         9qNEg8jYkULZrVLoZAvQkV1UBdMfzKmI21jFFJRxV4BnD4KumjqwMEsfOmXgrCc7AEC1
         eaQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773112209; x=1773717009;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=C8HDblj7fRKJtovg4Bo+ljGQF5b9QTgQki2w/2Xqdco=;
        b=lPwpJBzcLcT5HbSu9M8nSesmEC900bSCy/WZRgh0td9FPSLjGoMYGBdVbOAXOciENi
         NUgzRfxsdapV8RZBiEe6K77veQvi4w+SsckY4C4ogRo+/yoqQisGN0c7GCfkcifotW1r
         qLOZrGje+WdI2H0mE/0uwTGBtpFrvUvRd6ZGw+ZXuDo0AVLiA8HyirrrDW/iYeEFXOwn
         8FZJrXYdWw57wOMswTAK6CjKPJOxqn+eG9tfbhhmsjz9PJbxoGdmBQGFcIO708mw3XTZ
         FPYhj9G8b9utJ5qz1YPc2Hd7Qpgoy8qaXos1Zt3fliZWO9WLOSq8zVJI/RgTNIlwXWOq
         Il/g==
X-Forwarded-Encrypted: i=1; AJvYcCUnXGpR0zhUVRYz2pJuR628HjnP2RrVKKpzo+OKoC3KxPQRKH8afYzBeBBuS6bWPdfrKm5TVwrZOUlz@vger.kernel.org
X-Gm-Message-State: AOJu0Yzq1lqNnMfe0U1rhNz29b0DHOb2xSEbiV1REVetITNdCq/7PmhD
	TdgfpRrT8uZYF61iuw8YFzIsyOalvLwZ9W8lbZnGxmInUbty9GtWgxZdsjNUYR1lQ9cs+dcNhqm
	c5QXJpOuq40d6b/2cIgilmIZN1Q5AemIP92k4
X-Gm-Gg: ATEYQzzf79SnVx87f0K1MA/TxCuszjuRHsE4mSlVWVBO8aolpohAwQk0PO6/9j4gP7N
	pUDPA0Y5aTvGjHbNIpmtxE0cRZF/tmBKsHPt0x/x2+AfG2ZhPCl7vbusxJar9uI3WqMLK6lRLOA
	stW2DBrrbdFQb0jN6L/7Z8OYgTOr2BU0A7NFAhHeWw7KvWhNIOxj1bui+Maue9Ws50cRXo02rGt
	VZGhBCxG/Vir9baAtWrDze1b+JW45lKwO/xdqhr4py2+QuC6KuD57x75WGq6+5PsajRxbp3em/6
	xTGHkIsNUKfWasYejghQ7ReJH97AGom6bh8cKSkoYPsIVzWhIySvMBkPK5hUGmurr7HJdwzi60y
	IqvmErbA6SSCVXbVLtvini7zB8Z9ilLv2QEzt+480wIL6
X-Received: by 2002:a05:6122:1699:b0:56a:f348:9b8b with SMTP id 71dfb90a1353d-56b07dff8f9mr4723574e0c.12.1773112208790;
        Mon, 09 Mar 2026 20:10:08 -0700 (PDT)
Received: from ryac.ausil.us (207-179-239-100.mtco.net. [207.179.239.100])
        by smtp-relay.gmail.com with ESMTPS id 71dfb90a1353d-56b09ae3ef6sm1544609e0c.6.2026.03.09.20.10.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 20:10:08 -0700 (PDT)
X-Relaying-Domain: ausil.us
From: dennis@ausil.us
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: FUKAUMI Naoki <naoki@radxa.com>,
	Hsun Lai <i@chainsx.cn>,
	Jonas Karlman <jonas@kwiboo.se>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	John Clark <inindev@gmail.com>,
	Michael Opdenacker <michael.opdenacker@rootcommit.com>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Andrew Lunn <andrew@lunn.ch>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Alexey Charkov <alchark@gmail.com>,
	Peter Robinson <pbrobinson@gmail.com>,
	Dennis Gilmore <dennis@ausil.us>,
	Michael Riesch <michael.riesch@collabora.com>,
	Mykola Kvach <xakep.amatop@gmail.com>,
	Jimmy Hon <honyuenkwun@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v4 1/3] dt-bindings: arm: rockchip: Add Orange Pi 5 Pro
Date: Mon,  9 Mar 2026 22:09:59 -0500
Message-ID: <20260310031002.3921234-2-dennis@ausil.us>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260310031002.3921234-1-dennis@ausil.us>
References: <20260310031002.3921234-1-dennis@ausil.us>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 3467D2449C3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[ausil.us:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	FREEMAIL_CC(0.00)[radxa.com,chainsx.cn,kwiboo.se,rock-chips.com,gmail.com,rootcommit.com,cherry.de,lunn.ch,jmu.edu.cn,ausil.us,collabora.com,vger.kernel.org,lists.infradead.org,oss.qualcomm.com];
	TAGGED_FROM(0.00)[bounces-273235-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DMARC_BAD_POLICY(0.00)[ausil.us : Multiple policies defined in DNS];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dennis@ausil.us,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[ausil.us:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,ausil.us:dkim,ausil.us:email,ausil.us:mid,qualcomm.com:email]
X-Rspamd-Action: no action

From: Dennis Gilmore <dennis@ausil.us>

Add compatible string for the Orange Pi 5 Pro.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Dennis Gilmore <dennis@ausil.us>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index ae77ded9fe47..3c6b83a84463 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1320,6 +1320,7 @@ properties:
         items:
           - enum:
               - xunlong,orangepi-5
+              - xunlong,orangepi-5-pro
               - xunlong,orangepi-5b
           - const: rockchip,rk3588s
 
-- 
2.53.0


