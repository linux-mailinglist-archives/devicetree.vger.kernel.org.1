Return-Path: <devicetree+bounces-266558-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CEPyIYF9lmkggQIAu9opvQ
	(envelope-from <devicetree+bounces-266558-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 04:03:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id DAFAB15BCEF
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 04:03:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E62AB300441A
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 03:03:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A2A4283C89;
	Thu, 19 Feb 2026 03:03:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Qi+sveep"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED17F27510E
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 03:03:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771470199; cv=none; b=YOkc95WMHZLn8M1zLDRSP2Y2YkvlBH01PVhD8460f/6C/6FgRGhpRjtNBcwmgi+3y1NLiba+2G5xN/bnWgmBB2BvLb/2jZrcQpij3rIH0PwKb8e8RA2nzTPiaKqp4iIYbSAZfS9qFGROh/ryEuvQh6pwUPV/v/7yZffDGzLoLE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771470199; c=relaxed/simple;
	bh=OWJ5x14wajrz8wzvjKNrubyOIzm5J7IxGIyncWhDv2c=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CY3cV0MrGPyCmV5rTciVTcmgVe45QnqfmzvtUNdpqZpplpEZkwFcgnVsFuG9d4bo3cC+zL9qlktNT8JkhdbDLKfOz5+kOwpezfsjBx9dTcrcWkCIZ/SzfzoQaxCsh1kB8r0nfzm0l2zF4YCrKa/q1FymxHKQUGWC88hI125IpDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Qi+sveep; arc=none smtp.client-ip=209.85.219.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f50.google.com with SMTP id 6a1803df08f44-897002b7576so5813926d6.3
        for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 19:03:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771470197; x=1772074997; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=T8GnrEGX/i/JHBNftmmrvaGUEdnFlOXVQpYFwKQKQzw=;
        b=Qi+sveep95ePjUG8+zh2HBn8IXV/4PoLDdTmu+dwdhDGa3IXBdCEjPpC7nLoWnEv3e
         TmVlxhDAa3CC4yQV/dmwx7zrTAzoPx+4sBMB79eMoaLV/GIdp4LAyf4Ay6Ox30iQ9gjQ
         mZUXk943wbhfZL9x3Rqc8ymAXChJtDXGfD0ZGOCV92OKBIRlqnGUCGSaaFQp1vDFztPe
         YjgB0QWV32FvpzzGzD4fLozUz0075/JLm1F3rsLVNtdiqNLwcHTgyO1bCKstxE8dPPSn
         qir8FffQunX1p1NPgMSn1RmZ9lMRJaVC+YJSg0bvwdGzI5GK96cwlyicrpdD2R4gRHb9
         j3Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771470197; x=1772074997;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=T8GnrEGX/i/JHBNftmmrvaGUEdnFlOXVQpYFwKQKQzw=;
        b=u7pDvhYtR+/ZYuRveBTnDHANwlqWMStXjk+3tutkuv0moO8bGzCwz7zzHUl65DpLLj
         uhjs50wks7WTaPWaSbYnwi3PlK1mI3A5IMRJbwzbt7KbT4Mll+68oH/HLm27lmwb71AA
         pOPWLU1Dewv3cYC2hHzZNedYHqfS3QYobOcgVgiKnImEwCA4kANrr1FUHJ+lZ0C+A3mB
         M9sZKW64Tc0F4d+eOnIWUx3Gt9G2cb6tM+cBIL2QAdrF+kgZnRv1tDE/ce+xsJu0UjWs
         BiUzUU2ufu7cin78ZuIMobykk8VD9CQkzuZHjV3whQbV3qSWSgkO6dJbHcx7h1gGHFQc
         oY+g==
X-Forwarded-Encrypted: i=1; AJvYcCVCEX+QLOgDNAmj8ekG1MF5srLFcB37WfpgEU6u0IRV5AHAW4fjyHR8bQcQbFFZitcinsnw6cUpf3k5@vger.kernel.org
X-Gm-Message-State: AOJu0YxfX/in0LvoVtJl3T1Ir5d+nx6+ZoyiET0n6GuwPHxH0/KZM/DD
	bOp+clyxQd70sAX02/wUehLjX/EkXeK4pQclhu3LaKWwxtTqY7GmBa3b
X-Gm-Gg: AZuq6aLxjDCQ0vVduf3y+1dJBKD2Xv+p3eOUSXtH/cb6vqDxKqoZCGj//WVyVWOlFc8
	2OGpYShw7wp2PVUzhI+21DVkfLYzb83uKRIES+LP/0h1W/W2aOp82Z5u8PJwG03e0uJWewKqKRs
	1mCR5698RCRoeN42XPrcpoVBKxQ+2L6D/Z48sL5fRvKqN15d0WIWR0rXXkBtnIVBOJbl9WwHoT9
	YhkaxL0QDXdaXfsuDZ+QMXCySjbQes4RzvMkBLmANZzKpAhKMWcJIy6m2oP9AcZpJNBpkQrnqU7
	H5V9ua1lzrzVTrH4DrgDSkxqJn7MghBsoQIvBT/tfB0FaJGdvNxOaG00nfSYh9v2EBrAFpQuE7I
	Osl+iN/Zkn2uqFi4RMgS4On9y526D6o+ELsWnDvB+xGMRZOze9+NnOsWPIRUAVLbVlJxuAMs2ib
	+P0gON3J10wlhQFNXBlA9SvEd/nP4=
X-Received: by 2002:a05:6214:212e:b0:895:4d85:5edc with SMTP id 6a1803df08f44-8995812859cmr56144026d6.70.1771470196866;
        Wed, 18 Feb 2026 19:03:16 -0800 (PST)
Received: from [172.17.0.2] ([134.128.219.200])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8971cddc526sm205359896d6.53.2026.02.18.19.03.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Feb 2026 19:03:16 -0800 (PST)
From: Yuanshen Cao <alex.caoys@gmail.com>
Date: Thu, 19 Feb 2026 03:02:52 +0000
Subject: [PATCH v2 2/2] usb: typec: tcpm: Add vid and chip info for Etek
 ET7304
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260219-et7304-v2-2-b2e268494ae8@gmail.com>
References: <20260219-et7304-v2-0-b2e268494ae8@gmail.com>
In-Reply-To: <20260219-et7304-v2-0-b2e268494ae8@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Heikki Krogerus <heikki.krogerus@linux.intel.com>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Yuanshen Cao <alex.caoys@gmail.com>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_FROM(0.00)[bounces-266558-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexcaoys@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com]
X-Rspamd-Queue-Id: DAFAB15BCEF
X-Rspamd-Action: no action

Move the VID to chip info to accommodate different VIDs
Add chip info for Etek ET7304. ET7304 is functionally identical to
the Richtek RT1715, with the only difference being the VID.

Signed-off-by: Yuanshen Cao <alex.caoys@gmail.com>
---
 drivers/usb/typec/tcpm/tcpci_rt1711h.c | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/typec/tcpm/tcpci_rt1711h.c b/drivers/usb/typec/tcpm/tcpci_rt1711h.c
index 88c50b984e8a..4848748a10dd 100644
--- a/drivers/usb/typec/tcpm/tcpci_rt1711h.c
+++ b/drivers/usb/typec/tcpm/tcpci_rt1711h.c
@@ -19,9 +19,11 @@
 #include <linux/regulator/consumer.h>
 
 #define RT1711H_VID		0x29CF
+#define ET7304_VID		0x6DCF
 #define RT1711H_PID		0x1711
 #define RT1711H_DID		0x2171
 #define RT1715_DID		0x2173
+#define ET7304_DID		0x2173
 
 #define RT1711H_PHYCTRL1	0x80
 #define RT1711H_PHYCTRL2	0x81
@@ -55,6 +57,7 @@
 
 struct rt1711h_chip_info {
 	u32 rxdz_sel;
+	u16 vid;
 	u16 did;
 	bool enable_pd30_extended_message;
 };
@@ -308,7 +311,7 @@ static int rt1711h_check_revision(struct i2c_client *i2c, struct rt1711h_chip *c
 	ret = i2c_smbus_read_word_data(i2c, TCPC_VENDOR_ID);
 	if (ret < 0)
 		return ret;
-	if (ret != RT1711H_VID) {
+	if (ret != chip->info->vid) {
 		dev_err(&i2c->dev, "vid is not correct, 0x%04x\n", ret);
 		return -ENODEV;
 	}
@@ -406,18 +409,28 @@ static void rt1711h_remove(struct i2c_client *client)
 }
 
 static const struct rt1711h_chip_info rt1711h = {
+	.vid = RT1711H_VID,
 	.did = RT1711H_DID,
 };
 
 static const struct rt1711h_chip_info rt1715 = {
 	.rxdz_sel = RT1711H_BMCIO_RXDZSEL,
+	.vid = RT1711H_VID,
 	.did = RT1715_DID,
 	.enable_pd30_extended_message = true,
 };
 
+static const struct rt1711h_chip_info et7304 = {
+	.rxdz_sel = RT1711H_BMCIO_RXDZSEL,
+	.vid = ET7304_VID,
+	.did = ET7304_DID,
+	.enable_pd30_extended_message = true,
+};
+
 static const struct i2c_device_id rt1711h_id[] = {
 	{ "rt1711h", (kernel_ulong_t)&rt1711h },
 	{ "rt1715", (kernel_ulong_t)&rt1715 },
+	{ "et7304", (kernel_ulong_t)&et7304 },
 	{}
 };
 MODULE_DEVICE_TABLE(i2c, rt1711h_id);
@@ -425,6 +438,7 @@ MODULE_DEVICE_TABLE(i2c, rt1711h_id);
 static const struct of_device_id rt1711h_of_match[] = {
 	{ .compatible = "richtek,rt1711h", .data = &rt1711h },
 	{ .compatible = "richtek,rt1715", .data = &rt1715 },
+	{ .compatible = "etek,et7304", .data = &et7304 },
 	{}
 };
 MODULE_DEVICE_TABLE(of, rt1711h_of_match);

-- 
2.53.0


