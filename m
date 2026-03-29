Return-Path: <devicetree+bounces-282043-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 5QmpE/TuyGn4sQUAu9opvQ
	(envelope-from <devicetree+bounces-282043-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 29 Mar 2026 11:20:52 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9668D35152A
	for <lists+devicetree@lfdr.de>; Sun, 29 Mar 2026 11:20:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 7030F3006D6C
	for <lists+devicetree@lfdr.de>; Sun, 29 Mar 2026 09:20:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 187722E5B1B;
	Sun, 29 Mar 2026 09:20:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpfb2-g21.free.fr (smtpfb2-g21.free.fr [212.27.42.10])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72F3028FFF6;
	Sun, 29 Mar 2026 09:20:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.27.42.10
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774776047; cv=none; b=Ap6i4ENp9uHLYXM2LsJBhrPSQjCgETh1GCqpRhrEEwcp7yrZHkpEaMCzZtUf8+ji+id1HMjNcD3aRWFUWh3EdgRqqCop0Q5gGLtCb20xWCiqVeIQXkhS2CEGQnYwBMrmPCFYV10k4HqvOjmzgmhAwdBAHU0+92GBi6IlE54YQT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774776047; c=relaxed/simple;
	bh=IzsenYqkDV3+9tNmaGCCPfebzIIP3eioMbhuiFIrBPA=;
	h=Message-ID:Date:MIME-Version:In-Reply-To:To:Cc:From:Subject:
	 Content-Type; b=mFOLbVF14sUrxzt+FABzXE+Q/JeABSoXOZ9ehiqrZZsWQuuXVy0qjTaJgrfwCQ48hsEBa4haoHNFvi+ma8EgQnPNjDaclNVSGjHXBRb+ZpEHFvkmPOgKyrri+5fSm60kH/h0EwySHFw/0r0/LvVk8qpzf0N1/d7oj79FZGT0Hj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=online.fr; spf=pass smtp.mailfrom=online.fr; arc=none smtp.client-ip=212.27.42.10
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=online.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=online.fr
Received: from smtp4-g21.free.fr (smtp4-g21.free.fr [212.27.42.4])
	by smtpfb2-g21.free.fr (Postfix) with ESMTP id B96594CFF3;
	Sun, 29 Mar 2026 11:20:33 +0200 (CEST)
Received: from [10.0.0.2] (unknown [82.65.243.93])
	(Authenticated sender: legoll@free.fr)
	by smtp4-g21.free.fr (Postfix) with ESMTPSA id 8F1D319F5C6;
	Sun, 29 Mar 2026 11:20:01 +0200 (CEST)
Message-ID: <55c580a0-61cd-435e-bff0-f5f54cbe6948@online.fr>
Date: Sun, 29 Mar 2026 11:20:01 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
In-Reply-To: <20260323-orangepi-sd-card-uhs-v4-0-567c9775fd0e@gmail.com>
To: Iker Pedrosa <ikerpedrosam@gmail.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Adrian Hunter <adrian.hunter@intel.com>,
 Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
 Yixun Lan <dlan@kernel.org>, Yixun Lan <dlan@kernel.org>,
 Michael Opdenacker <michael.opdenacker@rootcommit.com>,
 Javier Martinez Canillas <javierm@redhat.com>, linux-mmc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org,
 Iker Pedrosa <ikerpedrosam@gmail.com>, Anand Moon <linux.amoon@gmail.com>,
 Trevor Gamblin <tgamblin@baylibre.com>
From: Vincent Legoll <legoll@online.fr>
Subject: Re: [PATCH v4 1/8] mmc: sdhci-of-k1: enable essential clock,
 infrastructure for SD operation
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.14 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[online.fr : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-282043-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,kernel.org,intel.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,rootcommit.com,redhat.com,vger.kernel.org,lists.infradead.org,lists.linux.dev,gmail.com,baylibre.com];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[legoll@online.fr,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 9668D35152A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hello,

I applied this series on top of cbfffcca2bf0622b601b7eaf477aa29035169184 
(linux mainline from yesterday) and successfully booted the resulting 
kernel from an SD card on an OrangePi-RV2 (with the vendor u-boot from 
the SPI flash).

So if you want, you can add my: Tested-by: Vincent Legoll 
<legoll@online.fr> # OrangePi-RV2 to the relevant patches from this 
series Thanks Regards


