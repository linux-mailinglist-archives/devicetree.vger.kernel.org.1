Return-Path: <devicetree+bounces-282165-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0COULPyQyWmUzQUAu9opvQ
	(envelope-from <devicetree+bounces-282165-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 29 Mar 2026 22:52:12 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1879F354125
	for <lists+devicetree@lfdr.de>; Sun, 29 Mar 2026 22:52:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2EEC83011BDF
	for <lists+devicetree@lfdr.de>; Sun, 29 Mar 2026 20:52:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFFBB387571;
	Sun, 29 Mar 2026 20:52:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DLJ/YDd5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 632D435F8C9
	for <devicetree@vger.kernel.org>; Sun, 29 Mar 2026 20:52:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774817527; cv=none; b=cDwcvIxMC4QLQ0cc0hrbR0Cs48gRmc+mAVfSf/XG4mIiJfCaQuLuyvjU7eNZtFf9eQb+7CUTn36JvC8DmnL7ZJ+ARDMKBJ8lA9AYeU1HJD7hmgEmvgJyTuW6OdHYETxM9XBtgn4ObZ+m5HNVGV2TRRahlY+B77fmxGOz5MmwFao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774817527; c=relaxed/simple;
	bh=I+QmOdm+icahqXt/SdP+sydmyyzhLJFqjcZ8AWjEoAs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=nXii24Wc3SSl8aiKYSc18/jqrHvfnUwNJHTGibDk5NNkw/LZ90bX62GaJgllXek3FH7Xr4bzVzosSDYSohnb7y8FkKfjtNG0OxsKN06rgpghykoqwW1V7Ao6kuIk179lM0GRxdsTJAw3NQ9ZJgBybt/iZFgpyPfqGGvKniSMqPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DLJ/YDd5; arc=none smtp.client-ip=209.85.216.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-35c124d2613so2482116a91.2
        for <devicetree@vger.kernel.org>; Sun, 29 Mar 2026 13:52:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774817525; x=1775422325; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=agUpQ7KTBePLs54BGx3erOStKc7P9lkIakmuRg1PvGo=;
        b=DLJ/YDd5jHKALGY2hOQM4481+YWsJJMnDz7Grh+b+7GLGpKTz0VLX/x1M46zjOrSC5
         x6CP/w4oLnqiJ11Vkom9eWM0hEjK/KHhrbQyTIgoUhNql2IFsEkjnhsIKXktxGIDpGHy
         iWXK22ma7tDGL8d3JYOqj12DzQCSpjTIfLOTlh62Nag9Lc9xm1RrcwcaBfJEw1iXM2L0
         j9hByVLmXJOUVHMVItkrpq4CTDWf3D1uXECiiwYMU7bXNxrR1jlgyQNGormX2VwWZK28
         aMsmi3z42GyaR694RdjLLcOu3dUucAcWK2eJRwr6klMontTIJg3ldlfh/4XJywYIxMXk
         CeUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774817525; x=1775422325;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=agUpQ7KTBePLs54BGx3erOStKc7P9lkIakmuRg1PvGo=;
        b=OnuA5jirV+2dm89CiHhYj0S0GfgCbS7Z91sSlaOE8Ag/mfNQ129ATgmNvWT87sEpZe
         9JfJhVx7uUww7R+K3vH+iycW5oDboocg+AB8v8PmHZW192AM9I/Bp/inlC/FM2Q2IzsU
         +/IPownXSseFsO+NVwt+vMdKMM5EjXRKtgOGk24rj41bi0NNgP2NquOZ7JF9iwypjZXt
         SGkuVq2csLmDQoynzCBZSmn4WSmWKKQ87CQEdNu0aSHSDbZTomqGEjhU87YTGKgvDcZq
         nekhZZ0uVgBUczMacvkU7GuYTfQ7dL5qdT3aCZedjt+GPptWq5anAVc5d3EBpthCvj60
         OERw==
X-Forwarded-Encrypted: i=1; AJvYcCUfQXdxhViKXcfqybpheARZ5YQ+31QLurjDbHVV9r8I+gDESompxsCR9GUtv0QuMRM76E0aN/RhSW7O@vger.kernel.org
X-Gm-Message-State: AOJu0YyrrH4kAvHgPxdhtOYkZn/hG0gwE67u2Rrl6zp+BVvUQZehF1o+
	O42HWx7rsdAb/C4XYuZMLJkvqr2vvwg0fEAWXhX5QlsOQlzXquZb9Ubz
X-Gm-Gg: ATEYQzw5vJ/iBsD/R0dVBmw1FTSbO58ABf2OxxTb9sQI0mvanlfglJ1Q0F8MJSOE5Kd
	M/sie7F5T2iwIovAG5nrL8OZ+2AZNP78pBg2GGt/rRE70sNy0TpCBLBPODAYMjxzALvlO4WZLY4
	qTSYp7SNJOkliIguGhr6DlRjYTrWsDWbtY5QIe6yre6hK9oU4DTJrA0S+np9St5bjXTwTzJiJp6
	VO+K9+eT1C8sPyFJZkOu5ax5E8TJZ2oo2bl77Qt87RuJyD1RyEoy8tbdgceB22MFcflB/fUNJgv
	lGQ39bOceaTx9blqYlLhSShXlK+xSzHNN1XOcCMx9l6fcllZa8Jmx2y7w/BJJLCT1eBitkzedru
	zPiyuwPNhNqTxiWZWd/HUzG5gOf2ECvvodCCF03HmUXJrD74i8PRb9V4Li59mjkFBh6/ksI3+Qc
	XGhDRFbM82yjOQsZjInQ0OIjswshuC
X-Received: by 2002:a17:90a:649:b0:35d:95eb:8797 with SMTP id 98e67ed59e1d1-35d95eb8a74mr3497270a91.12.1774817524667;
        Sun, 29 Mar 2026 13:52:04 -0700 (PDT)
Received: from snowman ([2401:4900:646d:9af6:7748:701:6c70:4173])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35c22d8c500sm10423412a91.10.2026.03.29.13.51.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Mar 2026 13:52:04 -0700 (PDT)
From: Khushal Chitturi <khushalchitturi@gmail.com>
To: sre@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	ulli.kroll@googlemail.com,
	linusw@kernel.org
Cc: daniel.baluta@nxp.com,
	simona.toaca@nxp.com,
	d-gole@ti.com,
	m-chawdhry@ti.com,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Khushal Chitturi <khushalchitturi@gmail.com>
Subject: [PATCH v2 0/2] dt-bindings: power: reset: cortina: Convert to DT schema and rename node
Date: Mon, 30 Mar 2026 02:21:49 +0530
Message-ID: <20260329205151.15161-1-khushalchitturi@gmail.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-282165-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[nxp.com,ti.com,vger.kernel.org,lists.infradead.org,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_TO(0.00)[kernel.org,googlemail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[khushalchitturi@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 1879F354125
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Convert the Cortina Systems Gemini Poweroff Controller bindings to
DT schema and update corresponding dtsi file with new node name

---
Khushal Chitturi (2):
  dt-bindings: power: reset: cortina,gemini-power-controller: convert to
    DT schema
  ARM: dts: gemini: Rename power controller node to gemini-poweroff

 .../cortina,gemini-power-controller.yaml      | 42 +++++++++++++++++++
 .../bindings/power/reset/gemini-poweroff.txt  | 17 --------
 arch/arm/boot/dts/gemini/gemini.dtsi          |  2 +-
 3 files changed, 43 insertions(+), 18 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/power/reset/cortina,gemini-power-controller.yaml
 delete mode 100644 Documentation/devicetree/bindings/power/reset/gemini-poweroff.txt

-- 
2.53.0


