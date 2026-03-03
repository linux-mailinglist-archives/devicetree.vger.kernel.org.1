Return-Path: <devicetree+bounces-270360-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ENyXCA6apmnfRgAAu9opvQ
	(envelope-from <devicetree+bounces-270360-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 09:21:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 22E341EAB5C
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 09:21:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id ED4F13016B31
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 08:21:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 386EC388360;
	Tue,  3 Mar 2026 08:21:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aPAn1rmD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6DA4298CD7
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 08:21:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772526075; cv=none; b=F75fG0Kw6kRHpmmud5cyeBUrWLfZayXYXreahXxIvTyrGAiynHV0MctqVi6ifhEjpX4hdLwdxKa6fpV313R4KaZnwnKe7zTRSlABspTjQeRmf9pl0OfAeQ+GmssqxxYPZLzji6DutvgmTmJq3Zmp37ulwGylBR/00k7ExIencok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772526075; c=relaxed/simple;
	bh=S4OFXIKh0uO0e82KZw2bvPmaW0Sotg07BRAdX+aGqKc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=l7zptiXHxTRuiMjixGVclAwgQj6HLg6CATMgioEScAYY3RjFj706t0Oh91WixIBH/t3f8elfr6OClELl9kEh+gyeVcBLxrFaDK9Ul6K/OIYnA9YYjdnb3kMfwjQOTixpqlwqXC0nE/t4CWOm4gLIu7vjXik7CX7gd4VmHonfW2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aPAn1rmD; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-389f200c26eso78406001fa.0
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 00:21:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772526070; x=1773130870; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rkFD0nTtiMecWdiMYsq45f5KZ8ZJ53Zo2JaKZseIkhs=;
        b=aPAn1rmDF+71Cb+yeXjY8jjZG+YSADZ33CoxDLGqbKM+PJETHP5K5UIGF4TdXdnoA6
         /XFT2m6AsC8uDlnJw1ZUCbPimjCdIffI/DUm5cVbVxGYt/1f8pF5KRt768vvHRWX6DVc
         mBOAk66CwnVEZinz0yRxXx3cFdQebECHlfwCSkfxlSD3iT4IQPx4yondhJId2RkmydIU
         BM6FEqUGCgN4flmuJ4l2P8uCCsrUD1y/DhRSaHExlNGQmVN8ZugbfHKcwCRy7NSLUAFT
         Qzl/353tfnrHXwHAbSDB3WgUyOUjsnBZIpmEuAaMgClPilZp2DPnIBqZahhkSeb7tBko
         oqWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772526070; x=1773130870;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=rkFD0nTtiMecWdiMYsq45f5KZ8ZJ53Zo2JaKZseIkhs=;
        b=g6SyfdONEf/i1Z2npEsrNJbxiELy1WcLqIRPk9qO9c2UNRYmkCv70lwcXyBNcsjPx9
         VyXjuTGKdms29Ht3CSC9wd2JAZBYWXmXKyCT4TwBKVjz78Y7dflsAKNMZWh5FlW+vbhw
         MUVtF/BPIk6sSHvho77kHTqxlv/xsUQtRH/A2kp8Ry9B2mn83rHUhpChDFI+46SGOOgA
         3rdZpyG/hKYNZnSLcVSOUAbLg9A1UfeJv33RE/5QCNJdo29kMmdDlxH2BD3YX0CFSyXK
         aHb1aXXIonW96rWAVesJ3NS1H+ceVOrFmgxl2Sds05jZgkLRk3fso+KibPpPk9VaNQGg
         3oBQ==
X-Forwarded-Encrypted: i=1; AJvYcCWY4eHEJG4eTH0ahlZn1XUuHoSx3+AKM2cVvTTMqBi9re/9gG5TFSbF7WCw3/uWsZKV/+VjrBPhpen+@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2G35eh30d5F9HyEJoNuoE5bnDeuhjA/b0CRcuqN0Hw1HopIiN
	PEjfA73s/uJDEdK4tpDSOTYvREobGunxpvrD4TOYa3xOjdHWcJNndZqQ
X-Gm-Gg: ATEYQzx9geAteA/EmA1wR3RfIXyNDzLHXiIUETMOdUaL0vIYLx/aR+wJ9Zvi5LPBvGH
	UEeEcyD5PjgfGomNjlN9sq/jaVNF6WwbCaCvu4rXyA30mWkBWdQeZm+B1P/E91YfGgLXIxNin0I
	/Itvi1PwM3wAXmV7Zl+PWtm7DayMLcehsrhQ89KXmii22vO1V+xlwIBSM2f8cyqwtS1ZhPN9uR/
	OELk4CCaptnLjpB79e1PVubpL697jyzpSX5bgEWToYGRy3QB1KINvMJemcVlBHl8vJDpBkDUGaF
	T9IjK4UTt4LNQr1+ezQvScKtp8xOtSC1iVJro7vDea55EkRoSsow5zikuv3F+hxr+tEvuEkezbV
	UmYWWdbbYSQTZ4MnOU0OURy8PGdpwy7dtHsvEj32dD5B2rZvVUMDNYetoRV3Yzx05iP2L1W+JPl
	BCi9E7ecb968vN
X-Received: by 2002:a05:651c:2354:10b0:383:1d66:c1fa with SMTP id 38308e7fff4ca-389ff119cdfmr73500421fa.10.1772526069561;
        Tue, 03 Mar 2026 00:21:09 -0800 (PST)
Received: from xeon ([188.163.112.72])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-389f2ffe02bsm30856171fa.27.2026.03.03.00.21.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 00:21:09 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Svyatoslav Ryhel <clamor95@gmail.com>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 3/3] drm/bridge: simple-bridge: Add support for MStar TSUMU88ADT3-LF-1
Date: Tue,  3 Mar 2026 10:20:38 +0200
Message-ID: <20260303082038.11352-4-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260303082038.11352-1-clamor95@gmail.com>
References: <20260303082038.11352-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 22E341EAB5C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-270360-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_TO(0.00)[intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,ffwll.ch];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Action: no action

From: Maxim Schwalm <maxim.schwalm@gmail.com>

A simple HDMI bridge used in ASUS Transformer AiO P1801-T.

Signed-off-by: Maxim Schwalm <maxim.schwalm@gmail.com>
Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
Reviewed-by: Robert Foss <rfoss@kernel.org>
---
 drivers/gpu/drm/bridge/simple-bridge.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/bridge/simple-bridge.c b/drivers/gpu/drm/bridge/simple-bridge.c
index 8aa31ca3c72d..cc13c98f9be6 100644
--- a/drivers/gpu/drm/bridge/simple-bridge.c
+++ b/drivers/gpu/drm/bridge/simple-bridge.c
@@ -270,6 +270,11 @@ static const struct of_device_id simple_bridge_match[] = {
 		.data = &(const struct simple_bridge_info) {
 			.connector_type = DRM_MODE_CONNECTOR_HDMIA,
 		},
+	}, {
+		.compatible = "mstar,tsumu88adt3-lf-1",
+		.data = &(const struct simple_bridge_info) {
+			.connector_type = DRM_MODE_CONNECTOR_HDMIA,
+		},
 	}, {
 		.compatible = "parade,ps185hdm",
 		.data = &(const struct simple_bridge_info) {
-- 
2.51.0


