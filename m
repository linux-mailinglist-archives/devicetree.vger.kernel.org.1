Return-Path: <devicetree+bounces-293787-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oB6xK2I3/GmUMwAAu9opvQ
	(envelope-from <devicetree+bounces-293787-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 07 May 2026 08:55:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 568814E3C49
	for <lists+devicetree@lfdr.de>; Thu, 07 May 2026 08:55:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A5D1130071D9
	for <lists+devicetree@lfdr.de>; Thu,  7 May 2026 06:55:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 236123446AB;
	Thu,  7 May 2026 06:55:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49197.qiye.163.com (mail-m49197.qiye.163.com [45.254.49.197])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D424343D8A;
	Thu,  7 May 2026 06:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.197
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778136928; cv=none; b=FoKYQGzIXLQs/H2mE1Kvk6occsVx+FhPtV8q4zJD5HOCKevz1Q6nn8qnaZyyn3o8gwqqJX/p/1QBWx/pKxmdVXY9I/JsPy1uqkaYqhScBYZzR7E141QX1Jl4Z/Uv8AhlO74zYMzjVJK2m84PApiUBKpWlHBlg6oVVO3b6p/adRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778136928; c=relaxed/simple;
	bh=xRQzefjZDSutd5Xd5WSrMKEfveXiEhWRhN5BByEGscQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=l+3mWtonL7V0Hbb4Ysxkz+l20MqZ44D1WNicfTdYEDaGOgzT6cLKjWfWbUtWwAcRhWbqakCO4xiehtaucKM5CgGjtRevokQZcJfwUdugi5bMTt9mdp9y+P4zmIb/vAL7dOTBnnbdLNFTIbpSSClaVlO063FdPMANhuf5X3af1UM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn; spf=pass smtp.mailfrom=jmu.edu.cn; arc=none smtp.client-ip=45.254.49.197
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jmu.edu.cn
Received: from Vostro-3710.. (unknown [119.122.215.211])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3d7029228;
	Thu, 7 May 2026 14:50:10 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: linux.amoon@gmail.com
Cc: alex@ghiti.fr,
	amadeus@jmu.edu.cn,
	aou@eecs.berkeley.edu,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dlan@kernel.org,
	gaohan@iscas.ac.cn,
	huang.ze@linux.dev,
	krzk+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	palmer@dabbelt.com,
	pjw@kernel.org,
	robh@kernel.org,
	spacemit@lists.linux.dev
Subject: Re: [PATCH v2 3/4] riscv: dts: spacemit: k1-bananapi-f3: Correct USB hub power hierarchy
Date: Thu,  7 May 2026 14:50:02 +0800
Message-Id: <20260507065002.1883127-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260502051906.8160-4-linux.amoon@gmail.com>
References: <20260502051906.8160-4-linux.amoon@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9e0133775103a2kunmfaa00f951983c8
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlDGB5MVhpOSE9PHUlLSE0fT1YeHw
	5VEwETFhoSFyQUDg9ZV1kYEgtZQVlKSkJVSklJVUlKTlVJSkpZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0tVSktLVUtZBg++
X-Rspamd-Queue-Id: 568814E3C49
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.64 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[jmu.edu.cn : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_NONE(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-293787-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.981];
	FROM_NEQ_ENVFROM(0.00)[amadeus@jmu.edu.cn,devicetree@vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_TWELVE(0.00)[16];
	DBL_BLOCKED_OPENRESOLVER(0.00)[jmu.edu.cn:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Action: no action

Hi,

>  	usb3_hub_5v: regulator-usb3-hub-5v {
>  		compatible = "regulator-fixed";
> -		regulator-name = "USB30_HUB";
> +		regulator-name = "VCC5V0_HUB";

Suggested changes:
	vcc5v0_hub: regulator-vcc5v0-hub {
		compatible = "regulator-fixed";
		regulator-name = "vcc5v0_hub";

>  		regulator-min-microvolt = <5000000>;
>  		regulator-max-microvolt = <5000000>;
> +		regulator-always-on;

Why always on?

> @@ -361,6 +362,7 @@ &usb_dwc3 {
>  	dr_mode = "host";
>  	#address-cells = <1>;
>  	#size-cells = <0>;
> +	vbus-supply = <&usb3_hub_5v>;
>  	status = "okay";

This is incorrect. See the previous reply.

