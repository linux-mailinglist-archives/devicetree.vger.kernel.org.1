Return-Path: <devicetree+bounces-267346-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id COTgI28unGkKAgQAu9opvQ
	(envelope-from <devicetree+bounces-267346-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 11:39:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E6CA3175053
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 11:39:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 27226302EEBB
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 10:39:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A20235B64A;
	Mon, 23 Feb 2026 10:39:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D2BD346797
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 10:39:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771843179; cv=none; b=ssjEIL0IE+L8JGGUJ3xlsgJX1Qu2gz1XhEsw+sD7MfqIogroLYYEivMjChTh+Ak8XIhnCJCdXguqgcsqyL1Jnp8ofCtCc1I2nmOgT9Df4I007fcIkpRVR/AH4DiyMca9ZyRQqWcR+5k2vDO4qVE/xEHBmelMQwjhZWMJT/bf588=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771843179; c=relaxed/simple;
	bh=r766QhVEUaUrPKJzZmanvHxGLzG89oB2IL3ytx+Rz20=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CJS+NrUscVMel4cGFxF9cRNBNj4tr+DWarbb0DopgHUY0oyHJewXFCs74xZc3Ori/THH9GyrzLiN8G1Bx4//H9rvuy/0KODN6ok9OdoIA4eRrYCOMV2X+MxpSwL9OIyHidwCvjxBcVwCinpNnsyAkmjFBAjieppxv85jPbtfTGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1vuTLE-0001Da-7w; Mon, 23 Feb 2026 11:39:04 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vuTLB-002DIW-2E;
	Mon, 23 Feb 2026 11:39:03 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1vuTLC-000000016SO-3sOD;
	Mon, 23 Feb 2026 11:39:02 +0100
Date: Mon, 23 Feb 2026 11:39:02 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Russ Weight <russ.weight@linux.dev>
Cc: Luis Chamberlain <mcgrof@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Andrew Morton <akpm@linux-foundation.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Dmitry Torokhov <dmitry.torokhov@gmail.com>, Kamel Bouhara <kamel.bouhara@bootlin.com>, 
	Marco Felsch <kernel@pengutronix.de>, Henrik Rydberg <rydberg@bitmath.org>, 
	Danilo Krummrich <dakr@kernel.org>, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-input@vger.kernel.org
Subject: Re: [PATCH v5 1/4] firmware_loader: expand firmware error codes with
 up-to-date error
Message-ID: <3ohould4vufzfqau4e7vg2ztks3gflmfosyaizggwzufbwvx2f@yqsgim7ash3x>
References: <20260111-v6-10-topic-touchscreen-axiom-v5-0-f94e0ae266cb@pengutronix.de>
 <20260111-v6-10-topic-touchscreen-axiom-v5-1-f94e0ae266cb@pengutronix.de>
 <s24u6ojnflb4nvpssgshjmgir77wpoos6qinypqac564fzcjyy@yilnrsy266er>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <s24u6ojnflb4nvpssgshjmgir77wpoos6qinypqac564fzcjyy@yilnrsy266er>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-267346-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FREEMAIL_CC(0.00)[kernel.org,linuxfoundation.org,linux-foundation.org,gmail.com,bootlin.com,pengutronix.de,bitmath.org,vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[m.felsch@pengutronix.de,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.983];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,pengutronix.de:url,pengutronix.de:email]
X-Rspamd-Queue-Id: E6CA3175053
X-Rspamd-Action: no action

Hi Russ,

On 26-02-19, Russ Weight wrote:
> On Sun, Jan 11, 2026 at 04:05:44PM +0100, Marco Felsch wrote:
> > Add FW_UPLOAD_ERR_DUPLICATE to allow drivers to inform the firmware_loader
> > framework that the update is not required. This can be the case if the
> > user provided firmware matches the current running firmware.
> > 
> > Sync lib/test_firmware.c accordingly.
> > 
> > Reviewed-by: Russ Weight <russ.weight@linux.dev>
> > Reviewed-by: Luis Chamberlain <mcgrof@kernel.org>
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > ---
> >  drivers/base/firmware_loader/sysfs_upload.c | 1 +
> >  include/linux/firmware.h                    | 2 ++
> >  lib/test_firmware.c                         | 1 +
> >  3 files changed, 4 insertions(+)
> > 
> > diff --git a/drivers/base/firmware_loader/sysfs_upload.c b/drivers/base/firmware_loader/sysfs_upload.c
> > index c3797b93c5f5a2ecf2ae34707893c89eb7773154..9e93070b2c24179986b868a24b09cf051776c644 100644
> > --- a/drivers/base/firmware_loader/sysfs_upload.c
> > +++ b/drivers/base/firmware_loader/sysfs_upload.c
> > @@ -28,6 +28,7 @@ static const char * const fw_upload_err_str[] = {
> >  	[FW_UPLOAD_ERR_RW_ERROR]     = "read-write-error",
> >  	[FW_UPLOAD_ERR_WEAROUT]	     = "flash-wearout",
> >  	[FW_UPLOAD_ERR_FW_INVALID]   = "firmware-invalid",
> > +	[FW_UPLOAD_ERR_DUPLICATE]    = "firmware-duplicate",
> >  };
> 
> Hi Marco,
> 
> There is a corresponding change that should be made to
> lib/test_firmware.c. You can look at the recent change for
> FW_UPLOAD_ERR_FW_INVALID as an example.

Can you elaborate a bit more please? I've added the
FW_UPLOAD_ERR_DUPLICATE to lib/test_firmware.c with this patchset and I
don't know what you want me todo.

Regards,
  Marco


> 
> - Russ
> 
> >  
> >  static const char *fw_upload_progress(struct device *dev,
> > diff --git a/include/linux/firmware.h b/include/linux/firmware.h
> > index aae1b85ffc10e20e9c3c9b6009d26b83efd8cb24..fe7797be4c08cd62cdad9617b8f70095d5e0af2f 100644
> > --- a/include/linux/firmware.h
> > +++ b/include/linux/firmware.h
> > @@ -29,6 +29,7 @@ struct firmware {
> >   * @FW_UPLOAD_ERR_RW_ERROR: read or write to HW failed, see kernel log
> >   * @FW_UPLOAD_ERR_WEAROUT: FLASH device is approaching wear-out, wait & retry
> >   * @FW_UPLOAD_ERR_FW_INVALID: invalid firmware file
> > + * @FW_UPLOAD_ERR_DUPLICATE: firmware is already up to date (duplicate)
> >   * @FW_UPLOAD_ERR_MAX: Maximum error code marker
> >   */
> >  enum fw_upload_err {
> > @@ -41,6 +42,7 @@ enum fw_upload_err {
> >  	FW_UPLOAD_ERR_RW_ERROR,
> >  	FW_UPLOAD_ERR_WEAROUT,
> >  	FW_UPLOAD_ERR_FW_INVALID,
> > +	FW_UPLOAD_ERR_DUPLICATE,
> >  	FW_UPLOAD_ERR_MAX
> >  };
> >  
> > diff --git a/lib/test_firmware.c b/lib/test_firmware.c
> > index be4f93124901e5faac41f48a66dabe6da56be0ca..952ec1cb03102911dbea9abd648ab9d9e0112a46 100644
> > --- a/lib/test_firmware.c
> > +++ b/lib/test_firmware.c
> > @@ -1134,6 +1134,7 @@ static const char * const fw_upload_err_str[] = {
> >  	[FW_UPLOAD_ERR_RW_ERROR]     = "read-write-error",
> >  	[FW_UPLOAD_ERR_WEAROUT]	     = "flash-wearout",
> >  	[FW_UPLOAD_ERR_FW_INVALID]   = "firmware-invalid",
> > +	[FW_UPLOAD_ERR_DUPLICATE]    = "firmware-duplicate",
> >  };
> >  
> >  static void upload_err_inject_error(struct test_firmware_upload *tst,
> > 
> > -- 
> > 2.47.3
> > 
> 

-- 
#gernperDu 
#CallMeByMyFirstName

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |

