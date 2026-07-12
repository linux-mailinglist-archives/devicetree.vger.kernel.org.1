Return-Path: <devicetree+bounces-325137-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id HMOLEM0PVGpZhgMAu9opvQ
	(envelope-from <devicetree+bounces-325137-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 00:06:05 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D28C074619E
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 00:06:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=ziepe.ca header.s=google header.b=QU11+5Md;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325137-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-325137-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id DB57E3004611
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 22:06:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04B1B37BE98;
	Sun, 12 Jul 2026 22:05:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 894B335E930
	for <devicetree@vger.kernel.org>; Sun, 12 Jul 2026 22:05:56 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783893958; cv=none; b=QMOB940G7l2OnPvbrJ2dF9Ql8YD8FOp51ebpmnoKRM3G1HuFJDBASv2Kl7a7oVgS+GQCAhujKphJbA84D0lBFeWpNvNcHgpak2w4PpaZWD4wkVNkHoL5ytWXzKj4FB1FhqMTDsXuTO8NjkRLO2scGmtMH27J0BniTJZqAHnmRDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783893958; c=relaxed/simple;
	bh=MyWENG1m9gbrfCTNQdsyzcqoLVZg6C/T4NBlYiaTdrM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VD4bBv4+N2gSQk5mkssoHEDE3gYx3b9+n0ODzX9KGXpK1WFm6lRpLIbb8CK5MpGrzPzkB33+/CnvMIkOl1guW6OeeacY0Z+WLlKINw9dMjVgU6Pwu7b68e03YHmpYUGU0ounXgxgjVC6TOvXUcYg/z0dHmdvbotuTmLG6hT3mJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca; spf=pass smtp.mailfrom=ziepe.ca; dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b=QU11+5Md; arc=none smtp.client-ip=209.85.222.171
Received: by mail-qk1-f171.google.com with SMTP id af79cd13be357-92e53581361so158627185a.1
        for <devicetree@vger.kernel.org>; Sun, 12 Jul 2026 15:05:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1783893955; x=1784498755; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=kivqKCD/+dlHoNCjZOlMrMIExYZ3y1i62zZem0Ylilc=;
        b=QU11+5Mda0KnlV+JXIYTbipbVqopaiyE1DdXF8cBaWf5+rMSCYfsQpux4OPVHeYPvG
         6skVRJdCm7XbI64NyE2zwRzFwt72h9sSDjFBIm2Uudv1di3k9JqfCPUlJzzYTQkF9Awe
         tBCLj6NSbxtkD4jUSfKL/NqJQKXuNp49L1A8SPOcG+5c0Ii8N49sFymkPGLd5LKf8DY6
         Ha9k4Dc5wWgjKkbP+P2VgGffUKJR8xLbwul/L8z/iwgU6n3337ODMBsBEZ90zfXfTrs3
         vdXxeOE4psrnA0vVTNnxCiz2beHPmbCnsWZmxSOs/Z54+AAkhxVab0OkXK8Euz0iSG36
         DCKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783893955; x=1784498755;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=kivqKCD/+dlHoNCjZOlMrMIExYZ3y1i62zZem0Ylilc=;
        b=OD7CZJr85HkY18k0Psrs6LhLL1cKYCcFTp4xor228m5bAQoe7nq1EbJ02oQmA5FTd+
         JSCKx/Tu+yt5JO+Nq4jYu2on+4hYoPLS2AIgQG21THfQNRfqMpIMewoRXGljBGvjg5f7
         i3rLjhMSGJzqi6cZqwqvWZ/nQl5whuZjJ/FM2FclX/KEr+lCFcTXAJkhJkf1k07XvMgp
         DGhggCQK5LmwFoQZW4KRUjCjF1wDUvMzmFvz6tgmRLqQ78xoNy6EaqFHNuhYP1nnkjjL
         iAKKbpWxRT96X6ESf4lGYoEp9vE5qxT15Ooxllz7bfdLQGfuwMJMmc0eBUVkpDrq9h2z
         17Ug==
X-Forwarded-Encrypted: i=1; AHgh+Rpfnmr8QIoJ+Wbe+XSlWAqYdHRY045RUAXnLKG4yHGlc6A1ybxlm/PH/TIZ6ahdOLvC48nWAGB25xXm@vger.kernel.org
X-Gm-Message-State: AOJu0Yw371uRAyy0Ga5FYI+YkXC4cOpwcVR/LuBXmqugg8qiibto1sFM
	F2zbJDsxnoKfnwhyZnJwxXv0loE94Vr6pAHc9SDLby1SzsGgDAbf955aMrUyXrJh1uA=
X-Gm-Gg: AfdE7cmskKIZbCbql+Z4CJZoYvYYnAQwfUu5lrzSn5IazsUzhxoC/mdmXdl0BUHewR2
	e5+I6MEqPiHfGCBLLAx7/Xl8pkI06J6I8TjNUTvUgTF+g3L9QhokJgG07up6vvEvBEXU7dWjqP8
	O9TqW2VmJiYbzQKTGwbeKVJXRCWqOrDuSQgBvjnZKWdTAGPQbpUK6Se77DiIqUgMHwcj4g5VjGb
	ZoMRfUb7Lxckt+vUMwaCFpKDaLKusbmqBbTzT6cbYgb6B3pH48JZxkkhmX7R3rveS8LOPm/aNSh
	9xhmlB7zK6sOnptDJjQQhf/agq8WwIJbBGOixLSVSvVPmcJeWlIp0SiZD5VPPrlUsgxt82QGJbf
	LDerLJyoxB0qLDDC2J3C0moOMaAc/fqVxPQcWmJAhPbI7/xF4/wcisQxIUze4
X-Received: by 2002:a05:620a:43a8:b0:92f:c78:559e with SMTP id af79cd13be357-92f0c785768mr97967985a.35.1783893955496;
        Sun, 12 Jul 2026 15:05:55 -0700 (PDT)
Received: from ziepe.ca ([159.2.72.92])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-92ee5baaab7sm953864085a.19.2026.07.12.15.05.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Jul 2026 15:05:55 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1wj2J8-0000000BnY7-1ro6;
	Sun, 12 Jul 2026 19:05:54 -0300
Date: Sun, 12 Jul 2026 19:05:54 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Daniel Drake <dan@reactivated.net>
Cc: "Joerg Roedel (AMD)" <joro@8bytes.org>, Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	iommu@lists.linux.dev, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	nick.hollinghurst@raspberrypi.com
Subject: Re: [PATCH 4/6] iommu/generic_pt: Add Broadcom BCM2712 page table
 format
Message-ID: <20260712220554.GC1835788@ziepe.ca>
References: <20260712-bcm2712-iommu-submit-v1-0-80e10cdde2ea@reactivated.net>
 <20260712-bcm2712-iommu-submit-v1-4-80e10cdde2ea@reactivated.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260712-bcm2712-iommu-submit-v1-4-80e10cdde2ea@reactivated.net>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[ziepe.ca:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-325137-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:dan@reactivated.net,m:joro@8bytes.org,m:will@kernel.org,m:robin.murphy@arm.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:florian.fainelli@broadcom.com,m:bcm-kernel-feedback-list@broadcom.com,m:iommu@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-rpi-kernel@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:nick.hollinghurst@raspberrypi.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[jgg@ziepe.ca,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	DMARC_NA(0.00)[ziepe.ca];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[ziepe.ca:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jgg@ziepe.ca,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,ziepe.ca:from_mime,ziepe.ca:dkim,ziepe.ca:mid,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D28C074619E

On Sun, Jul 12, 2026 at 10:18:54PM +0100, Daniel Drake wrote:
> The BCM2712 IOMMU implements a 2-level page table format. It is relatively
> simple, with one unusual aspect: leaf entries can only be installed at
> Level 0.
> 
> Adapted from Raspberry Pi's downstream bcm2712-iommu driver (original
> author Nick Hollinghurst).
> 
> Signed-off-by: Daniel Drake <dan@reactivated.net>
> ---
>  drivers/iommu/generic_pt/.kunitconfig        |   1 +
>  drivers/iommu/generic_pt/Kconfig             |  10 ++
>  drivers/iommu/generic_pt/fmt/Makefile        |   2 +
>  drivers/iommu/generic_pt/fmt/bcm2712.h       | 259 +++++++++++++++++++++++++++
>  drivers/iommu/generic_pt/fmt/defs_bcm2712.h  |  18 ++
>  drivers/iommu/generic_pt/fmt/iommu_bcm2712.c |  10 ++
>  include/linux/generic_pt/common.h            |   7 +
>  include/linux/generic_pt/iommu.h             |  13 ++
>  8 files changed, 320 insertions(+)

Looks straightforward to me!

Reviewed-by: Jason Gunthorpe <jgg@nvidia.com>

Jason

