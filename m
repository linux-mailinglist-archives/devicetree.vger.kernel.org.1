Return-Path: <devicetree+bounces-315234-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id /uZPE6XTO2otdwgAu9opvQ
	(envelope-from <devicetree+bounces-315234-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 14:55:01 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F9F86BE4B3
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 14:55:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=jvGeQS7q;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315234-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315234-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 456143005331
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 12:54:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2EC033AFD19;
	Wed, 24 Jun 2026 12:54:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED3D03AEF59
	for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 12:54:54 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782305696; cv=none; b=XEd9RDBjsr7OJ9QzEueEMUKzDp8ioSEtCtIj44jZ1t7c/uPBY3LrWrXIFbRBRIff9Dazk2uXxOlxJ5vjhOBZxT+AHgxJaDdft6cMIe3Mi5ZLo0Js/1Ap6taO/ykrogu1P3wxQ1zjmzCyu0RY6DeAoMYyWcFEp+aFlIBnPAjIVuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782305696; c=relaxed/simple;
	bh=pnmR93+naKUPpJt+TztpCB7ucpDaAPH9UxODSQzYh7Y=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=aLijEEYYx3wwrZSqzQy7N0Hw2RqeFm3ZWF9e2PTEQ+DxDsVdxZd8GSgjna2SXhdnjVX6bbKhdcG7BnkCvHufSqbQUbmVef7u0wBEuL0x9JCTaoEPZ3jgsqULPA37eUlJdjhnHwqog+DobKDtELaPJHXDHeN4xkPP2Wzu5vaRiD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jvGeQS7q; arc=none smtp.client-ip=209.85.216.49
Received: by mail-pj1-f49.google.com with SMTP id 98e67ed59e1d1-37c6cd1ac98so881107a91.0
        for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 05:54:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782305694; x=1782910494; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=IN+prMiGhBKvFcbILeQU8WH/1q8pvBu1Yp6Ec3mzljg=;
        b=jvGeQS7qPyRNf3Blg08DFwRZqP2680WjJLNzSkFoUBbGl96pZqO+woVuvSIrTAiEtu
         WnYpX5PpO2h4HQRPuU3+kNI2/BIYZf/Z0c5DjD59O+5G3L/4ghLe/UUbdEl/Fy6ZHkpR
         UcbEKyUpYEBHGihJ0YADmjrcFLfUdXtItE783L59925vKplUoBO0kvuJwf0hnra9KFKT
         7WGvmgFYmYDsc5A4jO1T6xBfFYuDu7TW3KfISg1ghLjr4jfoFG1PmE1rUruYnAGmMoau
         hsJWFRqAiVVMGnaScPGDJaT96uPCk1N/FCLY/umprLd55ULKKoMDxdnFLgVFUwfQrOnI
         80Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782305694; x=1782910494;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IN+prMiGhBKvFcbILeQU8WH/1q8pvBu1Yp6Ec3mzljg=;
        b=dKyU2Ci6HO4V7wXLYtQsZWOzqMrlyg+sIzVqYh9pRsTstPvpKB+aTUM0FlcATfNhcf
         TN8Vjy7kf9725R9rO78nK9nQyPX2iL9IjCsKpcZr07SWb8aOgRWM9c+XgFa+/ib4GN98
         UPr3D1FTiUeIEbkt8h/TIAt3ZcFbgnuReLfIhbv2/Vs8zgfLY52ePP8oD278IDp78erm
         X7BjOvBNTcLdJefK3+fkY1H2yFbpJo4RIDyG0jqN20Bfdd1UCxxWQOyo7gqd+u7D+vFi
         8mCydVGUy+gPT8DD2jljIV/b0DiAsYXlbRmZOe1WyDq9suvbMPhgpEW+UhjFu3j51JKE
         +p1Q==
X-Forwarded-Encrypted: i=1; AHgh+RqctaxqcKf7Jcex17yyhO0zkUCaa3kveL/RD8aO0v6TG+CFhHA69pNdovt6LOIP7YUZ/f4FED6Bctsx@vger.kernel.org
X-Gm-Message-State: AOJu0Ywv5otio9Ie5xuz0IDWFIHsRdROhqkNmAjdr///+TWIrnREc20t
	bYkw5E/utOdVoEXXQGq3VSKjUsxD68vaAh2UzLWhMMUF/QqIfTWcwhQZxJOffg==
X-Gm-Gg: AfdE7cnl1vfAwIDzhpTNpISWlKlEuSNNWJDYUF/F5A3Y5gWKy/jyDElTfpUKDaDXU+A
	f0UHwT0zeNhQdRsu3YbCAsLfxGo4yBfu8eahr0zppoQPV7tlANt4I14oHpBb3wOZfs/CUD6xmA3
	+L2q+7R1Kd9/Kv6ebFmlKC936EtFjSj1rLMrQX34nktKY9k+PUkLYbMKU2QTP7yRwzVLD0Y5uhs
	cGLEETEIDje0nnivKPlgRnACqgt5JWD68d3lFXXQxbd0L9ESdKm9va+9x+ncoGktsTb9GZD4sql
	isDRGNFbCUUmHNlh8pul1Wu7DdCZTXl3Upwkow2LPtQ1QWjAnZQ0MXc9suHGVdwfjuPhvNPsKtE
	auXENa0hEXLSckJsmHIxNHVM/drskwN0/hTVdsucAtQSzq6CakMPfiAJhbIVgPNGo+xbRfI43ve
	KgQ6jrXuB+/o7iF4MsFXn3ig0tQ6JnNMYZazskvhE5
X-Received: by 2002:a17:90b:3a48:b0:37c:774c:77ba with SMTP id 98e67ed59e1d1-37dd0de99a6mr9058843a91.21.1782305694263;
        Wed, 24 Jun 2026 05:54:54 -0700 (PDT)
Received: from localhost.localdomain ([150.107.232.166])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-37de3b839acsm2984870a91.11.2026.06.24.05.54.49
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Wed, 24 Jun 2026 05:54:53 -0700 (PDT)
From: Ajit Singh <blfizzyy@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Ajit Singh <blfizzyy@gmail.com>
Subject: [PATCH v5 0/3] arm64: dts: qcom: Add Vicharak Axon Mini
Date: Wed, 24 Jun 2026 18:24:40 +0530
Message-ID: <20260624125443.18729-1-blfizzyy@gmail.com>
X-Mailer: git-send-email 2.50.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,kernel.org,vger.kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-315234-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:andersson@kernel.org,m:konrad.dybcio@oss.qualcomm.com,m:dmitry.baryshkov@oss.qualcomm.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-arm-msm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:blfizzyy@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[blfizzyy@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[blfizzyy@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2F9F86BE4B3

Add initial support for the Vicharak Axon Mini, a QCS6490-based
single-board computer.

This series adds the Vicharak vendor prefix, documents the board
compatible, and adds the initial board DTS.

Tested:
- debug UART
- eMMC
- UFS
- SDIO WLAN
- USB 2.0 host
- PCIe

---
v4: https://lore.kernel.org/all/20260607113658.25117-1-blfizzyy@gmail.com/

Changes in v5:
- Drop regulator-always-on/regulator-boot-on from vreg_l16b_1p1
  and vreg_l17b_1p7.
- Remove the unused vcc_3v3_en pinctrl state.
- Pick up Dmitry's Reviewed-by tag.

Changes in v4:
- Move pinctrl-related changes under a /* pinctrl */ section.
- Explain why UFS ICE is kept disabled in commit msg.
- Add a comment describing the USB 2.0 host-only board routing.

Changes in v3:
- Dropped unused regulators.
- Pick up Acked-by tags for the binding patches.

Changes in v2:
- Drop unused Type-C VBUS regulator.
- Drop invalid camera thermal zone.
- Drop incorrect PM8350C thermal alarm override.
- Fix PCIe1 3.3 V regulator name.
- Drop redundant EUD disable override.
- Keep ICE disabled due to fatal SError during qcom_ice_create().
- Fix pinctrl property ordering.
- Sort top-level label references.
- Add blank lines before status properties.

Ajit Singh (3):
  dt-bindings: vendor-prefixes: Add prefix for Vicharak
  dt-bindings: arm: qcom: Add Vicharak Axon Mini
  arm64: dts: qcom: Add Vicharak Axon Mini

 .../devicetree/bindings/arm/qcom.yaml         |    1 +
 .../devicetree/bindings/vendor-prefixes.yaml  |    2 +
 arch/arm64/boot/dts/qcom/Makefile             |    1 +
 .../dts/qcom/qcs6490-vicharak-axon-mini.dts   | 1014 +++++++++++++++++
 4 files changed, 1018 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/qcs6490-vicharak-axon-mini.dts

-- 
2.50.1 (Apple Git-155)


