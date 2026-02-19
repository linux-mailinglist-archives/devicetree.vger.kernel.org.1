Return-Path: <devicetree+bounces-266774-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SP1pN4ufl2nc3AIAu9opvQ
	(envelope-from <devicetree+bounces-266774-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 00:40:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 38858163923
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 00:40:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 55087303FAFA
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 23:40:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B47DC3168EE;
	Thu, 19 Feb 2026 23:40:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="YMe9I95F"
X-Original-To: devicetree@vger.kernel.org
Received: from out-174.mta0.migadu.com (out-174.mta0.migadu.com [91.218.175.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 309193033C5
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 23:40:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771544431; cv=none; b=JdhtbTysa58zG+cz00Ol34Ygdq798z2MLHEBoKxh3sHzLpgCFX+p8cq+k4gPNcCKsYyIdiEm18dSObrmEujpFm5aErCT7zNs69nXbrm3lUQVtZoqWMlpX5mb8e3fBHTW4bMk5xdNVX6DBKo/mqoIXYmLjy+7I8HlLJ0uFQea8hI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771544431; c=relaxed/simple;
	bh=TRKFG9iyCZiU02kKGUXfEvPejwPiF+gGa7xpETSJMmg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=X3cMpdqFD4q70ps2dcYw8kMW+lKeMnK/4N0SPU4doXuVEe4BBu2nz0OgMy7LU7OWIxOOD9Cx+WfU9tfrZkV7l0PkJj/foFRMb/S7a8nDP6J3DZxhZ3N7KoYYYYdAEeXjIEE0UF33pQGsqIE0Iog+owpdFqYKexasYBA6aDYL2U4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=YMe9I95F; arc=none smtp.client-ip=91.218.175.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
Date: Thu, 19 Feb 2026 16:40:11 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1771544417;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=IMYV8TJCxWvdL8j08krLV9Nx1g5eh+8pe7mOLnvSJDM=;
	b=YMe9I95FhYdbw5SzD0KPqIHn7JjFNWnaG7ReGJVQVUNvguA/iqmCYsvmtn2q3i4r0OnGFA
	/fxh6ass/0dI++GgE1A+3+Zw4nY0t0PSyTQbpiVOvPbkzyAXvaCa68zrejr5CAByqMXZX9
	OIBkDkZ6MvZbFvDo3+NqeWTN+o/I1Mc=
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Russ Weight <russ.weight@linux.dev>
To: Marco Felsch <m.felsch@pengutronix.de>
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
Message-ID: <s24u6ojnflb4nvpssgshjmgir77wpoos6qinypqac564fzcjyy@yilnrsy266er>
References: <20260111-v6-10-topic-touchscreen-axiom-v5-0-f94e0ae266cb@pengutronix.de>
 <20260111-v6-10-topic-touchscreen-axiom-v5-1-f94e0ae266cb@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260111-v6-10-topic-touchscreen-axiom-v5-1-f94e0ae266cb@pengutronix.de>
X-Migadu-Flow: FLOW_OUT
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linux.dev,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[linux.dev:s=key1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266774-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,linuxfoundation.org,linux-foundation.org,gmail.com,bootlin.com,pengutronix.de,bitmath.org,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[russ.weight@linux.dev,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linux.dev:+];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 38858163923
X-Rspamd-Action: no action

On Sun, Jan 11, 2026 at 04:05:44PM +0100, Marco Felsch wrote:
> Add FW_UPLOAD_ERR_DUPLICATE to allow drivers to inform the firmware_loader
> framework that the update is not required. This can be the case if the
> user provided firmware matches the current running firmware.
> 
> Sync lib/test_firmware.c accordingly.
> 
> Reviewed-by: Russ Weight <russ.weight@linux.dev>
> Reviewed-by: Luis Chamberlain <mcgrof@kernel.org>
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  drivers/base/firmware_loader/sysfs_upload.c | 1 +
>  include/linux/firmware.h                    | 2 ++
>  lib/test_firmware.c                         | 1 +
>  3 files changed, 4 insertions(+)
> 
> diff --git a/drivers/base/firmware_loader/sysfs_upload.c b/drivers/base/firmware_loader/sysfs_upload.c
> index c3797b93c5f5a2ecf2ae34707893c89eb7773154..9e93070b2c24179986b868a24b09cf051776c644 100644
> --- a/drivers/base/firmware_loader/sysfs_upload.c
> +++ b/drivers/base/firmware_loader/sysfs_upload.c
> @@ -28,6 +28,7 @@ static const char * const fw_upload_err_str[] = {
>  	[FW_UPLOAD_ERR_RW_ERROR]     = "read-write-error",
>  	[FW_UPLOAD_ERR_WEAROUT]	     = "flash-wearout",
>  	[FW_UPLOAD_ERR_FW_INVALID]   = "firmware-invalid",
> +	[FW_UPLOAD_ERR_DUPLICATE]    = "firmware-duplicate",
>  };

Hi Marco,

There is a corresponding change that should be made to
lib/test_firmware.c. You can look at the recent change for
FW_UPLOAD_ERR_FW_INVALID as an example.

- Russ

>  
>  static const char *fw_upload_progress(struct device *dev,
> diff --git a/include/linux/firmware.h b/include/linux/firmware.h
> index aae1b85ffc10e20e9c3c9b6009d26b83efd8cb24..fe7797be4c08cd62cdad9617b8f70095d5e0af2f 100644
> --- a/include/linux/firmware.h
> +++ b/include/linux/firmware.h
> @@ -29,6 +29,7 @@ struct firmware {
>   * @FW_UPLOAD_ERR_RW_ERROR: read or write to HW failed, see kernel log
>   * @FW_UPLOAD_ERR_WEAROUT: FLASH device is approaching wear-out, wait & retry
>   * @FW_UPLOAD_ERR_FW_INVALID: invalid firmware file
> + * @FW_UPLOAD_ERR_DUPLICATE: firmware is already up to date (duplicate)
>   * @FW_UPLOAD_ERR_MAX: Maximum error code marker
>   */
>  enum fw_upload_err {
> @@ -41,6 +42,7 @@ enum fw_upload_err {
>  	FW_UPLOAD_ERR_RW_ERROR,
>  	FW_UPLOAD_ERR_WEAROUT,
>  	FW_UPLOAD_ERR_FW_INVALID,
> +	FW_UPLOAD_ERR_DUPLICATE,
>  	FW_UPLOAD_ERR_MAX
>  };
>  
> diff --git a/lib/test_firmware.c b/lib/test_firmware.c
> index be4f93124901e5faac41f48a66dabe6da56be0ca..952ec1cb03102911dbea9abd648ab9d9e0112a46 100644
> --- a/lib/test_firmware.c
> +++ b/lib/test_firmware.c
> @@ -1134,6 +1134,7 @@ static const char * const fw_upload_err_str[] = {
>  	[FW_UPLOAD_ERR_RW_ERROR]     = "read-write-error",
>  	[FW_UPLOAD_ERR_WEAROUT]	     = "flash-wearout",
>  	[FW_UPLOAD_ERR_FW_INVALID]   = "firmware-invalid",
> +	[FW_UPLOAD_ERR_DUPLICATE]    = "firmware-duplicate",
>  };
>  
>  static void upload_err_inject_error(struct test_firmware_upload *tst,
> 
> -- 
> 2.47.3
> 

