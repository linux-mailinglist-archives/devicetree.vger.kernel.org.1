Return-Path: <devicetree+bounces-263062-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +GBnF1WyhGk54wMAu9opvQ
	(envelope-from <devicetree+bounces-263062-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 16:08:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BB45F4690
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 16:08:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2FD263001A66
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 15:08:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0EC2D4218BF;
	Thu,  5 Feb 2026 15:08:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="J/OkTY0x"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f45.google.com (mail-dl1-f45.google.com [74.125.82.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDCA0410D0F
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 15:07:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770304080; cv=none; b=FKmOShlFrbmT2rQUbt8bH7DdtIsgNnnbp3Zdg9Y2UkaFf8zSoMO5Gi5Fa7GFXmwu6ZMwW3Zn7gICss8N4WzfJYbNG1xUJobfokCQLbS62sgLWJgVfsPpQ/YTiN8al84Vfx2rU8TKVcX1ADKPx/VmCTuCL/NB3fusXRU8vANVtFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770304080; c=relaxed/simple;
	bh=KNP9MKmZ7v5HGtrcDpSoxqegxyUQTo2VMxBFwhjMi6o=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=HN/+2aIEBNLrHwSNwEieLi8SA1y20/QtFKWAO+1OxGZQSyVeMWgBOWV53tEkqil38txwrwUKIcMUQXLAeMgNTfqt1+FsrYwxWvr9BJaZzht/vyNPt7zNVlCDO78UGerzHUQVS4wcSeG8hUie3i/RzDPKs9pp8RtVliF+Oq3AAng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=J/OkTY0x; arc=none smtp.client-ip=74.125.82.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f45.google.com with SMTP id a92af1059eb24-124a1b4dd40so202289c88.0
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 07:07:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770304079; x=1770908879; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/T7xe657/lQnGEkXy0hvPJYmvXm+qY+vU+kSTvh3POA=;
        b=J/OkTY0xIrEOEYHbmUpuEN4Myd1NsiLAGCgXP1AeNNdgMhPjohsyEG876382QrSLQt
         hWjH0KEniY8O2s3IsrT2H3KDMR8dejFmHgSu5XIOciHiC+RvpsYzAolgogA2uVXhVUPp
         URg+RbcW2mMStr6lmuc8b00fwZNwVNEdWTPKIGUI3URRWhfCfWgaQF1gu4Yv0NF/dQhe
         pZS8Uu81hxq5M7/D+OVBvhnchIL9nF0aAfJ4CpD5TasbUyauRmO7EEqOHTaIMtN5T7Iy
         +CWaCetmAguzNbpCZTmjA6KZBUmi87xvlBYnFhWYUTMZcsQTtq4/mugpgXCxm905lmX3
         qcmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770304079; x=1770908879;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=/T7xe657/lQnGEkXy0hvPJYmvXm+qY+vU+kSTvh3POA=;
        b=K22OJl53Eh1LqcDMu/TZL8jyw5/wy7xU7rKw66MHafspxJEFGQAeN2lPHnfnl1V104
         +4V91JRRzo+lWXJiTPSKR9MAH/TcAEaYL6oCDfBkKyTqgTwF1VrZErTWAPHmIMjgZLue
         KWxfTnHtrQpkvadnHcDjUS7zzwR2NEn0vIcPySCe3H91DCM/w9pja76AZRDQ+287ciTx
         YsKpFyjdUiGAwOdBBHlRQiNfdCEkdH/TQgbG7mvuyVL0uadpONqURfAVfsziXa41Dvoy
         MUDKZ2302Ocm4mQQoU29xXumq9wdM4ilsugUZgxOOtX+BDxsPzKUyP3JHsurlLxbK81S
         EjPA==
X-Gm-Message-State: AOJu0YxhMFP1o0qDUCLdtwkSQj3G1Yyu/5Qu1L87ADsUw1n0E3i6YhPj
	cr/fScFfUy3/nGB6Mh3+nyNhFFWvdtIafFtI4Fq4EEgjdCcEoVZLIBDHwe6uFcJijeg=
X-Gm-Gg: AZuq6aLa8uTLd3m140BVrptHZWPjtS3XbovMFjAKiOdqzJRMMUE+x51jxbJNWBDlZwU
	YFh48GKiJiO2JfAfczQf0+B3hxdo1yGTofclZesaqEDDZBnPwitwIcb7FyVOUYFMz8JDF4FBo4s
	5G2ZGHeocMuED1ECKa7rHPqxt1KOgiYijXmUf5Y5TIwiaDXLiXU6+EpZES9ifPi+udkME2h3/Oj
	vDUMr+kzmD9Fdzrb0gCHRc0GDVM4k4xwFumn+xWCPJX7i5ToEpSJtogBKE16/HVrLN/WxjDHZFd
	moa4F1vIR/b1Dvbmcu9rcg1NdkQXjG+VuBt8N71XTt41Ax1aoYDmzbBgowoCCSQH5TkE7xT/q80
	TMlD+H/cWAAhr238kO2uGrYI+94zuASUa2AlFsj6PJUUfi68T3Vm9Kq7eAMURVUVAYuWxYO4ygG
	bNas23Ai7z
X-Received: by 2002:a05:7022:2506:b0:119:e56b:9590 with SMTP id a92af1059eb24-126f478d974mr3839400c88.21.1770304078556;
        Thu, 05 Feb 2026 07:07:58 -0800 (PST)
Received: from arch.localdomain ([2409:8a28:a52:d2b1::1004])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-126f4e04467sm3909693c88.2.2026.02.05.07.07.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Feb 2026 07:07:58 -0800 (PST)
From: Jun Yan <jerrysteve1101@gmail.com>
To: devicetree@vger.kernel.org,
	linux-iio@vger.kernel.org
Cc: linusw@kernel.org,
	stephan@gerhold.net,
	hns@goldelico.com,
	jic23@kernel.org,
	Jun Yan <jerrysteve1101@gmail.com>
Subject: [PATCH v4 3/3] dt-bindings: iio: gyroscope: bosch,bmg160: add bmx055 gyroscope binding
Date: Thu,  5 Feb 2026 23:07:30 +0800
Message-ID: <20260205150734.525947-4-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260205150734.525947-1-jerrysteve1101@gmail.com>
References: <20260205150734.525947-1-jerrysteve1101@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gerhold.net,goldelico.com,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263062-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jerrysteve1101@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 4BB45F4690
X-Rspamd-Action: no action

Add the device-tree binding for the bosch BMX055 IMU (gyroscope part),
which is compatible with bmg160.

Datasheet: https://cdn.sparkfun.com/assets/b/9/1/f/4/bst-bmx055-ds000_datasheet.pdf
Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
Reviewed-by: Linus Walleij <linusw@kernel.org>
---
 .../bindings/iio/gyroscope/bosch,bmg160.yaml         | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/iio/gyroscope/bosch,bmg160.yaml b/Documentation/devicetree/bindings/iio/gyroscope/bosch,bmg160.yaml
index 3c6fe74af0b8..fcbd4b430e48 100644
--- a/Documentation/devicetree/bindings/iio/gyroscope/bosch,bmg160.yaml
+++ b/Documentation/devicetree/bindings/iio/gyroscope/bosch,bmg160.yaml
@@ -11,10 +11,14 @@ maintainers:
 
 properties:
   compatible:
-    enum:
-      - bosch,bmg160
-      - bosch,bmi055_gyro
-      - bosch,bmi088_gyro
+    oneOf:
+      - enum:
+          - bosch,bmg160
+          - bosch,bmi055_gyro
+          - bosch,bmi088_gyro
+      - items:
+          - const: bosch,bmx055-gyro
+          - const: bosch,bmg160
 
   reg:
     maxItems: 1
-- 
2.52.0


