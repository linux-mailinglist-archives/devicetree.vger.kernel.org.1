Return-Path: <devicetree+bounces-304860-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wC+gMwIqHGrqKgkAu9opvQ
	(envelope-from <devicetree+bounces-304860-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 31 May 2026 14:30:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id D6E8E616120
	for <lists+devicetree@lfdr.de>; Sun, 31 May 2026 14:30:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5A18B3003732
	for <lists+devicetree@lfdr.de>; Sun, 31 May 2026 12:30:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31A0037C106;
	Sun, 31 May 2026 12:30:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SjOUfy3o"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AB55335BA;
	Sun, 31 May 2026 12:30:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780230653; cv=none; b=Sf91ewrJfZekCAP3ESUzXwNTWqBrFffZlsfz4k9ucfGd6qTCFaO81GPWx/ZdKNHWmjdFP5t1co5QC2VnMxJeUTEWoq/EMKHyTigvux4Y+0BlOtquk8HGTZoIEuaxJAcxodTjFcLUfYYrGBuYukzgmcUxjBW/MMDoXEMnZ3qvyUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780230653; c=relaxed/simple;
	bh=TnDB33wKQPTqMLKZRjSWWDqbuvRq3h8klJCKz8rStWc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hEqYizJkL4p7jgzzrBs84oYqLu7hIyq8bQXDgcQK8gSo22w63E88tEOi3Sd4UA6tZmuh/U3mypPM1Q/cJ43fXZJiJfSygr6iz6XeE9O0paZHT7UspjwcN6HIYRvT5hyAtLIo8E/YcGVOxcDqICg8/NaiRRx9p+N/VK4gz1m3SDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SjOUfy3o; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 719511F00893;
	Sun, 31 May 2026 12:30:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780230651;
	bh=d1uPcikU+0mzVs3WcJOLd986su5Z+aCvm53jpWQgBL0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=SjOUfy3oyAA5iarNpcErwA6I7fQ9bLtYsQUXtvx6be0GcfGUUbF26dxN4q4r9XZA8
	 E+HIcyVInLZZ+0vJh6Ghgsgl+8MQtbHOXB5kjR96FTP9OHK22tnSDExNZDc9Z1mPT8
	 V2zUiTXugUUL/P+p5w4pDC42mJDOfeQy0KmHFABTY5eT1hHZX1rYZkOdEedPiz+5TE
	 xKQkNNvPS46eDDVy5xoQ9cSg9LwfdRcvWutflnzz/DhXqL2DPYtYRUjklEn6fmOccb
	 FzDKN2Zmchd9BSgHniCXVMe2Q9JYtNP6gYX8iecYLKkHJC6nriHuSgbaUgI4k1CpYV
	 OnTyn28NntMqQ==
Date: Sun, 31 May 2026 14:30:49 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Joshua Milas <josh.milas@gmail.com>
Cc: tglx@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, pjw@kernel.org, samuel.holland@sifive.com, 
	unicorn_wang@outlook.com, inochiama@gmail.com, daniel.lezcano@linaro.org, 
	palmer@dabbelt.com, aou@eecs.berkeley.edu, alex@ghiti.fr, 
	liujingqi@lanxincomputing.com, alexander.sverdlin@gmail.com, rabenda.cn@gmail.com, 
	dlan@kernel.org, chao.wei@sophgo.com, anup@brainfault.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
	sophgo@lists.linux.dev, hanguidong02@gmail.com, michael.opdenacker@rootcommit.com
Subject: Re: [PATCH v5 RESEND 3/5] dt-bindings: soc: sophgo: add sg2000 plic
 and clint documentation
Message-ID: <20260531-fair-coati-of-attack-ac59b7@quoll>
References: <20260530173347.33533-1-josh.milas@gmail.com>
 <20260530173347.33533-4-josh.milas@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260530173347.33533-4-josh.milas@gmail.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-304860-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,sifive.com,outlook.com,gmail.com,linaro.org,dabbelt.com,eecs.berkeley.edu,ghiti.fr,lanxincomputing.com,sophgo.com,brainfault.org,vger.kernel.org,lists.infradead.org,lists.linux.dev,rootcommit.com];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,qualcomm.com:email]
X-Rspamd-Queue-Id: D6E8E616120
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sat, May 30, 2026 at 01:33:45PM -0400, Joshua Milas wrote:
> Document the compatible strings for the sg2000 interrupt
> controller and timer.
> 
> Signed-off-by: Joshua Milas <josh.milas@gmail.com>
> ---
>  .../bindings/interrupt-controller/sifive,plic-1.0.0.yaml         | 1 +
>  Documentation/devicetree/bindings/timer/sifive,clint.yaml        | 1 +
>  2 files changed, 2 insertions(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


