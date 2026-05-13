Return-Path: <devicetree+bounces-296642-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sDMBNH4VBGqDDQIAu9opvQ
	(envelope-from <devicetree+bounces-296642-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 08:09:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 36E9652DF31
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 08:09:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CA72A3044127
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 06:06:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C47B23D332C;
	Wed, 13 May 2026 06:06:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49198.qiye.163.com (mail-m49198.qiye.163.com [45.254.49.198])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 486FB2C11E2;
	Wed, 13 May 2026 06:06:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.198
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778652384; cv=none; b=u/fR2A/tgWzdtvkqrEJZdD7gtvdt+z5CvYmVs6fwlmeP5hJGmJ1GQEGsdT3PifaxwPTOIFRjtfZYtypBl0TfYy/IOB38p1rQCMHfjhC7dbfyXPbGxcpjusbrcLccD334EA48bXUcPf0QRZrCyaZU4sxdG/gBl/ky+UHUfqWobVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778652384; c=relaxed/simple;
	bh=QhNr8jmpw55RK1ebaXOMEGE/6b563n9NFnVQtQvOWZk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=JVaxnZWqJRfdYIGkMkjx+Aq5HmKiYb7OQXQULuMQxVTN37iz75cmUXA5a+kjTrIkkILUfBtif8hQxamHByRWRrvMbXm6uW6CxCt7Knue5NIZsy2Cy9+8uPRCcA8yeQF/Vq/WPJBqNX87jJVVJ21nDUPaADgPcZaNiSZG8zrN/Vw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn; spf=pass smtp.mailfrom=jmu.edu.cn; arc=none smtp.client-ip=45.254.49.198
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jmu.edu.cn
Received: from Vostro-3710.. (unknown [119.122.215.211])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3e3542995;
	Wed, 13 May 2026 14:01:08 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: dlan@kernel.org
Cc: alex@ghiti.fr,
	amadeus@jmu.edu.cn,
	aou@eecs.berkeley.edu,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	krzk+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	palmer@dabbelt.com,
	pjw@kernel.org,
	robh@kernel.org,
	spacemit@lists.linux.dev
Subject: Re: [PATCH v3 1/2] riscv: dts: spacemit: add fixed regulators for OrangePi R2S
Date: Wed, 13 May 2026 14:00:30 +0800
Message-Id: <20260513060030.616473-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260511070718-GKC3624147@kernel.org>
References: <20260511070718-GKC3624147@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9e1fecbaa003a2kunm76fdac8128a16
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlCSRpKVk8ZHR1NTUJOTB0YTlYeHw
	5VEwETFhoSFyQUDg9ZV1kYEgtZQVlKSkJVSklJVUlKTlVJSkpZV1kWGg8SFR0UWUFZT0tIVUpLSE
	pOTE5VSktLVUpCS0tZBg++
X-Rspamd-Queue-Id: 36E9652DF31
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.64 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[jmu.edu.cn : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-296642-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.942];
	FROM_NEQ_ENVFROM(0.00)[amadeus@jmu.edu.cn,devicetree@vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_TWELVE(0.00)[13];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,jmu.edu.cn:mid]
X-Rspamd-Action: no action

Hi,

> please check my comment below, I think this patch has similar issue
>
> https://lore.kernel.org/all/20260511065338-GKA3624147@kernel.org/

I don't think this is an issue. Otherwise, these commits need to be fixed:
https://github.com/torvalds/linux/commit/1df07a40453fd652132051419140950d47941fe9
https://github.com/torvalds/linux/commit/ae9d03f8aec76c1bff21083b67c211238d7c57b1

Let's confirm the current DT preferred:

- regulator-fixed

  nodename: Preferred name is 'regulator-[0-9]v[0-9]'

  gpio/gpios: Preferred 'gpios'
  https://github.com/torvalds/linux/commit/12df2c182ccb850988d2680a422211a812fb5cb2

There is no specification or preference stating that regulators without
software or GPIO control should be removed.

This has been discussed many times, and people are used to describing DT
according to the schematic:
https://lore.kernel.org/all/44ba02e34d7bf6a6657894802a87b690@manjaro.org/

Therefore, if you consider these regulators unacceptable, we should remove
them from other dts in spacemit, or allow such changes.

Thanks,
Chukun

