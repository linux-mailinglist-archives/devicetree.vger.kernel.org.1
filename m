Return-Path: <devicetree+bounces-260507-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WCxvL9wzeml+4gEAu9opvQ
	(envelope-from <devicetree+bounces-260507-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 17:05:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D8D78A5101
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 17:05:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 4BD5E30B99D0
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 15:51:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CEDAD30DED4;
	Wed, 28 Jan 2026 15:51:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="aV6HDSK7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C932030C60D
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 15:51:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769615485; cv=none; b=k9bbUaRLDCc4n6svi1+sQi3SJqut+QTBeNGIHvC/LYHNUwJxi/fuM4A4R0ClAK35ZGjjVV9fAsdqMbeY01+KbRJX0KBL9+rFZZ1GfB8Pc4qKfimnUB83cQkvW1tI9EU8pQBKBCSKztqkB5Z4RJ3EYROX99iXhJW9mbSEvk8MnGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769615485; c=relaxed/simple;
	bh=s2XftgRLoQjS+g/1qoc7zKuSMJw+yLwcSC76tOy1XDY=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=LwR5n61iRTacTEIz6lmAg3ATyrxUZcL9/PGN52Dwjfj+RWp6KIxg5GkMsypv0nCKJOSeoG0C0yDi+iwzGOsfrGUyXeWJ6AOOl0waINPKGarsiIHBRTODjUc/+HdvllVURB1dcqiH++v/cM8hhl8RZ0TM/0Iu+Y0lrDhXMh+4hog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=aV6HDSK7; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-65819e75691so10925a12.3
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 07:51:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1769615482; x=1770220282; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=MqPhMZPef8IxeMTLsFDJp6gjrCUIfXLXeKcG0ugnntI=;
        b=aV6HDSK7zTGc79REnCSxq8Mt6QGmrcHKv3MpXeChDruqleXzdXHiCYi2oyVd3eF7Wj
         mbAQzATsG1InFchtHM/x0qvWIo2hM6g9q/9vW+DVYJhM0QzURPakut784EDCHpNKfdnO
         ofax65U8DtXelMyYHJZq54oCll1UEQqiHIjtdE6T7dTtHtkS4sBruVH8vml83Jo3H9FG
         V/eciT+y9VeVDhH0bux55UHP55/LmCBhv2W1BzIfca6ma79vGQ3ILL4a98lsCYM/NPku
         +s+U5qRbaFmFd2DeAvCdso4CpOn/H+kvpNxVnIdq4qquBiNvjwFLaQ/0mqePIBxi+Aw1
         QBoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769615482; x=1770220282;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MqPhMZPef8IxeMTLsFDJp6gjrCUIfXLXeKcG0ugnntI=;
        b=D+TSWMYt4OYn3pCBLEOXOICsC/uTUApYIzKKWMgA4xAhpQzRm4mPqlUgmFWPWTMoFh
         Kfhzwc/7e3zNIh7jH6nwfwEoMKi9tTjqJ6yR1Iy+ZKzUQ1o2mSUHH4L1TkQAANJfWQcA
         hb61AtvSv1Cbz+0wND5dC2RYm8CsUNjWVU1UfbX0OCL2saiPYTiAAHCNboDw8yfHRelX
         zWmt7p6LWTxk0oqWyMG9RX9aimTk3XC8JLqTWOGQAcNTuurZP5SO0seZ3IQ2AZNoYRCh
         LmDOFmm84o5MECv5QQuHeam2r7oeUJeKIG26bHDsxwJ6R/85OvnahkhVD5P6BIhsmpik
         vhsQ==
X-Forwarded-Encrypted: i=1; AJvYcCX2Jagv792npwWnAuRD0g7VpQg5OuIM0Ja0rpex+Y8Y3fjxNjrAY2PI6ZvwtzHng2f2O6zFGv6/J4cU@vger.kernel.org
X-Gm-Message-State: AOJu0YzZJeYcFggG5dUUgOD10lVNqTuWJA45fHtKY8iOwS7Ux5W2w7HW
	33TCakB0PVorutBNb5YV27m5GfgdEwz5ICesqsFKai2TKazorZX1zqnXn/K0SxoaTQzyxiTp62l
	L8GqT
X-Gm-Gg: AZuq6aJDnjIfISPo6JpXsCvuw6ej5bOUrR9kSjEBEMC8y46w+Nk2VF5obCw6FCvwyNr
	pgP5bt0igfrZKul5ClTgnk69Xl/c8W+ImXLzCFhh1/0xh4m5KrA8jdtBLlN3AFMni4SwgEzWobQ
	NNUt0JlJT+B5tWau6poDm2W9k+VMhC8nsQcvMMhSlCt/ar4G3Bu1QMHzFfWxud65Z3+LKHwF8az
	b1ATnGCWEDbKWJ083SVQzyfrsWw9bWHCHZRRsiliV4s3ykOKdJzoSFrU8rbYsCLdiIx/EVsJGQn
	jLH9o3/qnGLRfMm530r/baM0rzeFxm+HWu+r9oBAA6viz9hRnClaBSkUVj4vqnpVQswHm/IMJvv
	+GfBJmAHXSVm5mEREg0rI4EQGC7VkUduGTuEiqQJEG0Bd64vMBSmgyCywrsVmO6O3fhjuAhTRLE
	/eNRF3jpWcyRshyFV6NgVUamQ+P7WqBH+26Dh1kWD/bn/1Ww40knPou3+D7olMfLmdeCjobzDH9
	1GqXkk=
X-Received: by 2002:a05:6402:3548:b0:649:cec1:6cf1 with SMTP id 4fb4d7f45d1cf-658a5f8edcbmr3566350a12.0.1769615482091;
        Wed, 28 Jan 2026 07:51:22 -0800 (PST)
Received: from [172.16.220.227] (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-658b469eb9fsm1727223a12.28.2026.01.28.07.51.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 07:51:21 -0800 (PST)
From: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
Subject: [PATCH v2 0/3] Add support for Awinic AW86938 haptic driver
Date: Wed, 28 Jan 2026 16:51:12 +0100
Message-Id: <20260128-aw86938-driver-v2-0-b51ee086aaf5@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHAwemkC/12OSxKCMBBEr0Jlbax8ECIr72GxCGQisyDBBCMWx
 d2NsHP5eqpfz0oiBIRImmIlARJG9C6DOBWkH7R7AEWTmQgmLpxzSfVbVVepqAmYINCutJoZKYT
 SguTSFMDisgvvbeYB4+zDZ/cn/ksPlWDlvypxyih0puaqUsZKfbMawzR4B+fej6TdDn+A5yv/O
 R8jpNMRaL6PODeFg2WmeaBiXNS5sX0Bxjce/+EAAAA=
X-Change-ID: 20251113-aw86938-driver-b4fa0d3228a2
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769615481; l=1152;
 i=griffin.kroah@fairphone.com; s=20250804; h=from:subject:message-id;
 bh=s2XftgRLoQjS+g/1qoc7zKuSMJw+yLwcSC76tOy1XDY=;
 b=UpFCfkbXOgKJjpAw86bajCWZpxZ2xCtZDbZ3ywSoJtcvP95aZ1oKyJXqSvx3734Dc7DE5opPd
 noxQ/gLYBMnCYkfNbKF8qg/gnEClSRd+PNBQ6hm9KSGeQJ1wVeY3eJe
X-Developer-Key: i=griffin.kroah@fairphone.com; a=ed25519;
 pk=drSBvqKFiR+xucmLWONHSq/wGrW+YvcVtBXFYnYzn8U=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[fairphone.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[fairphone.com:s=fair];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260507-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,fairphone.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[fairphone.com:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[griffin.kroah@fairphone.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,fairphone.com:email,fairphone.com:dkim,fairphone.com:mid]
X-Rspamd-Queue-Id: D8D78A5101
X-Rspamd-Action: no action

Add devicetree bindings and a driver for the AW86938 haptic driver chip,
and add it to the devicetree for the Fairphone 6 smartphone.

This driver is very similar to the AW86927, and shares many core
features.

Signed-off-by: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
---
Changes in v2:
- Added AW86938 specific registers
- Added chip model enum to differentiate chips
- Link to v1: https://lore.kernel.org/r/20251204-aw86938-driver-v1-0-ebd71868df3a@fairphone.com

---
Griffin Kroah-Hartman (3):
      dt-bindings: input: awinic,aw86927: Add Awinic AW86938
      Input: aw86938 - add driver for Awinic AW86938
      arm64: dts: qcom: milos-fairphone-fp6: Add vibrator support

 .../devicetree/bindings/input/awinic,aw86927.yaml  |  4 +-
 arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts   | 19 ++++++-
 drivers/input/misc/aw86927.c                       | 65 ++++++++++++++++++----
 3 files changed, 74 insertions(+), 14 deletions(-)
---
base-commit: 0364de6be161e2360cbb1f26d5aff5b343ef7bb0
change-id: 20251113-aw86938-driver-b4fa0d3228a2

Best regards,
-- 
Griffin Kroah-Hartman <griffin.kroah@fairphone.com>


