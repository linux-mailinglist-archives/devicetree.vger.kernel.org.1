Return-Path: <devicetree+bounces-319594-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XRWfKJi9RmrxcQsAu9opvQ
	(envelope-from <devicetree+bounces-319594-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 21:35:52 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 377F06FC8E4
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 21:35:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=e8bmHDuy;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319594-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319594-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A5995300335E
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 19:35:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FDD738CFE8;
	Thu,  2 Jul 2026 19:35:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pz2-f1.google.com (mail-pz2-f1.google.com [74.125.228.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BBF338C2D1
	for <devicetree@vger.kernel.org>; Thu,  2 Jul 2026 19:35:47 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783020949; cv=none; b=lw7rvXIWDKQVz7ja2R5cptYtEd6PgQkeTOYkNBeyPPKW8I7i57Q8hUJaF5ijB1WQ4XFiK5/7e+p2GJgHkpImSkuOkGWPstb4v238a4IZn9/pk1B+MVESI8XHphLEMtqXBckKooPySDsnz/iYJXaynzldaH1TNCKav4zAzlHBn4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783020949; c=relaxed/simple;
	bh=o44G4KnwxKWKbx0PvOa0pQqJ7ayUBRpmzdYnVmm9jJU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=fUWBTLSQBQSmzR33AVPU+XFQf40cWL2HWw1WFi5MuUMRKN+ES4TL/h0lQnobVoM85EeU98/VLH7DOhshLCrE4f+Q/3mt3hgFwMl1/liLpzkaf8pipcc9H9pVvCahkMQN/QYNSKUaaGknCi6O/NKjY2t4O1BBvTuFdbbI8iD/T0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=e8bmHDuy; arc=none smtp.client-ip=74.125.228.1
Received: by mail-pz2-f1.google.com with SMTP id 41be03b00d2f7-c888c2cff99so949382a12.1
        for <devicetree@vger.kernel.org>; Thu, 02 Jul 2026 12:35:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783020947; x=1783625747; darn=vger.kernel.org;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=KYRqu3lVUIKqJWn4tGQNNX03TQN1RZDYmju+H+bQTEI=;
        b=e8bmHDuy8z33xhBbowfMS6HGjBrHu0eft+antySKCu9hAEWQaQYhEob/hpdWoj2+ar
         KEKQIISS0KRtNGzZEsi7Bn1CLKQEITP+7bXlB9NYhQHL19eBWd31iuzMOHiu7U4tS4bo
         XMkJG/JNyutdkJNrfGcxjzqR7LRQD5E4e4NmfcWbNZp4BEKU5Zro0VhOxyF68MVKvGr9
         pccIg/MC/eRLX2uJJJzSyApp0qL0a+I1aypzYZ75F9SoTGKie0Hlbv9GIGh5+2tU4d9M
         2pzlr4rJdezj8vNKG4BwGZBjEypWn0GuGfulJ6e64ZBgyiH+Coor6JTmbvMd3rwmc3p9
         WEdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783020947; x=1783625747;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=KYRqu3lVUIKqJWn4tGQNNX03TQN1RZDYmju+H+bQTEI=;
        b=Ycn2BxNFq8Zpl1EpUw0W4OqEV4xckNurLgfDYPPWC1A6QqLj/C9aLLaVhREFcg0KRt
         FrrTwVHyGFM2agpAWSIdOSuddBNg9hF9s+OHkAerqzTqU55x1dPF2978FAtd0QCz2uol
         I7ktV6T2gGOjbMHDGxoO0fUdfEDacN7d2IdXV+JvHggG3Zel5pL9m8bV5EVuU+0UNVNs
         WYn05x4Kd8T0LxBl1OEKCrI++R+KIMqbvhNCXUEFjjeORw9JYJvAGAcLxSUirzVEzpX9
         ocW5Dxr3zP+eGE/wlu7vVoojaxo5/hTpAaJiPOkY4KvpGTgcuT8Jc3QsaankpT2kEAIU
         ax1Q==
X-Gm-Message-State: AOJu0Yx5B8o496itlegKIumo7qAbE76XNipU2qJGYMsNOkoPiOa8vJj/
	dJDrMGIGewwaVwKZ0+WiOp0DRTEXmsnkno9742w9EWr6PDYf2JjZAhhM
X-Gm-Gg: AfdE7cl2T2XxKr8fboQ4o6oOhpjSwMQkJ4aYtfjg8NdfaUgooDry75bPRR5Iwty2rbJ
	76FccHRw3lTnZVZsUWZ2YKVJ5of0kkfdhBWckrsxv9RBtgzOLvCSV+itvrN/QPsDc/Tlpz8Xg2e
	CcKE2z2QhrJxdxIbZX3XBwLVJ9cDc6tuKfSRFih1XLch/yLFDN7GWc9D8vnIwCdSSr+MfSjVy59
	+520X5pCx4KTu/WkNLkUf/+IQ8foD1tpkM0uOFClK++Cb5DFLOOUBtbPA3WVl2fJFOrr5JwDbZE
	fOo52CTQtyHQKgP10g8HFGag6L0mKfkGpxAl1bGkAyQM2YcsBnuIOWXxINufBsV+h6BC6uoIUlI
	QEc6srxx0u6CuODCLoj6/dcCI/j15JWQkmwW2Ic9N75u2dFfgAcn5t2B5+y4/mjtsbCf+oUGj/n
	V6nGSOFBx1pcs=
X-Received: by 2002:a05:6a00:139c:b0:842:55b6:f5a1 with SMTP id d2e1a72fcca58-847c4fc29b2mr6697327b3a.6.1783020947157;
        Thu, 02 Jul 2026 12:35:47 -0700 (PDT)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-847cb6dc188sm1844249b3a.4.2026.07.02.12.35.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jul 2026 12:35:46 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Dragan Simic <dsimic@manjaro.org>,
	Jonas Karlman <jonas@kwiboo.se>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [PATCH v4 0/3] Add devicetree for the Graperain G3568 v2
Date: Fri,  3 Jul 2026 03:35:35 +0800
Message-ID: <20260702193538.2195973-1-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-319594-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:heiko@sntech.de,m:dsimic@manjaro.org,m:jonas@kwiboo.se,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:coiaprant@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[coiaprant@gmail.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[coiaprant@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 377F06FC8E4

Changes in v2:
- Fix trailing whitespaces and other formatting issues.

Changes in v3:
- Picked up Acked-by tag for patch 1.
- Fixed text wrapping in the commit message of patch 2.
- Replace the legacy 'gpio' label with 'gpios'.
- Add the basic WiFi child node.
- Add the Bluetooth UART child node.

Changes in v4:
- Fix incorrect pinctrl bluetooth node name.
- Disable bluetooth sound since rk3568-codec-digital unavailable.
- Add WiFi fallback compatible string.
- Add WiFi host wake interrupt.

Notes/Unchanged from v1:
- ADC keys have been verified with evtest and works fine; kept unchanged.
- The 'regulator-off-in-suspend' property for vqmmc-supply is retained.
  This is a known issue shared by most similar boards and should be
  addressed globally later.
---
Coia Prant (3):
  dt-bindings: vendor-prefixes: Add graperain
  dt-bindings: arm: rockchip: Add Graperain G3568 series
  arm64: dts: rockchip: Add devicetree for the Graperain G3568 v2

 .../devicetree/bindings/arm/rockchip.yaml     |   6 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../rockchip/rk3568-graperain-g3568-v2.dts    | 943 ++++++++++++++++++
 4 files changed, 952 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-graperain-g3568-v2.dts

-- 
2.47.3


