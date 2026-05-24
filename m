Return-Path: <devicetree+bounces-302567-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qIfPFPogFGpjKAcAu9opvQ
	(envelope-from <devicetree+bounces-302567-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 12:14:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EA32C5C921D
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 12:14:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 54BA13000FEE
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 10:14:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6F2B345CDD;
	Mon, 25 May 2026 10:14:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RDMu/TLC"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A00593382DC;
	Mon, 25 May 2026 10:14:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779704054; cv=none; b=c1EPShOWggZZPZ1//YIWeiSXnhlZOAq/rLjV+49Uhd//Tt1p7Dc6KsKJjrEiAkGv4p3Fq0wzH/NOeLh1RjuhuXKJOXIJ6UUCStq8rRzJe7v14Z5X5JHjQvuJ7QinmfiDiTp20XNRNVmAT0N+GLjKQ9NkU6x6Tue/B+tMP8f5S4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779704054; c=relaxed/simple;
	bh=k7v5GEdkzcydxpc5MvIfHq+A02nGrCLlHWY7mzRaaeo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=rsz6uflaPwHINKnikzcWnS0+6cXasD6/81u2nEDmQ7xrlmQCi+W4BNx9EH9bVbb1mhEqf8l2bC0tlm+X5MrhDdI4MA2RVnp5ziOFUWzzUjcXh5ahEWtp6YFl2BdU/Q938RgPFum4lah1PmF6Mujvdqdpu473ykg4STVRTLKH+WE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RDMu/TLC; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7C38D1F000E9;
	Mon, 25 May 2026 10:14:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779704053;
	bh=JK9rJSaQEpusmJlFZSrvIvsLrGVJQ12596AEN969qU0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=RDMu/TLCX1a7lFahRAI271FNP1CzJtnNSmp26mfk1YlsWi3syZ13oK3C3pEA070ej
	 Y3fsjfeWvO8iMwt979GISKTN5n4Ynft0opQKIIFkEw0uy3t0iBAiPlKHQjboBYZALc
	 YfEyDU74jUrSxq4WCkJDAaIOLiXb2k19a/L7QYINmBnz2Kx97xPo9RZdj5MG+e+EUW
	 BEu+3XJoZfJljiPhS8BmypNkfwC8YujgYCkYVIJwPEJy/Ow1G4qZp8lKcOn4a5wKEx
	 c9fAlOZ0yvaREBUL/I2/62NZbmg4AQdVaau8tuW0rSxd+yQFAo/uWf8YESmuHVOstG
	 EC2eSnsD3GKKg==
From: Mark Brown <broonie@kernel.org>
To: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 KancyJoe <kancy2333@outlook.com>
In-Reply-To: <20260522-topic-sm8650-ayaneo-pocket-s2-sgm3804-v5-0-bd6b1c300ecc@linaro.org>
References: <20260522-topic-sm8650-ayaneo-pocket-s2-sgm3804-v5-0-bd6b1c300ecc@linaro.org>
Subject: Re: [PATCH v5 0/2] regulator: add support for SGM3804 Dual Output
 driver
Message-Id: <177966214295.70905.14964085869538189497.b4-ty@b4>
Date: Sun, 24 May 2026 23:35:42 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.16-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=1516; i=broonie@kernel.org;
 h=from:subject:message-id; bh=k7v5GEdkzcydxpc5MvIfHq+A02nGrCLlHWY7mzRaaeo=;
 b=owEBbQGS/pANAwAKASTWi3JdVIfQAcsmYgBqFCDwrFft/hKTCSlxSqoomU7g4kw3HPwpmMCtH
 6jv6jBprkaJATMEAAEKAB0WIQSt5miqZ1cYtZ/in+ok1otyXVSH0AUCahQg8AAKCRAk1otyXVSH
 0DElB/0XgXwwXigApZ/XD4RZYiLi+RNzIVfi7pciR1JVh7oSyqNV5D2xXupWcjvETG2mcFFCJk5
 RDulAy5vxey0f6sb9rZqqbFSK8KbZZWRZEWWUMQx223oS3D9rocS9Y9ha611pXng6GnJdX+GkUW
 e7sJGIrGSptPoaGyk2jxSsagOMbG5il44QFwb7JCLRsoapKnxpor2y+i+RVtpTjKhCYA/s0LSvT
 P/bPEHy1Py+f648D8/xKm/UC1Ymompe7fziCoO8/qcQgHiSHgA8eBglow8pbfh2HYnf9v78VY4r
 tiZgKncrJzoRm6AHi4de4n1qzKD2ImM4/lxW+cDcaysFX+IG
X-Developer-Key: i=broonie@kernel.org; a=openpgp;
 fpr=3F2568AAC26998F9E813A1C5C3F436CA30F5D8EB
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-302567-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,linaro.org];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,outlook.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Queue-Id: EA32C5C921D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 22 May 2026 15:09:11 +0200, Neil Armstrong wrote:
> regulator: add support for SGM3804 Dual Output driver
> 
> Add support for the SG Micro SGM3804 Single Inductor Dual Output
> Buck/Boost Converter used to power LCD panels a provide positive
> and negative power rails with configurable voltage and active
> discharge function for each output.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git for-7.2

Thanks!

[1/2] regulator: dt-bindings: document the SGM3804 Dual Output regulator
      https://git.kernel.org/broonie/regulator/c/8480ea35d715
[2/2] regulator: add SGM3804 Dual Output driver
      https://git.kernel.org/broonie/regulator/c/0c47e1a8cf5d

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark


