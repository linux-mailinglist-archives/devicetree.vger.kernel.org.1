Return-Path: <devicetree+bounces-279833-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mHNXJC2DwmlneQQAu9opvQ
	(envelope-from <devicetree+bounces-279833-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 13:27:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 08B83308324
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 13:27:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4353130EAF68
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 12:21:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 156203F65EB;
	Tue, 24 Mar 2026 12:21:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TS4ttkUW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D61353F23DB
	for <devicetree@vger.kernel.org>; Tue, 24 Mar 2026 12:21:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774354901; cv=none; b=C/XbxJCD8ek+MkYg3owOFGXFkrsiTog9JWnY251h3fLhTCprtyNyN2IHIVmtH8kmnMK+TPK/14D2JKsQhcHBNCyuhqNpdvaHKj6nabpv+RUiaicREbIOKl6LEGTfwzcuTlSJrPLqPX8Hr++K5Ga/c/V1qb388BYz9wIAB5BPwzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774354901; c=relaxed/simple;
	bh=GTFqB9vlpM1haE7yFKw2gkxIIFosboWK7AHcKs1bUx8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=WCFbsH2/dmJqQMors00twZZDqzgDWz0oUlM3sHdlvN6mOzxAo0/Rr+UUyvOM4SwXEzkkEOd2PqOthoHznNjaJKmmVjiDtPPt4X9GpZF0z05omrTRtUsKdk8Tk7A+Au9uvdcvfHtcANJvaNrO4fNw/nZ34lFLc2ZJ/zM1BI8Mibw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TS4ttkUW; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-82a73593410so1941310b3a.1
        for <devicetree@vger.kernel.org>; Tue, 24 Mar 2026 05:21:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774354899; x=1774959699; darn=vger.kernel.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=a+ZeiMfLn+fSOvi+U6OBmLVKVry66tNJDCkBc+/8Fvc=;
        b=TS4ttkUWytfAq4mJFczL8XiHXR9CLr5zFhQjoKZGi0wLiPmiyraZULIV9Z0iRQ7sfc
         iA2L4eRrsMTk0a0qVObhvLA5RUuuoPhQD+sOXU4VJDuk1aRTQI+1WwhYupEjDqm3zwTi
         p9s6RXCVXiBWbqy9c6HZAC8iPS97m+bcpnBMLhMscDOKwKU+/uz0XnoC/3DhXV9Ma51I
         WrRTA2sD8MD5E4bI6w6SoE8luGfOhpKY5YKLjvgUNqJDGCxG7jpoDqWeSv0XL+QQpP2f
         2eGUmKCafDb0eKjPsy/prYVcZjHha6QxtSxE7Fuil6RqOEesy8wLVwwIbIK3pBEFjujh
         3DxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774354899; x=1774959699;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=a+ZeiMfLn+fSOvi+U6OBmLVKVry66tNJDCkBc+/8Fvc=;
        b=Qa3/DsZaSommsr6AGGrQ2MokYYyA33kBOTaS/+krMjvfC41pYRmzjqeEaa08xsYz5/
         ro+pq6L7+XWMg3CKYyRbgM1jr/niE+CvE4p/sUqPeSuipNquXxfyRMemW+oGh6XzWLdV
         lwheagsVcBqRzUFxlEVTEdUPqXI8IecgQlKQ/BJZ//nL+qMugFyvXYMIJWwiHYIBPu4/
         k33cWPOshzAV+PLxf8RFPXYsPbgDHNF1VyduaEMHu19eh6g6u5OABTUJqIySb1k3h893
         /R3YRYDShqQm8TIYMs2skj3q9/29XfroyGYPFtk18EKfaOoXjpuOFk6JHx+TbVkcJPuE
         0IrA==
X-Forwarded-Encrypted: i=1; AJvYcCXWVrYlq1kS1Rmm/ZJ0z1Js5CSacCGijgaCo7yCXShdr3bJGxmsY2Nu+t4ilWFGNaatLhy4gPjYZxtw@vger.kernel.org
X-Gm-Message-State: AOJu0YxDm2LBFhIIZIZHgRAcw/mDQcBEMCaR/5G7UQbKXdA5RkhgD1oK
	gLIbZAraaJdEGgbD5wJ9/WCOLI6MHAXroOEIty3VtroIFIQ/hlZ/u/d/
X-Gm-Gg: ATEYQzzdTb/5s60BRbC9NvKdURwnxiPr5ew8xCan+hQnMgW56cjb1Hewbr4GRzQ/NQz
	ZFDqErTTku8YlVh0c7hrh2xg4df8bXzP2nnvyZ2rjQ8qaAtx/0ArFgB36OD+Ujy85WEieJC7eTD
	mhgCWofqTds00aY9SRKoqyBfSynUh0NB6Nn5aeqbjAxtAgGK72kL4yzvfiImz8dGVBAX+6mPorH
	4atjDrASwPCHlwNdaLA4QsyU+7UoUand/mEg0vXG3W93YQsY8oRTRUL5RwPjm3zmi4tCucY/M4T
	UWNO9XeVxiFEBn6KduytcmPMm8h4Pv+qRe3Txx5FZxkffYdqqVN2gTSepgJ9yAmif14z5ey81M2
	AAkfESDtB6VhB1CSNU7/i5o4PhuRoR/J7t4g5u2nDIsQjfP/OLcutAnMYm349N+532TlZZ0dfhD
	1zMA1xG4rIY3Wp1l1wGARFr8iBHNaOyv+oe6+2t9Gmjzt8I03LNPAqDbzoikghCkk=
X-Received: by 2002:a05:6a21:99a6:b0:39b:81bf:15e6 with SMTP id adf61e73a8af0-39bcebd94fbmr14067182637.54.1774354899215;
        Tue, 24 Mar 2026 05:21:39 -0700 (PDT)
Received: from ubuntu.localdomain ([27.217.83.168])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c74443ccbe4sm9904920a12.22.2026.03.24.05.21.36
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Mar 2026 05:21:38 -0700 (PDT)
From: Zaixiang Xu <zaixiang.xu.dev@gmail.com>
To: linux@roeck-us.net
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	zaixiang.xu.dev@gmail.com
Subject: [PATCH v3 2/4] dt-bindings: hwmon: Add Sensirion SHT30 series
Date: Tue, 24 Mar 2026 20:21:07 +0800
Message-Id: <1774354869-119736-3-git-send-email-zaixiang.xu.dev@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1774354869-119736-1-git-send-email-zaixiang.xu.dev@gmail.com>
References: <1774354869-119736-1-git-send-email-zaixiang.xu.dev@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,gmail.com];
	FROM_NEQ_ENVFROM(0.00)[zaixiangxudev@gmail.com,devicetree@vger.kernel.org];
	TO_DN_NONE(0.00)[];
	TAGGED_FROM(0.00)[bounces-279833-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[8];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.0.0.44:email,intel.com:email,devicetree.org:url]
