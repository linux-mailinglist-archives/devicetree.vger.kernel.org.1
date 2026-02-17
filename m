Return-Path: <devicetree+bounces-265953-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aO+SECe2k2l17wEAu9opvQ
	(envelope-from <devicetree+bounces-265953-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 01:28:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E072E1484A5
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 01:28:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4CBBC302A052
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 00:28:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AE0F2594B9;
	Tue, 17 Feb 2026 00:28:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hSgkgc3h"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C169023BCED
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 00:27:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771288082; cv=none; b=PfD8N+vfvmui00MQk62gz4IL+G4jYJMILivNyJXblTFTq+EpJDlSinyRBlxxxOQgLOlECmaVHM6x6P2cORmg+ViOQprsVoHspkwgo7qLS+sJEPAgkQdW5VbVlfvJUc7Ls4GsALcG84LAqeNn8pYo0sGmXbNf8mqi/Fv4Hy8Kros=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771288082; c=relaxed/simple;
	bh=Yxjldx0Jy64uXswjyLdMRw4GImxB5nb7jAdle3qN1SY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Hqux4ZaCYvbwN2kmsUYC1I6txCiE/XmplatInYyBSlev+Rjot6T4DwPfpiw1PfydtXmtTsu9+WwEEZ0E4k3snR1lEx8Pz77CD9KE0Ij/wt2pqHOp17J6cLloiy5sn2tVltpoMy9jddYZ+wMIu7P+yelDpvgiRgPjS9wIhIbwoWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hSgkgc3h; arc=none smtp.client-ip=209.85.160.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f178.google.com with SMTP id d75a77b69052e-50335b926c2so33511311cf.2
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 16:27:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771288079; x=1771892879; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3ASIhVmOfm72bVzGA477nCjdiqa2Jqep/Bp6HdWkvEc=;
        b=hSgkgc3hlrJl651+9lw5Qfp4j4/xTeSTWHc8vR98BAHPKWuBJ77yTomai37FyZhfGM
         wrB7ZnjgHGopnl7QwzvHaaGUmEc3SKHiXU2zApV5KSt0vdzI31REgmvaSlR6xJwnJy7g
         9D3eb3/pbD47R6CltW727OZ5a3pXEdu2yF/xlb1MlpTz1c8zga0wC9hGJMt9OK7k9150
         REMDJI818y52z8eiFSnXswgwwL7FC8Z9UgIQNtrJI4M9lQBckD6lladQZKbqUUjhGCOz
         VWm3WBPFtjDaoV1/E+ZSxMFJO67A+pXw+hLBOweQOlbtBi/xTZ6t6KvT0NKmXds/SGfb
         HHQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771288079; x=1771892879;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3ASIhVmOfm72bVzGA477nCjdiqa2Jqep/Bp6HdWkvEc=;
        b=pq4nOcGntwBh9NSRtvQ+Ld+IVVqwYo3kZB+pRqL3SakEmTxe2ApTNr1suDym+ILmA7
         WdxSCkDhGJ6r6UQqtPfLsFVUxH0OJrrU4NiF/rUXFK++/yvx7C5sRjofBVLSt2NUrEii
         8dft3KAVXZ7msnzKqOIOysfrr6iEei8Q82glrfiLxVr/snYS+evHfn1UFBD9u/VWQTYU
         OtKQjJusz1TpKAQW70XLXsCQ0mciGadIxwnNp4hmWrNsLcn1yFVkBB8wpkgc1EbQZ7NG
         NV+jdAezs9hhDs2GfTrvGiepsaDfy7QgY6+rKs6ukOzcGuZbFkb62d3O9ODPLX//V6Bs
         gBgw==
X-Forwarded-Encrypted: i=1; AJvYcCWkpLhavgtIy7qqtIaVPIQ2dqcFot1A9i0qYpiptDmv1As17yc2MO7nSI1nekh55guFXzDe1bc948Uv@vger.kernel.org
X-Gm-Message-State: AOJu0YyWNQeUvTZk1A5gPA9EI2DeqzS/uNlwUVJak3Xo8OCS4BIoB9cI
	Y6ypNwu8ZW1WUMSK7qlNstm6+8SCXTcmstkSMgLN1BB44HptxADqG5pN
X-Gm-Gg: AZuq6aKyfoEPr4gyIoEjp0tzOATbeIZHjq8hqgUPXNUzvpXkpcK0cdnHdazJptQyal2
	dDz+DQP+Q3aogwEBvZ3zXv31m9sGrL57jNcG1i0mWQrS9bUrl/oSTnHha2RBaDOsfbkDd9glNq+
	n+hWzMgVEK1D0tKMcPaWHsx6t8da9Z9m7RzoNE5136IfLl56F6E5Y1iaEsjMobOkysH1RGLrZfY
	ddiALz9i60liQZIJ792vf4OtmxaBKnLtCnmUmfaCgD+h99fwCCRAfeR/eB4Vsd45bk0l2lYSkNS
	AzLo3wgAK5H77Lk3WuaUVUSzNO4oQDe/42QazWhgLAnY5nh/12NWBVSq2EQEsRUifums27lgsIl
	Y3afxjjlUbQWwWmkU5dJwpNt4YKK8b0VfNmXmvF2nhKKBV2CQ3NIJcqryugOBwiCaFSU39Ro0A8
	xLPnUpaiUtprg547H352p9Z2TkNDZ0Rw==
X-Received: by 2002:a05:622a:1b92:b0:501:40af:96bf with SMTP id d75a77b69052e-506a837b78amr149961911cf.68.1771288078776;
        Mon, 16 Feb 2026 16:27:58 -0800 (PST)
Received: from localhost ([184.144.58.243])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-506a93ba30fsm92083441cf.26.2026.02.16.16.27.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Feb 2026 16:27:58 -0800 (PST)
From: Richard Acayan <mailingradian@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Robert Foss <rfoss@kernel.org>,
	Todor Tomov <todor.too@gmail.com>,
	"Bryan O'Donoghue" <bryan.odonoghue@linaro.org>,
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Tianshu Qiu <tian.shu.qiu@intel.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org
Cc: Robert Mader <robert.mader@collabora.com>,
	David Heidelberg <david@ixit.cz>,
	phone-devel@vger.kernel.org,
	Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH v9 4/7] media: i2c: imx355: Restrict data lanes to 4
