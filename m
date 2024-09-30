Return-Path: <devicetree+bounces-106357-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B2D2989DF3
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 11:22:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B539628348B
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 09:22:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A659C1885B9;
	Mon, 30 Sep 2024 09:21:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rasmusvillemoes.dk header.i=@rasmusvillemoes.dk header.b="Hh+UI6Hb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2003718801A
	for <devicetree@vger.kernel.org>; Mon, 30 Sep 2024 09:21:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727688115; cv=none; b=GqjiqTMISseF+5/0cszadWc11laol+EqNcsOkrpLDLYrVygsLAcRsftVqoRw0GvmuRs+asCfTibgfX7JXclv/PDDBC3mqrtR9MyOd7VIiD2B6tGA8d/Owzamzgr0hHKRITopMse/FAuvyEOgJ7HUX6OD8XeJhVIkJfVdD5Wih3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727688115; c=relaxed/simple;
	bh=ihqC0moMa0gkpZDgI3toCyjoo7KCGvJzUF/2ZGkTW2U=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=TlH0JL5Asr3pX4xNV2oMke6rOJ7hv9J0RvbAqw8PJFN2pq1BEn9b9XMRLxiL3LuoIEXal44VQsOzMxFxMhkrpnHgyaOEg7ipQTPsbzwnF4LbL/DrSUqnjhIEkkYdVjHhyc7oecWpA9REXgfSRDVw6CDIhlNJak3/fIqd89r5bnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rasmusvillemoes.dk; spf=pass smtp.mailfrom=rasmusvillemoes.dk; dkim=pass (1024-bit key) header.d=rasmusvillemoes.dk header.i=@rasmusvillemoes.dk header.b=Hh+UI6Hb; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rasmusvillemoes.dk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rasmusvillemoes.dk
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2fac6b3c220so9875811fa.2
        for <devicetree@vger.kernel.org>; Mon, 30 Sep 2024 02:21:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rasmusvillemoes.dk; s=google; t=1727688111; x=1728292911; darn=vger.kernel.org;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wOxBnbL6b/6p40BCLZnOmRygJyLDz0xvKxJvU54ZAcY=;
        b=Hh+UI6HbZcPGxjieEM4TxX9epsDZL+qMmDuJ3zyGj9tt418SFzVPGRcZhiOyCP4pEB
         UR2+4leTrlu8SqUM+nRxznVArjAjWKESk15d7PnU8qxL0M0Say2CsznYeIzGx+5Gg/A0
         HG4hkthepBPj4si4t/c6pJaoXTRbGfmsTYQ7w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727688111; x=1728292911;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wOxBnbL6b/6p40BCLZnOmRygJyLDz0xvKxJvU54ZAcY=;
        b=QO35xUljYOVZ6aJG4a1DaKQ5vS+gRcxZ8wFhEF+FcqcVaUvDEBl9lmOIWeCXQoOLke
         QG/t/tgC6dFWdV8beRpLsH0G3f9xAM7UBiTSj5O4XqAZcya+k/PiF0j8duDUua+rjTT7
         1TRDRkPQUzNLM97FmH7jYHuL47kTIGnRDbDoQDlh+o7Qu3F+fWHi2yFznHabNdoXx7G6
         musS0cLHwsn2X0aLdiVpI79R3Vbdkgxz7CYC9T0Hqp4yHQpnBxLnxygl3Xw7YmNYhRZh
         gUGA6vCsbJwz0KxqEUKtno1c8Xx12IZE83/My33tYZX4mzSAIe/S4PETJyymCiHXJ3BK
         237Q==
X-Forwarded-Encrypted: i=1; AJvYcCVpmRyLb4wgF7z4JSyiZpU/Sy1HYCZi4x8Hy/SBQ8xa8EWg1mo+LDuxNQkcyBJAZNrAjbgPZMz1amGM@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6C377kteyYLZh2OyUjdV34PfJzIv77GGvwBsBa0wCAIIGCFZm
	T4WqnmUUXbsru7k/M8WoX44eLLvt3ZmlMRs7sQ999mpT35ezHLkwbXtpohVa6S4=
X-Google-Smtp-Source: AGHT+IHL3VXY5tvf4j7T6OaXxNRI231E0ILvU2TYhIVSEH7SSrJfMFW2DpRSkuCTashwRBUmWDv3uw==
X-Received: by 2002:a2e:be1c:0:b0:2fa:cd3d:4a76 with SMTP id 38308e7fff4ca-2facd3d4c8fmr18895301fa.43.1727688111067;
        Mon, 30 Sep 2024 02:21:51 -0700 (PDT)
