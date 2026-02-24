Return-Path: <devicetree+bounces-267854-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gLxsKe+PnWlKQgQAu9opvQ
	(envelope-from <devicetree+bounces-267854-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 12:47:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 31AE11868E1
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 12:47:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 74DBC30C16E4
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 11:44:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D7393803C0;
	Tue, 24 Feb 2026 11:44:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QZllwS4J"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07A9634A795
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 11:44:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771933472; cv=none; b=olC8mRI+grVgooXPozCvKCuprOAJhsNS9zr7z/GTYdHRGEniwvjdWDKDFb1T5Pni17OOzgU217SsxvOyPC1ncooTeSwd6tExpm24RWT3PApXdJF05HMPy9NZaz//mbN7hB9wtf2NhQCNZAx0LoCk2DXR1RNKOf5uOUe69QkecyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771933472; c=relaxed/simple;
	bh=7nZwJ5/mDw/Bq5pcI4r+2UnBmcpmvTKVB2VmpZBXyD4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=elawdH5P9V187ZTs7YdiR9+aXk1Th68JlJ+DokCMsI5VuORqdBCwFBx8DIqQMqSwttRo4m9RLQHyJbcsnItt3PaFM4T7ejpgXuyiFy8NzuYpsQNoz12rAi3v8KqkAYt38vWW2HZZbzo0G3z2CE7tXveoihfVDCcV7R24eGiH6SA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QZllwS4J; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-b79f8f7ea43so879550466b.2
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 03:44:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771933469; x=1772538269; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=OruxWPSlwxwYuuBWb0VVRNqJDSH2i/eUVJAg0MyUvQk=;
        b=QZllwS4JtJA757F2vuNfLTIxwvO2ySTKv3pWTTS+dIHYH6liI+Re/aXCauBtZt+vB2
         F7IMEHeu0p/+cp2Gsm5LlcicqoXn3/MJnIL867kHaUFDXVtnRLXj7ixqSnft6keOLJt6
         r2KGUqzO8WkgGvtHMZWEM8QcGWZDtKUFBYT1kzq+ER9D0q/69oAAlx0ymOWz2NuoAroC
         ng/OGeBfh5k6VgqcJ4p4Lb/U/sXztAj2xGjlq46VTfK2W2HyOuBewDmLw1Zl4Q3Rh+Hm
         UTcWCTFy3AFC5g+dpy2aCP6mk8HLDnJyaRGs45Tj52JyTwT6MFu31fJm6FA0PpC7GLNw
         8p2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771933469; x=1772538269;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OruxWPSlwxwYuuBWb0VVRNqJDSH2i/eUVJAg0MyUvQk=;
        b=GwKc54XYb8c+aPdPCkIGwl9wFih9ryVK15AyWAIDiz/gLHjieisBv39Fyhi9txqf/7
         EFwhflFwJ7gV9iJ7s7yT9kcdSiUXHK5Rug0yozdQ5slMpFfuR5Cj6fS+WA/M5wBq69Ut
         M96YBLJ39tY29dRuXnw49nhH6oLKbwpnZED4/gyxj2nALdrKbkVJNE02z/YJPNI9703f
         zzQbkoPrG2uw1Grm68V6ML+zm5qbI/Sg7c8WGj4AWqnpAaAYUG8yIyPeU4kVgbiPx4Jc
         g7jCBvI1ZYPUDsTSSxfvN2Br065duqv+syIb6B+N8qNXKtSj5RQ85hH5wHxKt458233N
         9SRw==
X-Gm-Message-State: AOJu0YwJOGVmJPTN6GTx5V6WlpMZ4YfY4chZC31LWwTwrPDsVCnOGxlq
	YaYjsq7LVQPrFPotmgXx3AuhIhX4sGcyRyysjJdBEf3sVPBp7BCKup90f54Z1w==
X-Gm-Gg: ATEYQzwO8ll2flV7gl/xBMBlpC9ygEmOGSTxScWhnFKUrkG/z7TPeAMstAEy0/vXV/K
	lrj+X3H+EIFOelsq/8jW8qUt2UV92fA18TpIPmMDOER453WIGA/nkyuWtNWbXrKibnOStEipRdu
	87D93yJtI77B/URP7on3tEaNsAd3xSdIOPETuXd2Y/SDVfWJBYmglcWRBIy5dqaTc+WJjl3TAcH
	ZCEhLn7990dg7fNm81W7tBurCkkk81FGkGYRTc7NJmeYI/GVRYPAx52/e1BKfJfg0yGp/46Dz+E
	ggkfIQEkYv+xqzs0RCwGsGyiM/zdoanUDFWqbDcHAIAmwhae/mHSAEk6GAq7gIg53coeaLNnyfu
	I54uBE5kePb6WYhUaHLg5pnanA4uCEheENQQ0r7gY1DNrgmHm/Q64kq0m5bFaauHjloVM3vjon8
	ayhJ82u7hoWdAIOuM0mQjxkecAPsdl
X-Received: by 2002:a17:907:ea7:b0:b8e:dc98:ad20 with SMTP id a640c23a62f3a-b9081975165mr804409066b.4.1771933468504;
        Tue, 24 Feb 2026 03:44:28 -0800 (PST)
Received: from workstation.home ([178.231.112.156])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b9084e8cb3fsm417992566b.48.2026.02.24.03.44.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 03:44:27 -0800 (PST)
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
Subject: [PATCH v3 0/2] Add Xiaomi 12 Lite 5G (taoyao) device tree
Date: Tue, 24 Feb 2026 12:44:22 +0100
Message-ID: <20260224114424.1966947-1-zstaseg@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-267854-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 31AE11868E1
X-Rspamd-Action: no action

This series adds device tree support for the Xiaomi 12 Lite 5G (taoyao),
based on the Qualcomm SM7325 SoC.

The display panel model is unknown, so bootloader-initialized
simple-framebuffer is therefore used to expose the display.

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
 .../boot/dts/qcom/sm7325-xiaomi-taoyao.dts    | 865 ++++++++++++++++++
 3 files changed, 867 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/sm7325-xiaomi-taoyao.dts

-- 
2.51.0


