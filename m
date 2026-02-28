Return-Path: <devicetree+bounces-269590-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kJqgET//omkJ8wQAu9opvQ
	(envelope-from <devicetree+bounces-269590-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 15:44:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 4443E1C39DE
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 15:44:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 7EEBB3030746
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 14:44:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32D94333737;
	Sat, 28 Feb 2026 14:44:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JTzS4eT4"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FF4230F93C;
	Sat, 28 Feb 2026 14:44:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772289850; cv=none; b=SpV7r3iYb+7EpKLZ6S4DvuIZ5UEQ9KU2V5gMpYlJBqjbixf/uRBDIIfmbaXYuYF6abGAwouFNsixswua3WnPCB3XOCh0kjk0L81KMH/noQJtv02DjsEOTHwaPJSXIrQWFQ3OSIlYrtWjvAO7JlRxstrhrV2zKFJURTD1BuD9Ejk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772289850; c=relaxed/simple;
	bh=D/V84I++CGPRixWIXwRVaJCeGB1kFgaeefcBrnaxXbc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=anaqtUxsHwSwrAIYmF1MFHo4mjl8/t7zuJGL9xnpwZzxEvlb0qjll5E17y7jHfrY/ugwHv2T3UVPHRGe8ZSSPAaOp9PQzfJQ6/FQzeDJUFXVY8Ubm4gFZ4qaCckDoDDfg5dy7sAQJg9ULxOmwohIRLVx2Nk5W0qoBSMCNma+n0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JTzS4eT4; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7183EC116D0;
	Sat, 28 Feb 2026 14:44:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772289849;
	bh=D/V84I++CGPRixWIXwRVaJCeGB1kFgaeefcBrnaxXbc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=JTzS4eT4U0jWAF2K11CNh4YnEC05Z7K6olSpRD6JEY30iEu1SKCp9hdx8CKifmnqn
	 ttgMF/+4HmKLPIehW8mb5y3zk6KM1t0+mrx0cC6sdbAQDxHZLcvMlJXLhqHyoXwezx
	 R8Fu6wuSe/mT/AcGoa3U1vo/EsRGH1m8pLue6Yn1mh3kf5IV7db/XuRt5E9F8wX0oR
	 y6vMpxFAIHuw8SR2kaGTaa9bAdMyKiAPktFVODQoQJQj9OtVkJo0TYG0dFb9zTXpqg
	 8dlc3SS01/0DhI9kL7YUTkExxVwJT2fzeau7VdmAMNS/Bteo1JsgwhEZHYMlrW94El
	 yO1Im9g2XlPkw==
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Juan Yescas <jyescas@google.com>, kernel-team@android.com, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20260210-s2mpg1x-regulators-dts-v2-1-68783c9e0a32@linaro.org>
References: <20260210-s2mpg1x-regulators-dts-v2-1-68783c9e0a32@linaro.org>
Subject: Re: [PATCH v2] arm64: dts: exynos: gs101-pixel: add all S2MPG1x
 regulators
Message-Id: <177228984717.54920.3352980611735084045.b4-ty@kernel.org>
Date: Sat, 28 Feb 2026 15:44:07 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269590-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 4443E1C39DE
X-Rspamd-Action: no action


On Tue, 10 Feb 2026 11:30:43 +0000, André Draszik wrote:
> Most rails are the same between Pixel 6 and Pro, with the following
> differences:
>     * only Pro has UWB
>     * Pro uses l2m, not l14m, for TCXO
>     * Pro uses bucka, not l31m, for NFC
> 
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: exynos: gs101-pixel: add all S2MPG1x regulators
      https://git.kernel.org/krzk/linux/c/862529843fb0de9b007a9423996d4cfe19cea883

Best regards,
-- 
Krzysztof Kozlowski <krzk@kernel.org>