X-Rspamd-Queue-Id: 08B83308324
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add YAML devicetree binding schema for Sensirion SHT30 series and
GXCAS GXHT30 sensors. Wildcards are replaced with specific model
names as per maintainer feedback.

Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/r/202603212044.BRPaiz86-lkp@intel.com/
Signed-off-by: Zaixiang Xu <zaixiang.xu.dev@gmail.com>
---
 .../bindings/hwmon/sensirion,sht30.yaml       | 50 +++++++++++++++++++
 1 file changed, 50 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/hwmon/sensirion,sht30.yaml

diff --git a/Documentation/devicetree/bindings/hwmon/sensirion,sht30.yaml b/Documentation/devicetree/bindings/hwmon/sensirion,sht30.yaml
new file mode 100644
index 000000000000..1b5ce822b37b
--- /dev/null
+++ b/Documentation/devicetree/bindings/hwmon/sensirion,sht30.yaml
@@ -0,0 +1,50 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/hwmon/sensirion,sht30.yaml#
+$schema: http://devicetree.org/meta-schema.yaml#
+
+title: Sensirion SHT30 Humidity and Temperature Sensor
+
+maintainers:
+  - Zaixiang Xu <zaixiang.xu.dev@gmail.com>
+
+description: |
+  The SHT30 series is a family of humidity and temperature sensors by Sensirion.
+  Compatible sensors like the GXCAS GXHT30 are also supported.
+
+properties:
+  compatible:
+    enum:
+      - gxcas,gxht30
+      - sensirion,sht30
+      - sensirion,sht31
+      - sensirion,sht35
+      - sensirion,sht85
+      - sensirion,sts30
+      - sensirion,sts31
+      - sensirion,sts32
+      - sensirion,sts35
+
+  reg:
+    maxItems: 1
+    description: I2C address (usually 0x44 or 0x45)
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        sensor@44 {
+            compatible = "gxcas,gxht30";
+            reg = <0x44>;
+        };
+    };
+
-- 
2.34.1


