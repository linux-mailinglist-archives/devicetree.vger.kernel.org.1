Return-Path: <devicetree+bounces-273172-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QDSCCRVlr2koXAIAu9opvQ
	(envelope-from <devicetree+bounces-273172-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 01:25:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B355243027
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 01:25:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 84BC9301223D
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 00:25:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC35520010A;
	Tue, 10 Mar 2026 00:25:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="msRV29QA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9E4C1FC10C
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 00:25:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773102350; cv=none; b=SpedSnznDM1tGFgAEnfF4+u+79XqsVbKynjWw1C4KGVccUNCarV9ltGqw7BkCm0aT47KIh2MYje+Gt6GP9mmgz91JHfzL9XdLZHBPOdOD4r4qTtd/uvSKI42TT2w/6y8mEwxy8g+dRyzOVZCe0yTq+ni+fQ5Uzxz3VSFcNVdbtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773102350; c=relaxed/simple;
	bh=e/7gEHtpwiXu5WZ4Uimad/U9BkJniCf8g0CLOuaSlJM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=cX6SNuJlRbqrjID/PoH4lqlssbib0Wz/Vij+x1wKvgXVGU9UwmJuAI/nTLky21bRncCFTkQpQiBPwaJL+RxtyKS3gNkpHR1ZM1eVbyIWRr6evpRmnd41dDlOWoDXJ/7rwLv4ZQDnUMyGnBBI4kOqP20arbBfUIWOfHe96Y6pDIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=msRV29QA; arc=none smtp.client-ip=209.85.222.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f179.google.com with SMTP id af79cd13be357-8cbb6d5f780so1235688985a.1
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 17:25:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773102348; x=1773707148; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qFBNJW1MGZfGu0QG/7Mnk9/1KLG5NOJNUh2Yxtb+sgE=;
        b=msRV29QAEVO1XQ5Lc9fkcW7yEAIehT5GQkGm+I0P3eJFE4pvKgsBWLG8coWW0jp5e7
         HwDZNia65IJdJZBN48AoLbaDB3ybr8KV9LZ3vqgeEqQkzVadR8RQVrNYtKwMqeJkfdIe
         DTH0fMHFEP+vR4ZOZRoTYl9oHr+J19OA0oJS9UhAVy2NfXnY34T8SN7Pvatdyx1XbXFd
         VtjGQbGcoDHEjYNIHtBI+2K3ZSIS3zBz0pzcpHwo7EXyncSTqa58SQF7gOh3EhiTICX1
         vX1iS2XFguHnoq04/JYlBYbCHANidFRjc8VpyzwqEyVRnKAplSPAspnOd8iUU2pndAQx
         vI8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773102348; x=1773707148;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=qFBNJW1MGZfGu0QG/7Mnk9/1KLG5NOJNUh2Yxtb+sgE=;
        b=aTFeQtu9JWgZjsfQzClO3VubycIGwGuD+ueeJ7PufFJIaXSO9aowPHWy3Ys5rp0LP1
         WaB0EoIpSSBYZNAk6A1CE2+PvIVuv8UnMXe9d6yJHa5zwA0l38jf/Bx6bZWWcdwBPD8j
         KG9oPDS5ixNIlfxOxzAvtpmO14DS8DF33SqEXT+kERoHbDIo/Ox+2bV271tEQDNaNBWB
         DVtnRFVKE7fS7QXlJ05gk4ZqHNf6fwVvFjAQSCkpB/Sxk6bAQP3Y93yZx5OCoNjFsYhY
         grxuauJQwLwlWsCbDrjlQ3hvVe+VPss5HiEbwPrPZXZwVsq5VKzl6QE3XBOiAcAOshNi
         PsVQ==
X-Forwarded-Encrypted: i=1; AJvYcCWu0qFGiX6PN73d1SutIBAPG/pn/iKVCzZ4C04loByRnXLCnSZwEOUt+CgCXpu5dz2FXjXFFlCVCtiV@vger.kernel.org
X-Gm-Message-State: AOJu0YyP+cRnFjpOZZIlPVG9QKOx4D6w6aN2qk/B+Mn+4su5iRo3oAIO
	lFyTin6lvdiLTWT/Frl6OG2TNjY7lbYw7teonNC3JAFzXqhw4xStgvQg
X-Gm-Gg: ATEYQzxQE0muzIVnRQbMvQSPv019xcaRsCf1F/ciwiq9Mkxb6w6WUBezxvYgyaH2AHt
	dHmjAU5pTfTvMwzAXAHT9hpd4NCFRglQG/DgQu398F4Y5e57ilke2uV1MabZlwv7al8e1zQTNcB
	HIANdVFGJ8AMcyDsw0SFPxMCLcRiRRmqMISUpXrsv7xU2xsjpAripZZ4oyULAMgKjQPqtZSjdCh
	6ZesAT45AM9E+RaLudA1+jkVMYTiGGhWLK1v3/xNgeq0VVq0QTZQy5KafbddNzvWLbJsNinCXxC
	erL/WMxnwSoKpk4EZ/uhKV32u9iD8uTbRDy1mxeh17eXP45eqDpedD9Ajk53wsZzF2YoJ65pkPc
	5VaIc9mnlE5Ahhsojd9H5xBFlafnGcaFfNgripugpb3qF0uGXaNcaSBPmPrF9UgZpqunFlERRz9
	AL+O0pd+bsw+0VfZNADFKoI4GYZdg/m+0HfsWrISPHhugfWnj3guk3gJxaDjeGmXWM3H05Pqumq
	8R0Dixc+MJnG0o=
X-Received: by 2002:a05:620a:4694:b0:8cd:8635:c04f with SMTP id af79cd13be357-8cd8635c58emr707782385a.78.1773102348291;
        Mon, 09 Mar 2026 17:25:48 -0700 (PDT)
Received: from localhost (bras-base-toroon21-grc-75-184-144-58-243.dsl.bell.ca. [184.144.58.243])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8cd7ea02664sm462704385a.5.2026.03.09.17.25.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 17:25:47 -0700 (PDT)
From: Richard Acayan <mailingradian@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <jesszhan0024@gmail.com>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Thierry Reding <thierry.reding@gmail.com>,
	Sam Ravnborg <sam@ravnborg.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org
Cc: Yifei Zhan <yifei@zhan.science>,
	Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH v3 2/5] dt-bindings: panel-simple-dsi: add nt37700f compatible
Date: Mon,  9 Mar 2026 20:26:03 -0400
Message-ID: <20260310002606.16413-3-mailingradian@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260310002606.16413-1-mailingradian@gmail.com>
References: <20260310002606.16413-1-mailingradian@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 6B355243027
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273172-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,linaro.org,gmail.com,ffwll.ch,linux.intel.com,suse.de,ravnborg.org,vger.kernel.org,lists.freedesktop.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mailingradian@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[zhan.science,gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action

Add the compatible for the NT37700F panel found on the Pixel 3a XL.

Signed-off-by: Richard Acayan <mailingradian@gmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 .../devicetree/bindings/display/panel/panel-simple-dsi.yaml     | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple-dsi.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple-dsi.yaml
index 2f90c887b7b8..cc8d795df732 100644
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


