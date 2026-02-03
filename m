Return-Path: <devicetree+bounces-262296-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2ChuMcMJgmmCOQMAu9opvQ
	(envelope-from <devicetree+bounces-262296-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 15:44:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A156DAC14
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 15:44:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0CF1A30F163C
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 14:40:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68BAC3AA1AF;
	Tue,  3 Feb 2026 14:40:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UyxMGH3p"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09EBF3AA1A5
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 14:40:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770129606; cv=none; b=RC/kbklESFs6xcYhZUReWUV+GnBtYm5PIXzKYhnXB+b67q7ppaTLDxUhuBC1iNSoNIIWejrb+nggILqQUwo98Eh5uG+ps9rNGtKDPvTLKfjVA45gQ2kjhv+FtC/pqHFKeAjB/nxHZHDQCKHM55s9jn0Dnu1iOx5+6vOaAMG5cXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770129606; c=relaxed/simple;
	bh=VHzxBohPKCqJnn1a5IySFpJSEFHGzZmaehMCiqtsArA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ZTA2pBE1E/GN7VQ73IX6FwQXn1WV9lAjEk5WISOPqEFvyHFQ3xuHo7xGMJgYSHOisnRzAcI+HbIMFcnzpeGUKDy56S64qjYUsSZYbRBkQrlDFjyVqxOIv8AoSzCgd3gsNMeSwvu4XpC1zrv/+HbDDLs7GfA+RDII8KB8ixNNN/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UyxMGH3p; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-81f4ba336b4so4753264b3a.1
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 06:40:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770129604; x=1770734404; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GzfJiaPT96fMYUkv4izOERX1QNP3Us0TjLYccqND2uU=;
        b=UyxMGH3pFLYN0Aui55Aadszg08bt1H1eVEQH65CIMiVxMwchm1zFInJw+KnA3rueAY
         L5Fa/7GNhogMoRUlVwERe+JC0TpmcDAkwMDfwjSn2oIpE3GRA/yn054vWxXJD3HBZxzv
         bBUsIwd2dMZRa/QAeGq1xpzFmKQoSVSsbXx0GkbnXxwD/eJ10vIfV0vwDBDU+V4xWwc4
         4cgJbsaxdi1RtxGjQL+ZK3OJoL0V3Cd70EFqcCufIwGnTMzPn+30DVttjq1Hxtk8NbFe
         3P8pYepHTkJt+nb5EFhe6PXcr0IctkP/OF+oM0ma9SyPoXbi2MBkk0RM5BNLowgttUWE
         zO1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770129604; x=1770734404;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=GzfJiaPT96fMYUkv4izOERX1QNP3Us0TjLYccqND2uU=;
        b=l1UboKjvHVZM4Y2ftgI+3Hrf7coXOSQQHilDDWOzlJCMGQUFno/jd8/08z1Zin7NXp
         +97THo2DjgM2ZAVaUqOygPD6smC4J/o1Uv9yMTyuZmtP/S9z5WEJz5+UPkgvK+cP+eVW
         OpA1DW42rZdqZkeXNBmIV1hTFvCfsvPbiUxGppXM40GTbyYr/WWsG8La1m+Yznpt8O7z
         q8RG68mQ/nvxiif9zIWF4ckkTqnzBAxY/buKzfa39p3WNChTEp4JvaJ84HWsY+pe7Zuz
         eYxBvNcvxzSFp3aMEzB/CnVfJO+D7xyvmtBIuAfUtRk+GrEN7Vi6EafoTM/h4zsw+jxl
         GY1Q==
X-Gm-Message-State: AOJu0YxK12q9XYXEDuMor/YGLIdOexE7Thx7fVcqdfjsCI9Oolr2FGb7
	rEKMejmEGd4F5uZrQcoUzTg7KFRE/DrsYdDoAVGd2cL6Pv5Exo5kBmx7nZJrZd+a
X-Gm-Gg: AZuq6aJV9BM/fWJ32/Wm4STrrzWeJo6GW3PMEEuEs1Mp4qYgLhmCzj3f2KY1b/OIx1s
	J3DHVNlblwB7Q5I/vqrXCezMOUo11gpqdy9P4lLaFplggKY8EnwogsiN7Oau4usi5U50yM1WYD/
	1LpNXbCgfcyxmiuLhlaWKnXJUmFa2CXa5qMQ29D2/OBWtZtXbTYwiQ7xsJ0iWBBU7MpETsoJ0bf
	Nh1mF610ZshV/PiiMi7JrBIVkMWAmgmhtFLdUzvIGg7okTcH72WJBUD4Jf/0qsbxynRX4HkOuxC
	tioAwtcPVtElHF3gbcGPWgXxkO1+DcrejHpkJ7AHsqcTQ1E+UiqB46S2qD8lUipj29iTMe4F/su
	rFh9Q+5B4xxRz3TwUBdOvUk8g5UapJmIXTm2lrrfa8pTwQPI9hfFg8EO/Sn2gUcte05WHtCAkpu
	D28YeNY/Za
X-Received: by 2002:a05:6a00:8583:b0:823:998:95b0 with SMTP id d2e1a72fcca58-823ab72da1emr12015775b3a.35.1770129604102;
        Tue, 03 Feb 2026 06:40:04 -0800 (PST)
Received: from arch.localdomain ([2409:8a28:a52:d2b1::1004])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82379b1ee89sm19810313b3a.14.2026.02.03.06.39.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 06:40:03 -0800 (PST)
From: Jun Yan <jerrysteve1101@gmail.com>
To: devicetree@vger.kernel.org,
	linux-iio@vger.kernel.org
Cc: linusw@kernel.org,
	stephan@gerhold.net,
	hns@goldelico.com,
	jic23@kernel.org,
	Jun Yan <jerrysteve1101@gmail.com>
Subject: [PATCH v3 1/3] dt-bindings: iio: accel: bosch,bma255: add bmx055 accel binding
Date: Tue,  3 Feb 2026 22:39:41 +0800
Message-ID: <20260203143946.301233-2-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260203143946.301233-1-jerrysteve1101@gmail.com>
References: <20260203143946.301233-1-jerrysteve1101@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gerhold.net,goldelico.com,gmail.com];
	TAGGED_FROM(0.00)[bounces-262296-lists,devicetree=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jerrysteve1101@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 6A156DAC14
X-Rspamd-Action: no action

Add the device-tree binding for the Bosch BMX055 IMU (accelerometer part),
which is compatible with bmc150_accel.

Datasheet: https://cdn.sparkfun.com/assets/b/9/1/f/4/bst-bmx055-ds000_datasheet.pdf
Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
---
 .../bindings/iio/accel/bosch,bma255.yaml      | 41 ++++++++++---------
 1 file changed, 22 insertions(+), 19 deletions(-)

diff --git a/Documentation/devicetree/bindings/iio/accel/bosch,bma255.yaml b/Documentation/devicetree/bindings/iio/accel/bosch,bma255.yaml
index c1387e02eb82..969a8ed3f539 100644
--- a/Documentation/devicetree/bindings/iio/accel/bosch,bma255.yaml
+++ b/Documentation/devicetree/bindings/iio/accel/bosch,bma255.yaml
@@ -16,25 +16,28 @@ description:
 
 properties:
   compatible:
-    enum:
-      # bmc150-accel driver in Linux
-      - bosch,bma222
-      - bosch,bma222e
-      - bosch,bma250e
-      - bosch,bma253
-      - bosch,bma254
-      - bosch,bma255
-      - bosch,bma280
-      - bosch,bmc150_accel
-      - bosch,bmc156_accel
-      - bosch,bmi055_accel
-
-      # bma180 driver in Linux
-      - bosch,bma023
-      - bosch,bma150
-      - bosch,bma180
-      - bosch,bma250
-      - bosch,smb380
+    oneOf:
+      - enum:
+          - bosch,bma222
+          - bosch,bma222e
+          - bosch,bma250e
+          - bosch,bma253
+          - bosch,bma254
+          - bosch,bma255
+          - bosch,bma280
+          - bosch,bmc150_accel
+          - bosch,bmc156_accel
+          - bosch,bmi055_accel
+          - bosch,bmx055_accel
+
+          - bosch,bma023
+          - bosch,bma150
+          - bosch,bma180
+          - bosch,bma250
+          - bosch,smb380
+      - items:
+          - const: bosch,bmx055
+          - const: bosch,bmc150_accel
 
   reg:
     maxItems: 1
-- 
2.52.0


