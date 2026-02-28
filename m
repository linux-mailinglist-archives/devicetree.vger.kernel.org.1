Return-Path: <devicetree+bounces-269622-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2PouIaNjo2myBQUAu9opvQ
	(envelope-from <devicetree+bounces-269622-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 22:52:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CDE371C94E7
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 22:52:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3528A310B416
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 20:54:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B1DA3019A9;
	Sat, 28 Feb 2026 20:54:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ausil.us header.i=@ausil.us header.b="TcVEWHbC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f225.google.com (mail-yw1-f225.google.com [209.85.128.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 429182DA75B
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 20:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.225
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772312064; cv=none; b=fReEnRTMliKM/T/VFT8BDtYpaokts2yl5haPjJbGYXGmpxLALNMS+lxFguKW48b4K8uiTA+86hZHslG9SGDmuskubNHiNpg0iGkqQtc7VhlIJVAr+1Z2Jfzi601y5qJX08CCfHwXFPFwIerBTSNMhLbfFtayFtHpo3W6m92NHGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772312064; c=relaxed/simple;
	bh=qqvMnsockGI5meTKZGNpy+nRNOlPW3x2xjyz7U3fY9s=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jSecTrbtBfEOco88x84EXFWEm2zMXipARcWUA4muv5cM3CWqVERXbWh8gMYMV1JZZGsXi+H5K44IlSJXexjbKT7D1OwtvnkzA4JYkhbEHknOj1hTfn65JKQdTVCiio2k4S9D2k/nJ+77Aymv6UNjsvIK8a4XHBJFJOD6AsFVJUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ausil.us; spf=pass smtp.mailfrom=ausil.us; dkim=pass (2048-bit key) header.d=ausil.us header.i=@ausil.us header.b=TcVEWHbC; arc=none smtp.client-ip=209.85.128.225
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ausil.us
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ausil.us
Received: by mail-yw1-f225.google.com with SMTP id 00721157ae682-79881805788so26186947b3.0
        for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 12:54:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ausil.us; s=google; t=1772312062; x=1772916862; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Qwey03mZDyIX0X1N7iXb0Z2GyEloShTQz4q0hZoIMyY=;
        b=TcVEWHbCW/31wc+gzQO7q8sKJDCBRhXlc4kc9qRZllmya0B8BhcG8KBkFnuJQSa5jv
         dDEQChxL6Yi4Nleqc3Mr/vs/XKXRGckoa/mGKSRCGVPKLJ0vcXX8Okt+u4XLvewxtSED
         xpvB/5tg4nLRpIEmizCrLBikbjJKltwhTen22bj+Y8gzJjhZcufpP9FooDLYKr+H5AH/
         l8T28MrVJJlLb5QzCdd5VeHWfiZy9SgQ8l3y+FHpzYDgVqyqPS1NgPXionzLJwdVQIB2
         eXAZyHyoEQGh9AP+vu4relnS/KodedCauxicw0rW4opegMNDKr8AZ+GQ5KQXQlL7qoxW
         /2Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772312062; x=1772916862;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Qwey03mZDyIX0X1N7iXb0Z2GyEloShTQz4q0hZoIMyY=;
        b=R4ft+y/67TsTD5YWeZPJtlX2Bk++KozgPB6XStTyqlo59QyQQG6oLNeIx8JDiGDGJx
         FqOPGjkf0lTJvBzwj4+aqKqWtI7TDJGksl3JSasIIviGhc9s6jBrZkbZXli/ri1w+oih
         Our7xiRKrXuBtDSpH8By09d92zXUs6CQCIyxGFRz9FIJKMb1AplRPi17PtLHwdVbfrOj
         doox8zi9m7oUTHez2r5cCCSUvgsK2Obq1uBn251FYs1dpv2g4qUQIbuS6K3mlfmlsBgo
         9VP+Z5fNV6GDCPPcWbiRXTRD/opUrHwALmrPhsRykQgxGE12q1fPiGH8lqtvzzC1YKMY
         QlgA==
X-Forwarded-Encrypted: i=1; AJvYcCVl0mxX9PzyOsFpjio05/CYJ5LMkr0Y/rQwpWv+NwzGUO1+JsFKnLpF9YRZbaw0Syu84P+rXg9DBOHg@vger.kernel.org
X-Gm-Message-State: AOJu0YxuqlBA8ChbedOBhZU4IoVt8M75KLIZIiGLnd7igalC1s9PSfIR
	wflYcMsLsm5odMrkJEkMrz63jN3NGODKHVzx8P3eVM3f6nVpRmj1o6qgL1kEmMrwYfoEbbnqqgU
	KBhCw5Ra9mO53mfCwnkzNZrGjbSpTjlHVySvq
X-Gm-Gg: ATEYQzy2xsO1vWSCOgVE9g+wK50DWHQk4cqKidVuQq2JfDk5lnu3WMGvubyxAxFH1sb
	UVLSbcse7ntWdi3r3JCp6utXmZKqU94msCrAvUDCvi0dLnLszkt5ZhWUZAm1ApPT3SdxZZdItBZ
	aaGgpW6keZhf2EZlTDPb5bB5Jkc9YDRx/CS9JeOtJFRk7k2IDQX/aP8x0wpqeixAC02bHqQ6XFy
	4DxJpmQ9fMl/qJGcjCl41AxusTHcIMgjNk72xyYdJUBzPzzQRqPfleWz3NyBE6u2AT3A0r9H3ce
	gQp8JtoLch1Sr97aswLo7iblN1JkGbhfpDeiV6YRg7px05EQZkNWrCFkTEIk/csaQzsLHcZkJ7X
	rHttNFI9syj1/bJSwS3haE3/kIS9UfjvxHawWA9VKpiqZ
X-Received: by 2002:a05:690c:4507:b0:798:50ee:5b02 with SMTP id 00721157ae682-7988559ca7dmr66829347b3.42.1772312062116;
        Sat, 28 Feb 2026 12:54:22 -0800 (PST)
Received: from ryac.ausil.us (207-179-239-100.mtco.net. [207.179.239.100])
        by smtp-relay.gmail.com with ESMTPS id 00721157ae682-79876bf333esm10213567b3.16.2026.02.28.12.54.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Feb 2026 12:54:22 -0800 (PST)
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
	Alexey Charkov <alchark@gmail.com>,
	Peter Robinson <pbrobinson@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Dennis Gilmore <dennis@ausil.us>
Subject: [PATCH 1/2] dt-bindings: arm: rockchip: Add Orange Pi 5 Pro
Date: Sat, 28 Feb 2026 14:54:16 -0600
Message-ID: <20260228205418.2944620-2-dennis@ausil.us>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260228205418.2944620-1-dennis@ausil.us>
References: <20260228205418.2944620-1-dennis@ausil.us>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[ausil.us:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FREEMAIL_CC(0.00)[radxa.com,chainsx.cn,kwiboo.se,rock-chips.com,gmail.com,rootcommit.com,cherry.de,lunn.ch,vger.kernel.org,lists.infradead.org,ausil.us];
	TAGGED_FROM(0.00)[bounces-269622-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ausil.us:mid,ausil.us:dkim,ausil.us:email]
X-Rspamd-Queue-Id: CDE371C94E7
X-Rspamd-Action: no action

From: Dennis Gilmore <dennis@ausil.us>

Add compatible string for the Orange Pi 5 Pro.

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


