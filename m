Return-Path: <devicetree+bounces-317681-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XtyBLMetQ2q5ewoAu9opvQ
	(envelope-from <devicetree+bounces-317681-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 13:51:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id EE1D56E3D3A
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 13:51:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=blytqQRa;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317681-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-317681-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BE23A31D3159
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 11:14:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6BAC3FA5D2;
	Tue, 30 Jun 2026 11:13:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 974653ED134;
	Tue, 30 Jun 2026 11:13:28 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782818009; cv=none; b=ORVPu0bIloR5jfDQyFKXKQTnHXYrL8YBV7YjjOss++k6DbWB6vo5yucVlROv24zQ38tjUmjB8Q8TRsz4JBtRw7CsaADHugGHhtJQLoU6denfa9PASgo/gjpIzBC0moY+tqd4q7tsY5KNFvWkPfhBtZ3+hcqJ88BwuUH7wTDTvVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782818009; c=relaxed/simple;
	bh=uZBoD4hToNo2KabJQHYXYg+k7RrwRGIWXBXHh5Zu+Ew=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=VnNOWAcHvf4IoW8B3sIQ88c0kjuPePZxPkUinvQ7hYiPnvm/LApyKihrYyyl1zy/1i4zVDyuYa8QjZJO90UcF73eU02geAac1egAhswqCni841WLBge9CQsz5xcYsFMvLSDTOj/m5oYLG1Vo5gTk1kW7RjvJN+YvvUuYgsjGImY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=blytqQRa; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 262B41F000E9;
	Tue, 30 Jun 2026 11:13:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782818008;
	bh=gBrw4h6G+CAidiPHKiZfKf7oBnSSJvuEXV9bJiShaTA=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date;
	b=blytqQRac+g9IOLHTev0RLz7JAEA05ZsCRJ4cXitfvYsRAWj+gBUwA3e6cQe8G0UO
	 PmqqWpzCpst3E2PvtVSn5zI6mrdwPf0p93zgNTlUC+ctCybXfH6X9J1JZ3viG6eATk
	 W/0sowhyccmzR/ELJy79DfC7PRH4Hk+2ksfFhFf5w/3BxLpG7rq4fDlGIsoMndRLaQ
	 ISDk9zW3XOoIF3nWXA39CBFku69yw+kff9k6bT2J8SgKMr6GCcewIkNUHIf7kcfpLR
	 dR7FNbthATEO2DTOT+eXGFIJt028JX+fkSP8YDOCwgjuuzeV6rGd5vO1VRkidBO596
	 f9DESVmWQK+TQ==
From: Pratyush Yadav <pratyush@kernel.org>
To: Wandun Chen <chenwandun1@gmail.com>
Cc: chenhuacai@kernel.org,  kernel@xen0n.name,  pjw@kernel.org,
  palmer@dabbelt.com,  aou@eecs.berkeley.edu,  robh@kernel.org,
  saravanak@kernel.org,  bhe@redhat.com,  rppt@kernel.org,
  linux-arm-kernel@lists.infradead.org,  linux-kernel@vger.kernel.org,
  loongarch@lists.linux.dev,  linux-riscv@lists.infradead.org,
  devicetree@vger.kernel.org,  kexec@lists.infradead.org,
  iommu@lists.linux.dev,  zhaomeijing@lixiang.com,
  catalin.marinas@arm.com,  will@kernel.org,  alex@ghiti.fr,
  akpm@linux-foundation.org,  pasha.tatashin@soleen.com,
  pratyush@kernel.org,  ruirui.yang@linux.dev,  m.szyprowski@samsung.com,
  robin.murphy@arm.com
Subject: Re: [PATCH v4 10/10] loongarch: kdump: exclude non-dumpable
 reserved memory regions from vmcore
In-Reply-To: <20260630074715.4126796-11-chenwandun1@gmail.com> (Wandun Chen's
	message of "Tue, 30 Jun 2026 15:47:14 +0800")
References: <20260630074715.4126796-1-chenwandun1@gmail.com>
	<20260630074715.4126796-11-chenwandun1@gmail.com>
Date: Tue, 30 Jun 2026 13:13:22 +0200
Message-ID: <2vxza4sci8ml.fsf@kernel.org>
User-Agent: Gnus/5.13 (Gnus v5.13)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:chenwandun1@gmail.com,m:chenhuacai@kernel.org,m:kernel@xen0n.name,m:pjw@kernel.org,m:palmer@dabbelt.com,m:aou@eecs.berkeley.edu,m:robh@kernel.org,m:saravanak@kernel.org,m:bhe@redhat.com,m:rppt@kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:loongarch@lists.linux.dev,m:linux-riscv@lists.infradead.org,m:devicetree@vger.kernel.org,m:kexec@lists.infradead.org,m:iommu@lists.linux.dev,m:zhaomeijing@lixiang.com,m:catalin.marinas@arm.com,m:will@kernel.org,m:alex@ghiti.fr,m:akpm@linux-foundation.org,m:pasha.tatashin@soleen.com,m:pratyush@kernel.org,m:ruirui.yang@linux.dev,m:m.szyprowski@samsung.com,m:robin.murphy@arm.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[pratyush@kernel.org,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-317681-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pratyush@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EE1D56E3D3A

On Tue, Jun 30 2026, Wandun Chen wrote:

> From: Wandun Chen <chenwandun@lixiang.com>
>
> Apply the same non-dumpable reserved memory filtering to LoongArch
> kdump as was done for arm64. Use of_reserved_mem_kdump_exclude() to
> drop flagged regions from the elfcorehdr PT_LOAD segments, and
> of_reserved_mem_kdump_nr_ranges() to pre-size the crash_mem array.
>
> Signed-off-by: Wandun Chen <chenwandun@lixiang.com>

Acked-by: Pratyush Yadav <pratyush@kernel.org>

[...]

-- 
Regards,
Pratyush Yadav