Received: from localhost ([81.216.59.226])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2f9d4618eecsm12885541fa.118.2024.09.30.02.21.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Sep 2024 02:21:50 -0700 (PDT)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Christian Marangi <ansuelsmth@gmail.com>
Cc: Jens Axboe <axboe@kernel.dk>,  Jonathan Corbet <corbet@lwn.net>,  Ulf
 Hansson <ulf.hansson@linaro.org>,  Rob Herring <robh@kernel.org>,
  Krzysztof Kozlowski <krzk+dt@kernel.org>,  Conor Dooley
 <conor+dt@kernel.org>,  INAGAKI Hiroshi <musashino.open@gmail.com>,
  Daniel Golle <daniel@makrotopia.org>,  Christian Brauner
 <brauner@kernel.org>,  Al Viro <viro@zeniv.linux.org.uk>,  Jan Kara
 <jack@suse.cz>,  Li Lingfeng <lilingfeng3@huawei.com>,  Christian Heusel
 <christian@heusel.eu>,  linux-block@vger.kernel.org,
  linux-doc@vger.kernel.org,  linux-kernel@vger.kernel.org,
  linux-mmc@vger.kernel.org,  devicetree@vger.kernel.org,  Miquel Raynal
 <miquel.raynal@bootlin.com>,  Lorenzo Bianconi <lorenzo@kernel.org>,
  upstream@airoha.com
Subject: Re: [PATCH v3 3/4] block: add support for partition table defined
 in OF
In-Reply-To: <20240929140713.6883-4-ansuelsmth@gmail.com> (Christian Marangi's
	message of "Sun, 29 Sep 2024 16:06:19 +0200")
References: <20240929140713.6883-1-ansuelsmth@gmail.com>
	<20240929140713.6883-4-ansuelsmth@gmail.com>
Date: Mon, 30 Sep 2024 11:21:53 +0200
Message-ID: <877catlcni.fsf@prevas.dk>
User-Agent: Gnus/5.13 (Gnus v5.13)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Christian Marangi <ansuelsmth@gmail.com> writes:

> diff --git a/block/partitions/of.c b/block/partitions/of.c
> new file mode 100644
> index 000000000000..bc6200eb86b3
> --- /dev/null
> +++ b/block/partitions/of.c
> @@ -0,0 +1,151 @@
> +// SPDX-License-Identifier: GPL-2.0
> +
> +#include <linux/blkdev.h>
> +#include <linux/major.h>
> +#include <linux/of.h>
> +#include "check.h"
> +
> +#define BOOT0_STR	"boot0"
> +#define BOOT1_STR	"boot1"
> +
> +static struct device_node *get_partitions_node(struct device_node *disk_np,
> +					       struct gendisk *disk)
> +{
> +	const char *node_name = "partitions";
> +
> +	/*
> +	 * JEDEC specification 4.4 for eMMC introduced 3 additional partition
> +	 * present on every eMMC. These additional partition are always hardcoded
> +	 * from the eMMC driver as boot0, boot1 and rpmb. While rpmb is used to
> +	 * store keys and exposed as a char device, the other 2 are exposed as
> +	 * real separate disk with the boot0/1 appended to the disk name.
> +	 *
> +	 * Here we parse the disk_name in search for such suffix and select
> +	 * the correct partition node.
> +	 */
> +	if (disk->major == MMC_BLOCK_MAJOR) {
> +		const char *disk_name = disk->disk_name;
> +
> +		if (!memcmp(disk_name + strlen(disk_name) - strlen(BOOT0_STR),
> +			    BOOT0_STR, sizeof(BOOT0_STR)))
> +			node_name = "partitions-boot0";

If strlen(disk_name) is less than 5 (and I don't know if that's actually
possible), this well end up doing out-of-bounds access.

We have a strstarts() helper, could you also add a strends() helper that
handles this correctly? Something like

/**
 * strends - does @str end with @suffix?
 * @str: string to examine
 * @suffix: suffix to look for.
 */
static inline bool strends(const char *str, const char *suffix)
{
	size_t n = strlen(str);
        size_t m = strlen(suffix);
        return n >= m && !memcmp(str + n - m, suffix, m);
}

[or name it str_has_suffix() or str_ends_with(), "strends" is not
particularly readable, it's unfortunate that the existing strstarts is
spelled like that].

Rasmus

