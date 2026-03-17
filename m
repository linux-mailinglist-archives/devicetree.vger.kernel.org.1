Return-Path: <devicetree+bounces-276778-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QG6IN0iLuWmTJAIAu9opvQ
	(envelope-from <devicetree+bounces-276778-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 18:11:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 833512AF18F
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 18:11:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 356A3303549A
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 17:09:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 365153F8DE7;
	Tue, 17 Mar 2026 17:08:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NNjy7hBm"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10EA73F8DE2;
	Tue, 17 Mar 2026 17:08:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773767321; cv=none; b=N//nMdJN4IwENuK0wEiF6eRY5gkcfQiH5KHg2t0xApb2s3L0lHAv/j8aaavZW31VxdSemiBhmsKEFhp0blvjgyA8KWA97RuN3j4j6/3rX3J0BDR+7noOeMFy1T7iCUFNrwXxPqRSD8Y2r7Y6ohHmAnR7g4FeZw9gZ7VKhrbQMyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773767321; c=relaxed/simple;
	bh=PXXyBSnN474aXqkT3S3NFX0wN8kKOq9SqeYHK37K4yw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=SNyXqZKFnH2ds8z5FndTvALzLx3f5lZMx/Y3UNwFFHHeRsOD/3rwQBMS70RxkVNXnvTko6G6Qr6yzxvnfdTinywzIEWCXZIYSqKyWy/N3sAYnTtGAT21faHmkLvzKcVRjPqpS7D8HnNxIxR+QaaVaqCcHIsFJrQKSbFz8DSvpuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NNjy7hBm; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 27F15C2BCC7;
	Tue, 17 Mar 2026 17:08:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773767320;
	bh=PXXyBSnN474aXqkT3S3NFX0wN8kKOq9SqeYHK37K4yw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=NNjy7hBml87/61na/1M14Rrj3BdmnCw90SqBswf1LD9QVngCNkNPWsb+uKT0Ssw6w
	 AbpIOK1q1Bo4jZuMd+ZSXghgqJoybFVEXrwnDYBpYouufcyvE5eQq1zOhRXfK3s1Yw
	 reFHRDjNX8np2NunGwFd7DGat7pbrcNbjYJfN18+TtEA9ZyWhgR/ei3hktMNbrDN/9
	 Ju21vrnsqIc3zh/z+C9zvVZ96QUMjox1aVDgjxyaZBcufTMN/4b/wHOrMMVbt0s5br
	 HqanLrHv7sTyCjI1juLiT3tTgcDjjpw8HDxRPoSeAfrhFwn10DuWGktebtdG+ZcfrY
	 yECUCvGyGoLZw==
From: Mark Brown <broonie@kernel.org>
To: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Hugo Villeneuve <hugo@hugovil.com>
Cc: Hugo Villeneuve <hvilleneuve@dimonoff.com>, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260317152357.3473584-1-hugo@hugovil.com>
References: <20260317152357.3473584-1-hugo@hugovil.com>
Subject: Re: [PATCH] dt-bindings: regulator: fix typos in regulator-uv-*
 descriptions
Message-Id: <177376247508.112898.1762399316260094811.b4-ty@b4>
Date: Tue, 17 Mar 2026 15:47:55 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.15-dev-e1b5b
X-Developer-Signature: v=1; a=openpgp-sha256; l=1157; i=broonie@kernel.org;
 h=from:subject:message-id; bh=PXXyBSnN474aXqkT3S3NFX0wN8kKOq9SqeYHK37K4yw=;
 b=kA0DAAoBJNaLcl1Uh9AByyZiAGm5ipajqf5bdUPIwC5KaEwVcxhXN0Xg5x9mZK2d+xxqmvSKm
 YkBMwQAAQoAHRYhBK3maKpnVxi1n+Kf6iTWi3JdVIfQBQJpuYqWAAoJECTWi3JdVIfQq9YH/ReP
 Iy3nt4aPLgPFDc8PiY9WJDzwR7tuAsgFia7QKwv+R5BI1DKz627z/yjs+1KDwK0OyefdNe4eZLx
 UuVMSE+HhIThelxxsdBtZZsYlVOPPwYsdUXf4+S3U0B4ArLq9QlnIbfEeHp9bFqF3D3Mz5Cpwi3
 cMNoe6GlZOkrAgWeuW/EXD3whLn9G0aKo2bMjJ/eBjQSHAigarokKmifeBqxkD+b9/ydjhYia8R
 AECXK7WkYWFNUUfu5YckRNuNq1XYS79DCCITWWDDH57pKqaUzd6mFf/6Iw+Jv2XrkQyfunfYoJ0
 PHRIweyNvF6emUpkSUWTesCnhTAV4Lt9GIDQ+20=
X-Developer-Key: i=broonie@kernel.org; a=openpgp;
 fpr=3F2568AAC26998F9E813A1C5C3F436CA30F5D8EB
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276778-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,hugovil.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 833512AF18F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, 17 Mar 2026 11:23:39 -0400, Hugo Villeneuve wrote:
> dt-bindings: regulator: fix typos in regulator-uv-* descriptions

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git for-7.0

Thanks!

[1/1] dt-bindings: regulator: fix typos in regulator-uv-* descriptions
      https://git.kernel.org/broonie/regulator/c/4221f30e3e0a

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


