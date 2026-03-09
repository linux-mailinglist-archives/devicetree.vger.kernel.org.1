Return-Path: <devicetree+bounces-273068-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0HKFFGQPr2kYNQIAu9opvQ
	(envelope-from <devicetree+bounces-273068-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 19:20:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AE92F23E859
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 19:20:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9663B303F074
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 18:17:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DE2E341AB8;
	Mon,  9 Mar 2026 18:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Z2Tqf4fo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E22534572B
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 18:17:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773080253; cv=none; b=Kl19cv5qwxSw/xWfsYDR3YBbGKrX30cB9eUB449VvP4UWfD8HlTdU9kXnnAmYP9N1WdV1jKa06g0ig20KRk7cZuuhtJPM10Qc8uLqyaaqYIo1S1IbSwDsk8j+auK629A80CZrlws5lRzcj8dtWSV6XmX6JHqAP+UDmG3wxk87c0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773080253; c=relaxed/simple;
	bh=68SM8zTjuIJ/uBfyqR2b3NWqQ/EpoAw7wR9lSXlIIcI=;
	h=From:To:Subject:Date:Message-ID:MIME-Version; b=cYGZbyJ6nvRV9dmrr5Er/kxCKTvATqofelHoYCufwLDvo4Jha1PQT2cKANxspI1nT2okbmWPJmQ3MeaYx8Z10J/7jfdwMTjkoF8MHXszvafFI1F0mQ9wsdk7mhNC3MUzvVYh/Zf7y8vUyul91gluuH6tv45u6EtmaFC38RxX2E8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Z2Tqf4fo; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-485345e1013so13077975e9.1
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 11:17:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773080249; x=1773685049; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=SK0O0QG/EC/tK5NkBJ2Mw/XSALNyyYRp9uLd2Au15Pc=;
        b=Z2Tqf4foZBeWh0PxP5fgcTrp9QJPulHb47MZHooTDI93lwohTr4IN8px6ilHQwDwde
         YJrsFp8a936PFPTGYto95gETGRjoUkwDJJDE1syFzakTQ9kuWezbnYnecJCmtwR6IZso
         RHU3PWeIlb+ROrm9tVNcKDUv3rHkUwtnfNdjwJGJ695rxO+Hj9BoJMBRqZqFH/swjlEt
         d1pxeUI8W6mC7TxhD6M9CAkswjX2PMIskEZbw5GAH/oJm/VpuPBLQ6VL2q3+hbkUGSOc
         8ECOd0dMtTGAK/3SQLXVpoRNMuNfIwR+Z6HjEg4yfNeP99Z1hVXluU0g1GkqwqtCegvQ
         SRFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773080249; x=1773685049;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SK0O0QG/EC/tK5NkBJ2Mw/XSALNyyYRp9uLd2Au15Pc=;
        b=nk5nzR6RIC4OtvIJd9/fjavl+U1Hrn3IZAlB4gkyej2tjqNQAWXX1nISzKgicOLr6v
         pxsu6DKlaClQIwpJu+IFOocPbZmqdrS/UnPB11UfKh0tvyw7JmoZ2Jj3p+efN33yRZ+v
         XsC7EZxOn2qJ+i+bl/e2SaAKok7bO92mTgOpHyookJFq9DEJoWhFtXWj1DqSowJsS/uT
         x2/gHLMpVoYAMgw/zsWn3mbPqadmdsrRKSGqnnaabbfo5//R0Qcme58O2PV6S6hakiaR
         uJ+hAfRY3Rm76XJh+13ayKHD0CdSL8RmEAJoDVT4UDbhPlz14PjNpuENvtUwPDxzmSJG
         7HsA==
X-Forwarded-Encrypted: i=1; AJvYcCXop8BZEyrk9Q1an256yaBD5uUVUJ090iNpJuvdPV2rYb4jvQAh2TthYgqP9l2mAVUg4/tqvyR3WxC3@vger.kernel.org
X-Gm-Message-State: AOJu0Yw5mC0nP8+LwTsgrodP8xxOXalQMzKft47GAo+dIAOUStxAwk1C
	+gDaLhVUu8NgUkx/u5CrBMGZZaIYb5Nq+DDJoHdeK9D8BttcYw2VrvDI
X-Gm-Gg: ATEYQzzwcJtil+NeJmZlaf3jOggj0CodzwVbaeZHeRmvjnHE06ObqKwVqjnSniqD9ET
	68XDqYJK8Db2CiAmZGdTz2ZZf1sgXqMmF+ho0BJJDpREDbc+crC53/HK6qdrHXKi76E9e/0L090
	jjRuF5b9PjmjykjBJKliXuNkgPx8seqjS+V1BDsJTae5THqKnXOISfODL34ojBiyD1fTc70mS3g
	4QD+cqjPyDGY9/zAoTg2zsrIyuwSDaROGzkqc1GIQpHv5ZUZSbByBYk5ThAA0MdtjvPaxx26tPZ
	FrYM1+xDTxCscAs6ek5Cn1FB4eVJElsK4ulT9aHd7xjf0aEBkb+e8yoSWG9UA+NUPfjIaipkUlv
	p1Xa7Bdg01/YTwq5I0lZId1CYDZt3x8e7JXNyHH7pRv4wzYjpmmPJHnyY0NT51X+/Qpt+TxBhFB
	RZrcWxpbWW7DoW7A==
X-Received: by 2002:a05:600c:6488:b0:485:38f1:5cec with SMTP id 5b1f17b1804b1-485419c24a8mr10040535e9.7.1773080248529;
        Mon, 09 Mar 2026 11:17:28 -0700 (PDT)
Received: from fedora ([82.137.32.29])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-48541b7f3cdsm8866965e9.14.2026.03.09.11.17.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 11:17:28 -0700 (PDT)
From: Eduard Bostina <egbostina@gmail.com>
To: daniel.baluta@nxp.com,
	simona.toaca@nxp.com,
	egbostina@gmail.com,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Christoph Niedermaier <cniedermaier@dh-electronics.com>,
	Marek Vasut <marex@denx.de>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	devicetree@vger.kernel.org,
	kernel@dh-electronics.com,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: imx8mp-dhcom-pdk3: Use symbolic macro for IOMUXC_SAI2_TXC__GPIO4_IO25
Date: Mon,  9 Mar 2026 20:15:23 +0200
Message-ID: <20260309181524.39423-1-egbostina@gmail.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: AE92F23E859
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-273068-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FREEMAIL_TO(0.00)[nxp.com,gmail.com,kernel.org,dh-electronics.com,denx.de,pengutronix.de,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[egbostina@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

Currently, in order to configure IOMUXC_SAI2_TXC__GPIO4_IO25 a magic
raw value is written in this register. This makes the code not obvious
to read and modify.

Use the MX8MP_SION symbolic macro instead of the magic value to improve
code readability.

Signed-off-by: Eduard Bostina <egbostina@gmail.com>
---
 arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk3.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk3.dts b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk3.dts
index ef012e8365b1f..6ad824a7e07e0 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk3.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk3.dts
@@ -345,7 +345,7 @@ &pinctrl_dhcom_l
 
 	pinctrl_ptn5150: ptn5150grp {
 		fsl,pins = <
-			MX8MP_IOMUXC_SAI2_TXC__GPIO4_IO25		0x40000000
+			MX8MP_IOMUXC_SAI2_TXC__GPIO4_IO25		MX8MP_SION
 		>;
 	};
 };
-- 
2.43.0


