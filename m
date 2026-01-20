Return-Path: <devicetree+bounces-257472-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GMtXC0nAb2kOMQAAu9opvQ
	(envelope-from <devicetree+bounces-257472-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 18:50:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id C763048D9F
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 18:50:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 99A047C3EF4
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 15:22:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06753478862;
	Tue, 20 Jan 2026 15:04:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EFSsws17"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9E3244CAED
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 15:04:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768921481; cv=none; b=EGHFPbr/0EF7T/5b+lf4RDppVugKtG4xwgIfASBbZhB8zho13nxr9J6uQsl1Z1vWahEmEdmdwWnFSBQuZM2h1U+JUi561icZDHICIhpw2QxAQmxCOJoD24xT93XIDcPXb11ua3UNBgKIrtAuKWckRs/V/TPpZBYGvaNpgn/SZ5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768921481; c=relaxed/simple;
	bh=2MTdzL38FwzqI2w7zArkHtNA26SHQ3+uWzPtljqdIUM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=RWbA4sH3Rpd5/PJB81Q3YQB0KhZZ8qTj0leWDzNmSXE/ZNlAB0e//hEmO4oFqLwQpeqR7cPITiLwIrgY4M/2qMuwlXYUshQ3qP4FRHzzImZ/9W2NVr5+4uF9eA2d+Hd67NK9CKGplJ3GhhWMALpz5AH4+J8kFZGJjOxB4nJj/yQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EFSsws17; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-65807a2012fso807796a12.0
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 07:04:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768921478; x=1769526278; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=79xLShts+sn9/YB5KF2cuQey91jFfbfmfoohIEeLjDY=;
        b=EFSsws17h1fhvc4sTRhMtvBYBqTLshblfTiK5w3phackD+YYyg+ARxBEmdoCxwWBNY
         2lbbDQoejt+z/UYiK+HEq9grC+56/QmGPkOIkDoZO2T2qJVt6vM/NWbrBepgyeu9ao40
         FD7+w7CitO2KmRYsMvXNT6dFQXQwD+ffbec3AiTqFX6UE+3UvDhEZdD9LYC1JeCrD/Mc
         WmrKifQ+cpz1HstiWxbrBHi0UFHDW9MXJIIhI2dqYzizKcFi+4MXLOj5HqRz+5sT2rxI
         WkQ+5gW2H0Qz2l2WIejoBN8bq4myTacISXeJ4vmOY+KJboAqOpNAhkckIbLTNoo3iU+Z
         2/mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768921478; x=1769526278;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=79xLShts+sn9/YB5KF2cuQey91jFfbfmfoohIEeLjDY=;
        b=cDZFvU9iiDZTdw4FSn/ebu3s4xN5UdmiWeW2gksmte1Ont1T8HzQuZ4JVyvdwIUhsP
         alz9httnEy9Xmk19l9fbOvOfxleUYjoHklNAJNSVOVFGMzNyvGZk9byURN8yGUaFI3Kd
         1XQKIWi5ozuWvgf3X88nuZfu0RdstDynyAKOVOWQ7gcc3NfW0Z542NqlaDnR2k2XePMH
         HtpELQw0gxf3175V1ICjg3CwiztC9pGqaHlo22l0y1iXFsPUQY65SlebGI7E5FuTbui8
         j0ijQ8TB9gg7p5bqMbY5R8pAy0D2opH8IWjTY0YIMAGdmnBG3niWKpseCToPVYZjm81d
         8mmQ==
X-Forwarded-Encrypted: i=1; AJvYcCUXO4cy39Iht1GUhLr9w1X4sWgSzGtipbOpvOeyJheVV1rX5VctgMhoKzl4QV2fPmsBEQ4+bdzY+jFt@vger.kernel.org
X-Gm-Message-State: AOJu0YzCM9MCD5ewu1tO2k8BCynY73Pu0a6iQ/0mVBgmV3T+gkVmh/oP
	920aT8ld+z56+QUcEHw2k+rbaxUVVLHzcxD3+/UnWEoc9fAKSt91aXmq
X-Gm-Gg: AZuq6aJ8iOGAvSCZQ3+yHVIadJNv1UCnlxfzhLlQ8McFKP/PZTLVjB5paDPhM135hGA
	w6Sk3Y8hf6Ttgqx4xfE54ivPxkX9nB235qfbnDNRePiq5dk00C2xFn855bUyHpDy+5mtUsTawAk
	rSXsYaoV/gj/11Lrdpm0+P71H43bGI76s5ZlFI28Tyb2lp4q/os+AxEBbNQkAqoxLW6gHcUL/wd
	5K8hhDTO5ZrUgFYGAMnMm7i/nU5a8C82qEzIWXp8A+8WLH9aWEQIZ1SqPEcPRmUInXUB9K4cXRd
	R5npPmTfkYqb+IYmtl9zprY8LJq+v1VtXs22PNMgmZiuA33yKL+hHAmSnwfoZqOSXGMFXp7JAks
	GmzfQpdtuNhL079iIhWKCRz3Scq/qpLaockv1CWTcH3mTZ6YKWau3K/mG2joLjvLOpwxh4Dwjra
	TG7sZh/ykupzxjHxDPYyZ3ReLeHZb05AaIeM1p
X-Received: by 2002:a17:907:3f23:b0:b87:206a:a234 with SMTP id a640c23a62f3a-b88003426b0mr227202366b.31.1768921477456;
        Tue, 20 Jan 2026 07:04:37 -0800 (PST)
Received: from SMW024614.wbi.nxp.com ([128.77.115.157])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8795a214e8sm1427045966b.60.2026.01.20.07.04.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 07:04:36 -0800 (PST)
From: Laurentiu Mihalcea <laurentiumihalcea111@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Shengjiu Wang <shengjiu.wang@nxp.com>,
	Chancel Liu <chancel.liu@nxp.com>
Cc: linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	Pengutronix Kernel Team <kernel@pengutronix.de>
Subject: [PATCH 0/2] Enable AONMIX MQS for IMX95-15x15-FRDM board
Date: Tue, 20 Jan 2026 07:03:27 -0800
Message-ID: <20260120150329.1486-1-laurentiumihalcea111@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [1.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-257472-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,pengutronix.de,nxp.com];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[laurentiumihalcea111@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_FIVE(0.00)[5];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: C763048D9F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>

This series enables AONMIX MQS (i.e. MQS1) for the IMX95-15x15-FRDM board.

Laurentiu Mihalcea (2):
  ASoC: dt-bindings: fsl,mqs: make gpr optional for SM-based SoCs
  arm64: dts: imx95-15x15-frdm: support AONMIX MQS

 .../devicetree/bindings/sound/fsl,mqs.yaml    | 12 ++-
 .../boot/dts/freescale/imx95-15x15-frdm.dts   | 73 +++++++++++++++++++
 arch/arm64/boot/dts/freescale/imx95.dtsi      |  5 ++
 3 files changed, 88 insertions(+), 2 deletions(-)

-- 
2.43.0


