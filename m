Return-Path: <devicetree+bounces-265175-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WlaVCuwZjmkX/gAAu9opvQ
	(envelope-from <devicetree+bounces-265175-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 19:20:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 748F713037F
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 19:20:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 964A43053B12
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 18:20:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A4CB27AC57;
	Thu, 12 Feb 2026 18:20:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ywr+ulJD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1D9C1E5714
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 18:20:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770920424; cv=none; b=Nsm5VNLHx39xTrFnUpScxow2pOgUjxUxEqMBw7BxYXfooUbpSlZsServMeZ4NhgJlHzCzyVZWY6m+zFtgnOo3vTL7AIIoCiPnVIVSqyvfT3IT1As/ID8lPH5NcsgrpifIe3dpwzc/jrQGlw91s9hUtoMSNEfvlVwowgTpjKwan4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770920424; c=relaxed/simple;
	bh=uVa+/wT3KNLi8Q8FvKRnSsnebspAdMUzmu8d9BvGiTA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=vCB7Z4ix+Gr3+n1TqxcdhYTgK+Mz26M9SDNqmuUHgkwIkCSoRx/+HWDeiBUhA57SeMXho+oWOgg7EbRNLbXTZsK77IMYBKvuHlx7MZgEV3IJcafkKbMv/yR0klBSrCfnKky/FmsRKg8tkF5a6XEn+7AC7ilxhsi1rHzI4tCfILc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Ywr+ulJD; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-47ee07570deso1400785e9.1
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 10:20:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770920421; x=1771525221; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8E3QEIEUXqaGRqVfLNoA5ttIhLZ1wRahVarTW2/Waqg=;
        b=Ywr+ulJDq1lCI17n1lzkNvhPrf/eRQg9rbnIxaz61F51boA1l3EdrljY+0J4Q24Rnn
         LY/7y9ChFWLW6d6PdeLEwtsGjcQYtlQkh/9w5yje0fBYQiweecLlpQ61ppiU9rbfyTgE
         K6xVzsrmMhgepB9tkX16zGm9zCwcmwv/aJd2Hd/3R0+bTpmfpgb2bg/K/Tj50bs2RrgT
         ih4qpqbxaMHFwQgNKQN7zw5e+XjZCQf5r70obj71zVLbl1Erxgsw4rw07kY6+sGk0lel
         fnPcSr0EzWWAz04MvW6mWU+qLFILX/+Lf5W8cu8Aac4FIm99v+QQmMrzRP8vgit89vkD
         gY9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770920421; x=1771525221;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8E3QEIEUXqaGRqVfLNoA5ttIhLZ1wRahVarTW2/Waqg=;
        b=H4CpSM+/bhqsVNkI7r1ZV2jcmngm+gKggD+ORprffkusBitml7+6y1y1uRFHNO8i4U
         /p0sr4llWnbeuF4tDyFCTqE+TuprVkrp5H6A/Bfqeo7lx3AftTIlzh5tApzw0fbpGJwo
         LTn8RT4wnLzg86Oq8Y5OgwVgqPlb2RnmFtFBT/rIiuZNPVWm9X4lgwMl8DSoGRyfuqXJ
         e/ApkZUVS1MJEw7UpL4yNlEBiy3Uo7yL+Ub4KwDKvXrd9d4k/8alsSy2TwmRmnJoLXHP
         LyPFrEkvntgQoo+cn+jWB0Ci76wKQWk55IaiVSm1z/6YG7rbYLtu2T+g0sj9pzl/0OuA
         W7yA==
X-Forwarded-Encrypted: i=1; AJvYcCU2C3D3SmE11gWar1vagWgdLh2kn08nx9+v6NHHB4Na/h0WJI3TxyrNDQ8QCIGEH+vfw6DLblbyeuTM@vger.kernel.org
X-Gm-Message-State: AOJu0YzWg53GvAhHFxxE+TP7BlfypKTGLNXVZTWKTPdtqjAa4NwxLAa4
	ciwj4b4anAoQY9qmJLm+cVCRzscpI0+C3C3tfQfh8dhWE3XtaENm3iXe
X-Gm-Gg: AZuq6aL4AvC6eyzi/oy5C7Gd1rtpCIs+2y5o2pFWACjzln6jt4MhFHCYGpV7WZnn/kO
	9I1X9eCEDvs50o8RAyOAH4XA0kv+2sKkVZzRVFAbsohNXfdjlk7P2T1sFUGjtz+RrjQKeTtM24v
	EhNzLXnZMhwmEIRbmRfsTX5Eeifszd7R7ybC4hPkEJOXwiES4Gx67UhDbclrDjnNQfMHIZARiae
	xkVpa9f0Uy2yhuj/BQJssjsLeIVZ/Z4d+ENDRIM/Q3NRutNqgI+VOy2vsMLDWr/vbuU9vMVEfvn
	Fd+joph3q9lkpHLBaBkt5r7NZ/bsqmf7bEMUNOCvkA5Q5lHi1w7Wpfu5s2Dti+pl34r/QJhDDDh
	fawpG/VpgEqakTuMQRlMrdbfUB/7F4yjODQcArQtPIN1wUnXbzHfordT3dHLP8FiRsUZYW8yKS6
	OUhuPmnR3nxZzoDJy4tbbswTVA6tf+WiKr1Hc+KQ3hNa3mljKTFBac3zXy7r1cPL1t
X-Received: by 2002:a05:6000:26c2:b0:437:7770:d058 with SMTP id ffacd0b85a97d-4378acd7296mr6978525f8f.63.1770920420975;
        Thu, 12 Feb 2026 10:20:20 -0800 (PST)
Received: from db07.UM6P.local ([196.200.180.25])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43783dfc2b0sm13239933f8f.21.2026.02.12.10.20.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Feb 2026 10:20:20 -0800 (PST)
From: Taha Ed-Dafili <0rayn.dev@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: David Lechner <dlechner@baylibre.com>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-mentees@lists.linuxfoundation.org,
	me@brighamcampbell.com,
	skhan@linuxfoundation.org,
	Taha Ed-Dafili <0rayn.dev@gmail.com>
Subject: [PATCH v1 0/2] iio: dac: ad5504: fix voltage scaling and add missing bindings
Date: Thu, 12 Feb 2026 19:19:53 +0100
Message-ID: <20260212181955.42724-1-0rayn.dev@gmail.com>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-265175-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[baylibre.com,analog.com,kernel.org,vger.kernel.org,lists.linuxfoundation.org,brighamcampbell.com,linuxfoundation.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[0rayndev@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 748F713037F
X-Rspamd-Action: no action

This series fixes the voltage scale calculation for the AD5504 DAC and
updates the devicetree bindings to support the necessary hardware
configuration.

Previously, the driver calculated the scale based on the VCC supply
voltage.

However, as confirmed by the datasheet (Rev. B) and discussion on
the mailing list [1], the AD5504 has an integrated precision reference,
and the output range is determined strictly by the state of the
R_SEL pin (0-30V or 0-60V).

To address this:
1. Patch 1 adds `adi,output-range-volts` (and GPIO equivalents) to the
   bindings to describe the hardware state of the R_SEL pin, along with
   other missing properties (vlogic, clear, ldac).
2. Patch 2 updates the driver to use this property for scale calculation,
   falling back to the 60V range if unspecified, while retaining the VCC
   regulator enable for power.

Link: https://lore.kernel.org/linux-iio/20260210121032.4630-1-0rayn.dev@gmail.com/ [1]

Taha Ed-Dafili (2):
  dt-bindings: iio: dac: ad5504: add output-range and missing gpios
  iio: dac: ad5504: use adi,output-range-volts for scale calculation

 Documentation/devicetree/bindings/iio/dac/adi,ad5504.yaml | 20 ++++++++++++++++++++
 drivers/iio/dac/ad5504.c                                  | 15 ++++++++++-----
 2 files changed, 30 insertions(+), 5 deletions(-)

Taha Ed-Dafili (2):
  dt-bindings: iio: dac: ad5504: add output-range and missing gpios
  iio: dac: ad5504: use adi,output-range-volts for scale calculation

 .../bindings/iio/dac/adi,ad5504.yaml          | 38 +++++++++++++++++++
 drivers/iio/dac/ad5504.c                      | 26 ++++++++-----
 2 files changed, 54 insertions(+), 10 deletions(-)

-- 
2.47.3


