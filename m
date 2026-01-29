Return-Path: <devicetree+bounces-260729-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qFxoFZj0emnDAAIAu9opvQ
	(envelope-from <devicetree+bounces-260729-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 06:48:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 16B90AC0FC
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 06:48:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C503D302514D
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 05:47:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86F712EAB6B;
	Thu, 29 Jan 2026 05:47:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="c+kYTNqg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED32B304BCB
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 05:47:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769665678; cv=none; b=Pb51FiDS0XCrW0QDlZkeHtQxs/0d4QLaxuv5DGdhih87gRwGBx3Ki2Z0lK6OeaECvbu6bw/MhaVYQBKEC+9osGZZWxWJQloLRsvvRkRJlc+DS3m5uNMWMi92M4Ve6sHpnmTuTN1Mc0JQcnX9D6R8aTUM0Bpd+o/cbjjtwiHu2Ig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769665678; c=relaxed/simple;
	bh=trpX+5UlMTYq/zyHhxfWvjqST/R/uh9a912a+PSUHVc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=NlrTJzc8qYEcS7X6ODKJlvHdiu0IyRSVlTkj9smO1m7p3sZJsot2Z92dxYzGOWJanZXiepyhXycUb9KlI0seXbsL9hz6hXs7g2vnswNcq9QuOhCgln8IxQfQNxaNQLXmKh9sx+9MVPAdi1/HlyXr7/9Ak+yojLhvAo969yF9pxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=c+kYTNqg; arc=none smtp.client-ip=209.85.219.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f51.google.com with SMTP id 6a1803df08f44-89478e429afso5739146d6.1
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 21:47:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769665676; x=1770270476; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oNC2r/k4VYyNvAPrupzATpkdJnOwaq0ecIMgKhToJ2I=;
        b=c+kYTNqga6swhpMIqY8wSD54APXKrGvW6MesLlHFj+Uw4ihagAYOlrDC0rcak2XLxh
         HoJIkjcxQSXlHYtfEaaYs/GQZ9xiJpoiQ1Dxc3YItIYACIJLiKuCOPCvfYWNCa3a9OtM
         nFWiC6L/oO7aXYlWKzfjqxpZRdRdeud7cfhzW3u/NZQ5GwJkEOM+X2mN380FN29uO1tV
         E++37W9SOHh3rhTyJBecGzB/OLj7LK6KnbBVW+19NXnTQm8UDghp99zoENMa/7SyDHpV
         InTJus8NC6T6GQlUroVDeQnj9UEoNDITxLY79Yv4/KWRgI6Zg8RC7AQWH5mRzFckVKeB
         gcCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769665676; x=1770270476;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=oNC2r/k4VYyNvAPrupzATpkdJnOwaq0ecIMgKhToJ2I=;
        b=M7LAgN2+NS/kffjaShnT1408tpRgM9LKE8c6OKkiePnfLZSbUQWb2fR0EXFgmx5rXT
         aY8iHhvDOjVJNBRVQ4rGbB3Dkmfl/qDrF/qf7UBOc7Aq66qZVJhNHWjOdUXawxXMXAoU
         7IjGB/iLEORqwfqW2s2jL9XrkPXQld4Yl+nc+MfhsjPcCLm6vaAURb9P0THloEx4a5WN
         vGX7i14Aasbth8dtp4uPkqAG95A1W3bLuvx2x0qSFH9si0nb6T1NPC9YGAYj93CzRXQ6
         gB+i/L8/Mtb0sZEwLtPD/ez4HwEaH9jRjbbfngsdMf+7Gb3CM6Q6J7XSBr+zLfAdGOVO
         D2dQ==
X-Gm-Message-State: AOJu0YwcqXys7OH/g/wSay0mLdiFVcycOFoOgget+wyY2+EuY5eYqgfL
	SAJb05ud5wRJ2ODt8WJWJxXCvkt8FqbUj39A/1xotrpklOyOqZ6ZIIb3
X-Gm-Gg: AZuq6aJJ9pTYQXOE+PskRMJAGuvrB0eel6Z8DvvuI397pez4ZIVSVZHAuCzQv2z3vAW
	COGLXbLUA0u6mNkO8SOsCH2/mLQeHRwQCxpGP5FETxt3/Tubea8KPyiVyuLkiSrSPMz9J2KWMNS
	EIkx0vpU9Cp2PtnzZNUQiput89sZdEtq4Dzje0eW3GiVmS4WNBe+ZWYesYnTSRkX07nr6MOoesR
	+mXxpT81WHM0UJ416G6ZK4l3GDx3y9cgp3CNfJm8FctetzBdmUOyL4X85k6dGLIQy9y8IJKZdhw
	RGr/yCmScXDCn617i8kIxFss0UU/4bJBjUgtDsEsH7clJgh88wJ4Zei6rdIaiO6/Dz1havKARcf
	bVEYpem7gK9ItxZZAgCjELEwwR5nPdMw5YtiCYw2r1yI3HIjIpV69640LO7zy64CkvFcHXz+zkx
	bfBZKt2C4pDnbNPs4scjn9++NjoMgX3WGROvTOjkMNkqNBXEtwUyFrBxdti+SDi8fwkZT+Guo=
X-Received: by 2002:ad4:5ce9:0:b0:894:6494:ab63 with SMTP id 6a1803df08f44-894cc7cecb9mr104550696d6.4.1769665675887;
        Wed, 28 Jan 2026 21:47:55 -0800 (PST)
Received: from mighty.stonybrook.edu (nat-130-245-192-1.resnet.stonybrook.edu. [130.245.192.1])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-894d36dd1cfsm30903216d6.25.2026.01.28.21.47.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 21:47:55 -0800 (PST)
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
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v5 6/8] dt-bindings: omap: Add Samsung Galaxy Tab 2 7.0 and 10.1
Date: Thu, 29 Jan 2026 00:47:07 -0500
Message-ID: <20260129054709.3878-7-bavishimithil@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260129054709.3878-1-bavishimithil@gmail.com>
References: <20260129054709.3878-1-bavishimithil@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-260729-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 16B90AC0FC
X-Rspamd-Action: no action

Add samsung-espresso7 codename for the 7 inch variant
Add samsung-espresso10 codename for the 10 inch variant

Signed-off-by: Mithil Bavishi <bavishimithil@gmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/ti/omap.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/ti/omap.yaml b/Documentation/devicetree/bindings/arm/ti/omap.yaml
index 14f1b9d8f..f694dcbf2 100644
--- a/Documentation/devicetree/bindings/arm/ti/omap.yaml
+++ b/Documentation/devicetree/bindings/arm/ti/omap.yaml
@@ -144,6 +144,8 @@ properties:
               - motorola,droid-bionic   # Motorola Droid Bionic XT875
               - motorola,xyboard-mz609
               - motorola,xyboard-mz617
+              - samsung,espresso7
+              - samsung,espresso10
               - ti,omap4-panda
               - ti,omap4-sdp
           - const: ti,omap4430
-- 
2.43.0


