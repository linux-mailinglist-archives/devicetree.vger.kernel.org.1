Return-Path: <devicetree+bounces-322338-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id nin5HUNXTWprygEAu9opvQ
	(envelope-from <devicetree+bounces-322338-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 21:45:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id F0ABE71F562
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 21:45:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=sntech.de header.s=gloria202408 header.b=Rj8hJ71k;
	dmarc=pass (policy=quarantine) header.from=sntech.de;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322338-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-322338-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E579C300C833
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 19:44:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55A2D3BED78;
	Tue,  7 Jul 2026 19:44:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7153D3B6BF7;
	Tue,  7 Jul 2026 19:44:45 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783453488; cv=none; b=nYI8Z6AdexBqldoUeVd9Qtp38QOYCROVlh+0aPtvG8ag7V51+odF/XdQLPwBkAu6Vl5Lm222m0qcPQRfOJPJhAgKRqU9+zUSHYKHOGXVsW63sDZtEKMcF3YxSKfzZrqwI7A2UKeQCQoiOkpcT4wv29el16Nx9KJOD+v4pl5+u6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783453488; c=relaxed/simple;
	bh=OjM1dIpzhhegsiKikn5et/JVUcGRuXRAzMRdH+7j2Wc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=fC79nYz6eK/BtnmM+zlCHOfg/6ATJB2oVTgMb6j7KGoyMfjTCWfFEIpYvadLzteWWhrvTJzQE2WiBuNcTwUWxSPoRnmHe/esxiBKpW1c/qgV1dJ+IGzbvfww9EarEFL1GMXmbiHYbC3hNCdivCg3iGzpjhQKKChHpGVY4oZEkfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=Rj8hJ71k; arc=none smtp.client-ip=185.11.138.130
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=9f9Cvj2KSde9fRau9nU9jeL+1j23YWkk4574iWOOJXo=; b=Rj8hJ71k4borJmrIC2KxsgFdTq
	+VkuMIyJ6mIo+3jqjiZNA9vj5VGc5v2xlHI7v0oVYGk/TWj9fGWhUGNy3UKtTJjaGC/yedWsazSuf
	1tGfQtAO7TT62+yz+ZrmAlhUUIy4iIEQZAN9rzIZi00Zvp5SD652+4/PbLI14CCzaeWVkEoEZmKey
	mGeogaKNdETJ5MEyzvhplzHnDsxIVQe1nsApHqVWNccYqsjMTtLdAlPA8SsxwF5ye9ZfJ6xuM64zH
	JA+mMrCO82B13/5Z7VuZ/l4JZ29th/06P0dbjAc5cyBrZBk0HEMRJpTcI6USmfumsHpXKkQ0fyatr
	8XSfkNJg==;
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 1/2] dt-bindings: rockchip: pmu: Narrow definition of reboot-mode
Date: Tue,  7 Jul 2026 21:44:32 +0200
Message-ID: <178345345848.664858.15922395581813500396.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260701105849.197086-3-krzysztof.kozlowski@oss.qualcomm.com>
References: <20260701105849.197086-3-krzysztof.kozlowski@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[sntech.de,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-322338-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:zhangqing@rock-chips.com,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:krzysztof.kozlowski@oss.qualcomm.com,m:heiko@sntech.de,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[sntech.de:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,sntech.de:from_mime,sntech.de:email,sntech.de:mid,sntech.de:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F0ABE71F562


On Wed, 01 Jul 2026 12:58:50 +0200, Krzysztof Kozlowski wrote:
> The 'reboot-mode' child of PMU node must be a syscon-reboot-mode one, so
> add missing $ref to enforce the validation and disallow other
> reboot-mode handlers.
> Defining 'type: object' is on the other hand not necessary when other
> schema is referenced.
> 
> This can be further restricted to match hardware/firmware:
> syscon-reboot-mode schema allows arbitrary "mode-.* properties but only
> a subset actually makes sense and is valid.  Provide negative look-ahead
> pattern to disallow any modes not supported by the device, which
> tightens the binding.
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: rockchip: pmu: Narrow definition of reboot-mode
      commit: c63037c69a5173dd87efde82bfa4c339adefd72e
[2/2] dt-bindings: rockchip: grf: Narrow allowed reboot modes
      commit: 39eace59ac826465fae0788d0a6b304ec94f9944

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

