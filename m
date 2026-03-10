Return-Path: <devicetree+bounces-273410-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UBrRDwnmr2nkdAIAu9opvQ
	(envelope-from <devicetree+bounces-273410-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:36:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C24A52488E6
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:36:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E45FE306D8AE
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 09:30:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C53343DA5E;
	Tue, 10 Mar 2026 09:30:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="eIPS7K/H"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65380342535;
	Tue, 10 Mar 2026 09:30:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773135013; cv=none; b=UnUBjNpI/73par8rkqTXWa/PwWJtM7x8GXvfIFk7n7IJeV+hYSg4HIdPnBrSsUAktO8Bdyn8iRdxJVs5R1djevrkMbxRS71DbQ0VQ6mlQAl+K8Wqfj9njJeKFwB9KEKsex+W7rEdd/tuE4TzA+os5JtCRacVlsbuThfNMSZCPMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773135013; c=relaxed/simple;
	bh=UOHR9v9WQQLfuI0veHg0fSrGMpYyGaVSof1KfNc17Wk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=WzpjPHaXC6crXHbh2KtekFCKjJ9XQE/QdkwBP40QJxuXR4p6ZwjtcNKLpYP08zf9uL0Gg9jVdlBrepFXT1Wy4BHkFNI9oFmvS6eo+j9QNXARc9wqMc5XrLJhk+1SQ/TANS2KY/CdqrSQda75PxaNtSC7NA0a1+te4EbKRB8N0V0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=eIPS7K/H; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=33jPbzlWeMQan5XZ6y6WfE7m1EsEV0Da0Wn6BJa6sCw=; b=eIPS7K/HQG/f6MHSpeVoR45sjb
	QucjZyqPj4vp2WCj8LUSUqBF3xCxUsdS3kO2dQBz5XSIxrdqLXi/eMMQcpWN9U3tUS191FlEPD2AY
	qCAUmjNI7jBqs9ibMHXSrFV1CXytOMwZyYXM2ofSt/bc6KMSnnVSpU8ckij523xddu4YqSUHG00By
	WlQ+6C903zK6eLs93qektCyPnDX/cRLZwz47rYVQoR6KNulsQinzTcK3i1Ab1nGBJLPTtcpYQr/lU
	Gj1K5LBL+7nlucgGU5jEwMh1aFySNxJmVqe4T8c4w4sm3ZHIA/QNewOdIQxHMO3d2lw//w3rXMJI1
	79Icifyw==;
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Diederik de Haas <diederik@cknow-tech.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Samuel Holland <samuel@sholland.org>,
	Andreas Kemnade <andreas@kemnade.info>,
	Maximilian Weigand <mweigand@mweigand.net>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	hrdl <git@hrdl.eu>,
	phantomas <phantomas@phantomas.xyz>,
	Dragan Simic <dsimic@manjaro.org>
Subject: Re: [PATCH] arm64: dts: rockchip: Enable GPU on rk3566-pinenote
Date: Tue, 10 Mar 2026 10:29:52 +0100
Message-ID: <177313498973.2340533.6039251344596922355.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260305120620.173600-1-diederik@cknow-tech.com>
References: <20260305120620.173600-1-diederik@cknow-tech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: C24A52488E6
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[sntech.de,quarantine];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273410-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[sntech.de:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sntech.de:dkim,sntech.de:email,sntech.de:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action


On Thu, 05 Mar 2026 13:05:40 +0100, Diederik de Haas wrote:
> The GPU is most useful when used together with the EBC on the PineNote,
> which is not yet described. But there's no reason not to define the GPU
> already as the hardware is present and could be used without the EBC.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Enable GPU on rk3566-pinenote
      commit: 82c68c62bd8d64785c42292449688fed4d2c284c

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

