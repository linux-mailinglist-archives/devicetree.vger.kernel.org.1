Return-Path: <devicetree+bounces-290428-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MCfyIvkX72mB6QAAu9opvQ
	(envelope-from <devicetree+bounces-290428-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 27 Apr 2026 10:02:01 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 62E3C46EB47
	for <lists+devicetree@lfdr.de>; Mon, 27 Apr 2026 10:01:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A88343004C25
	for <lists+devicetree@lfdr.de>; Mon, 27 Apr 2026 08:01:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBC62282F18;
	Mon, 27 Apr 2026 08:01:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=thundersoft.com header.i=@thundersoft.com header.b="PaAH8gCO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m1973187.qiye.163.com (mail-m1973187.qiye.163.com [220.197.31.87])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FD6D39FCE;
	Mon, 27 Apr 2026 08:01:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.87
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777276911; cv=none; b=WogTbwaQ4oc6DPcHueVtZYx4J+JkHUZK7L8oSxkZbvLudBRIHpYU43Xig02k4g4u+bQh3RNoq544ElCAXTU1UXw8ngZRJhEmjHkZAzvaUuM2XR63DNqhOdB/K/CoIKi0rHVPAMdK7SwdktfEmFdQYZSdkYCmA3MEoehXEXcVg/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777276911; c=relaxed/simple;
	bh=2a4GcW/9CQXNlYVQKt40jw2ZEV4nSc3Q1Abjd895jfM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ol1q62gU5ROzRl9yjGscix7lsTvAwgcoF8eDPFkIGDemytS5aJZxZaaxrlwA/z8hybblXgDrGEyWyFoyWFJ5Y4z+xpHPVkcrUILerp27e2OXlM0kObsi5oksv3kV9snhD2ETA+cd94aXupuRb8dZDKLUS7gL1+PQtmJC/wCg5fo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=thundersoft.com; spf=pass smtp.mailfrom=thundersoft.com; dkim=pass (1024-bit key) header.d=thundersoft.com header.i=@thundersoft.com header.b=PaAH8gCO; arc=none smtp.client-ip=220.197.31.87
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=thundersoft.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=thundersoft.com
Received: from albert-OptiPlex-7080.. (unknown [112.65.126.162])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3c44d2e91;
	Mon, 27 Apr 2026 15:46:11 +0800 (GMT+08:00)
From: Albert Yang <yangzh0906@thundersoft.com>
To: krzk@kernel.org
Cc: arnd@arndb.de,
	bst-upstream@bstai.top,
	catalin.marinas@arm.com,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	gordon.ge@bst.ai,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	robh@kernel.org,
	will@kernel.org,
	yangzh0906@thundersoft.com
Subject: Re: [PATCH v8 0/2] arm64: dts/defconfig: enable BST C1200 eMMC
Date: Mon, 27 Apr 2026 15:46:11 +0800
Message-ID: <20260427074611.26112-1-yangzh0906@thundersoft.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <d78e5b19-c380-4fd6-9ae7-e2b20b74474f@kernel.org>
References: <d78e5b19-c380-4fd6-9ae7-e2b20b74474f@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9dcde727a609cckunm139de2471b056f
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlCSRhKVkxLHxkfT0JLSRkdH1YVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlKSklVTU5VSklNVUpNSVlXWRYaDxIVHRRZQVlPS0hVSk
	tJT09PSFVKS0tVSkJLS1kG
DKIM-Signature: a=rsa-sha256;
	b=PaAH8gCO1lCvuD+EUHgJYdJs3O9vLdBvkaI8AY1nfThuUE2VYeMo9DH0A39b4ITUE9fuQf7IPz3GcQ1siaVuIOocj9U8jJwqgPNuI9jTXj9p433RW0qunn3fDSyXA9+2QnhyvuItFSu950KNCp58K5izVV+qFx/gBNOglZxXe0o=; c=relaxed/relaxed; s=default; d=thundersoft.com; v=1;
	bh=2a4GcW/9CQXNlYVQKt40jw2ZEV4nSc3Q1Abjd895jfM=;
	h=date:mime-version:subject:message-id:from;
X-Rspamd-Queue-Id: 62E3C46EB47
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[thundersoft.com,none];
	R_DKIM_ALLOW(-0.20)[thundersoft.com:s=default];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-290428-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yangzh0906@thundersoft.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[thundersoft.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_TWELVE(0.00)[13];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,thundersoft.com:dkim,thundersoft.com:mid]

On 27/04/2026 08:36, Krzysztof Kozlowski wrote:
> You sent it already three times within one hour. Please stop.

Apologies for the noise. Sending is stopped on my side and the root
cause is still under investigation. Please use the canonical v8 for
review:
https://lore.kernel.org/r/20260427055555.3693459-1-yangzh0906@thundersoft.com

Thanks,
Albert

