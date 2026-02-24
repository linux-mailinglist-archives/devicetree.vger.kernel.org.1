Return-Path: <devicetree+bounces-267883-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yC+6Km2anWnwQgQAu9opvQ
	(envelope-from <devicetree+bounces-267883-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 13:32:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DED5186FF1
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 13:32:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8C4DC3118197
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 12:30:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22F4321FF2A;
	Tue, 24 Feb 2026 12:30:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KXFUzSfl"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0005D20B810;
	Tue, 24 Feb 2026 12:30:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771936216; cv=none; b=PuQoO4V3wJUp4BNRLIdNdh8saFbJOW1k7MvAE3e1j19dto+zzNKSqLgrNydKsmAGCgvwT9zQUrV5xhkThXa1xCH0I8mV4EmmZxLElC1XiG+co79MxGzQsAAjhTGIhoK1Uz+10bVG7exTMQiMkS8IL+6fZbK6pcuysJZ6z8qtUC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771936216; c=relaxed/simple;
	bh=Yl/VGytIieGwM0BISDEWxFLX3fzNIgNPNqKISwqD1cU=;
	h=From:To:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=HLL9ytiVVNt4X3B/xPyW7h/Q7yPFVTBfdeK98cRv5wh88IHKthO7CHkpZCTgo621VKuCc3P80sO95FoeFRBDi8VY5f4/hB7DeAKwcRpKrzB7cgz9lOKq/voPAiAleLxprk2d8t9+HoEk+RjPaJnhql1Md5kKIU7szZtec1fwT5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KXFUzSfl; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4B3D5C116D0;
	Tue, 24 Feb 2026 12:30:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771936215;
	bh=Yl/VGytIieGwM0BISDEWxFLX3fzNIgNPNqKISwqD1cU=;
	h=From:To:In-Reply-To:References:Subject:Date:From;
	b=KXFUzSfl7z91kCddmEqg8BKAbBUJTInPx66AUTW/oiNKBJIDGElE8t3hMDkBaStrx
	 TsBfGUVG0/wY9JeHjk390d+qELNxsbGrZD0rtLQWiKeglDhtPmHqf3WTGH9w+RviLs
	 U2HM/ahri0SRYwgjNOHcibUhJdvfbXHmmOhlpbnQHmH3QZ2D7nTe9d7anp499GktH+
	 DHf+gFi/+/6KHwXITcKaRojh3AKa4AL0hJ8rnmIXEwciNzX9CnYTTbFIDlA2tvW5OJ
	 fItBHlXv2anrgHQHQOldHk5MS+sA39R4Usum7MEt5Zr21iPYB82/YhJVZ0doP1/NOi
	 7nOQcs44hOHuQ==
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Jesper Nilsson <jesper.nilsson@axis.com>, 
 Lars Persson <lars.persson@axis.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-arm-kernel@axis.com, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
In-Reply-To: <20260224122739.95168-2-krzysztof.kozlowski@oss.qualcomm.com>
References: <20260224122739.95168-2-krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH] arm64: dts: axis: artpec9: Fix missing soc unit
 address
Message-Id: <177193621300.95965.15818734205475984010.b4-ty@kernel.org>
Date: Tue, 24 Feb 2026 13:30:13 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267883-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 0DED5186FF1
X-Rspamd-Action: no action


On Tue, 24 Feb 2026 13:27:40 +0100, Krzysztof Kozlowski wrote:
> Fix W=1 build warning to comply with Samsuung SoC maintainer profile:
> 
>   artpec9.dtsi:121.11-268.4: Warning (unit_address_vs_reg): /soc: node has a reg or ranges property, but no unit name
> 
> 

Applied, thanks!

[1/1] arm64: dts: axis: artpec9: Fix missing soc unit address
      https://git.kernel.org/krzk/linux/c/1f8fb2a87b58c2d12b7a9c817b8e781be90fe37d

Best regards,
-- 
Krzysztof Kozlowski <krzk@kernel.org>


