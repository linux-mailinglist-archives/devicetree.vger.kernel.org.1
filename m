Return-Path: <devicetree+bounces-271804-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QH3jHSRAqmlQOAEAu9opvQ
	(envelope-from <devicetree+bounces-271804-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 03:47:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C54321AB25
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 03:46:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id ED84330131D0
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 02:46:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FD3A35DA52;
	Fri,  6 Mar 2026 02:46:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ausil.us header.i=@ausil.us header.b="LPyPsEn6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f98.google.com (mail-qv1-f98.google.com [209.85.219.98])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 156AA1643B
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 02:46:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.98
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772765203; cv=none; b=fPQN3cmb6Cuo2VhMMlZf9w+ewgo6HVkQwIQSqrreJMWOb82qFaKZfzODxR9/vqKPQfxrS6faqrWqGtfHp84Lil+1GQSxmjFoZHb14EIMyNCYyNXFhukvD+BfLHZJdkB7uph++a9zehuvceFGMe/0qNnmKynWFydkzEB2FLl26AU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772765203; c=relaxed/simple;
	bh=YOfFbIpwiNDmQQ6SnW9JqzlFwsdx7DsINX0gVz2lQkI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kaQEynLck18nTnZvIQTdgnh7n+3fNjrx9dVyYGhDtfrfp7c46h8WZ5Hdyn9HLEtVs8UZTiROWPrbBN9CJxTtDOShxJ3apFWLESMc9sq6zTD1ibzJgVZu6tcEd+LGaJbcb1Pd0p8hAaz7Mmpme3p7WWZ+aL7wb4lGIVZB0eIBgUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ausil.us; spf=pass smtp.mailfrom=ausil.us; dkim=pass (2048-bit key) header.d=ausil.us header.i=@ausil.us header.b=LPyPsEn6; arc=none smtp.client-ip=209.85.219.98
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ausil.us
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ausil.us
Received: by mail-qv1-f98.google.com with SMTP id 6a1803df08f44-899ed41208fso103313106d6.1
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 18:46:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ausil.us; s=google; t=1772765201; x=1773370001; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C8HDblj7fRKJtovg4Bo+ljGQF5b9QTgQki2w/2Xqdco=;
        b=LPyPsEn68Cs24rV11s/KuwAPZFep2P6itOblJU9c7jXV7Gwz96h5wiYILJcSeGBFcF
         Eg6txLCafvtk/WF9Y3+WUMVBju4XHuS1JppwH9i/C3d5giGK1ePYk200INN6juJIoaWq
         QeO+NJealazf1RmYcCD29beWfVpp+mbhj/C6wvG5nGfzCzW5iH0vuojj5nxrKeis7tRn
         tB/sbwMgiz5qdDnIkTlBm5NxPKL2BSy5i05yOz8G5LVBEOb+r5RRCLAgLr+zoMX+YX8M
         +kfqwZyz3KGQI6VlQjmxGaK9CaWjmmHUhEkbb8+ujRkB+1e94cv+5usp4OgDAGtoe9RL
         Aa8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772765201; x=1773370001;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=C8HDblj7fRKJtovg4Bo+ljGQF5b9QTgQki2w/2Xqdco=;
        b=NgbGAxrL5zmwCSXeKQ7lBWdafwEEcUiG4wURA6kSIECDK8bzzxhNkcJ9/NkgMjYiqB
         DhSfqfNVnqs1Zf9eWBZS4txma25nfWLHYFU4ve7Y1XpL87swRds01gWpiDl/FLboU3r9
         7ECuhCH5Q/tRxRNMzMLwCu8E7mgcT6TnZnp1Qz1uykRjr1vy51I0QMihOg3DfbBM3Qik
         g95LFsEnrznsz4TD0OhoJVfoPbRg4NlbfQGRFdSqf7hFloVH+20PKIrRCp4RKLb7CBrh
         KkWkGW5x36ejt7CMI/ByxrqTNDd3G9BGMaNnrOrOCm1KNhdSwLspw9PQfOslSaJuB865
         lSzA==
X-Forwarded-Encrypted: i=1; AJvYcCVcnUG5DktnnBuYJYonar+1j/7CP1H1dttIxjJe+mNX0obwW9NONkFvHTkfkx4lHNIQixFlbz72qDvB@vger.kernel.org
X-Gm-Message-State: AOJu0Yxf1vCOnEko5aIRzoMtFjDDjCX4TidZasW8peI5VNX8A3BDWVjO
	T9dr4OClGIuGwTjw+QixzmE58hEvCtQIF4QPd8/lY4WGWEux5ut9p0JwJyUfHuMYKCDBL/wCC4z
	XINOlM7EU1HfcRxg3kWUbbIcZZTy21b6ZIXax
X-Gm-Gg: ATEYQzzLaIf3iEGfzOvUGH9b9fCgt32wS0oRdZ2/skpLTOzyko6IaqtD9XfFs6np2NG
	ZKUyQ05v+ny+2ujk87WqGEv+U9hrlTjDOY2lKgXZK0EgTocCo4/GAqCr272V5Z34w8URl1tgXjr
	bgIXkIXSu4kITGLoLrU+H93MxvPwWnkOi33rn+Lld5NkQDKFSYSF+C/q46yJS9/t9NzAAaih0pi
	yFjWq+88N8gvvnLyNia2tlxmKPSQUM2CRwwTL5xigthC6zB8R4HCyi5dr9btk+IiRzTd0KfD7en
	k3jllj3goZ7PC/zfEcalItGcKHiKf+lYEgV3czFPGtP8VfzJLpS8RdPeC33l+wR8DQrGo7ChVfZ
	1ctaYJ5lf4XTToe+5Mp5cZuPZExMFFNlKBPTF9yIFxb3H
X-Received: by 2002:ad4:5d6c:0:b0:899:f725:419b with SMTP id 6a1803df08f44-89a30a7dba7mr6939816d6.27.1772765201104;
        Thu, 05 Mar 2026 18:46:41 -0800 (PST)
Received: from ryac.ausil.us (207-179-239-100.mtco.net. [207.179.239.100])
        by smtp-relay.gmail.com with ESMTPS id 6a1803df08f44-89a31412832sm168366d6.11.2026.03.05.18.46.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 18:46:41 -0800 (PST)
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
	Mykola Kvach <xakep.amatop@gmail.com>,
	Michael Riesch <michael.riesch@collabora.com>,
	Jimmy Hon <honyuenkwun@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v3 1/3] dt-bindings: arm: rockchip: Add Orange Pi 5 Pro
Date: Thu,  5 Mar 2026 20:46:32 -0600
Message-ID: <20260306024634.239614-2-dennis@ausil.us>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260306024634.239614-1-dennis@ausil.us>
References: <20260306024634.239614-1-dennis@ausil.us>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 6C54321AB25
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[ausil.us:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	FREEMAIL_CC(0.00)[radxa.com,chainsx.cn,kwiboo.se,rock-chips.com,gmail.com,rootcommit.com,cherry.de,lunn.ch,jmu.edu.cn,ausil.us,collabora.com,vger.kernel.org,lists.infradead.org,oss.qualcomm.com];
	TAGGED_FROM(0.00)[bounces-271804-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,qualcomm.com:email]
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


