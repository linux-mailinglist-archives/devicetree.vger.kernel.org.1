Return-Path: <devicetree+bounces-265944-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YBr3Kcmxk2kK7wEAu9opvQ
	(envelope-from <devicetree+bounces-265944-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 01:09:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CD2F1483B1
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 01:09:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D627C30221C9
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 00:08:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DEBB81D9A5F;
	Tue, 17 Feb 2026 00:08:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GWu6N/v2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5D711A0728
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 00:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771286934; cv=none; b=lXNuZjfifbn3lC6NtiSrhxHzY33SM6s79qrWE8d42z3J2gcb+td43iNq75RCKFDtlrenNL7BDvU8xy468XN1HCeRhEz2CE/wnJ8YQjBYGDR89V4OxDpPzlbTx129zW3jsZDHjP+RHwk7PAcXJhwbtftTAM9Y2ial/Ex+HwUSH0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771286934; c=relaxed/simple;
	bh=Mwr9xilZhP1ekJ4/MGltrG/12/eSsM6/Bnf15Y+na6A=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=gCf/G64eMk/ya/3cOaz7ryelLG2an/3NKcuYJOMg9QBK4VjzeqcNvNdTpZcE7MPNZrFf6mF+gjn3eE3JvGLYpYTNpnCiYk5C5W2PkSKuEpLwqZrZV2tDIPd7IL0GIABQ19BtCf1/f2UcqmqR8hgfHkilTZR6Rb1V14h1W5BrKE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GWu6N/v2; arc=none smtp.client-ip=209.85.160.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f178.google.com with SMTP id d75a77b69052e-503347e8715so46642901cf.2
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 16:08:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771286932; x=1771891732; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EfrCcwMt9Miameh+PUap2dL04J6Ma+4K1r37+UmYok0=;
        b=GWu6N/v2SXCrufTa61Po94dyh8+klyc7cICf6wsapVzCvNLcIqdkWoW++14krGy7na
         sSt7HobiQsprVretv2qJjx9EUo6qwvUSsPHUN7oI2lYR0UGMgBbypF/sYThbEFSFqhEe
         us/936NWLUL/xkdWo3uvb3mw/8dodQM1Pzq5qmz7WIpgmLF0DftksrheYYls1RL+h1Id
         dwN0JuN3vH/zmQhcdP0GpjU1sg3QWHr7hAX7xd8WFUFB75F2ggEZvvwB6KEPr7lR5+fl
         d/A/acZtaqtY7FBeov4R5xIO57aVKqscrKxn0DJ1vjiPdjFdaUwQsBwJIcRWCa6f9vgT
         4qZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771286932; x=1771891732;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=EfrCcwMt9Miameh+PUap2dL04J6Ma+4K1r37+UmYok0=;
        b=D94SOxT/Dn3APAWWe1Uv8Q9/1WLfZySdlTdurx76AIGLXQAQNXkPcn77sBxDKP5CEb
         3EoVi+ioFR61Pn6Q00Bgtyd+7cijmZKHWFUshGbgoMezW7QkNuFjZTNZNzi+Gf9L3w32
         FYv/1sciz4K4Q2FMowtfqg4rFRyunF4FAO9LbxrIh6fsYUIw/hXneNntfoqHBJxLc6aB
         l6Tc6sx01TF7Rx1H8Ar5l+84kCV0eMQhP2Zip+CT/dyZMRaXlsdIVQrcxL/Ka5yB7lhP
         gbpqhM+/MuCnDBasrr6Sq79Sq9yLH2vW266mMgxUXPO5KTs28Z2JSZ6IYefPoz524QSm
         oKbw==
X-Forwarded-Encrypted: i=1; AJvYcCV5cxeaIyaeGDCoEbygNgaIjObqPIByuzdo9rMil4UTp/jbS3/lBgb3Ix9TT340CFD5VQ1C80baxqku@vger.kernel.org
X-Gm-Message-State: AOJu0YxyZMItdazNSm7wXktqn4I1oj9mhTKxWP+4dNZk7NMuMFXB52a5
	zUS5ZSe/zN3N42XbaPyv5mM2VKLx33jf9AMFsNtmIjQHcRJAL/9kSCnp
X-Gm-Gg: AZuq6aKtdOOr2Sr3DdCKmRyakvm6BSqO491i3E6Y+YGLb8XcgaK1HdAS5rKp+HcKX+Z
	lBmRuRL0daU12rSK9UDrhcS46hGr9snzmCJm4b2HvVwHDfYVxpvl6tNvY8QhbJON20Gxv1a0116
	kJraHIDrGfRYvnPF3l5NJWjfbA05bpuNJuckkHzSayG8UBJ5zPrLYJSIbkyvbvWZaRNgbI45Cbx
	nkjxKxfB/x7lRq+UESgnAbYowLqnX/kQQuQJO86Jhd6Uyba/ygoVLWJhiAYL7ZmEHfpMXmZFZDW
	yCjPu3WuddE9IxJfecw9bn1hPzLlHkbOr03bEiDbFAciY7QAZXxMxOnniUXWUd97cTUA6JyXTJH
	GLMwoMVmOjw+W9ei2vekQuvwE2ywGKWZRBP+E+vbFj+RDQ8R7htBKxVB4dzZ0V5myGB4qzdq5TM
	Aj8LF28MOa6o0cquiOKz0kgSeF0Bs/8w==
X-Received: by 2002:ac8:5d46:0:b0:501:17a9:5ff5 with SMTP id d75a77b69052e-506b3fa2151mr131086721cf.21.1771286932589;
        Mon, 16 Feb 2026 16:08:52 -0800 (PST)
Received: from localhost ([184.144.58.243])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8cb45f13a61sm857362585a.7.2026.02.16.16.08.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Feb 2026 16:08:52 -0800 (PST)
From: Richard Acayan <mailingradian@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <jesszhan0024@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Thierry Reding <thierry.reding@gmail.com>,
	Sam Ravnborg <sam@ravnborg.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org
Cc: yifei@zhan.science,
	Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH v2 2/6] dt-bindings: panel-simple-dsi: add nt37700f compatible
Date: Mon, 16 Feb 2026 19:08:50 -0500
Message-ID: <20260217000854.131242-3-mailingradian@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260217000854.131242-1-mailingradian@gmail.com>
References: <20260217000854.131242-1-mailingradian@gmail.com>
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
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265944-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,linaro.org,gmail.com,linux.intel.com,suse.de,ffwll.ch,ravnborg.org,vger.kernel.org,lists.freedesktop.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mailingradian@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[zhan.science,gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email]
X-Rspamd-Queue-Id: 2CD2F1483B1
X-Rspamd-Action: no action

Add the compatible for the NT37700F panel found on the Pixel 3a XL.

Signed-off-by: Richard Acayan <mailingradian@gmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 .../devicetree/bindings/display/panel/panel-simple-dsi.yaml     | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple-dsi.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple-dsi.yaml
index 8d668979b62d..e56865d2771b 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-simple-dsi.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple-dsi.yaml
@@ -49,6 +49,8 @@ properties:
       - lg,lh500wx1-sd03
         # Lincoln LCD197 5" 1080x1920 LCD panel
       - lincolntech,lcd197
+        # Novatek NT37700F 1080x2160 AMOLED panel
+      - novatek,nt37700f
         # One Stop Displays OSD101T2587-53TS 10.1" 1920x1200 panel
       - osddisplays,osd101t2587-53ts
         # Panasonic 10" WUXGA TFT LCD panel
-- 
2.53.0


