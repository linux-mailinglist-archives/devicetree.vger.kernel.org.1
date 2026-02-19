Return-Path: <devicetree+bounces-266721-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GJwZKCN7l2m6zAIAu9opvQ
	(envelope-from <devicetree+bounces-266721-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 22:05:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id EEEB116292B
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 22:05:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 70D97305980C
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 21:04:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39F4C326953;
	Thu, 19 Feb 2026 21:04:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NsNzkL+m"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF141327202
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 21:04:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771535067; cv=none; b=tTlDgrm3FQUEcL8MRaHAVTkJXnlVdmzFvZ9O8ms0x8tREpivnzM3d2xGm/D3g31zxFJaoPSMsasDdmBvdBHwO/6ZpeWlDD/V+DSJB+EL7AwsnVWk8BRbgdRj95xb8u/mZQYup4Oh4MmCApDZJQnsZehppR7Faxssm5LPZx+/8I4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771535067; c=relaxed/simple;
	bh=QtehmTlxVE2ImMqTMUlN+wssHL5rLi9pMI7VHV6x+J0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=CkKLhwP5OsrxOAtNss3Hceyzrp60S4yTPfIqujQdqHsO+HPBnP/QWta/S8tLTcgKP4aopyDjoYmYBYkYfWKAEESpkgyE4sAcGX6USfyOrzPstKfm9OZIJ66ihjOK5SUKtPSk6NCvAO7a27VrNLNW+MbKh1Q2o3yt8biRJ2qP9RM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NsNzkL+m; arc=none smtp.client-ip=209.85.222.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f180.google.com with SMTP id af79cd13be357-8cb3e0093e3so137366185a.0
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 13:04:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771535065; x=1772139865; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0Hq1Jil93LKWD5SqiddgyBykMfT43TbOI7JPjGrETyE=;
        b=NsNzkL+mkKIug3+K4wHB5sTZBSr4Cz7Xew/VM1A/rD2k4GnJhAPaZZI6wvUDp15IwO
         7/Pcx2hXlUvHXLPNZXPtB+hzZAjvapQVVgO+RvThji9VcoMtFd3TdEVnfXxu6cGnxuQD
         DYAHFmOzgXuwlzDpZic6tGTY7Nz4pIi746b7fSfbIWISCRT6I3eKF1ARhReQVTzTqhwz
         vbqXNv6EZrCKAJoMw4pl/RkqcayBrVB/WQzIcdsuwl0AO73HVbXJhbz1Od6NOH/gqBCi
         /Fil17M4OOF3Y/+a4+sUFRtn0nM9uXBVBn4Rql6YYO8mw9hNhO6fVoz1Tvr9A9B/OHcB
         blNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771535065; x=1772139865;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=0Hq1Jil93LKWD5SqiddgyBykMfT43TbOI7JPjGrETyE=;
        b=Nhdt8qsNj/Xnc6D/WDWcoKMBfLa4yeMpc+cyiFElr29xQGDRwoLtdWRkXNceNbxKqb
         PsoJzm/xdLWQcI+o0pqaN68NY9tflyX8knS3Jsp3Zqj1ahnWQxlL3i2nNEabkZwT4TKM
         p1+rKuyjcVBVLnlgFdMIA6eQcvJVTgUS9w5Bg6JojJO5tn/j90/y//8aoKM5V27EqDsK
         XhQh3vEbXy8EFeFsvre4wNPUYis9U7dlxI3i6OKKPAbDfiqBkGhOy3Djek01buSaUXGc
         N3qAUvrQw3pCYhqSPIMt3A/rk0D2F68TeVKEbiICnoVglYExBBr6oxMEBsC5RlQ2m7hw
         qxSA==
X-Gm-Message-State: AOJu0YxWpnYb9T7A70FaYbK5n+rCrmdu7V/cdP1NHF8IIT8FB6zQegH8
	Fc73WKzFq3vr9m5Z4lkpel1JOi3CiNEsfPBeKSrox89XjsdRONOo8aE8
X-Gm-Gg: AZuq6aK/KfeygrSfqf3HOhRlKqxre0avFFTDNN4TXo/1s2oOV/NIxpt6+mc67nickfV
	1hiX4ru4Ys4n2lrZRM+mwKAgB4/BPQq894M3tJuKEJ0eyhbQdnklpcFmyvFv3Vb/OitY9K7JyvY
	QvKTtJgiPPYIt9PnC7MEbPG8eUX7ZqogRsTBCmZnS9bxrEWpb+2uagz4YshaXeRjoZBJsgpyxB9
	N+fcWLO3mZjRpJbrtPGWw075sS/XLTg0ejbRdmIt/guQXSJ8wlsoS2LLv8FKNutdB+ZlFeMJLlk
	J7y3P80FWt67sJEknEkPN4F+dLdjvL6Ork2QQGf+NpfKVaz1Xgv2/HK+uZSAnJhw0vm11SRVvqI
	Y1lAxbbDRVzBNFQr1FcPGZO60UZFJOvpHZk9MbRNiaYKVjONPh61skPyTGHg7cRbNflWWvS9Qtr
	RnhzoMLaTC91yYk8ARw0nWjvywL11esBX5qHhdEHUwMFwqycFjZWVlfDPrdymil2fyNK9Usa3St
	PHliRRmA2U=
X-Received: by 2002:a05:622a:19aa:b0:4f4:c7c0:bd15 with SMTP id d75a77b69052e-506a82613f6mr301054061cf.12.1771535064428;
        Thu, 19 Feb 2026 13:04:24 -0800 (PST)
Received: from mighty.stonybrook.edu (nat-130-245-192-1.resnet.stonybrook.edu. [130.245.192.1])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-506b275d59fsm153971511cf.32.2026.02.19.13.04.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Feb 2026 13:04:24 -0800 (PST)
From: Mithil Bavishi <bavishimithil@gmail.com>
To: aaro.koskinen@iki.fi,
	airlied@gmail.com,
	andreas@kemnade.info,
	conor+dt@kernel.org,
	jernej.skrabec@gmail.com,
	jonas@kwiboo.se,
	khilman@baylibre.com,
	krzk+dt@kernel.org,
	laurent.pinchart@ideasonboard.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	neil.armstrong@linaro.org,
	prabhakar.mahadev-lad.rj@bp.renesas.com,
	jesszhan0024@gmail.com,
	rfoss@kernel.org,
	robh@kernel.org,
	rogerq@kernel.org,
	simona@ffwll.ch,
	thierry.reding@gmail.com,
	tony@atomide.com,
	tzimmermann@suse.de,
	andrzej.hajda@intel.com,
	bavishimithil@gmail.com
Cc: devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	linux-omap@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v6 3/8] dt-bindings: display: bridge: lvds-codec: add doestek,dtc34lm85am
Date: Thu, 19 Feb 2026 16:04:02 -0500
Message-ID: <20260219210408.5451-4-bavishimithil@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260219210408.5451-1-bavishimithil@gmail.com>
References: <20260219210408.5451-1-bavishimithil@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-266721-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	FREEMAIL_TO(0.00)[iki.fi,gmail.com,kemnade.info,kernel.org,kwiboo.se,baylibre.com,ideasonboard.com,linux.intel.com,linaro.org,bp.renesas.com,ffwll.ch,atomide.com,suse.de,intel.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bavishimithil@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: EEEB116292B
X-Rspamd-Action: no action

Add compatible strings for the Doestek DTC34LM85AM Flat Panel Display
Transmitter

Signed-off-by: Mithil Bavishi <bavishimithil@gmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml b/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
index 4f7d3e9cf..3ad01645c 100644
--- a/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
@@ -33,6 +33,7 @@ properties:
     oneOf:
       - items:
           - enum:
+              - doestek,dtc34lm85am # For the Doestek DTC34LM85AM Flat Panel Display (FPD) Transmitter
               - ti,ds90c185   # For the TI DS90C185 FPD-Link Serializer
               - ti,ds90c187   # For the TI DS90C187 FPD-Link Serializer
               - ti,sn75lvds83 # For the TI SN75LVDS83 FlatLink transmitter
-- 
2.43.0


