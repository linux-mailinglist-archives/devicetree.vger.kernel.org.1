Return-Path: <devicetree+bounces-150748-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A68F3A437EE
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 09:44:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C06311899554
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 08:44:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77F4B260A50;
	Tue, 25 Feb 2025 08:44:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b="d+W4wwim";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="3I1ztK52";
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b="n9MKxe/F";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="IJdzNMEm"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.223.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC5BD260A32
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 08:44:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.135.223.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740473051; cv=none; b=JkyOdSW+JH44SozatcAeQxyhpFJDy8MLrVwKkt7+O1HkxTV+DRIJuGsZLf2p4WLcsQIEBbfccu3hW929bPCOTnchy1ScUUo9Mbcs6HOpVz3a8fxhaE+aaJId7hbgQSesMzyQ9WqwvrcOAe7WQ+iU0CLVVFu7+T+a4730KpOarPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740473051; c=relaxed/simple;
	bh=g+srJaRSrGqNBlfWXNJMc3AI9RuriRuR5HtJFvnsyNY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jnGzROvIZ4Id8fb4OkbwJWA7aZbbUcyY2AXqBzVn/6zTazmzhwr37iancKlLCwHN57sFRNpTplSTPRP9eBxzGZ1l8Uow4/7rCis/tPIc8pygX2F1YsL/Y4RH8hBuAcv2svuJfT7ee8w24ygYlxDno84OCQF2ODrFQvdMscpmjyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=suse.de; spf=pass smtp.mailfrom=suse.de; dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b=d+W4wwim; dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b=3I1ztK52; dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b=n9MKxe/F; dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b=IJdzNMEm; arc=none smtp.client-ip=195.135.223.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=suse.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.de
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org [IPv6:2a07:de40:b281:104:10:150:64:97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id DC6DE1F44F;
	Tue, 25 Feb 2025 08:44:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1740473046; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=d+fpTNHdP4ep6ZfjWqB9fVEA1xmGCSlF8OJHmw0RTQU=;
	b=d+W4wwimeritLKGrCpFnK6OoC88VuSKeeUj0MTw4zWGE9hWNprTenxbkOgjRKSnPuxb5Qk
	fdrtSTFUGowbJjCFY6BN1o3dWd+J4twLwRAP3kWrYuUDBDVZiJOyabFHaOqzO5QmFVd15X
	y7n5nVUic2OUSmj14JqViSNM7AYuJpc=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1740473046;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=d+fpTNHdP4ep6ZfjWqB9fVEA1xmGCSlF8OJHmw0RTQU=;
	b=3I1ztK52jH9kF6gowGpIVbncNPDah+ZV/9afkeiVtcnXAzUnQZbixWhPE8w9oOT8/5Des1
	U4U2hPq4MEC+ykBQ==
Authentication-Results: smtp-out2.suse.de;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b="n9MKxe/F";
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=IJdzNMEm
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1740473044; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=d+fpTNHdP4ep6ZfjWqB9fVEA1xmGCSlF8OJHmw0RTQU=;
	b=n9MKxe/FO0zb7iWIsDXtRwuoPmYoH0+X/DlCfWqhMtl71rHxtwsX3OEFSbB1I7beKgcDHA
	jbvxBvcuRF/n5xi5D5s9ZxYlMlxyvJsxA14uXUMUmacOWfVrI13/86AgW9PBRuFJeKfp07
	qoNT4WStoZl/JS0i6un3UwJj2SWseBQ=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1740473044;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=d+fpTNHdP4ep6ZfjWqB9fVEA1xmGCSlF8OJHmw0RTQU=;
	b=IJdzNMEm2UkaEx7ZAdgCnOzyIXLkhC3g8ZX7hB49oEcGdWdg9qWz/U25lGHQiQF6e6a7cI
	HJU6ntXp/SfUkTCw==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 41BD213A61;
	Tue, 25 Feb 2025 08:44:04 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id hFIpDtSCvWckBgAAD6G6ig
	(envelope-from <tzimmermann@suse.de>); Tue, 25 Feb 2025 08:44:04 +0000
Message-ID: <d40fddec-553a-4bc0-934e-bb89025be5a3@suse.de>
Date: Tue, 25 Feb 2025 09:44:03 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 6/7] accel/rocket: Add job submission IOCTL
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Jeffrey Hugo <quic_jhugo@quicinc.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
References: <20250225-6-10-rocket-v2-0-d4dbcfafc141@tomeuvizoso.net>
 <20250225-6-10-rocket-v2-6-d4dbcfafc141@tomeuvizoso.net>