Date: Mon, 16 Feb 2026 19:27:35 -0500
Message-ID: <20260217002738.133534-5-mailingradian@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260217002738.133534-1-mailingradian@gmail.com>
References: <20260217002738.133534-1-mailingradian@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265953-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,linaro.org,intel.com,linux.intel.com,vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mailingradian@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[collabora.com,ixit.cz,vger.kernel.org,gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,intel.com:email]
X-Rspamd-Queue-Id: E072E1484A5
X-Rspamd-Action: no action

The IMX355 sensor driver currently supports having 4 data lanes. There
can't be more or less, so check if the firmware specifies 4 lanes.

Existing ACPI hardware descriptions may not have the data lanes defined
so this check also accepts a placeholder of 0 lanes.

Suggested-by: Sakari Ailus <sakari.ailus@linux.intel.com>
Link: https://lore.kernel.org/r/aW3uFcT1zmiF4GUP@kekkonen.localdomain
Signed-off-by: Richard Acayan <mailingradian@gmail.com>
---
 drivers/media/i2c/imx355.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/media/i2c/imx355.c b/drivers/media/i2c/imx355.c
index 9ca87488c933..0d6aabea7d59 100644
--- a/drivers/media/i2c/imx355.c
+++ b/drivers/media/i2c/imx355.c
@@ -66,6 +66,9 @@
 #define IMX355_EXT_CLK			19200000
 #define IMX355_LINK_FREQ_INDEX		0
 
+/* number of data lanes */
+#define IMX355_DATA_LANES		4
+
 struct imx355_reg {
 	u16 address;
 	u8 val;
@@ -1705,6 +1708,10 @@ static struct imx355_hwcfg *imx355_get_hwcfg(struct device *dev)
 	if (!cfg)
 		goto out_err;
 
+	if (bus_cfg.bus.mipi_csi2.num_data_lanes != 0
+	 && bus_cfg.bus.mipi_csi2.num_data_lanes != IMX355_DATA_LANES)
+		goto out_err;
+
 	ret = v4l2_link_freq_to_bitmap(dev, bus_cfg.link_frequencies,
 				       bus_cfg.nr_of_link_frequencies,
 				       link_freq_menu_items,
-- 
2.53.0


