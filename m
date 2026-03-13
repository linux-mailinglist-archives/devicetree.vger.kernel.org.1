Return-Path: <devicetree+bounces-275099-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wJNaLlvis2mxcgAAu9opvQ
	(envelope-from <devicetree+bounces-275099-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 11:09:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C0ED7281266
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 11:09:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id CB37C3035144
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 10:08:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66A7138BF6E;
	Fri, 13 Mar 2026 10:08:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from TWMBX01.aspeed.com (mail.aspeedtech.com [211.20.114.72])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C92838C430;
	Fri, 13 Mar 2026 10:08:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=211.20.114.72
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773396506; cv=none; b=b119MIphd6Li8tls97ptRtK2rrHyOnaMqbXtgAf6nNIs+rW8HX7+3JSC63yGjQgYWZWv4VXzAr1a5W4mkZIcJvoX61vccbEiRc9O/E28fJbTANoaBQfTzTet0pUER3wYhVbjAqur8G+mrQnZybM7at5tzd++/DUWCvwDT6mZ2Ss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773396506; c=relaxed/simple;
	bh=/gT8PPPSgtivGqhJGfnX1C479G896inIVlPTIjaL2gM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=XjNZw3ZayXR5sXFH8vXigV3fgul9EN45eeizZUIBBWjr+mxVNUcsC5HijNw6B2caV3+amBIAtqCeLBFXl/QTgZ/1GebPqW34KBS713/GLgGnYLbXP4BxEF5hi5EGVE2r1Sa0QwJPzRNWmuT4IRqc96Rv4F7SY/TugiMU16qVwGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=aspeedtech.com; spf=pass smtp.mailfrom=aspeedtech.com; arc=none smtp.client-ip=211.20.114.72
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=aspeedtech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aspeedtech.com
Received: from TWMBX01.aspeed.com (192.168.0.62) by TWMBX01.aspeed.com
 (192.168.0.62) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.10; Fri, 13 Mar
 2026 18:08:12 +0800
Received: from [127.0.1.1] (192.168.10.13) by TWMBX01.aspeed.com
 (192.168.0.62) with Microsoft SMTP Server id 15.2.1748.10 via Frontend
 Transport; Fri, 13 Mar 2026 18:08:12 +0800
From: aspeedyh <yh_chung@aspeedtech.com>
Date: Fri, 13 Mar 2026 18:07:39 +0800
Subject: [PATCH 4/7] soc: aspeed: Add eSPI TAFS backend support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20260313-upstream_espi-v1-4-9504428e1f43@aspeedtech.com>
References: <20260313-upstream_espi-v1-0-9504428e1f43@aspeedtech.com>
In-Reply-To: <20260313-upstream_espi-v1-0-9504428e1f43@aspeedtech.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, "Andrew
 Jeffery" <andrew@codeconstruct.com.au>, Ryan Chen <ryan_chen@aspeedtech.com>,
	Philipp Zabel <p.zabel@pengutronix.de>
CC: <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-aspeed@lists.ozlabs.org>, <linux-kernel@vger.kernel.org>,
	<openbmc@lists.ozlabs.org>, <maciej.lawniczak@intel.com>, aspeedyh
	<yh_chung@aspeedtech.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773396491; l=9656;
 i=yh_chung@aspeedtech.com; s=20260313; h=from:subject:message-id;
 bh=/gT8PPPSgtivGqhJGfnX1C479G896inIVlPTIjaL2gM=;
 b=pxfbLJ5IQCgYFbhg75xnoNK6S8Q8zbJPNxdm67mqkgFlS/68AfZMbE0wPvAWUgbB5c4zuFNam
 et7tGN1vxpDA2PCTQqswpq2p1woMCldapD6gBYeT15WXSuBwMFvXtvY
X-Developer-Key: i=yh_chung@aspeedtech.com; a=ed25519;
 pk=o71dz0J8lpN+v0f3Mk4gT9PfVngADPC1Pex4aK6VigM=
X-Spamd-Result: default: False [1.54 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[aspeedtech.com : SPF not aligned (relaxed), No valid DKIM,quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275099-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yh_chung@aspeedtech.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.964];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[aspeedtech.com:email,aspeedtech.com:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C0ED7281266
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

eSPI Target Attached Flash Sharing (TAFS) refers to sharing the storage
mounted on eSPI devices to host via eSPI Flash Channel.

Add support for TAFS storage handling by creating a storage read/write
interface conceptually like Logical Unit Number (LUN) for driver to
route storage requests to the specified TAFS backend.

Signed-off-by: aspeedyh <yh_chung@aspeedtech.com>
---
 drivers/soc/aspeed/espi/espi_storage.c | 322 +++++++++++++++++++++++++++++++++
 drivers/soc/aspeed/espi/espi_storage.h |  32 ++++
 2 files changed, 354 insertions(+)

diff --git a/drivers/soc/aspeed/espi/espi_storage.c b/drivers/soc/aspeed/espi/espi_storage.c
new file mode 100644
index 000000000000..71038e9bdd52
--- /dev/null
+++ b/drivers/soc/aspeed/espi/espi_storage.c
@@ -0,0 +1,322 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * eSPI TAFS back storage interface
+ */
+
+#include <linux/blkdev.h>
+#include <linux/errno.h>
+#include <linux/file.h>
+#include <linux/fs.h>
+#include <linux/module.h>
+#include <linux/slab.h>
+
+#include "espi_storage.h"
+
+/*
+ * aspeed_espi_lun: use an existing block device or file as backend storage for eSPI flash channel.
+ *
+ * Typical path:
+ *   host <-> eSPI bus <-> eSPI slave protocol
+ *        <-> aspeed_espi_lun_*() helpers
+ *        <-> backend block device (e.g., /dev/mmcblk0p3)
+ */
+
+int aspeed_espi_lun_open(struct aspeed_espi_lun *lun, const char *path,
+			 bool initially_ro, bool cdrom)
+{
+	unsigned int blksize, blkbits;
+	loff_t size, num_sectors;
+	struct inode *inode;
+	struct file *filp;
+	int ro;
+	int rc;
+
+	filp = NULL;
+	ro = initially_ro;
+
+	if (!lun || !path) {
+		pr_err("espi_lun_open: invalid args lun=%p path=%p\n", lun,
+		       path);
+		return -EINVAL;
+	}
+
+	pr_info("espi_lun_open: path=%s ro=%d cdrom=%d\n", path, ro, cdrom);
+
+	/* Try R/W first, fallback to R/O if failed */
+	if (!ro) {
+		filp = filp_open(path, O_RDWR | O_LARGEFILE, 0);
+		if (PTR_ERR(filp) == -EROFS || PTR_ERR(filp) == -EACCES) {
+			pr_err("espi_lun_open: open rw failed rc=%ld, back to ro\n",
+			       PTR_ERR(filp));
+			ro = 1;
+		}
+	}
+
+	if (ro) {
+		filp = filp_open(path, O_RDONLY | O_LARGEFILE, 0);
+		if (IS_ERR_OR_NULL(filp)) {
+			rc = filp ? PTR_ERR(filp) : -ENODEV;
+			pr_err("espi_lun_open: open ro failed rc=%d\n", rc);
+			return rc;
+		}
+		pr_info("espi_lun_open: open ro ok filp=%p\n", filp);
+	}
+
+	if (!(filp->f_mode & FMODE_WRITE))
+		ro = 1;
+
+	pr_info("espi_lun_open: filp=%p f_inode=%p f_mode=0x%x\n", filp,
+		filp ? filp->f_inode : NULL, filp ? filp->f_mode : 0);
+
+	inode = filp->f_mapping->host;
+
+	pr_info("espi_lun_open: inode=%p mode=0%o\n", inode,
+		inode ? inode->i_mode : 0);
+	if (!S_ISREG(inode->i_mode) && !S_ISBLK(inode->i_mode)) {
+		rc = -EINVAL;
+		goto out_put;
+	}
+
+	if (!(filp->f_mode & FMODE_CAN_READ)) {
+		rc = -EACCES;
+		goto out_put;
+	}
+	if (!(filp->f_mode & FMODE_CAN_WRITE))
+		ro = true;
+
+	size = i_size_read(inode);
+	if (size < 0) {
+		pr_info("unable to find file size: %s\n", path);
+		rc = (int)size;
+		goto out_put;
+	}
+
+	pr_info("espi_lun_open: size=%lld\n", size);
+
+	if (cdrom) {
+		blksize = 2048;
+		blkbits = 11;
+	} else if (S_ISBLK(inode->i_mode)) {
+		blksize = bdev_logical_block_size(I_BDEV(inode));
+		pr_info("espi_lun_open: blksize=%d\n", blksize);
+		blkbits = blksize_bits(blksize);
+		pr_info("espi_lun_open: bdev=%d\n", blkbits);
+	} else {
+		blksize = 512;
+		blkbits = 9;
+	}
+
+	pr_info("espi_lun_open: blksize=%u blkbits=%u\n", blksize, blkbits);
+	num_sectors = size >> blkbits;
+	if (num_sectors < 1) {
+		pr_info("file too small: %s\n", path);
+		rc = -ETOOSMALL;
+		goto out_put;
+	}
+
+	lun->blksize = blksize;
+	lun->blkbits = blkbits;
+	lun->ro = ro;
+	lun->filp = filp;
+	lun->file_length = size;
+	lun->num_sectors = num_sectors;
+
+	lun->cdrom = cdrom;
+
+	return 0;
+
+out_put:
+	fput(filp);
+	return rc;
+}
+EXPORT_SYMBOL_GPL(aspeed_espi_lun_open);
+
+void aspeed_espi_lun_close(struct aspeed_espi_lun *lun)
+{
+	if (!lun)
+		return;
+
+	if (lun->filp) {
+		fput(lun->filp);
+		lun->filp = NULL;
+	}
+}
+EXPORT_SYMBOL_GPL(aspeed_espi_lun_close);
+
+int aspeed_espi_lun_rw(struct aspeed_espi_lun *lun, bool write, sector_t sector,
+		       unsigned int nsect, void *buf)
+{
+	ssize_t done;
+	loff_t pos;
+	size_t len;
+
+	if (!lun || !lun->filp || !buf)
+		return -EINVAL;
+
+	if (write && lun->ro)
+		return -EROFS;
+
+	if (sector >= lun->num_sectors || nsect > lun->num_sectors - sector)
+		return -EINVAL;
+
+	pos = (loff_t)sector << lun->blkbits;
+	len = (size_t)nsect << lun->blkbits;
+
+	if (write)
+		done = kernel_write(lun->filp, buf, len, &pos);
+	else
+		done = kernel_read(lun->filp, buf, len, &pos);
+
+	if (done != len)
+		return done < 0 ? (int)done : -EIO;
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(aspeed_espi_lun_rw);
+
+int aspeed_espi_lun_read(struct aspeed_espi_lun *lun, sector_t sector,
+			 unsigned int nsect, void *buf)
+{
+	return aspeed_espi_lun_rw(lun, false, sector, nsect, buf);
+}
+EXPORT_SYMBOL_GPL(aspeed_espi_lun_read);
+
+int aspeed_espi_lun_write(struct aspeed_espi_lun *lun, sector_t sector,
+			  unsigned int nsect, void *buf)
+{
+	return aspeed_espi_lun_rw(lun, true, sector, nsect, buf);
+}
+EXPORT_SYMBOL_GPL(aspeed_espi_lun_write);
+
+/*
+ * Byte-granular R/W, for eSPI protocol handler use:
+ *  - addr/len are in bytes, allowing arbitrary unaligned access
+ *  - internally handles sector alignment and RMW
+ */
+int aspeed_espi_lun_rw_bytes(struct aspeed_espi_lun *lun, bool write, u32 addr,
+			     u32 len, u8 *buf)
+{
+	u32 blk_mask;
+	u32 blksize;
+	u8 *bounce;
+	u32 done;
+	int rc;
+
+	done = 0;
+	rc = 0;
+
+	if (!lun || !lun->filp || !buf)
+		return -EINVAL;
+
+	if (!len)
+		return 0;
+
+	if (write && lun->ro)
+		return -EROFS;
+
+	blksize = lun->blksize;
+	blk_mask = blksize - 1;
+
+	bounce = kmalloc(blksize, GFP_KERNEL);
+	if (!bounce)
+		return -ENOMEM;
+
+	while (done < len) {
+		u32 cur_addr = addr + done;
+		u32 off_in_blk = cur_addr & blk_mask;
+		sector_t sector = cur_addr >> lun->blkbits;
+		u32 bytes_this;
+		u8 *p = buf + done;
+
+		/* Process up to the end of this sector */
+		bytes_this = blksize - off_in_blk;
+		if (bytes_this > (len - done))
+			bytes_this = len - done;
+
+		if (!off_in_blk && bytes_this == blksize) {
+			/* Fully aligned sector, use sector API directly */
+			if (write)
+				rc = aspeed_espi_lun_write(lun, sector, 1, p);
+			else
+				rc = aspeed_espi_lun_read(lun, sector, 1, p);
+		} else {
+			/* partial sector: read one sector first, then overwrite/extract part */
+			rc = aspeed_espi_lun_read(lun, sector, 1, bounce);
+			if (rc)
+				break;
+
+			if (write) {
+				memcpy(bounce + off_in_blk, p, bytes_this);
+				rc = aspeed_espi_lun_write(lun, sector, 1,
+							   bounce);
+			} else {
+				memcpy(p, bounce + off_in_blk, bytes_this);
+			}
+		}
+
+		if (rc)
+			break;
+
+		done += bytes_this;
+	}
+
+	kfree(bounce);
+	return rc;
+}
+EXPORT_SYMBOL_GPL(aspeed_espi_lun_rw_bytes);
+
+/*
+ * Erase: specify range in bytes, implemented as writing 0xFF pattern.
+ * For eSPI ERASE command use.
+ */
+int aspeed_espi_lun_erase_bytes(struct aspeed_espi_lun *lun, u32 addr, u32 len)
+{
+	u8 *pattern;
+	u32 chunk;
+	u32 done;
+	int rc;
+
+	done = 0;
+	rc = 0;
+
+	if (!lun || !lun->filp)
+		return -EINVAL;
+
+	if (!len)
+		return 0;
+
+	if (lun->ro)
+		return -EROFS;
+
+	chunk = lun->blksize;
+	if (chunk > len)
+		chunk = len;
+
+	pattern = kmalloc(chunk, GFP_KERNEL);
+	if (!pattern)
+		return -ENOMEM;
+
+	while (done < len) {
+		u32 this_len = len - done;
+
+		if (this_len > chunk)
+			this_len = chunk;
+
+		memset(pattern, 0xff, this_len);
+
+		rc = aspeed_espi_lun_rw_bytes(lun, true, addr + done, this_len,
+					      pattern);
+		if (rc)
+			break;
+
+		done += this_len;
+	}
+
+	kfree(pattern);
+	return rc;
+}
+EXPORT_SYMBOL_GPL(aspeed_espi_lun_erase_bytes);
+
+MODULE_LICENSE("GPL");
+MODULE_DESCRIPTION("ASPEED eSPI slave storage backend helpers");
+MODULE_AUTHOR("ASPEED");
diff --git a/drivers/soc/aspeed/espi/espi_storage.h b/drivers/soc/aspeed/espi/espi_storage.h
new file mode 100644
index 000000000000..f0711328b03e
--- /dev/null
+++ b/drivers/soc/aspeed/espi/espi_storage.h
@@ -0,0 +1,32 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef ASPEED_ESPI_STORAGE_H
+#define ASPEED_ESPI_STORAGE_H
+
+#include <linux/fs.h>
+#include <linux/types.h>
+
+struct aspeed_espi_lun {
+	struct file	*filp;
+	loff_t		 file_length;
+	loff_t		 num_sectors;
+	unsigned int	 blksize;
+	unsigned int	 blkbits;
+	bool		 ro;
+	bool		 cdrom;
+};
+
+int aspeed_espi_lun_open(struct aspeed_espi_lun *lun, const char *path,
+			 bool initially_ro, bool cdrom);
+void aspeed_espi_lun_close(struct aspeed_espi_lun *lun);
+int aspeed_espi_lun_rw(struct aspeed_espi_lun *lun, bool write,
+		       sector_t sector, unsigned int nsect, void *buf);
+int aspeed_espi_lun_read(struct aspeed_espi_lun *lun, sector_t sector,
+			 unsigned int nsect, void *buf);
+int aspeed_espi_lun_write(struct aspeed_espi_lun *lun, sector_t sector,
+			  unsigned int nsect, void *buf);
+int aspeed_espi_lun_rw_bytes(struct aspeed_espi_lun *lun, bool write,
+			     u32 addr, u32 len, u8 *buf);
+int aspeed_espi_lun_erase_bytes(struct aspeed_espi_lun *lun,
+				u32 addr, u32 len);
+
+#endif /* _ASPEED_ESPI_STORAGE_H_ */

-- 
2.34.1