Content-Language: en-US
From: Thomas Zimmermann <tzimmermann@suse.de>
Autocrypt: addr=tzimmermann@suse.de; keydata=
 xsBNBFs50uABCADEHPidWt974CaxBVbrIBwqcq/WURinJ3+2WlIrKWspiP83vfZKaXhFYsdg
 XH47fDVbPPj+d6tQrw5lPQCyqjwrCPYnq3WlIBnGPJ4/jreTL6V+qfKRDlGLWFjZcsrPJGE0
 BeB5BbqP5erN1qylK9i3gPoQjXGhpBpQYwRrEyQyjuvk+Ev0K1Jc5tVDeJAuau3TGNgah4Yc
 hdHm3bkPjz9EErV85RwvImQ1dptvx6s7xzwXTgGAsaYZsL8WCwDaTuqFa1d1jjlaxg6+tZsB
 9GluwvIhSezPgnEmimZDkGnZRRSFiGP8yjqTjjWuf0bSj5rUnTGiyLyRZRNGcXmu6hjlABEB
 AAHNJ1Rob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPsLAjgQTAQgAOAIb
 AwULCQgHAgYVCgkICwIEFgIDAQIeAQIXgBYhBHIX+6yM6c9jRKFo5WgNwR1TC3ojBQJftODH
 AAoJEGgNwR1TC3ojx1wH/0hKGWugiqDgLNXLRD/4TfHBEKmxIrmfu9Z5t7vwUKfwhFL6hqvo
 lXPJJKQpQ2z8+X2vZm/slsLn7J1yjrOsoJhKABDi+3QWWSGkaGwRJAdPVVyJMfJRNNNIKwVb
 U6B1BkX2XDKDGffF4TxlOpSQzdtNI/9gleOoUA8+jy8knnDYzjBNOZqLG2FuTdicBXblz0Mf
 vg41gd9kCwYXDnD91rJU8tzylXv03E75NCaTxTM+FBXPmsAVYQ4GYhhgFt8S2UWMoaaABLDe
 7l5FdnLdDEcbmd8uLU2CaG4W2cLrUaI4jz2XbkcPQkqTQ3EB67hYkjiEE6Zy3ggOitiQGcqp
 j//OwE0EWznS4AEIAMYmP4M/V+T5RY5at/g7rUdNsLhWv1APYrh9RQefODYHrNRHUE9eosYb
 T6XMryR9hT8XlGOYRwKWwiQBoWSDiTMo/Xi29jUnn4BXfI2px2DTXwc22LKtLAgTRjP+qbU6
 3Y0xnQN29UGDbYgyyK51DW3H0If2a3JNsheAAK+Xc9baj0LGIc8T9uiEWHBnCH+RdhgATnWW
 GKdDegUR5BkDfDg5O/FISymJBHx2Dyoklv5g4BzkgqTqwmaYzsl8UxZKvbaxq0zbehDda8lv
 hFXodNFMAgTLJlLuDYOGLK2AwbrS3Sp0AEbkpdJBb44qVlGm5bApZouHeJ/+n+7r12+lqdsA
 EQEAAcLAdgQYAQgAIAIbDBYhBHIX+6yM6c9jRKFo5WgNwR1TC3ojBQJftOH6AAoJEGgNwR1T
 C3ojVSkIALpAPkIJPQoURPb1VWjh34l0HlglmYHvZszJWTXYwavHR8+k6Baa6H7ufXNQtThR
 yIxJrQLW6rV5lm7TjhffEhxVCn37+cg0zZ3j7zIsSS0rx/aMwi6VhFJA5hfn3T0TtrijKP4A
 SAQO9xD1Zk9/61JWk8OysuIh7MXkl0fxbRKWE93XeQBhIJHQfnc+YBLprdnxR446Sh8Wn/2D
 Ya8cavuWf2zrB6cZurs048xe0UbSW5AOSo4V9M0jzYI4nZqTmPxYyXbm30Kvmz0rYVRaitYJ
 4kyYYMhuULvrJDMjZRvaNe52tkKAvMevcGdt38H4KSVXAylqyQOW5zvPc4/sq9c=
