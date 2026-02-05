Return-Path: <devicetree+bounces-263061-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uB7cAeuyhGk54wMAu9opvQ
	(envelope-from <devicetree+bounces-263061-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 16:10:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C935F4717
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 16:10:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7C191302C921
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 15:07:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A7044218B2;
	Thu,  5 Feb 2026 15:07:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Q9kRNWpf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f46.google.com (mail-dl1-f46.google.com [74.125.82.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA02F410D0F
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 15:07:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770304074; cv=none; b=ZmDrb3nQboL7pRauuPZoElY8Q0jxYhaMdsNcXntdW22WA86K2Lp00q1V58N9lJe061kBGakMqtvrMm3AB5i/K3SHFwF9YtXAQHBzkw8/WRGLRgeGXxFM7nKIxfoX9/W5RkP9W0rInL6qlo/IWl7svHOvmp44Q+uS5w/+25QzYQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770304074; c=relaxed/simple;
	bh=Ibk1eOjo5LGn26U6FufNlY5QjJb1y2/gbBlzQkx6zzA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=CqekrclqpqKZS16MhcOjCfTSFJ1KC/diyciJV8WR0X8P9PIYN7okCcj0ue/wVq557oenh7x50Yb70vR2zZFYV2BhRIPExR0UHII+CZ8K5sNyQuFf5wmQrDt4VpzWkXlgcSN+cXNhe1xqzZfKCxVLj5kEQ4nMe1ocDVsGshqT5nk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Q9kRNWpf; arc=none smtp.client-ip=74.125.82.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f46.google.com with SMTP id a92af1059eb24-1233c155a42so1427150c88.1
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 07:07:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770304074; x=1770908874; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Tw49c4EKLVMdAdrwNMly/hTBXaftlDCgL111wVcMz+Y=;
        b=Q9kRNWpfhtY9vZNSfwNWkl0AL9CA/uARornpQwMyryTmjd6nkMRZ1wWfFqWRjIhV0B
         tKUdQVcKqi8ZJGrF94dei7Cl1aBKoXzh2PZX9rvDktTNT0nQxCpnQQJUNWGFq0aXWpMm
         ZnF90fh8TyBrqN9DNnSsgujHt915TUKocngxnLPK1xkEQ8D0kHKBBEuiX2wjoqUjJIYI
         8CRr5Jw/XgRPKt/65hUrpzus9puotmwp2mQERYxTkU+mwI+VXGKmihSA6moYPBPgdWnd
         upTSL58wWdSxid0O0cUJjHq6Yt+G4k1zYAFXzTq42c/YyEfHjl0FJ+E6fkFqMGqDv8dv
         2OIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770304074; x=1770908874;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Tw49c4EKLVMdAdrwNMly/hTBXaftlDCgL111wVcMz+Y=;
        b=Z8P3Ti7ClmEcMguUykAFrm9DZyKZGpGtslcKovmbnXh4YBjGvIGRiZZQW2NzdMEfvQ
         3PvxWVRAv26YFU9hAAYTqFlkZnVNfk7I/55aOW6JnrZUjOrJVPWsHtHEsghOCMIklBWM
         HPLUAIpKAg5Z8EGyaRZ+ikH8A0LF75EP89/c5nzVe2gKN0OaQ8WM46au5EjJQVXLrVB2
         Lja8OMP3uUIuaTWZoe3BTS/sK4rE0LPUrSoa6GHqRWtPxZy1Zf3FV+00HcLHusPS5itv
         vP/qPQ7FYwOf/JjkJnwCt5zJ3tQzOTill9WhphVMCQR8ZgTKAuhHSedNpDEbejPR+vSM
         Ddfg==
X-Gm-Message-State: AOJu0YzgKYG2ZlkEUwRTseDwnapz4qskGxIieuOjEUDQ9crWTiOGtOYZ
	dNAA7a20PzGXVVVf16ujGhl1RXIUvLlUoke88RNtCed1kL3CF1SNDrE7SQ0cFQ==
X-Gm-Gg: AZuq6aICl6CBwMld4J6Ri2kWDESCmOBh1kIoI3apkdrHVeNuT1XvtG8vMZOQuhQ4Qvq
	pwXO3nqITZG6mYg6bCB3sbeQX2pQdBguwfidKNfQnGOKWLxma+bQzPvePTr/lRcJQq7aOPm1sDY
	v+T+ildm3bHN4RzUJ9zV4ieEClruNfpdZfUSUoFgbeVEJ2TtSVKNjcprAUmQz8OAj47KCaWIfYy
	NekGUBE4xhYSnndITS6IuzuanH5PcwXA7rgOLIz1rvPbVmXk8J6rCfzGoBhOj8AnpD6Ru8DdJjS
	pH2fZ8uzgOlMlx75DaT3bd0Y7c+ApZjyxyQ7L19zBmAqZ6urgvTw86dcymUYU0gkqat+3NZGEEO
	TOEdxa/N5eMuf/cDAKCpkUikoG96Oqg0tHJ465dYbzK/qzlDxbK2/axihtGTP+5QdmqeKngvxVH
	W46LCf1z1d
X-Received: by 2002:a05:7022:41a5:b0:11b:c86b:386a with SMTP id a92af1059eb24-126f4780af6mr2507315c88.5.1770304073773;
        Thu, 05 Feb 2026 07:07:53 -0800 (PST)
Received: from arch.localdomain ([2409:8a28:a52:d2b1::1004])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-126f4e04467sm3909693c88.2.2026.02.05.07.07.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Feb 2026 07:07:53 -0800 (PST)
From: Jun Yan <jerrysteve1101@gmail.com>
To: devicetree@vger.kernel.org,
	linux-iio@vger.kernel.org
Cc: linusw@kernel.org,
	stephan@gerhold.net,
	hns@goldelico.com,
	jic23@kernel.org,
	Jun Yan <jerrysteve1101@gmail.com>
Subject: [PATCH v4 2/3] dt-bindings: iio: magnetometer: bosch,bmc150_magn: add bmx055 magnetometer binding
Date: Thu,  5 Feb 2026 23:07:29 +0800
Message-ID: <20260205150734.525947-3-jerrysteve1101@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gerhold.net,goldelico.com,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263061-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
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
X-Rspamd-Queue-Id: 6C935F4717
X-Rspamd-Action: no action

Add the device-tree binding for the bosch BMX055 IMU (magnetometer
part), which is compatible with bmc150_magn.

Datasheet: https://cdn.sparkfun.com/assets/b/9/1/f/4/bst-bmx055-ds000_datasheet.pdf
Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
Reviewed-by: Linus Walleij <linusw@kernel.org>
---
 .../iio/magnetometer/bosch,bmc150_magn.yaml        | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/iio/magnetometer/bosch,bmc150_magn.yaml b/Documentation/devicetree/bindings/iio/magnetometer/bosch,bmc150_magn.yaml
index a3838ab0c524..c1a6892b0194 100644
--- a/Documentation/devicetree/bindings/iio/magnetometer/bosch,bmc150_magn.yaml
+++ b/Documentation/devicetree/bindings/iio/magnetometer/bosch,bmc150_magn.yaml
@@ -21,11 +21,15 @@ properties:
     description:
       Note the bmm150_magn is a deprecated compatible as this part contains only
       a magnetometer.
-    enum:
-      - bosch,bmc150_magn
-      - bosch,bmc156_magn
-      - bosch,bmm150
-      - bosch,bmm150_magn
+    oneOf:
+      - enum:
+          - bosch,bmc150_magn
+          - bosch,bmc156_magn
+          - bosch,bmm150
+          - bosch,bmm150_magn
+      - items:
+          - const: bosch,bmx055-magn
+          - const: bosch,bmc150_magn
 
   reg:
     maxItems: 1
-- 
2.52.0


