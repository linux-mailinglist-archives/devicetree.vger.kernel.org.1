Return-Path: <devicetree+bounces-273221-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4KODG6aGr2lvaAIAu9opvQ
	(envelope-from <devicetree+bounces-273221-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 03:49:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0598824466C
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 03:49:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id BC8913040A17
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 02:48:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 250163B8BB9;
	Tue, 10 Mar 2026 02:47:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EJA6O6oq"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01DDD3B8932;
	Tue, 10 Mar 2026 02:47:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773110858; cv=none; b=meWpnPnJtqwRPoS9GvIWTNpnWPM2RiFLrOcq9QBytmp7bd7YO7l9L3P9Zdb/oG0cQnRRygzltcCLj+i2qOl+6r8Cgv4xi1hrqkHfxXw1rJrp9PWQmrwFPmO0X2VnLuXJUQV5Bmi/lqoNklL2exFA1CmFMPVAPoJO+c3coTxLY7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773110858; c=relaxed/simple;
	bh=Y7nDC+ZDhU2/aZMxih75EdsRtasYGkuo0+ksDB83B44=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=dyAEUZkLTl0jk+QXfrW0oP8E68YV+4QoSc4wh+1Xb8ZDMCaM645vkYoEaG4kHVf3/iQlAvTMDDKB2XjJzshWxhrRIuDzgKMTTSOa3iuUAtUkKC22JLrhWjpI2IH19AJFQnAQx3Mb/BLte1572SMxMYk2kEwRsfshCVYAUGcrvAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EJA6O6oq; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B44A3C2BCC4;
	Tue, 10 Mar 2026 02:47:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773110857;
	bh=Y7nDC+ZDhU2/aZMxih75EdsRtasYGkuo0+ksDB83B44=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=EJA6O6oqFs3UXOGBRLUOc2S7BjtXTTk41A8xyKjdf6ckp0hCI5jHDWG/VxzJ+8Wja
	 UFgcudjPY3hQuxPF6LqIF262luqzt4/2FcEdkMssWYdHMSCbyfGcj3ER2IDZUWJ/9w
	 W1rtIYR0V3qPLYS7NDyhuIBf5dRUffgiN+XwXlfxpESvLnhrVfWlKI1Y3KipQfaTpp
	 Di3AnoXsu2ZAzlqDtUSNBmOD12XAUiuv4/v6BVU82sje9TgO1v/ZazEl/a7d2eiiEE
	 CNieMjDPXDatoJlNEmX0M1iZl1l+HSjvzccUt0Xy3M2Ba4IWZwZiFmY8tPGBfz7m3d
	 aaW4D8Ar2Ty7Q==
From: Bjorn Andersson <andersson@kernel.org>
To: Gianluca Boiano <morf3089@gmail.com>
Cc: konradybcio@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: sdm630: add SPI7 interface
Date: Mon,  9 Mar 2026 21:45:40 -0500
Message-ID: <177311073308.23763.7585670273263213700.b4-ty@kernel.org>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260120193634.1089688-1-morf3089@gmail.com>
References: <20260120193634.1089688-1-morf3089@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 0598824466C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273221-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	DKIM_TRACE(0.00)[kernel.org:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andersson@kernel.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Action: no action


On Tue, 20 Jan 2026 20:36:34 +0100, Gianluca Boiano wrote:
> Add spi7 interface to SDM630 device tree.
> 
> 

Applied, thanks!

[1/1] arm64: dts: qcom: sdm630: add SPI7 interface
      commit: c056679db5ddaa576fb9f347d8e3f0fc1a6f4e20

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

