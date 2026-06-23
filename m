Return-Path: <devicetree+bounces-314986-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id zUWyAbHsOmrOLggAu9opvQ
	(envelope-from <devicetree+bounces-314986-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 22:29:37 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 555D46BA042
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 22:29:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=GzMKrlnC;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314986-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-314986-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DC9E13067F3D
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 20:28:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D05D39EF3F;
	Tue, 23 Jun 2026 20:28:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 334F439EF01
	for <devicetree@vger.kernel.org>; Tue, 23 Jun 2026 20:28:48 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782246529; cv=none; b=HiTNn0lxqDQidXDbQEWS4k3nLG/AYRJGebapeebYOUPTyKLRtHpVkFfjcaAej3XSt/tPls95q6h5aZ7Lec2gjyHHN2ohvf5FbDMjY005fHUUxP8C7LOeOGRQ/AU4xBRolHsf8zrb4Zh5fwkztt5cZKUwiSyGDwtq6ptSN9Z+Vio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782246529; c=relaxed/simple;
	bh=t8xcItmxlUvZa4FfZZJt06O8z78xeEb1VcfkqELMyB0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=sg9rBJBfcloF/uSaTHeyAXsNmFc7jCkPDWcEk+3amp6klMWgLzAWgM3AbjIL9V9IcNeqtg4aXzGnp3qglUJBBRpioRCoV8dFSxOhTZ5+/N+o1+26tyt1wgFSbJ9LiEnVGcVyoQbQqHw6cQEGFRrhrF++otbP0VmWFfvphCiQOBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GzMKrlnC; arc=none smtp.client-ip=209.85.128.48
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-4908b92904fso3431165e9.0
        for <devicetree@vger.kernel.org>; Tue, 23 Jun 2026 13:28:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782246527; x=1782851327; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HUvOpAp1AnoH/UC2gSkhKh0euuT0oHxArLADJwiZt64=;
        b=GzMKrlnCNbDqiN+34vOHhKJBiOI1b86rKRjkiVlf0haZlFOusdIQknG6HIQ8E0y2UE
         RiVeLRQWrFayEIaPQiQJHLO1IViOBx5cmd5BXARBiloO7xF133aWJLITM7ZTkJd5XEec
         EL00S0gLbBzdRyK61dr69zzu1aFg6uJlUuozg90UxbWK9NfIu/Dy92HnRfeetxi3FIFO
         Q+ImbYYTk2sZ3Clknrx7uZPBcBUes1IXI7VGpQTiiom9FnBzj//9t/t+XAjDYgu597Af
         Vjb8e0mDS5Owg/VYlaDDa9bzdrlqnflfkRtQ5f8sV29yIwgAbW8F7iXEEhoy279E79LU
         XaBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782246527; x=1782851327;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=HUvOpAp1AnoH/UC2gSkhKh0euuT0oHxArLADJwiZt64=;
        b=P/noeakgcHUdhXoJf8XBSMoNgMdZFZCkHZxA3stSmERD19cS2BeND0FdHSyZ9htJ+7
         jd8GA8uTCL38t6Fq0hfn5Irp3N33hxahNIHyBhMm4e7sguRvZiPjgpqc2sh9XIbBFu2x
         JvyTOGsiFRNN9mIKkMGbemDaz4Q91NL1p6eN+7t7LInZJEQOcojmY0P/Ms3GTAwHQLVm
         FDER2KnIP4d8nIHw7/CkYgm8x4Krw0SfMng3drseuEEIRBU/0EDYw9IJdUqe2K1q9N/w
         Dd4S9O3sM4uUzf/fR3opBDpUjW2/y42KClzTNvNpxRJP/IESIxsz2E4z7sKZ6f52M8OF
         uYoQ==
X-Forwarded-Encrypted: i=1; AFNElJ/wuj1omV7ielppCP2xwdRFSeWW2k5lfLltNyJASZG/xKbKz91F4Oy48st0z4/AYNQOdVu/oCt2/Zoe@vger.kernel.org
X-Gm-Message-State: AOJu0Yyr1LZA6PGNQwMFM7fzxb6LnmBTWC2wz/wVd+qnLvw/CkP88Bhj
	3cDfIfeJxAXsQcJLHFDK8HaWQ0zf5iIWET8xVTMd45bf+0d8M8lkky8b
X-Gm-Gg: AfdE7cl750flNBrnbVPFa0GuKpfkLvV0kBWWCWimn6h5vHgIRWpJepr/ACcXRFk3RhN
	fz4ZT2wLnOfAUdIEnpivpf7jXNSem6M+v0rlrYM2NzUheZGo/KQa15k4IMaCjFDDJ6KYIdzFzvp
	WTSJs9kkqe/W2RkmlYEHJR6x1xngQvOH8MeKCqmtRGyLF729Tujh0svc392+Ia/bEdf4VKOZttu
	88IDcYzR1HgydrWRT5bJ8ZWHT6Tg2jq6F4QTT5oXj7efbpqmxcJ1D7vLwhE6dYRvYruHB1UGkfo
	dM15iENKcQgJa9mSFwB0t+2/66heQXDdZpVtmQe432NLrqLiZsEF1rSiXBXY1W9mshIp1Jc5uRG
	LYenV5mxgx6aESmpYYA4i4gP9FZ/XGPpx4jRBPpIm1FXy4Dylkfa4Nr5mSKPn4SCxYpHg7JpvgZ
	hYtq426jIt1xG6QNExMDpuyt5zRd4ziMNqlMqkRA==
X-Received: by 2002:a05:600c:6308:b0:490:b8c0:d470 with SMTP id 5b1f17b1804b1-4925b37eb4emr62966205e9.19.1782246526525;
        Tue, 23 Jun 2026 13:28:46 -0700 (PDT)
Received: from anthony.local ([2a06:c701:49b2:4c00:12ff:e0ff:fea5:3d2e])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49249207dabsm570397635e9.0.2026.06.23.13.28.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jun 2026 13:28:45 -0700 (PDT)
From: Amit Barzilai <amit.barzilai22@gmail.com>
To: javierm@redhat.com,
	andriy.shevchenko@intel.com,
	mripard@kernel.org
Cc: airlied@gmail.com,
	andy@kernel.org,
	azuddinadam@gmail.com,
	chintanlike@gmail.com,
	conor+dt@kernel.org,
	deller@gmx.de,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	gregkh@linuxfoundation.org,
	krzk+dt@kernel.org,
	linux-fbdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-staging@lists.linux.dev,
	maarten.lankhorst@linux.intel.com,
	robh@kernel.org,
	simona@ffwll.ch,
	tzimmermann@suse.de
Subject: Re: [PATCH v2 4/4] staging: fbtft: remove fb_ssd1351 driver
Date: Tue, 23 Jun 2026 23:28:11 +0300
Message-ID: <20260623202811.16262-1-amit.barzilai22@gmail.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <87ik79iqsz.fsf@ocarina.mail-host-address-is-not-set>
References: <87ik79iqsz.fsf@ocarina.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-314986-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:javierm@redhat.com,m:andriy.shevchenko@intel.com,m:mripard@kernel.org,m:airlied@gmail.com,m:andy@kernel.org,m:azuddinadam@gmail.com,m:chintanlike@gmail.com,m:conor+dt@kernel.org,m:deller@gmx.de,m:devicetree@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:gregkh@linuxfoundation.org,m:krzk+dt@kernel.org,m:linux-fbdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-staging@lists.linux.dev,m:maarten.lankhorst@linux.intel.com,m:robh@kernel.org,m:simona@ffwll.ch,m:tzimmermann@suse.de,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[amitbarzilai22@gmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,gmx.de,vger.kernel.org,lists.freedesktop.org,linuxfoundation.org,lists.linux.dev,linux.intel.com,ffwll.ch,suse.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[amitbarzilai22@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 555D46BA042

Javier Martinez Canillas <javierm@redhat.com> writes:

> Andy Shevchenko <andriy.shevchenko@intel.com> writes:
>
>> On Mon, Jun 22, 2026 at 06:25:06PM +0300, Amit Barzilai wrote:
>>> The SSD1351 support was added to the ssd130x DRM driver. To avoid
>>> confusion and irrelevant updates, the staging fb_ssd1351 driver is
>>> removed.
>>
>> NAK, the fbtft has two drivers in one (SPI + parallel), plus as Maxime said,
>> it has its own binding.
>>
>
> Yes, I agree that we don't want to delete the fbtft driver.

I will remove this patch from the next version.

Thank you Javier, Andy and Maxime for the feedback and explanations.

-- 
Thanks,

Amit


