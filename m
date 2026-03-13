Return-Path: <devicetree+bounces-275258-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UOgmCjMUtGn2gwAAu9opvQ
	(envelope-from <devicetree+bounces-275258-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 14:42:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 88224284188
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 14:42:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 89EDA3123CBB
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 13:35:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7804139FCD6;
	Fri, 13 Mar 2026 13:27:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BxE6tkrG"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 556D639EF2C;
	Fri, 13 Mar 2026 13:27:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773408421; cv=none; b=E3RlCN4HIFFwpn+t04CRZcXDzy1dF/rxtRM18aqIM7y9uaSqZgsMDSPeK2MZBkYXqDi4i8aLbvI6YZGAnWyZgPZWWLZcczrVCyMTnCRg1rcKJx7xMK2QTgthasC4ObFxmpQgWgQTkb7wT5tz2lrEsAZYT28oOSfpgycqNCcWYMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773408421; c=relaxed/simple;
	bh=p2HNkolfJH3glufT8VRymQsTTu1495N3oyZW+nfzmGs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=KHvW4GJqkXs2FJhyaeOgFnjLJ6rDL1cQOGROPgCoJ9bL1jqVyhQ9nO/7MrTf1nJxSvbNo/ipNPhdt1GQWBJIXCDdKeB2wKLw5d/svQSVD9THOkW+xnhPySG3m8iU3THfbk9m/kdEKQTsuLuluv6rI+aK+3GdBqaSDj3U69YdegY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BxE6tkrG; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A818BC19421;
	Fri, 13 Mar 2026 13:26:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773408421;
	bh=p2HNkolfJH3glufT8VRymQsTTu1495N3oyZW+nfzmGs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=BxE6tkrGV17EN94KsD0hkeNViAZRQiRst5bZ7+z98IIrwk6VXp5KFlLwnx8drW1LC
	 lTxlGmPMHy7sc4ITE23/M776GpiqKVt0RElPikVynnMIeirF5a2KBlMjApOAcNbCMI
	 UORlZG8LWbRXqCvyfkovODpPXpmnnNQ7VTb6sJddRZRXMisgEQR0cnRSGAGTI5gsTE
	 W1ixG9kVUSe68DsM81jBtceBLjgv4IpjlEGqaZM24FEHApkoKzhXX4pMeKxzH/EEt1
	 MA7tp21mbCg+RCXFEwdCMINFIFt48drIO0wImAzt2LRvZc7BmfupPFx7X8sdqVOno2
	 EoeM1lxgJqPvA==
From: Yixun Lan <dlan@kernel.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Yixun Lan <dlan@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/4] riscv: spacemit: k3: Add more resource to UART
Date: Fri, 13 Mar 2026 13:26:55 +0000
Message-ID: <177340832523.17050.323606076175943251.b4-ty@kernel.org>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260304-01-dts-uart-full-v1-0-50a0aa53a245@kernel.org>
References: <20260304-01-dts-uart-full-v1-0-50a0aa53a245@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275258-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlan@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 88224284188
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On Wed, 04 Mar 2026 07:36:41 +0000, Yixun Lan wrote:
> This series try to add more resource (clock, pinctrl, reset) to UART driver,
> So it will not reply on external bootloader for initialization. While doing
> this, I've tried to break these patchse into more fine pieces, adding clock,
> pinctrl+gpio, reset separately, then UART.
> 
> 

Applied, thanks!

[1/4] riscv: dts: spacemit: k3: add clock tree
      https://github.com/spacemit-com/linux/commit/67072c8cd48c1fbb95cea39239eba5526395fcf5
[2/4] riscv: dts: spacemit: k3: add pinctrl support
      https://github.com/spacemit-com/linux/commit/d8944577496b5b99061d3b2020704fc86ab1f9e6
[3/4] riscv: dts: spacemit: k3: add GPIO support
      https://github.com/spacemit-com/linux/commit/20b77926864203e10b85af5276b17c2812d92ec1
[4/4] riscv: dts: spacemit: k3: add full resource to UART
      https://github.com/spacemit-com/linux/commit/28a7f755d7c9a4b9c41c12620fb4885f39b554ad

Best regards,
-- 
Yixun Lan <dlan@kernel.org>

