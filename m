Return-Path: <devicetree+bounces-275886-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4HToCMpgt2nZQQEAu9opvQ
	(envelope-from <devicetree+bounces-275886-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 02:45:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 2908E293931
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 02:45:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 037E73044261
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 01:40:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A14427A904;
	Mon, 16 Mar 2026 01:39:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aF5lb7za"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 250F223D297;
	Mon, 16 Mar 2026 01:39:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773625144; cv=none; b=VQf+7OCf93qaQ5VxVDhttKlST+J+WB+Gm+P3VFLofA7C7c/nfxO0+8y2gany7uaynlbbZCvfAyCbLzbkg2PZhxqjE/yT977uE8ny0MVyjJNYUIVAIqi/hyrQcHTWIXBbeAVQ7hm3B2K1K+wXQTqJBRcFBU4QZo6jbCTjnCyiPpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773625144; c=relaxed/simple;
	bh=J78Y2XTwRSWCurMpHf05e+0UMYrY0Drf0+8NhI+OVFk=;
	h=From:To:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=qEjs/txCsGyTS+UGnS3S1ZS/lp7JCzWGhgDPaUkrpE77An2bcvmdaXl/NibIn/9Yv/DYtSiDfeXfWtsOykNS88WaxzczYMeSWX72blJUAZkUephUG/W58LrJvabGf2+Df/UgEeY8yH2HcnYy8U3Gi+7xTmRYRemMNzSWkMCqHQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aF5lb7za; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 122DFC2BC9E;
	Mon, 16 Mar 2026 01:39:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773625144;
	bh=J78Y2XTwRSWCurMpHf05e+0UMYrY0Drf0+8NhI+OVFk=;
	h=From:To:In-Reply-To:References:Subject:Date:From;
	b=aF5lb7zaptbiTAS+bB+5DM/BiI9tZ/884hpTbbW4eyRtlyKfgiR3hmkRiuxf7TYvB
	 McUOZyGs/8//OMKbdCt/miPtW1v86N57K0mm+qvF3APypzT7CHLXjVYxjLxKuEu7QD
	 ZxYZkddjtXZpcUwCkJqnZ5WpBAhyAAVioqFnhcmo99n/rbGmGmnAw3v9KjKk6zB1B4
	 3gCdpb5jZTwzZX0c17Ud3h91LyM7oxQCIReFK/a0jqgiot86foss3delnsNWQly1GM
	 b74Dgv8A6KbszD1x3ZghdPbveY7YVrsWspf2UjQQ3ssIggnaP6X9KfHeX1xBmWGVHk
	 qShA1Qkif96+A==
From: Mark Brown <broonie@kernel.org>
To: Shenghao Ding <shenghao-ding@ti.com>, Kevin Lu <kevin-lu@ti.com>, 
 Baojun Xu <baojun.xu@ti.com>, Liam Girdwood <lgirdwood@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shi Fu <shifu0704@thundersoft.com>, 
 linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
In-Reply-To: <20260311153548.94265-2-krzysztof.kozlowski@oss.qualcomm.com>
References: <20260311153548.94265-2-krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH] ASoC: dt-bindings: ti,tas2770: Switch to undeprecated
 reset-gpios
Message-Id: <177352551157.149922.7226649900109761545.b4-ty@kernel.org>
Date: Sat, 14 Mar 2026 21:58:31 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.15-dev-5154a
X-Developer-Signature: v=1; a=openpgp-sha256; l=1154; i=broonie@kernel.org;
 h=from:subject:message-id; bh=J78Y2XTwRSWCurMpHf05e+0UMYrY0Drf0+8NhI+OVFk=;
 b=owEBbQGS/pANAwAKASTWi3JdVIfQAcsmYgBpt181wMaVAaQQp0ZCAUADcMANbG49NjGU706eg
 15hdfiomAeJATMEAAEKAB0WIQSt5miqZ1cYtZ/in+ok1otyXVSH0AUCabdfNQAKCRAk1otyXVSH
 0IbLB/9mP+bqOXE3nPN9IQuzHkmS2xtJIpPMOyUGP+nmEEC4Ty/8ANmh0UVxWrh47NSDIS8LgLK
 KaslEZNDstC2TPwBO2Nl6yH1Pvu8Sg8zpSggwgTEipysgZQhjDhIla/OY1nV7ht61iufKDEfVFd
 qT2+ZggL1XVBr00ZcPyo/c7bCivroHDwCAsy3sqX4fA31PELJ6NYE8asFdhXmMzL1B0q2nJB212
 8ocziR07soNEIF15K9cGo3Mcd4qB+RQUwxBTe8d54nDw4++PZYAqjRz2d8ZFLdgaM0dp3OHqBBE
 ocmi/XWH0N/zY4RTVtz+aG356iRUDxrWUQbZt8TtubJN2kj9
X-Developer-Key: i=broonie@kernel.org; a=openpgp;
 fpr=3F2568AAC26998F9E813A1C5C3F436CA30F5D8EB
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[27];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275886-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[ti.com,gmail.com,kernel.org,thundersoft.com,vger.kernel.org,oss.qualcomm.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 2908E293931
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, 11 Mar 2026 16:35:49 +0100, Krzysztof Kozlowski wrote:
> ASoC: dt-bindings: ti,tas2770: Switch to undeprecated reset-gpios

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-7.1

Thanks!

[1/1] ASoC: dt-bindings: ti,tas2770: Switch to undeprecated reset-gpios
      https://git.kernel.org/broonie/misc/c/46b87c37ca4f

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


