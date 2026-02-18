Return-Path: <devicetree+bounces-266307-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wAnMCoE4lWmZNQIAu9opvQ
	(envelope-from <devicetree+bounces-266307-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 04:56:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 51C17152E70
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 04:56:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id AB14030091CB
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 03:56:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7C1727AC21;
	Wed, 18 Feb 2026 03:56:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cs//meXO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0E191DF27F
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 03:56:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771387002; cv=none; b=q72HHDghB/i4gAQ64V0n3+3hlbpqcqZY0abbz6HHUoWB5pQYAN0BOamU/x5T3jqtQUZOrO51ng5sqCX+HS2dpE0InUmJaWowoINaw1TBCgjWRS3+s/uVryattFQanZfxNylGPSzilDB7b+k6FV3Jr7jd1mWZriSU+L5PDsQPTvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771387002; c=relaxed/simple;
	bh=ZGRD8f/vmgHsS4cPCM2Vag8jMW6GX+ve7szwf8ZsQtU=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=t2scbzx6h+jxp1f0APRbr8YDjk7R+ivTcyBf9FemeYQ3Mje06qSWrf5+0qHJUJ8g+k33roC5eaQO+wW3BK+kL+dzd/hN0O4RKibQr+O0hUZ8SYwPlAECH3Ij4Vdtpero139PUx3NIpTCYpblkaaAXJPwkfwo09htsjSO0a4I4So=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cs//meXO; arc=none smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-8230f8f27cfso2594504b3a.0
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 19:56:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771387001; x=1771991801; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=IQzJOwtLsDmI7U71IMGws3J6zNB9Jw0ZiqmOd3FTqN0=;
        b=cs//meXOMVmf9LOC5Q8gOiNAH6Z0vJheMrOqnAKpRZsSHXJd+FoKw59Fbpk+W59sKr
         zRPse8n24DLS52+zgGgFSgLYkTg31981w4u/T8RkB1vpZ10+CmR/XbCWNgo04XGQvNC2
         HYdj0Jbo1DXOxsou1lhEAtktIw0PydluIiqQoQjptvmKq9u3CswA26LzeNHLQjxAtCD4
         a6HJKcx82G8vGLQKvdiJIgQz/oR+puQlQexvtUNFuJw7qxogSCQbQmDeOYHI1yV0JAzJ
         L3j4dYNeSJR/4emq1PCUQPh9yqtHD46gbFksuwwMpDVmCWEKh6R7IidL2SRk7D6P6DYx
         98kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771387001; x=1771991801;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IQzJOwtLsDmI7U71IMGws3J6zNB9Jw0ZiqmOd3FTqN0=;
        b=oUZDlyq9KM6TCh7OsnVMjWaPUEBMx68nYXIevAPawW8UdCeoXpHzZuWDlzhgiekrmm
         VpcMgu1CsOit05OmSrJXDf0W2+2njsxW8XpcTyCln+hrXlACITk5iHTWhkUr33MDGVMY
         tlh13WuuWqpbi6pjDc/YUVICEX+tc5COQzSt53A5SxTHlS4/qpyhvPJWm9Q+nTI2xcUY
         gfnFr09lBozaZOFl5NGNcC4Kesido3/d9tPvsdIhBHbvt3goRLLNBenIHA9v7kGdHvAi
         WImdMNNKGz/XFqUJ5V16NFC2JD85oD2wwpEKAysev8YEaS+70NFIt/dQ5/kBcnIvy68R
         ESIQ==
X-Forwarded-Encrypted: i=1; AJvYcCXAtY8+rEZ3t5/3ZYjOgNxHq+y0xcFmTWRfS/yJi1T4SeSugKp71GZPZGkQwcnZj0h4HJLap0BeWTqO@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4CNR0b0+4d9V7IJG5CsesyovBcVc61bKMziw04DMuh21yOyph
	OkxiWmlDli4hHiGJ2t8bnEhMjvOq3pEATzD9752iOnnWvS9jkBzEtH/7
X-Gm-Gg: AZuq6aI49nL9yPDAfoJlEJghQKdcry53F8XKaN0GNedHORB4jJkZgdfcWnIW63msGOP
	owem7tf2r+vw8DRNm353hGfGeYNlODA2b0Dpfii7a0CmJtY0d3sO+pq1GUuedDVRyZUCBPv+hfe
	ZLoIg0o07l2z1q1WD8oMJj0pZ44ZGORpf9D3ofRqlbbioICw6kWAKErkIouhKqe0aKcgaTRnvP7
	SgXstgGHPRXpn9UM5o2x5t4nMZT9iHI9uVsK2c19rxAHV6dfTGAz2P94A4BQi8C003IdLiuvOkx
	S9cckiX8RWq4JFZGLR+b4s1CT9+n6jru7/unViIZJyt0tzoTr7AST9+L8IMu8N6QEXupl0pvopY
	GtDObu8S/sKiz+TGsM5bTH5neb+lZBJth9P755yrEf7TGiapG767+82bFaGvJY4PBerRIWHJhsu
	y/gPUkU3ZygTmbdVB2wjjFKf5g91gACoeCEGddMnZ2EdA6bT4rGq8IUKq0G2VFGLfTk6PlLC5Q3
	ZC2i2WJ94OiDvznkg==
X-Received: by 2002:a05:6a00:1c96:b0:822:7fd8:ffbd with SMTP id d2e1a72fcca58-824c961b794mr13785484b3a.59.1771387000839;
        Tue, 17 Feb 2026 19:56:40 -0800 (PST)
Received: from pranav.. ([2401:4900:c0e5:f625:e469:adfc:507c:4ee5])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-824c6b9a661sm14871165b3a.50.2026.02.17.19.56.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Feb 2026 19:56:40 -0800 (PST)
From: Pranav Kharche <pranavkharche7@gmail.com>
To: ribalda@kernel.org,
	jic23@kernel.org,
	conor@kernel.org
Cc: linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	Pranav Kharche <pranavkharche7@gmail.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2] dt-bindings: iio: dac: Fix typo in ti,dac7612.yaml
Date: Wed, 18 Feb 2026 09:25:49 +0530
Message-Id: <20260218035549.17871-1-pranavkharche7@gmail.com>
X-Mailer: git-send-email 2.34.1
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,microchip.com];
	TAGGED_FROM(0.00)[bounces-266307-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pranavkharche7@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 51C17152E70
X-Rspamd-Action: no action

Fix a typo in the description where "Is is" should be "It is".

Signed-off-by: Pranav Kharche <pranavkharche7@gmail.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
Changes in v2:
- Fixed author name format (added space, removed number)
---
 Documentation/devicetree/bindings/iio/dac/ti,dac7612.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/iio/dac/ti,dac7612.yaml b/Documentation/devicetree/bindings/iio/dac/ti,dac7612.yaml
index 20dd13706..624c640be 100644
--- a/Documentation/devicetree/bindings/iio/dac/ti,dac7612.yaml
+++ b/Documentation/devicetree/bindings/iio/dac/ti,dac7612.yaml
@@ -9,7 +9,7 @@ title: Texas Instruments DAC7612 family of DACs
 description:
   The DAC7612 is a dual, 12-bit digital-to-analog converter (DAC) with
   guaranteed 12-bit monotonicity performance over the industrial temperature
-  range. Is is programmable through an SPI interface.
+  range. It is programmable through an SPI interface.
 
 maintainers:
   - Ricardo Ribalda Delgado <ricardo@ribalda.com>
-- 
2.34.1


