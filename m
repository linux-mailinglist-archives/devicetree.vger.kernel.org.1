Return-Path: <devicetree+bounces-271466-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eJ25OnlPqWk14AAAu9opvQ
	(envelope-from <devicetree+bounces-271466-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 10:40:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 747FE20EB22
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 10:40:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2D026303AC8C
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 09:39:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F93137A4BD;
	Thu,  5 Mar 2026 09:39:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nRTNlTwF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9605B378D77
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 09:39:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772703590; cv=none; b=TwANWNOsI+iZhyM/xc8W7B0aE130uQbj5Vdkao6b0WLmm4f6ZAdV0O3TdP9XDX00ZlpYDi1CeNGync67KkcC5uhno7EHnhdy9Ff9RFN4wgH5UeNyRK/us/JFQUFWTQihOd6lOS8GK/4rJn8xhzeWfskz6yf+h4JHCfx9WAXUI/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772703590; c=relaxed/simple;
	bh=uwfVUq/wdApvUK0zOWHTomco6NhetV2l36Os5KZSpQw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Zxlvd1gjSjDAetFZYtc6zQSbsJDTY3jtpn80r7bIWQ+DDvc58WLxj/nSQiABKdqOxrp5TlSuKEx9LpoJ3UIfIVlbX5PJclS3A7lBAsiHJ1+PAx5boM1reXQgjNVT9RHhBjaJF13Clj1JLhfw+AywwMK4XzzQx6n8LVh8PGAn1M4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nRTNlTwF; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-65c01595082so11906009a12.3
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 01:39:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772703587; x=1773308387; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=EOKLLyFS1m1449/2Qx3gad9xJn5duh5McKfguDMZF5g=;
        b=nRTNlTwFOTdSsMis7A9sb3cCUj24hqOMl5QttvEpXplca/djHa6f5q4bkMLgjKu5Lb
         xaIEJ+ZMtdAVi0+YNHkOCy2NJvsIPwv0+YKI7IXAjwe6ndXfdxzoyO8gNDSHtRR0HQKK
         fU6EmubF5gwXJAbzN7bwwZow116Znk/IMQOaWwrK8XlKkiOlqioWEhEoRtNdmHTINSiB
         PfB8u6WDjMaeHMc64z64JtR46PsTgXHV2Vl1cp3qJ5jBJ77RdN4RYRIbxXhgDrkQYtFu
         VcWeJJpqG0JyOnyOH1acYhXaBflFyKXuFFp3s0PgKpZzfOnF6YbSuzA+o3qJZC3OzMTQ
         JDRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772703587; x=1773308387;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EOKLLyFS1m1449/2Qx3gad9xJn5duh5McKfguDMZF5g=;
        b=hhVxJw0Jp8D7TOtglErwj2Yq4dU/KiZEesv/QhM0oQgvVfZXghuReTmKkACdVuh51s
         ecigCiVNX5jJEockD1sscW/SOP+kXHAtwW8iL3GjLa2I4XyYZv3ywIo0iKGBLSrxELFH
         +V8akvle1CWp5mAUVnf9rso/2duUllFGe+wzSEKH6qlhVJ2++ctjm+8PWgyjQFX0DVmv
         P9W6zB1eIM2r81Xgy4nsrnRD3wRQH72/RDowDZjFFSauxydlYK+GUa7lFPOUA8It8Fm8
         xtX7tdarZlpya5fVvr/8jGmJFTbXc9zZXLadRRlD8EeXSUtQYCqN7yNjo44+Q/v54e5g
         xH6Q==
X-Gm-Message-State: AOJu0YzZGFMn7UzvlDkUaAVoFIPTUf4psIL5U2+muePWVdKnXa+k14Ue
	XjxAq6jpbm0JcKb3NGr9sTenoB6LTLmEeDmd25Txyg7IRgkYwZ3Y9y5fZ+Q/las0
X-Gm-Gg: ATEYQzykl/IxW9L9hbKbXDRKQRTo119MIHM833Ud03oHYNlDXBLPm31qXOHibeL8WQD
	2PRqLx0Eq9vVR8Si21NbagOm8w6kvSCE1WgD+/WAov6acEM5m7B4ewey+fVU0BDLkxAYV48jLfW
	qv5Kjbv2mteKh0mC8yOhYiJzSXGMVrodjZzzAem3Nly2CY6Sovw44FILNNU4A80olE7yBISS5Bu
	oXi58B0TuxbIHXb8+y16diG6IT+YCww/kcnogty00SKkNdLQZ8qkj1axWAzPWOXof1IdHuEQZ02
	jnCj/FxsB6DMAsCIUkF7GlP8CiUXSXUNZ9oyGfrWDdwL3G2TFiFkAGH+OZSP+O05OtfiqYdEfs/
	+9GCAmF9lxj3ZkGmrU2/dZ94XTWqGfZ18oKX9rxOkLHy31p46oENNSYo3JmatCGNDc5Hc6/xhvW
	HS7eJRzklM0jN165bV+jRwbM6kCDI=
X-Received: by 2002:a05:6402:5045:b0:661:6ca5:aba2 with SMTP id 4fb4d7f45d1cf-6616ca5af17mr405615a12.28.1772703586230;
        Thu, 05 Mar 2026 01:39:46 -0800 (PST)
Received: from workstation.home ([178.227.95.150])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-660bf4d8249sm2616634a12.17.2026.03.05.01.39.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 01:39:44 -0800 (PST)
From: Stanislav Zaikin <zstaseg@gmail.com>
To: devicetree@vger.kernel.org
Cc: linux-arm-msm@vger.kernel.org,
	andersson@kernel.org,
	konradybcio@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	Stanislav Zaikin <zstaseg@gmail.com>
Subject: [PATCH v4 0/2] Add Xiaomi 12 Lite 5G (taoyao) device tree
Date: Thu,  5 Mar 2026 10:39:39 +0100
Message-ID: <20260305093941.305122-1-zstaseg@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 747FE20EB22
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-271466-lists,devicetree=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zstaseg@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Action: no action

This series adds device tree support for the Xiaomi 12 Lite 5G (taoyao),
based on the Qualcomm SM7325 SoC.

The display panel model is unknown, so bootloader-initialized
simple-framebuffer is therefore used to expose the display.

Changes in v4:
- Patch no. 1 - no changes
- Removed Konrad's R-b tag, please take a look again (patch no. 2)
- Fixed vreg_s2b_0p7 regulator name to spmb2 (patch no. 2)
- Switched bluetooth to wcn6750-pmu (patch no. 2)
- Dropped qcom,local-bd-address-broken as it has no effect (patch no. 2)
- Added wifi calibration variant "Xiaomi_taoyao" (also sent board-2.bin
  files to ath11k) (patch no. 2)
- Link to v3:
  https://lore.kernel.org/all/20260224114424.1966947-1-zstaseg@gmail.com/

Changes in v3:
- Patch no. 1 - no changes
- Drop unit address for framebuffer node (patch no. 2)
- Add Konrad's R-b tag (patch no. 2)
- Link to v2:
  https://lore.kernel.org/all/20260216120715.3432191-1-zstaseg@gmail.com/

Changes in v2:
- Add Rob's A-b tag (patch no. 1)
- Add explicit framebuffer_reserved label (patch no. 2)
- Use memory-region for simple-framebuffer (patch no. 2)
- Fix reserved-memory naming: make node names consistent with labels
  and intended subsystem (CVP/camera/video) (patch no. 2)
- Convert mem-type value from <0x02> to <2> (patch no. 2)
- Fix s2b regulator comment style (patch no. 2)
- Remove unused gpio-reserved-ranges entry (<32 2>) (patch no. 2)
- Link to v1:
  https://lore.kernel.org/all/20260204115645.1343750-1-zstaseg@gmail.com/

Stanislav Zaikin (2):
  dt-bindings: arm: qcom: Add SM7325 Xiaomi 12 Lite 5G (taoyao)
  arm64: dts: qcom: Add Xiaomi 12 Lite 5G (taoyao) DTS

 .../devicetree/bindings/arm/qcom.yaml         |   1 +
 arch/arm64/boot/dts/qcom/Makefile             |   1 +
 .../boot/dts/qcom/sm7325-xiaomi-taoyao.dts    | 907 ++++++++++++++++++
 3 files changed, 909 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/sm7325-xiaomi-taoyao.dts

-- 
2.51.0


