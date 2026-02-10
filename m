Return-Path: <devicetree+bounces-264203-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WCE0DMOYimkvMQAAu9opvQ
	(envelope-from <devicetree+bounces-264203-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 03:32:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BF6E1164ED
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 03:32:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id AE8EE3006D6A
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 02:32:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 210D826B2D3;
	Tue, 10 Feb 2026 02:32:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MgjEW4Gj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E030227EC7C
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 02:32:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770690749; cv=none; b=dKsJnTzUKiHIrvIAhOpnJisuqI2ZpZE7eZwFXyIxdYy3aq8ziFfwJkXmHFLTcedzy22OOh24mJxBknyi1dG7buZSIfUQxh67JC/YKLF25Y+Pa98QfjKN636ubJA71zlamYLNceEBmXprd1GfyDGRqSlllFAmlcjtPbWgOOZBE50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770690749; c=relaxed/simple;
	bh=KosbEyV+Wrr2gfcx8A6LfkCsOENIpJorLlTBgvta8Ig=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=tlLKoJo0rlkmbNN8FIO1SU90i1R0QxjW+llHcSCuWvtowfULwrHkyS66VuMSRf2bImUakOox6diTkUi2K7K3zzXq+0TpxFbWoD7/w15q6FKCPNUS0/+8MHy7pf4BLul4gEhIlnmeezF6wAp/4UvD4tmlEvVQRhQ3ZCALDZNkpbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MgjEW4Gj; arc=none smtp.client-ip=209.85.222.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f171.google.com with SMTP id af79cd13be357-8c5265d06c3so679824285a.1
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 18:32:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770690747; x=1771295547; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=K6e25tnjW36XL3uDImZMRFVix39SxJYTW+Nd+409rRA=;
        b=MgjEW4GjYWfk4jp4bd5Kg3/LijF6B+ub8305di5o4uoSU/GdDgxm9xBfdg74fXlNn7
         5aCBvINoT7SP+RkjQ0SttwmaKcTzOaFOk2753qDx9SEhyMwc67JG+TEtXX0t1HfEsJh+
         cLGI7hNK/Kk6M1zxQwPyDsnEhuYruPMxBmyn3VXP6Rzv2LQqrxSU6+8Le4Mb/5287/kn
         11xltoHWIxTvEej72fPaYzcqY7yl6/k2erit6Zni3WVqt29mD83lcCiTurpf494R1bZA
         9jRjVNnlFylnubZXsdFAsEK0saGlc01SUH3e2PubbGTKEgt2WVgRhfePRliaXReuptE5
         dJAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770690747; x=1771295547;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K6e25tnjW36XL3uDImZMRFVix39SxJYTW+Nd+409rRA=;
        b=H0JfdrROrKlzMlp9YQ5G/7aPtpLl4VVhD54asKGotR/Jn9rOyGz6e1KRgt4qCXuG9h
         pYg6ji31xW7rflX7C1djqYr2BePpzxUk2tCzq3zgPbn2GYt9w0hcEjSoLiosdmeiEKNP
         Qofhl01nlHVDBxPpuuQ4+PAZxrEyR7Bi3xwhFirJikD5E7kKADPf3V/OdKDUmsXj5G0Q
         X6Alm16OtexCXGhHLHcJqHLL/XvOYvjPtT0IV0kwz81UlbxjxoHRlB85lpWK9+wGhqAj
         J0UJmbzBlGbgqBWJjho+qmgDrtHbu0TYCD0uBedtd+5XnCRiPr/hXnx+pQ1y/4+xZn+v
         ueIA==
X-Forwarded-Encrypted: i=1; AJvYcCVIh1rjLWfY2ghw0noBFv6Ky5XLQYd28o0juL1xKrrq830fCi32g6o1k1tJoOVDIHYeCS0biGKDXFdR@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2gV+zy4UMgYUgtRNGWIDTjd50oOjH+z/UQZlGrCZXeHWLY7gJ
	vTNn2ec2JLA1/xq6OBylxfEXmap5xzRx6JHwDIBESpzyvhPjsvY0Az/4
X-Gm-Gg: AZuq6aKJKj3Osur4T1oQtJn6VB28CKYcHByvcsKzb8EKvTA5e0H9YBkDEo8lKmZPhd9
	Y+ktPrY403l9qhj2ngTqqFfMpr/rnAhzWbk3LRKYJsk4DkX2/d8FcuZFW7NKL2z1IPf9ketNvKe
	QEzeTL3V9rk4R7O4J+npj3b3FWSj3BFtGIOZa4976FM5gV1TYwp26MNMj6JCp5NFNtowxtGOPK5
	k4mRmv/d1weuFjlGGfaFbTKogi/My0HMKaXJbcw/zWO66GFFhIibtizlLrj2WPmcIaOs9Ls9Sbz
	iMnDhr3ojx3ahBtnIFk9vWOU2wjrQyPXtKLYbbo14jRP646v3btzzch+4x0mtrl30UlbS8ygbN4
	eLdGfW6qwfsdLbrqZ/aCvsYNkOpURttaEqsc0AHin61BWjDGQHRauv2yoN/qKLb88r9UePcjaRM
	n7FBthWykf0ESUGh3GMqQV35FygNSIwYyn/0+faLZzn7sTpKt6WUj6zSuUp5OpliWNByaDvnfp4
	WHTGdG5pPWflZs=
X-Received: by 2002:a05:620a:28cd:b0:8c6:dacf:5dbd with SMTP id af79cd13be357-8cb1ed7e290mr122784185a.18.1770690746818;
        Mon, 09 Feb 2026 18:32:26 -0800 (PST)
Received: from localhost (bras-base-toroon21-grc-75-184-144-58-243.dsl.bell.ca. [184.144.58.243])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8caf7aedaf7sm906298085a.15.2026.02.09.18.32.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 18:32:25 -0800 (PST)
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
Subject: [PATCH 0/6] Support for the Pixel 3a XL with the Tianma panel
Date: Mon,  9 Feb 2026 21:32:54 -0500
Message-ID: <20260210023300.15785-1-mailingradian@gmail.com>
X-Mailer: git-send-email 2.53.0
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264203-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 4BF6E1164ED
X-Rspamd-Action: no action

This expands Pixel 3a support to the Pixel 3a XL, starting with one of
the panel variants. The Pixel 3a XL has two variants with panels from
Samsung or from Tianma/Novatek.

This series depends on the IMX355 front camera devicetree patches.

Richard Acayan (6):
  dt-bindings: arm: qcom: document google,bonito-tianma board
  dt-bindings: panel-simple-dsi: add nt37700f compatible
  drm/panel: Add Novatek/Tianma NT37700F panel
  arm64: dts: qcom: sdm670-google-sargo: add touchscreen and display
    labels
  arm64: dts: qcom: sdm670-google: add common device tree include
  arm64: dts: qcom: add support for pixel 3a xl with the tianma panel

 .../devicetree/bindings/arm/qcom.yaml         |   6 +
 .../display/panel/panel-simple-dsi.yaml       |   2 +
 arch/arm64/boot/dts/qcom/Makefile             |   1 +
 .../dts/qcom/sdm670-google-bonito-tianma.dts  |  38 +
 ...le-sargo.dts => sdm670-google-common.dtsi} |  23 +-
 .../boot/dts/qcom/sdm670-google-sargo.dts     | 710 +-----------------
 drivers/gpu/drm/panel/Kconfig                 |   9 +
 drivers/gpu/drm/panel/Makefile                |   1 +
 .../gpu/drm/panel/panel-novatek-nt37700f.c    | 294 ++++++++
 9 files changed, 374 insertions(+), 710 deletions(-)
 create mode 100644 arch/arm64/boot/dts/qcom/sdm670-google-bonito-tianma.dts
 copy arch/arm64/boot/dts/qcom/{sdm670-google-sargo.dts => sdm670-google-common.dtsi} (97%)
 create mode 100644 drivers/gpu/drm/panel/panel-novatek-nt37700f.c

-- 
2.53.0


