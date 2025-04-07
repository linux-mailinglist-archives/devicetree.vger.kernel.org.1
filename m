Return-Path: <devicetree+bounces-163931-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E6AA7A7E847
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 19:30:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DE6F27A4342
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 17:29:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B6C321B19E;
	Mon,  7 Apr 2025 17:29:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="bPZm1eTc"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1166217722
	for <devicetree@vger.kernel.org>; Mon,  7 Apr 2025 17:29:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744046979; cv=none; b=sn2bkP20QCCQ3sS3k5f/cCVCop4ze7WD9z/Ydd25lqukHwim4e1nauSi/luuYXHqMED2/+YoSZdiZtFlDeav3GUPDVelQzkMOB1WbAEbUdIItaTmcJR9it++zzq+KGWPt+mBInQjMb/WYNNmK1aw3wW4CXGNq+wo+/Y96gLxIOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744046979; c=relaxed/simple;
	bh=YwQffT1aEOqjVu4z07Zs99qG9yuGlwLKY9+dxNhxdYE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=J11vcC2c1NTMfrahj8DL1yZCuQARhOXVHc2CiA1ruXJvmr/4bpmLrg+tb4s4rCT6C7H4mb+G1oDIgOsnHAhKRA2JlpokJtZ1hypkuogml7eP2O/XmzSF6yAOGRJpl8Wxn/c81wU4jG2n+XfelXS0R4pwaeZY6VDlCWsf6naCdAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=bPZm1eTc; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1744046976;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Tuo2BZQlvc9qC7nHzNWOv25fLG9mfraZRBCulBhhTKU=;
	b=bPZm1eTcpGAE8vGc89fwesWgxuQ9WcQJDZfLjHIgawYft+Vk8BDkRCqFbS+hFD+HutE+Ar
	XtRrKtoct70/nH9OwJynVRFp13Tejlseq9JknNQCnsQpUg4JkqLpxi2egtzfzDfWFFuMby
	GMYdZKhlZ/8aOodZr5OdwxOJN4s79L4=
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-611-TTjZY9N5OYaat_BzfeyQrQ-1; Mon,
 07 Apr 2025 13:29:30 -0400
X-MC-Unique: TTjZY9N5OYaat_BzfeyQrQ-1
X-Mimecast-MFC-AGG-ID: TTjZY9N5OYaat_BzfeyQrQ_1744046968
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 780A91801A1A;
	Mon,  7 Apr 2025 17:29:28 +0000 (UTC)
Received: from p16v.luc.cera.cz (unknown [10.44.32.4])
	by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP id C6684180A803;
	Mon,  7 Apr 2025 17:29:22 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Cc: Michal Schmidt <mschmidt@redhat.com>,
	Vadim Fedorenko <vadim.fedorenko@linux.dev>,
	Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
	Jiri Pirko <jiri@resnulli.us>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Prathosh Satish <Prathosh.Satish@microchip.com>,
	Lee Jones <lee@kernel.org>,
	Kees Cook <kees@kernel.org>,
	Andy Shevchenko <andy@kernel.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-hardening@vger.kernel.org
Subject: [PATCH 07/28] mfd: zl3073x: Add macro to wait for register value bits to be cleared
Date: Mon,  7 Apr 2025 19:28:34 +0200
Message-ID: <20250407172836.1009461-8-ivecera@redhat.com>
In-Reply-To: <20250407172836.1009461-1-ivecera@redhat.com>
References: <20250407172836.1009461-1-ivecera@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93

Sometimes in communication with the device is necessary to set
certain bit(s) in certain register and then the driver has to
wait until these bits are cleared by the device.

Add the macro for this functionality, it will be used by later
commits.

Reviewed-by: Michal Schmidt <mschmidt@redhat.com>
Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 include/linux/mfd/zl3073x.h | 29 +++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/include/linux/mfd/zl3073x.h b/include/linux/mfd/zl3073x.h
index 3524426f0e3ba..15dfb0d8bf3cb 100644
--- a/include/linux/mfd/zl3073x.h
+++ b/include/linux/mfd/zl3073x.h
@@ -143,4 +143,33 @@ int zl3073x_write_##_name(struct zl3073x_dev *zldev, unsigned int idx,	\
 #define ZL3073X_REG48_IDX_DEF(_name, _addr, _num, _stride)		\
 	__ZL3073X_REG_IDX_DEF(_name, _addr, 6, u64, _num, _stride)
 
+/**
+ * zl3073x_wait_clear_bits - wait for specific bits to be cleared
+ * _zldev: pointer to device structure
+ * _reg: register name
+ * _bits: bits that should be cleared
+ * _index: optional index for indexed register
+ *
+ * The macro waits up to @READ_TIMEOUT_US microseconds for @_bits in @_reg
+ * to be cleared.
+ *
+ * Returns:
+ * -ETIMEDOUT: if timeout occurred
+ *         <0: for other errors occurred during communication
+ *          0: success
+ */
+#define READ_SLEEP_US	10
+#define READ_TIMEOUT_US	2000000
+#define zl3073x_wait_clear_bits(_zldev, _reg, _bits, _index...)		\
+({									\
+	zl3073x_##_reg##_t __val;					\
+	int __rc;							\
+	if (read_poll_timeout(zl3073x_read_##_reg, __rc,		\
+			      __rc || !((_bits) & __val),		\
+			      READ_SLEEP_US, READ_TIMEOUT_US, false,	\
+			      _zldev, ##_index, &__val))		\
+		__rc = -ETIMEDOUT;					\
+	__rc;								\
+})
+
 #endif /* __LINUX_MFD_ZL3073X_H */
-- 
2.48.1