In-Reply-To: <20250225-6-10-rocket-v2-6-d4dbcfafc141@tomeuvizoso.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: DC6DE1F44F
X-Spam-Score: -3.01
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.01 / 50.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	NEURAL_HAM_LONG(-1.00)[-1.000];
	R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	NEURAL_HAM_SHORT(-0.20)[-1.000];
	MIME_GOOD(-0.10)[text/plain];
	MX_GOOD(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	FUZZY_BLOCKED(0.00)[rspamd.com];
	FREEMAIL_TO(0.00)[tomeuvizoso.net,kernel.org,sntech.de,lwn.net,linux.intel.com,gmail.com,ffwll.ch,linaro.org,amd.com,collabora.com,quicinc.com];
	TO_MATCH_ENVRCPT_ALL(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	SPAMHAUS_XBL(0.00)[2a07:de40:b281:104:10:150:64:97:from];
	ARC_NA(0.00)[];
	RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2a07:de40:b281:104:10:150:64:97:from];
	FREEMAIL_ENVRCPT(0.00)[gmail.com];
	RCVD_TLS_ALL(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2a07:de40:b281:106:10:150:64:167:received];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	DKIM_TRACE(0.00)[suse.de:+];
	ASN(0.00)[asn:25478, ipnet:::/0, country:RU];
	DBL_BLOCKED_OPENRESOLVER(0.00)[imap1.dmz-prg2.suse.org:rdns,imap1.dmz-prg2.suse.org:helo,suse.de:mid,suse.de:dkim,tomeuvizoso.net:email]
X-Rspamd-Server: rspamd1.dmz-prg2.suse.org
X-Spam-Flag: NO
X-Spam-Level: 

Hi

Am 25.02.25 um 08:55 schrieb Tomeu Vizoso:
> Using the DRM GPU scheduler infrastructure, with a scheduler for each
> core.
>
> Userspace can decide for a series of tasks to be executed sequentially
> in the same core, so SRAM locality can be taken advantage of.
>
> The job submission code was initially based on Panfrost.
>
> v2:
> - Remove hardcoded number of cores
> - Misc. style fixes (Jeffrey Hugo)
> - Repack IOCTL struct (Jeffrey Hugo)
>
> Signed-off-by: Tomeu Vizoso <tomeu@tomeuvizoso.net>
> ---
>   drivers/accel/rocket/Makefile        |   3 +-
>   drivers/accel/rocket/rocket_core.c   |   6 +
>   drivers/accel/rocket/rocket_core.h   |  14 +
>   drivers/accel/rocket/rocket_device.c |   2 +
>   drivers/accel/rocket/rocket_device.h |   2 +
>   drivers/accel/rocket/rocket_drv.c    |  15 +
>   drivers/accel/rocket/rocket_drv.h    |   4 +
>   drivers/accel/rocket/rocket_job.c    | 710 +++++++++++++++++++++++++++++++++++
>   drivers/accel/rocket/rocket_job.h    |  50 +++
>   include/uapi/drm/rocket_accel.h      |  55 +++
>   10 files changed, 860 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/accel/rocket/Makefile b/drivers/accel/rocket/Makefile
> index 875cac2243d902694e0d5d05e60b4ae551a633c4..4d59036af8d9c213d3cac0559eb66e3ebb0320e7 100644
> --- a/drivers/accel/rocket/Makefile
> +++ b/drivers/accel/rocket/Makefile
> @@ -6,4 +6,5 @@ rocket-y := \
>   	rocket_core.o \
>   	rocket_device.o \
>   	rocket_drv.o \
> -	rocket_gem.o
> +	rocket_gem.o \
> +	rocket_job.o
> diff --git a/drivers/accel/rocket/rocket_core.c b/drivers/accel/rocket/rocket_core.c
> index 09d966c826b5b1090a18cb24b3aa4aba286a12d4..2b522592693874eed90463e8f85653d5282ae5b8 100644
> --- a/drivers/accel/rocket/rocket_core.c
> +++ b/drivers/accel/rocket/rocket_core.c
> @@ -6,6 +6,7 @@
>   #include <linux/pm_runtime.h>
>   
>   #include "rocket_core.h"
> +#include "rocket_job.h"
>   #include "rocket_registers.h"
>   
>   static int rocket_clk_init(struct rocket_core *core)
> @@ -48,6 +49,10 @@ int rocket_core_init(struct rocket_core *core)
>   	if (IS_ERR(core->iomem))
>   		return PTR_ERR(core->iomem);
>   
> +	err = rocket_job_init(core);
> +	if (err)
> +		return err;
> +
>   	pm_runtime_use_autosuspend(dev);
>   	pm_runtime_set_autosuspend_delay(dev, 50); /* ~3 frames */
>   	pm_runtime_enable(dev);
> @@ -68,4 +73,5 @@ int rocket_core_init(struct rocket_core *core)
>   void rocket_core_fini(struct rocket_core *core)
>   {
>   	pm_runtime_disable(core->dev);
> +	rocket_job_fini(core);
>   }
> diff --git a/drivers/accel/rocket/rocket_core.h b/drivers/accel/rocket/rocket_core.h
> index 2171eba7139ccc63fe24802dc81b4adb7f3abf31..045a46a2010a2ffd6122ed86c379e5fabc70365a 100644
> --- a/drivers/accel/rocket/rocket_core.h
> +++ b/drivers/accel/rocket/rocket_core.h
> @@ -21,6 +21,20 @@ struct rocket_core {
>   	void __iomem *iomem;
>   	struct clk *a_clk;
>   	struct clk *h_clk;
> +
> +	struct rocket_job *in_flight_job;
> +
> +	spinlock_t job_lock;
> +
> +	struct {
> +		struct workqueue_struct *wq;
> +		struct work_struct work;
> +		atomic_t pending;
> +	} reset;
> +
> +	struct drm_gpu_scheduler sched;
> +	u64 fence_context;
> +	u64 emit_seqno;
>   };
>   
>   int rocket_core_init(struct rocket_core *core);
> diff --git a/drivers/accel/rocket/rocket_device.c b/drivers/accel/rocket/rocket_device.c
> index 9af36357caba7148dcac764c8222699f3b572d60..62c640e1e0200fe25b6834e45d71f6de139ff3ab 100644
> --- a/drivers/accel/rocket/rocket_device.c
> +++ b/drivers/accel/rocket/rocket_device.c
> @@ -12,6 +12,7 @@ int rocket_device_init(struct rocket_device *rdev)
>   	int err;
>   
>   	mutex_init(&rdev->iommu_lock);
> +	mutex_init(&rdev->sched_lock);
>   
>   	rdev->clk_npu = devm_clk_get(dev, "npu");
>   	rdev->pclk = devm_clk_get(dev, "pclk");
> @@ -29,5 +30,6 @@ int rocket_device_init(struct rocket_device *rdev)
>   void rocket_device_fini(struct rocket_device *rdev)
>   {
>   	rocket_core_fini(&rdev->cores[0]);
> +	mutex_destroy(&rdev->sched_lock);
>   	mutex_destroy(&rdev->iommu_lock);
>   }
> diff --git a/drivers/accel/rocket/rocket_device.h b/drivers/accel/rocket/rocket_device.h
> index c6152569fdd9e5587c8e8d7b0d7c2e2a77af6000..4168ae8da2d38c2ea114b37c6e053b02611a0232 100644
> --- a/drivers/accel/rocket/rocket_device.h
> +++ b/drivers/accel/rocket/rocket_device.h
> @@ -11,6 +11,8 @@
>   struct rocket_device {
>   	struct drm_device ddev;
>   
> +	struct mutex sched_lock;
> +
>   	struct clk *clk_npu;
>   	struct clk *pclk;
>   
> diff --git a/drivers/accel/rocket/rocket_drv.c b/drivers/accel/rocket/rocket_drv.c
> index e5612b52952fa7a0cd0af02aef314984bc483b05..a6b486e2d4f648d7b1d8831590b633bf661c7bc4 100644
> --- a/drivers/accel/rocket/rocket_drv.c
> +++ b/drivers/accel/rocket/rocket_drv.c
> @@ -16,12 +16,14 @@
>   
>   #include "rocket_drv.h"
>   #include "rocket_gem.h"
> +#include "rocket_job.h"
>   
>   static int
>   rocket_open(struct drm_device *dev, struct drm_file *file)
>   {
>   	struct rocket_device *rdev = to_rocket_device(dev);
>   	struct rocket_file_priv *rocket_priv;
> +	int ret;
>   
>   	rocket_priv = kzalloc(sizeof(*rocket_priv), GFP_KERNEL);
>   	if (!rocket_priv)
> @@ -30,7 +32,15 @@ rocket_open(struct drm_device *dev, struct drm_file *file)
>   	rocket_priv->rdev = rdev;
>   	file->driver_priv = rocket_priv;
>   
> +	ret = rocket_job_open(rocket_priv);
> +	if (ret)
> +		goto err_free;
> +
>   	return 0;
> +
> +err_free:
> +	kfree(rocket_priv);
> +	return ret;
>   }
>   
>   static void
> @@ -38,6 +48,7 @@ rocket_postclose(struct drm_device *dev, struct drm_file *file)
>   {
>   	struct rocket_file_priv *rocket_priv = file->driver_priv;
>   
> +	rocket_job_close(rocket_priv);
>   	kfree(rocket_priv);
>   }
>   
> @@ -46,6 +57,7 @@ static const struct drm_ioctl_desc rocket_drm_driver_ioctls[] = {
>   	DRM_IOCTL_DEF_DRV(ROCKET_##n, rocket_ioctl_##func, 0)
>   
>   	ROCKET_IOCTL(CREATE_BO, create_bo),
> +	ROCKET_IOCTL(SUBMIT, submit),
>   };
>   
>   DEFINE_DRM_ACCEL_FOPS(rocket_accel_driver_fops);
> @@ -245,6 +257,9 @@ static int rocket_device_runtime_suspend(struct device *dev)
>   		if (dev != rdev->cores[core].dev)
>   			continue;
>   
> +		if (!rocket_job_is_idle(&rdev->cores[core]))
> +			return -EBUSY;
> +
>   		clk_disable_unprepare(rdev->cores[core].a_clk);
>   		clk_disable_unprepare(rdev->cores[core].h_clk);
>   
> diff --git a/drivers/accel/rocket/rocket_drv.h b/drivers/accel/rocket/rocket_drv.h
> index ccdd50c69d4c033eea18cb800407fdcfb3bf2e9b..54e21a61006057aee293496016e54b495a2f6d55 100644
> --- a/drivers/accel/rocket/rocket_drv.h
> +++ b/drivers/accel/rocket/rocket_drv.h
> @@ -4,10 +4,14 @@
>   #ifndef __ROCKET_DRV_H__
>   #define __ROCKET_DRV_H__
>   
> +#include <drm/gpu_scheduler.h>
> +
>   #include "rocket_device.h"
>   
>   struct rocket_file_priv {
>   	struct rocket_device *rdev;
> +
> +	struct drm_sched_entity sched_entity;
>   };
>   
>   #endif
> diff --git a/drivers/accel/rocket/rocket_job.c b/drivers/accel/rocket/rocket_job.c
> new file mode 100644
> index 0000000000000000000000000000000000000000..25b31f28e932aaee86173b9a0962932c9c640c03
> --- /dev/null
> +++ b/drivers/accel/rocket/rocket_job.c
> @@ -0,0 +1,710 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/* Copyright 2019 Linaro, Ltd, Rob Herring <robh@kernel.org> */
> +/* Copyright 2019 Collabora ltd. */
> +/* Copyright 2024 Tomeu Vizoso <tomeu@tomeuvizoso.net> */
> +
> +#include <drm/drm_file.h>
> +#include <drm/drm_gem.h>
> +#include <drm/rocket_accel.h>
> +#include <linux/interrupt.h>
> +#include <linux/platform_device.h>
> +#include <linux/pm_runtime.h>
> +
> +#include "rocket_core.h"
> +#include "rocket_device.h"
> +#include "rocket_drv.h"
> +#include "rocket_job.h"
> +#include "rocket_registers.h"
> +
> +#define JOB_TIMEOUT_MS 500
> +
> +#define job_write(dev, reg, data) writel(data, dev->iomem + (reg))
> +#define job_read(dev, reg) readl(dev->iomem + (reg))
> +
> +static struct rocket_job *
> +to_rocket_job(struct drm_sched_job *sched_job)
> +{
> +	return container_of(sched_job, struct rocket_job, base);
> +}
> +
> +struct rocket_fence {
> +	struct dma_fence base;
> +	struct drm_device *dev;
> +	/* rocket seqno for signaled() test */
> +	u64 seqno;
> +	int queue;
> +};
> +
> +static inline struct rocket_fence *
> +to_rocket_fence(struct dma_fence *fence)
> +{
> +	return (struct rocket_fence *)fence;

Proper upcast with container_of() please.

> +}
> +
> +static const char *rocket_fence_get_driver_name(struct dma_fence *fence)
> +{
> +	return "rocket";
> +}
> +
> +static const char *rocket_fence_get_timeline_name(struct dma_fence *fence)
> +{
> +	return "rockchip-npu";
> +}
> +
> +static const struct dma_fence_ops rocket_fence_ops = {
> +	.get_driver_name = rocket_fence_get_driver_name,
> +	.get_timeline_name = rocket_fence_get_timeline_name,
> +};
> +
> +static struct dma_fence *rocket_fence_create(struct rocket_core *core)
> +{
> +	struct rocket_device *rdev = core->rdev;
> +	struct rocket_fence *fence;
> +
> +	fence = kzalloc(sizeof(*fence), GFP_KERNEL);
> +	if (!fence)
> +		return ERR_PTR(-ENOMEM);
> +
> +	fence->dev = &rdev->ddev;
> +	fence->seqno = ++core->emit_seqno;
> +	dma_fence_init(&fence->base, &rocket_fence_ops, &core->job_lock,
> +		       core->fence_context, fence->seqno);
> +
> +	return &fence->base;
> +}
> +
> +static int
> +rocket_copy_tasks(struct drm_device *dev,
> +		  struct drm_file *file_priv,
> +		  struct drm_rocket_job *job,
> +		  struct rocket_job *rjob)
> +{
> +	struct drm_rocket_task *tasks;
> +	int ret = 0;
> +	int i;
> +
> +	rjob->task_count = job->task_count;
> +
> +	if (!rjob->task_count)
> +		return 0;
> +
> +	tasks = kvmalloc_array(rjob->task_count, sizeof(*tasks), GFP_KERNEL);
> +	if (!tasks) {
> +		ret = -ENOMEM;
> +		DRM_DEBUG("Failed to allocate incoming tasks\n");

These logging macros are deprecated. Please use drm_dbg() and similar 
functions instead. Here and everywhere else.

> +		goto fail;
> +	}
> +
> +	if (copy_from_user(tasks,
> +			   (void __user *)(uintptr_t)job->tasks,
> +			   rjob->task_count * sizeof(*tasks))) {
> +		ret = -EFAULT;
> +		DRM_DEBUG("Failed to copy incoming tasks\n");
> +		goto fail;
> +	}
> +
> +	rjob->tasks = kvmalloc_array(job->task_count, sizeof(*rjob->tasks), GFP_KERNEL);
> +	if (!rjob->tasks) {
> +		DRM_DEBUG("Failed to allocate task array\n");
> +		ret = -ENOMEM;
> +		goto fail;
> +	}
> +
> +	for (i = 0; i < rjob->task_count; i++) {
> +		if (tasks[i].regcmd_count == 0) {
> +			ret = -EINVAL;
> +			goto fail;
> +		}
> +		rjob->tasks[i].regcmd = tasks[i].regcmd;
> +		rjob->tasks[i].regcmd_count = tasks[i].regcmd_count;
> +	}
> +
> +fail:
> +	kvfree(tasks);
> +	return ret;
> +}
> +
> +static void rocket_job_hw_submit(struct rocket_core *core, struct rocket_job *job)
> +{
> +	struct rocket_task *task;
> +	bool task_pp_en = 1;
> +	bool task_count = 1;
> +
> +	/* GO ! */
> +
> +	/* Don't queue the job if a reset is in progress */
> +	if (!atomic_read(&core->reset.pending)) {
> +
> +		task = &job->tasks[job->next_task_idx];
> +		job->next_task_idx++;   /* TODO: Do this only after a successful run? */
> +
> +		rocket_write(core, REG_PC_BASE_ADDRESS, 0x1);

Just 'write' seems a little imprecise. Maybe 'writel' would be better.

Best regards
Thomas

> +
> +		rocket_write(core, REG_CNA_S_POINTER, 0xe + 0x10000000 * core->index);
> +		rocket_write(core, REG_CORE_S_POINTER, 0xe + 0x10000000 * core->index);
> +
> +		rocket_write(core, REG_PC_BASE_ADDRESS, task->regcmd);
> +		rocket_write(core, REG_PC_REGISTER_AMOUNTS, (task->regcmd_count + 1) / 2 - 1);
> +
> +		rocket_write(core, REG_PC_INTERRUPT_MASK,
> +			     PC_INTERRUPT_MASK_DPU_0 | PC_INTERRUPT_MASK_DPU_1);
> +		rocket_write(core, REG_PC_INTERRUPT_CLEAR,
> +			     PC_INTERRUPT_CLEAR_DPU_0 | PC_INTERRUPT_CLEAR_DPU_1);
> +
> +		rocket_write(core, REG_PC_TASK_CON, ((0x6 | task_pp_en) << 12) | task_count);
> +
> +		rocket_write(core, REG_PC_TASK_DMA_BASE_ADDR, 0x0);
> +
> +		rocket_write(core, REG_PC_OPERATION_ENABLE, 0x1);
> +
> +		dev_dbg(core->dev,
> +			"Submitted regcmd at 0x%llx to core %d",
> +			task->regcmd, core->index);
> +	}
> +}
> +
> +static int rocket_acquire_object_fences(struct drm_gem_object **bos,
> +					int bo_count,
> +					struct drm_sched_job *job,
> +					bool is_write)
> +{
> +	int i, ret;
> +
> +	for (i = 0; i < bo_count; i++) {
> +		ret = dma_resv_reserve_fences(bos[i]->resv, 1);
> +		if (ret)
> +			return ret;
> +
> +		ret = drm_sched_job_add_implicit_dependencies(job, bos[i],
> +							      is_write);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	return 0;
> +}
> +
> +static void rocket_attach_object_fences(struct drm_gem_object **bos,
> +					  int bo_count,
> +					  struct dma_fence *fence)
> +{
> +	int i;
> +
> +	for (i = 0; i < bo_count; i++)
> +		dma_resv_add_fence(bos[i]->resv, fence, DMA_RESV_USAGE_WRITE);
> +}
> +
> +static int rocket_job_push(struct rocket_job *job)
> +{
> +	struct rocket_device *rdev = job->rdev;
> +	struct drm_gem_object **bos;
> +	struct ww_acquire_ctx acquire_ctx;
> +	int ret = 0;
> +
> +	bos = kvmalloc_array(job->in_bo_count + job->out_bo_count, sizeof(void *),
> +			     GFP_KERNEL);
> +	memcpy(bos, job->in_bos, job->in_bo_count * sizeof(void *));
> +	memcpy(&bos[job->in_bo_count], job->out_bos, job->out_bo_count * sizeof(void *));
> +
> +	ret = drm_gem_lock_reservations(bos, job->in_bo_count + job->out_bo_count, &acquire_ctx);
> +	if (ret)
> +		goto err;
> +
> +	mutex_lock(&rdev->sched_lock);
> +	drm_sched_job_arm(&job->base);
> +
> +	job->inference_done_fence = dma_fence_get(&job->base.s_fence->finished);
> +
> +	ret = rocket_acquire_object_fences(job->in_bos, job->in_bo_count, &job->base, false);
> +	if (ret) {
> +		mutex_unlock(&rdev->sched_lock);
> +		goto err_unlock;
> +	}
> +
> +	ret = rocket_acquire_object_fences(job->out_bos, job->out_bo_count, &job->base, true);
> +	if (ret) {
> +		mutex_unlock(&rdev->sched_lock);
> +		goto err_unlock;
> +	}
> +
> +	kref_get(&job->refcount); /* put by scheduler job completion */
> +
> +	drm_sched_entity_push_job(&job->base);
> +
> +	mutex_unlock(&rdev->sched_lock);
> +
> +	rocket_attach_object_fences(job->out_bos, job->out_bo_count, job->inference_done_fence);
> +
> +err_unlock:
> +	drm_gem_unlock_reservations(bos, job->in_bo_count + job->out_bo_count, &acquire_ctx);
> +err:
> +	kfree(bos);
> +
> +	return ret;
> +}
> +
> +static void rocket_job_cleanup(struct kref *ref)
> +{
> +	struct rocket_job *job = container_of(ref, struct rocket_job,
> +						refcount);
> +	unsigned int i;
> +
> +	dma_fence_put(job->done_fence);
> +	dma_fence_put(job->inference_done_fence);
> +
> +	if (job->in_bos) {
> +		for (i = 0; i < job->in_bo_count; i++)
> +			drm_gem_object_put(job->in_bos[i]);
> +
> +		kvfree(job->in_bos);
> +	}
> +
> +	if (job->out_bos) {
> +		for (i = 0; i < job->out_bo_count; i++)
> +			drm_gem_object_put(job->out_bos[i]);
> +
> +		kvfree(job->out_bos);
> +	}
> +
> +	kfree(job->tasks);
> +
> +	kfree(job);
> +}
> +
> +static void rocket_job_put(struct rocket_job *job)
> +{
> +	kref_put(&job->refcount, rocket_job_cleanup);
> +}
> +
> +static void rocket_job_free(struct drm_sched_job *sched_job)
> +{
> +	struct rocket_job *job = to_rocket_job(sched_job);
> +
> +	drm_sched_job_cleanup(sched_job);
> +
> +	rocket_job_put(job);
> +}
> +
> +static struct rocket_core *sched_to_core(struct rocket_device *rdev,
> +					 struct drm_gpu_scheduler *sched)
> +{
> +	unsigned int core;
> +
> +	for (core = 0; core < rdev->num_cores; core++) {
> +		if (&rdev->cores[core].sched == sched)
> +			return &rdev->cores[core];
> +	}
> +
> +	return NULL;
> +}
> +
> +static struct dma_fence *rocket_job_run(struct drm_sched_job *sched_job)
> +{
> +	struct rocket_job *job = to_rocket_job(sched_job);
> +	struct rocket_device *rdev = job->rdev;
> +	struct rocket_core *core = sched_to_core(rdev, sched_job->sched);
> +	struct dma_fence *fence = NULL;
> +	int ret;
> +
> +	if (unlikely(job->base.s_fence->finished.error))
> +		return NULL;
> +
> +	/*
> +	 * Nothing to execute: can happen if the job has finished while
> +	 * we were resetting the GPU.
> +	 */
> +	if (job->next_task_idx == job->task_count)
> +		return NULL;
> +
> +	fence = rocket_fence_create(core);
> +	if (IS_ERR(fence))
> +		return fence;
> +
> +	if (job->done_fence)
> +		dma_fence_put(job->done_fence);
> +	job->done_fence = dma_fence_get(fence);
> +
> +	ret = pm_runtime_get_sync(core->dev);
> +	if (ret < 0)
> +		return fence;
> +
> +	spin_lock(&core->job_lock);
> +
> +	core->in_flight_job = job;
> +	rocket_job_hw_submit(core, job);
> +
> +	spin_unlock(&core->job_lock);
> +
> +	return fence;
> +}
> +
> +static void rocket_job_handle_done(struct rocket_core *core,
> +				   struct rocket_job *job)
> +{
> +	if (job->next_task_idx < job->task_count) {
> +		rocket_job_hw_submit(core, job);
> +		return;
> +	}
> +
> +	core->in_flight_job = NULL;
> +	dma_fence_signal_locked(job->done_fence);
> +	pm_runtime_put_autosuspend(core->dev);
> +}
> +
> +static void rocket_job_handle_irq(struct rocket_core *core)
> +{
> +	uint32_t status, raw_status;
> +
> +	pm_runtime_mark_last_busy(core->dev);
> +
> +	status = rocket_read(core, REG_PC_INTERRUPT_STATUS);
> +	raw_status = rocket_read(core, REG_PC_INTERRUPT_RAW_STATUS);
> +
> +	rocket_write(core, REG_PC_OPERATION_ENABLE, 0x0);
> +	rocket_write(core, REG_PC_INTERRUPT_CLEAR, 0x1ffff);
> +
> +	spin_lock(&core->job_lock);
> +
> +	if (core->in_flight_job)
> +		rocket_job_handle_done(core, core->in_flight_job);
> +
> +	spin_unlock(&core->job_lock);
> +}
> +
> +static void
> +rocket_reset(struct rocket_core *core, struct drm_sched_job *bad)
> +{
> +	bool cookie;
> +
> +	if (!atomic_read(&core->reset.pending))
> +		return;
> +
> +	/*
> +	 * Stop the scheduler.
> +	 *
> +	 * FIXME: We temporarily get out of the dma_fence_signalling section
> +	 * because the cleanup path generate lockdep splats when taking locks
> +	 * to release job resources. We should rework the code to follow this
> +	 * pattern:
> +	 *
> +	 *	try_lock
> +	 *	if (locked)
> +	 *		release
> +	 *	else
> +	 *		schedule_work_to_release_later
> +	 */
> +	drm_sched_stop(&core->sched, bad);
> +
> +	cookie = dma_fence_begin_signalling();
> +
> +	if (bad)
> +		drm_sched_increase_karma(bad);
> +
> +	/*
> +	 * Mask job interrupts and synchronize to make sure we won't be
> +	 * interrupted during our reset.
> +	 */
> +	rocket_write(core, REG_PC_INTERRUPT_MASK, 0x0);
> +	synchronize_irq(core->irq);
> +
> +	/* Handle the remaining interrupts before we reset. */
> +	rocket_job_handle_irq(core);
> +
> +	/*
> +	 * Remaining interrupts have been handled, but we might still have
> +	 * stuck jobs. Let's make sure the PM counters stay balanced by
> +	 * manually calling pm_runtime_put_noidle() and
> +	 * rocket_devfreq_record_idle() for each stuck job.
> +	 * Let's also make sure the cycle counting register's refcnt is
> +	 * kept balanced to prevent it from running forever
> +	 */
> +	spin_lock(&core->job_lock);
> +	if (core->in_flight_job)
> +		pm_runtime_put_noidle(core->dev);
> +
> +	core->in_flight_job = NULL;
> +	spin_unlock(&core->job_lock);
> +
> +	/* Proceed with reset now. */
> +	pm_runtime_force_suspend(core->dev);
> +	pm_runtime_force_resume(core->dev);
> +
> +	/* GPU has been reset, we can clear the reset pending bit. */
> +	atomic_set(&core->reset.pending, 0);
> +
> +	/*
> +	 * Now resubmit jobs that were previously queued but didn't have a
> +	 * chance to finish.
> +	 * FIXME: We temporarily get out of the DMA fence signalling section
> +	 * while resubmitting jobs because the job submission logic will
> +	 * allocate memory with the GFP_KERNEL flag which can trigger memory
> +	 * reclaim and exposes a lock ordering issue.
> +	 */
> +	dma_fence_end_signalling(cookie);
> +	drm_sched_resubmit_jobs(&core->sched);
> +	cookie = dma_fence_begin_signalling();
> +
> +	/* Restart the scheduler */
> +	drm_sched_start(&core->sched, 0);
> +
> +	dma_fence_end_signalling(cookie);
> +}
> +
> +static enum drm_gpu_sched_stat rocket_job_timedout(struct drm_sched_job *sched_job)
> +{
> +	struct rocket_job *job = to_rocket_job(sched_job);
> +	struct rocket_device *rdev = job->rdev;
> +	struct rocket_core *core = sched_to_core(rdev, sched_job->sched);
> +
> +	/*
> +	 * If the GPU managed to complete this jobs fence, the timeout is
> +	 * spurious. Bail out.
> +	 */
> +	if (dma_fence_is_signaled(job->done_fence))
> +		return DRM_GPU_SCHED_STAT_NOMINAL;
> +
> +	/*
> +	 * Rocket IRQ handler may take a long time to process an interrupt
> +	 * if there is another IRQ handler hogging the processing.
> +	 * For example, the HDMI encoder driver might be stuck in the IRQ
> +	 * handler for a significant time in a case of bad cable connection.
> +	 * In order to catch such cases and not report spurious rocket
> +	 * job timeouts, synchronize the IRQ handler and re-check the fence
> +	 * status.
> +	 */
> +	synchronize_irq(core->irq);
> +
> +	if (dma_fence_is_signaled(job->done_fence)) {
> +		dev_warn(core->dev, "unexpectedly high interrupt latency\n");
> +		return DRM_GPU_SCHED_STAT_NOMINAL;
> +	}
> +
> +	dev_err(core->dev, "gpu sched timeout");
> +
> +	atomic_set(&core->reset.pending, 1);
> +	rocket_reset(core, sched_job);
> +
> +	return DRM_GPU_SCHED_STAT_NOMINAL;
> +}
> +
> +static void rocket_reset_work(struct work_struct *work)
> +{
> +	struct rocket_core *core;
> +
> +	core = container_of(work, struct rocket_core, reset.work);
> +	rocket_reset(core, NULL);
> +}
> +
> +static const struct drm_sched_backend_ops rocket_sched_ops = {
> +	.run_job = rocket_job_run,
> +	.timedout_job = rocket_job_timedout,
> +	.free_job = rocket_job_free
> +};
> +
> +static irqreturn_t rocket_job_irq_handler_thread(int irq, void *data)
> +{
> +	struct rocket_core *core = data;
> +
> +	rocket_job_handle_irq(core);
> +
> +	return IRQ_HANDLED;
> +}
> +
> +static irqreturn_t rocket_job_irq_handler(int irq, void *data)
> +{
> +	struct rocket_core *core = data;
> +	uint32_t raw_status = rocket_read(core, REG_PC_INTERRUPT_RAW_STATUS);
> +
> +	WARN_ON(raw_status & PC_INTERRUPT_RAW_STATUS_DMA_READ_ERROR);
> +	WARN_ON(raw_status & PC_INTERRUPT_RAW_STATUS_DMA_READ_ERROR);
> +
> +	if (!(raw_status & PC_INTERRUPT_RAW_STATUS_DPU_0 ||
> +	      raw_status & PC_INTERRUPT_RAW_STATUS_DPU_1))
> +		return IRQ_NONE;
> +
> +	rocket_write(core, REG_PC_INTERRUPT_MASK, 0x0);
> +
> +	return IRQ_WAKE_THREAD;
> +}
> +
> +int rocket_job_init(struct rocket_core *core)
> +{
> +	int ret;
> +
> +	INIT_WORK(&core->reset.work, rocket_reset_work);
> +	spin_lock_init(&core->job_lock);
> +
> +	core->irq = platform_get_irq(to_platform_device(core->dev), 0);
> +	if (core->irq < 0)
> +		return core->irq;
> +
> +	ret = devm_request_threaded_irq(core->dev, core->irq,
> +					rocket_job_irq_handler,
> +					rocket_job_irq_handler_thread,
> +					IRQF_SHARED, KBUILD_MODNAME "-job",
> +					core);
> +	if (ret) {
> +		dev_err(core->dev, "failed to request job irq");
> +		return ret;
> +	}
> +
> +	core->reset.wq = alloc_ordered_workqueue("rocket-reset-%d", 0, core->index);
> +	if (!core->reset.wq)
> +		return -ENOMEM;
> +
> +	core->fence_context = dma_fence_context_alloc(1);
> +
> +	ret = drm_sched_init(&core->sched,
> +				&rocket_sched_ops, NULL,
> +				DRM_SCHED_PRIORITY_COUNT,
> +				1, 0,
> +				msecs_to_jiffies(JOB_TIMEOUT_MS),
> +				core->reset.wq,
> +				NULL, "rocket", core->dev);
> +	if (ret) {
> +		dev_err(core->dev, "Failed to create scheduler: %d.", ret);
> +		goto err_sched;
> +	}
> +
> +	return 0;
> +
> +err_sched:
> +	drm_sched_fini(&core->sched);
> +
> +	destroy_workqueue(core->reset.wq);
> +	return ret;
> +}
> +
> +void rocket_job_fini(struct rocket_core *core)
> +{
> +	drm_sched_fini(&core->sched);
> +
> +	cancel_work_sync(&core->reset.work);
> +	destroy_workqueue(core->reset.wq);
> +}
> +
> +int rocket_job_open(struct rocket_file_priv *rocket_priv)
> +{
> +	struct rocket_device *rdev = rocket_priv->rdev;
> +	struct drm_gpu_scheduler **scheds = kmalloc_array(rdev->num_cores, sizeof(scheds),
> +							  GFP_KERNEL);
> +	unsigned int core;
> +	int ret;
> +
> +	for (core = 0; core < rdev->num_cores; core++)
> +		scheds[core] = &rdev->cores[core].sched;
> +
> +	ret = drm_sched_entity_init(&rocket_priv->sched_entity,
> +				    DRM_SCHED_PRIORITY_NORMAL,
> +				    scheds,
> +				    rdev->num_cores, NULL);
> +	if (WARN_ON(ret))
> +		return ret;
> +
> +	return 0;
> +}
> +
> +void rocket_job_close(struct rocket_file_priv *rocket_priv)
> +{
> +	struct drm_sched_entity *entity = &rocket_priv->sched_entity;
> +
> +	kfree(entity->sched_list);
> +	drm_sched_entity_destroy(entity);
> +}
> +
> +int rocket_job_is_idle(struct rocket_core *core)
> +{
> +	/* If there are any jobs in this HW queue, we're not idle */
> +	if (atomic_read(&core->sched.credit_count))
> +		return false;
> +
> +	return true;
> +}
> +
> +static int rocket_ioctl_submit_job(struct drm_device *dev, struct drm_file *file,
> +				   struct drm_rocket_job *job)
> +{
> +	struct rocket_device *rdev = to_rocket_device(dev);
> +	struct rocket_file_priv *file_priv = file->driver_priv;
> +	struct rocket_job *rjob = NULL;
> +	int ret = 0;
> +
> +	if (job->task_count == 0)
> +		return -EINVAL;
> +
> +	rjob = kzalloc(sizeof(*rjob), GFP_KERNEL);
> +	if (!rjob)
> +		return -ENOMEM;
> +
> +	kref_init(&rjob->refcount);
> +
> +	rjob->rdev = rdev;
> +
> +	ret = drm_sched_job_init(&rjob->base,
> +				 &file_priv->sched_entity,
> +				 1, NULL);
> +	if (ret)
> +		goto out_put_job;
> +
> +	ret = rocket_copy_tasks(dev, file, job, rjob);
> +	if (ret)
> +		goto out_cleanup_job;
> +
> +	ret = drm_gem_objects_lookup(file,
> +				     (void __user *)(uintptr_t)job->in_bo_handles,
> +				     job->in_bo_handle_count, &rjob->in_bos);
> +	if (ret)
> +		goto out_cleanup_job;
> +
> +	rjob->in_bo_count = job->in_bo_handle_count;
> +
> +	ret = drm_gem_objects_lookup(file,
> +				     (void __user *)(uintptr_t)job->out_bo_handles,
> +				     job->out_bo_handle_count, &rjob->out_bos);
> +	if (ret)
> +		goto out_cleanup_job;
> +
> +	rjob->out_bo_count = job->out_bo_handle_count;
> +
> +	ret = rocket_job_push(rjob);
> +	if (ret)
> +		goto out_cleanup_job;
> +
> +out_cleanup_job:
> +	if (ret)
> +		drm_sched_job_cleanup(&rjob->base);
> +out_put_job:
> +	rocket_job_put(rjob);
> +
> +	return ret;
> +}
> +
> +int rocket_ioctl_submit(struct drm_device *dev, void *data, struct drm_file *file)
> +{
> +	struct drm_rocket_submit *args = data;
> +	struct drm_rocket_job *jobs;
> +	int ret = 0;
> +	unsigned int i = 0;
> +
> +	jobs = kvmalloc_array(args->job_count, sizeof(*jobs), GFP_KERNEL);
> +	if (!jobs) {
> +		DRM_DEBUG("Failed to allocate incoming job array\n");
> +		return -ENOMEM;
> +	}
> +
> +	if (copy_from_user(jobs,
> +			   (void __user *)(uintptr_t)args->jobs,
> +			   args->job_count * sizeof(*jobs))) {
> +		ret = -EFAULT;
> +		DRM_DEBUG("Failed to copy incoming job array\n");
> +		goto exit;
> +	}
> +
> +	for (i = 0; i < args->job_count; i++)
> +		rocket_ioctl_submit_job(dev, file, &jobs[i]);
> +
> +exit:
> +	kfree(jobs);
> +
> +	return ret;
> +}
> diff --git a/drivers/accel/rocket/rocket_job.h b/drivers/accel/rocket/rocket_job.h
> new file mode 100644
> index 0000000000000000000000000000000000000000..93fa1f988c72adb7a405acbf08c1c9b87d22f9c5
> --- /dev/null
> +++ b/drivers/accel/rocket/rocket_job.h
> @@ -0,0 +1,50 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/* Copyright 2024 Tomeu Vizoso <tomeu@tomeuvizoso.net> */
> +
> +#ifndef __ROCKET_JOB_H__
> +#define __ROCKET_JOB_H__
> +
> +#include <drm/drm_drv.h>
> +#include <drm/gpu_scheduler.h>
> +
> +#include "rocket_core.h"
> +#include "rocket_drv.h"
> +
> +struct rocket_task {
> +	u64 regcmd;
> +	u32 regcmd_count;
> +};
> +
> +struct rocket_job {
> +	struct drm_sched_job base;
> +
> +	struct rocket_device *rdev;
> +
> +	struct drm_gem_object **in_bos;
> +	struct drm_gem_object **out_bos;
> +
> +	u32 in_bo_count;
> +	u32 out_bo_count;
> +
> +	struct rocket_task *tasks;
> +	u32 task_count;
> +	u32 next_task_idx;
> +
> +	/* Fence to be signaled by drm-sched once its done with the job */
> +	struct dma_fence *inference_done_fence;
> +
> +	/* Fence to be signaled by IRQ handler when the job is complete. */
> +	struct dma_fence *done_fence;
> +
> +	struct kref refcount;
> +};
> +
> +int rocket_ioctl_submit(struct drm_device *dev, void *data, struct drm_file *file);
> +
> +int rocket_job_init(struct rocket_core *core);
> +void rocket_job_fini(struct rocket_core *core);
> +int rocket_job_open(struct rocket_file_priv *rocket_priv);
> +void rocket_job_close(struct rocket_file_priv *rocket_priv);
> +int rocket_job_is_idle(struct rocket_core *core);
> +
> +#endif
> diff --git a/include/uapi/drm/rocket_accel.h b/include/uapi/drm/rocket_accel.h
> index 8338726a83c31b954608ca505cf78bcd70d3494b..eb886351134ebef62969b1e1182ccc174f88fe9d 100644
> --- a/include/uapi/drm/rocket_accel.h
> +++ b/include/uapi/drm/rocket_accel.h
> @@ -12,8 +12,10 @@ extern "C" {
>   #endif
>   
>   #define DRM_ROCKET_CREATE_BO			0x00
> +#define DRM_ROCKET_SUBMIT			0x01
>   
>   #define DRM_IOCTL_ROCKET_CREATE_BO		DRM_IOWR(DRM_COMMAND_BASE + DRM_ROCKET_CREATE_BO, struct drm_rocket_create_bo)
> +#define DRM_IOCTL_ROCKET_SUBMIT			DRM_IOW(DRM_COMMAND_BASE + DRM_ROCKET_SUBMIT, struct drm_rocket_submit)
>   
>   /**
>    * struct drm_rocket_create_bo - ioctl argument for creating Rocket BOs.
> @@ -36,6 +38,59 @@ struct drm_rocket_create_bo {
>   	__u64 offset;
>   };
>   
> +/**
> + * struct drm_rocket_task - A task to be run on the NPU
> + *
> + * A task is the smallest unit of work that can be run on the NPU.
> + */
> +struct drm_rocket_task {
> +	/** DMA address to NPU mapping of register command buffer */
> +	__u64 regcmd;
> +
> +	/** Number of commands in the register command buffer */
> +	__u32 regcmd_count;
> +};
> +
> +/**
> + * struct drm_rocket_job - A job to be run on the NPU
> + *
> + * The kernel will schedule the execution of this job taking into account its
> + * dependencies with other jobs. All tasks in the same job will be executed
> + * sequentially on the same core, to benefit from memory residency in SRAM.
> + */
> +struct drm_rocket_job {
> +	/** Pointer to an array of struct drm_rocket_task. */
> +	__u64 tasks;
> +
> +	/** Pointer to a u32 array of the BOs that are read by the job. */
> +	__u64 in_bo_handles;
> +
> +	/** Pointer to a u32 array of the BOs that are written to by the job. */
> +	__u64 out_bo_handles;
> +
> +	/** Number of tasks passed in. */
> +	__u32 task_count;
> +
> +	/** Number of input BO handles passed in (size is that times 4). */
> +	__u32 in_bo_handle_count;
> +
> +	/** Number of output BO handles passed in (size is that times 4). */
> +	__u32 out_bo_handle_count;
> +};
> +
> +/**
> + * struct drm_rocket_submit - ioctl argument for submitting commands to the NPU.
> + *
> + * The kernel will schedule the execution of these jobs in dependency order.
> + */
> +struct drm_rocket_submit {
> +	/** Pointer to an array of struct drm_rocket_job. */
> +	__u64 jobs;
> +
> +	/** Number of jobs passed in. */
> +	__u32 job_count;
> +};
> +
>   #if defined(__cplusplus)
>   }
>   #endif
>

-- 
--
Thomas Zimmermann
Graphics Driver Developer
SUSE Software Solutions Germany GmbH
Frankenstrasse 146, 90461 Nuernberg, Germany
GF: Ivo Totev, Andrew Myers, Andrew McDonald, Boudien Moerman
HRB 36809 (AG Nuernberg)


