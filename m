Return-Path: <devicetree+bounces-285829-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0JFeK8dp1mnIEwgAu9opvQ
	(envelope-from <devicetree+bounces-285829-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Apr 2026 16:44:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 441B43BDD08
	for <lists+devicetree@lfdr.de>; Wed, 08 Apr 2026 16:44:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DB291303D31F
	for <lists+devicetree@lfdr.de>; Wed,  8 Apr 2026 14:41:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16A7D3D34B3;
	Wed,  8 Apr 2026 14:41:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EQwKaji5"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E71223A8727;
	Wed,  8 Apr 2026 14:41:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775659298; cv=none; b=fnPNz+wUSrHcSAR1z3n0COWOgDy76DXrpGtfwLGffk5T6urDAFa6tngXe1L7LOQgjnWI+qZFNS/ian400HxNtrup74ajrDEgw7E2dgjdbQM+YrV/cSqs3j/y/kKBAhqcnGeRPgy22AZCkYoN7mIbfyu+25nuNXwwwZs93WY1p2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775659298; c=relaxed/simple;
	bh=9Wh+UdZumYojid9BJ79nOukj+1g3DhzrpOCs2lcpkKI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qgvt0SlVOgedP4Yvli8tz9WZFoiH0uDH6abBZ2xKAmwtW7uhGkaOZITKKa4/5L8cIHd4S4cuSt1nv8oTn5FSb+uK23RRrMprPf2hmXQDw3Yx5ymq10iJQ15PavMuBogeU/EE6UZQWVqaCEIc9BCglfSuU/Jd9mJuydJxBHc71XE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EQwKaji5; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 51C72C19421;
	Wed,  8 Apr 2026 14:41:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775659297;
	bh=9Wh+UdZumYojid9BJ79nOukj+1g3DhzrpOCs2lcpkKI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EQwKaji5c3YHl2s49VDS37ys8LeBDbxv9oQj9p9sBr/doYxy3qfFkBVzRmtiZrghv
	 sn6XTXiq7icjPfTa1ZFGQiA7saECcOaeYzagPWM6VI29qIaXXAbQihHtDPRTUIIfri
	 81isnx+S0Aww+2COAyIFjmojnZzJlCjdR6X9nQs83Ueym8nlIj5BgyDTEaWU4s8khv
	 XwA7OGKsr+tkKvgJEGLK7MspRfmMvWjoj2lcO3pcSS7/c/hmmfDIx2ZTAPlcQiQeP9
	 phVXdh4te+zts/zinziolOTr4gZkZ9dCTYYjNRghSM5IG3Is3mYnVPI+DARC8HqVL7
	 qU9lTSU7IreSw==
Date: Wed, 8 Apr 2026 09:41:35 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Han Gao <gaohan@iscas.ac.cn>
Cc: Inochi Amaoto <inochiama@gmail.com>, Conor Dooley <conor+dt@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>, devicetree@vger.kernel.org,
	Albert Ou <aou@eecs.berkeley.edu>, linux-riscv@lists.infradead.org,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Chen Wang <unicorn_wang@outlook.com>,
	Zixian Zeng <sycamoremoon376@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Han Gao <rabenda.cn@gmail.com>, linux-kernel@vger.kernel.org,
	sophgo@lists.linux.dev, linux-pci@vger.kernel.org,
	Paul Walmsley <pjw@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: pci: sophgo: Add dma-coherent property
 for SG2042
Message-ID: <177565929503.2148173.1789231317334503357.robh@kernel.org>
References: <20260331171248.973014-1-gaohan@iscas.ac.cn>
 <20260331171248.973014-2-gaohan@iscas.ac.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260331171248.973014-2-gaohan@iscas.ac.cn>
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,google.com,vger.kernel.org,eecs.berkeley.edu,lists.infradead.org,ghiti.fr,dabbelt.com,outlook.com,lists.linux.dev];
	TAGGED_FROM(0.00)[bounces-285829-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,iscas.ac.cn:email]
X-Rspamd-Queue-Id: 441B43BDD08
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On Wed, 01 Apr 2026 01:12:47 +0800, Han Gao wrote:
> Add dma-coherent as an allowed property in the SG2042 PCIe host
> controller binding. SG2042's PCIe root complexes are cache-coherent
> with the CPU.
> 
> Signed-off-by: Han Gao <gaohan@iscas.ac.cn>
> ---
>  .../devicetree/bindings/pci/sophgo,sg2042-pcie-host.yaml       | 3 +++
>  1 file changed, 3 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


