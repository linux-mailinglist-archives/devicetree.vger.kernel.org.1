Return-Path: <devicetree+bounces-267385-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8JCCAYxAnGmxCQQAu9opvQ
	(envelope-from <devicetree+bounces-267385-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 12:57:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C7D4175C5F
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 12:56:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 44441303CE18
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 11:54:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31BC43659EE;
	Mon, 23 Feb 2026 11:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JQS+3k8X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABF4D364E9E
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 11:54:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771847674; cv=none; b=R4S/Y/kI+wPNzuUQJH3nwfXXlM22RBjcbjbCF+Ez5zpPzDFEUr+DCtAlsEQF/vrnu+hShPk7d5E9J/jBnTIHVyTeesVPuBWyxBCPCX8ulrTWs4TKIQRlFxu3lsJ4nFjuxc2KGId6tHqQpmGuqk7Ebebr/cadHOmBGmuJeSwoZj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771847674; c=relaxed/simple;
	bh=3ADRWXv/1WnNGruw8DIjoU0m1gFOqtMRdvhW58J0+fU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=OTHHL6euwaY3ZNker+86611K72FsTQEMW3y6xS1gJyM4tfBs5HghXalQsCiID1kOgjS1MHDm9QaaMtII2NjSLj12Kmq6o/AN9jgyy6eAQIven+xW/ArGrr1fuRpsubq51mPpH7whn9TthjrMPKerucOexLPO34DBvf/5o/E/De4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JQS+3k8X; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-437711e9195so2730055f8f.1
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 03:54:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771847671; x=1772452471; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2y4/fXSvTacfxYjUuGuM/I9b80VjM1rPJJklCOVNYSg=;
        b=JQS+3k8XBhw541HzFta7b/XMeWbqa53Dj/VykX0uIRO/hQObILETDqUz1DmsbpYB8D
         RqLqY5sGRnotCBKoGn8va5YBGUDREkPRVLKXzPhiSMaBo7Ji/dx7Lkz5WSGJAhfB2JSV
         F4FRAYKj1soclPLbsTEauLda62dKuVcOtaSAiPswnYUmAuYcbdPKkTxl//VTBogZLmJd
         wlrIsz/rx9yGc+yuSIVs2hUOvXdfy6xM+eHMGJd1HcYVZMjmFO/AHiK9bh1spunC1eCu
         Hpl+tVJManDkhbgIQ8AsstBIh8RAek/K4WtKtoCbps2IgizGxIID3V1g1+2zi7+8cw9p
         pvTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771847671; x=1772452471;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=2y4/fXSvTacfxYjUuGuM/I9b80VjM1rPJJklCOVNYSg=;
        b=sOo/8oPFSX86rRlxKj5WihB4KzkrlmFlWsUkF9sz4tSSRBLw/+snAdGITUiqqskJe7
         dv73Rnrz/5/TGpQAhAuW7KfjYG8xOclqo73qne3Q7gVkYppsv9rCrjxIc7R8kmyrBQIb
         Kl84qu9xnpMqP3hPU4T+ZIpKg0/IvlXFUWHMbrpSgzkM2Cc+UC21SKXEuj9zRQfzznts
         BrYJz846jp8KZyLfHsaNZiO3C2gPQFp0PxDHqHoew8d13SbgLXskIkpwMqDlH85wSrdi
         8X4NzcNs4JeB42pDhVDkFVl9SoKPFSArbSL11fdlnP2KSd1L6Kdpva39HdAxSKo7h4Ya
         kxOg==
X-Forwarded-Encrypted: i=1; AJvYcCXv/feY6dUONVUNN7YmdPtJrWGiKGtZ2jSdCJxdviA4zKqafIVZ2L8e/AY96ruRUsBYXMplaV1dVSE1@vger.kernel.org
X-Gm-Message-State: AOJu0YykEqHookFX60ILpcDmnsqTKXWC1688u12OpgtLF70A+IN6zSPz
	/M+hvLJWIDEcVlc07+QaimgVJ74czH1ywQQNHlhDKF7di99NurS/8YLc
X-Gm-Gg: ATEYQzzvPJ0sCNb/yQxYUnAKhT145iKRHGcZwMeeU7raHmdZcj9+jaNWlidIJ6dXdAU
	ngEj2WMkEZvMCWMBWlvnAeIPDLemOz+HgvkM+TBNM+SmI2LLF3Xv/cSjiOAeb57leoMnvuKB0nc
	xgx958lJ5LxbbCl8gVSZWV4w8ymoVrB9KR2eFr+hDzgnqiUkTgt6xHC4WEOa1im2cJUZdcJyuoH
	bZamp04xEnjQJ65X8xSjs47MCIjHZc5diSulbkeE/QEvn/rbxCdoDJg4GeurrjwiF4MKHwffiaT
	9WegN6n61oJC6qAgAZGIJcuESOCtB8pJHaDcHUV3R9P1U8ivuognAb0lBeZnCygq51PX3MKa6Iq
	CQW2Rs5PxU4peyjWgNB5SLWxQ6hm9rji+Zq2DiGuyufRus1y54JM6eADuopkKriCtz7e2jgnHkq
	ODe56sPeqKJSEYvWCNtiGGBIScAoI3kpqEVM7OHcEU+UERWQ0Yzi7zNgDbeHzaOy7g9pVTabD6C
	hVuvHODtkvoDjethWGGNU65ADaagWl9QYkwt9fL
X-Received: by 2002:a05:6000:420c:b0:435:9d70:f299 with SMTP id ffacd0b85a97d-4396f174178mr13783963f8f.22.1771847671002;
        Mon, 23 Feb 2026 03:54:31 -0800 (PST)
Received: from Lord-Beerus.station (net-188-152-100-94.cust.vodafonedsl.it. [188.152.100.94])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970c00e8bsm15675668f8f.15.2026.02.23.03.54.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 03:54:30 -0800 (PST)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
X-Google-Original-From: Stefano Radaelli <stefano.r@variscite.com>
To: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-bluetooth@vger.kernel.org
Cc: pierluigi.p@variscite.com,
	Stefano Radaelli <stefano.r@variscite.com>,
	Marcel Holtmann <marcel@holtmann.org>,
	Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	David Lechner <david@lechnology.com>
Subject: [PATCH v1 2/2] Bluetooth: hci_ll: Add DT property to disable enhanced SCO setup
Date: Mon, 23 Feb 2026 12:52:56 +0100
Message-ID: <998db3667bb97a6908be01912e165d79ba849925.1771847350.git.stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1771847350.git.stefano.r@variscite.com>
References: <cover.1771847350.git.stefano.r@variscite.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-267385-lists,devicetree=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[variscite.com,holtmann.org,gmail.com,kernel.org,lechnology.com];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[variscite.com:mid,variscite.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 5C7D4175C5F
X-Rspamd-Action: no action

The HCI_QUIRK_BROKEN_ENHANCED_SETUP_SYNC_CONN quirk was introduced by
commit 05abad857277 ("Bluetooth: HCI: Add
HCI_QUIRK_BROKEN_ENHANCED_SETUP_SYNC_CONN quirk") to handle controllers
that advertise support for the HCI Enhanced Setup Synchronous Connection
command but fail to use it properly with some SCO configurations (e.g.
BT_VOICE_TRANSPARENT/mSBC).

This behavior has been observed on TI controllers used with the
hci_ll driver, where SCO setup can fail unless the enhanced setup path
is avoided.

Add support for the optional DT property "ti,no-enhanced-setup-sync-conn"
and, when present, set HCI_QUIRK_BROKEN_ENHANCED_SETUP_SYNC_CONN during
controller setup, as intended by the quirk documentation.

Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
---
 drivers/bluetooth/hci_ll.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/bluetooth/hci_ll.c b/drivers/bluetooth/hci_ll.c
index 91acf24f1ef5..5f69f0654c19 100644
--- a/drivers/bluetooth/hci_ll.c
+++ b/drivers/bluetooth/hci_ll.c
@@ -68,6 +68,7 @@ struct ll_device {
 	struct gpio_desc *enable_gpio;
 	struct clk *ext_clk;
 	bdaddr_t bdaddr;
+	bool broken_enhanced_setup;
 };
 
 struct ll_struct {
@@ -656,6 +657,10 @@ static int ll_setup(struct hci_uart *hu)
 			hci_set_quirk(hu->hdev, HCI_QUIRK_INVALID_BDADDR);
 	}
 
+	if (lldev->broken_enhanced_setup)
+		hci_set_quirk(hu->hdev,
+			      HCI_QUIRK_BROKEN_ENHANCED_SETUP_SYNC_CONN);
+
 	/* Operational speed if any */
 	if (hu->oper_speed)
 		speed = hu->oper_speed;
@@ -710,6 +715,10 @@ static int hci_ti_probe(struct serdev_device *serdev)
 	of_property_read_u32(serdev->dev.of_node, "max-speed", &max_speed);
 	hci_uart_set_speeds(hu, 115200, max_speed);
 
+	lldev->broken_enhanced_setup =
+	       of_property_read_bool(serdev->dev.of_node,
+				     "ti,no-enhanced-setup-sync-conn");
+
 	/* optional BD address from nvram */
 	bdaddr_cell = nvmem_cell_get(&serdev->dev, "bd-address");
 	if (IS_ERR(bdaddr_cell)) {
-- 
2.47.3


