Return-Path: <devicetree+bounces-269783-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IIZfO7T/pGmpyAUAu9opvQ
	(envelope-from <devicetree+bounces-269783-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 04:10:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 9313F1D2A26
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 04:10:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id CAE04300BBA4
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 03:10:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6555A2C236B;
	Mon,  2 Mar 2026 03:10:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o7XfhUmB"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4062129D267;
	Mon,  2 Mar 2026 03:10:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772421040; cv=none; b=aZgmJJKzyOUNFWNCIniEFwWD1JzPB1dlF40BWxTvaeh3CWDfV8IOnijR9M2e5EJ15NxYAl8pVpLYI1LyV4Qf13LdyQ5y+rYf/BK0raMmWp2sq3f11SuPLpk0PXAB6YwBTjuZPFq6J9I6GxpeWyMrTW/BOkR30R7z7lgJCTswra8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772421040; c=relaxed/simple;
	bh=8piDJdEb2svg4illNkL4A8g7vlo1UGyKKu2McF1IevA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ZN0iROExt0ohjxZ4PqWxhnS8e2gTbK/twJY0pwP44nSytD6sDtLyFuYGlQrTN/gPmLQAoiWmbucv2Dz6iCSkOL5/4VEI0mfSe1ZAMLNCO9UHHBWnxKdLDDg6D9LwcKPxhY2EugEsWchfev9mWklMrjO1zEIpnWz1j7Ki1FepH8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o7XfhUmB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0603CC116C6;
	Mon,  2 Mar 2026 03:10:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772421039;
	bh=8piDJdEb2svg4illNkL4A8g7vlo1UGyKKu2McF1IevA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=o7XfhUmBvLDeLHzdlssWu18VjgCZR2PTujFG9ySGUoGwiTUz+wZmawpVch0WHgNll
	 OsumX21hsPbyd7lgfd9c1kvcIrbHet4YlbBKvoWv4z/TU5nnVyHTM865cifRfc28xP
	 tyyPzELsyqOQc4I874jRlSMom7AW20iDttbfH5/x3+FrEaz519ZJJ/zjGRES5K0M8B
	 OAFR8lekHFd2RT8tKggumSUdzue66SStoF6EktHatEt0XH94d1q4k29+PW0YswuZCv
	 F0hC+U0fQuIt3qKnDO+lWAicUMbTlA3w4RH6UZInKZdKv0VPHazr3aX2MA/W9KOXxu
	 L2V3LKUCaObIw==
From: Yixun Lan <dlan@kernel.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Alex Elder <elder@riscstar.com>,
	Yixun Lan <dlan@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Conor Dooley <conor@kernel.org>
Subject: Re: [PATCH] riscv: dts: spacemit: pcie: fix missing power regulator
Date: Mon,  2 Mar 2026 03:10:31 +0000
Message-ID: <177242077522.24322.7382117615305152301.b4-ty@kernel.org>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260226-k1-pcie-fix-pwr-v1-1-94b493cd27e5@kernel.org>
References: <20260226-k1-pcie-fix-pwr-v1-1-94b493cd27e5@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269783-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlan@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,ca400000:email,0.0.0.0:email]
X-Rspamd-Queue-Id: 9313F1D2A26
X-Rspamd-Action: no action


On Thu, 26 Feb 2026 08:17:55 +0000, Yixun Lan wrote:
> The PCIe port require 3.3v power regulator for device to work properly, So
> explicitly add it to fix the DT warning:
> 
> arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dtb: pcie@ca400000 (spacemit,k1-pcie): pcie@0: 'vpcie3v3-supply' is a required property
>         from schema $id: http://devicetree.org/schemas/pci/spacemit,k1-pcie-host.yaml
> 
> 
> [...]

Applied, thanks!

[1/1] riscv: dts: spacemit: pcie: fix missing power regulator
      https://github.com/spacemit-com/linux/commit/8a9071299dec817a544c0fb48f7302396fafdc4b

Best regards,
-- 
Yixun Lan <dlan@kernel.org>

