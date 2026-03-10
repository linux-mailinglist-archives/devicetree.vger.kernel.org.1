Return-Path: <devicetree+bounces-273215-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aAJQLIyGr2lvaAIAu9opvQ
	(envelope-from <devicetree+bounces-273215-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 03:48:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id AE46D244645
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 03:48:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5F0C33025E09
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 02:47:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03C2D3AEF5E;
	Tue, 10 Mar 2026 02:47:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mrcmh4iy"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D52D63A4522;
	Tue, 10 Mar 2026 02:47:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773110821; cv=none; b=TAQmf0VyUL/G6h+TXjSPGku0GgnzGfLjYSPbqzogj60GuA+ixSwX6qiiwCkOrwFpUtm4iIBBQoUcSx6j1w8+Bn2IaiJljBozGOb1py4ilTniXUt9BiJa+asf045MOb1RjFlaOwkIOUN9cQVjO19g6/n8bBN2s2PGH169/mq/XLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773110821; c=relaxed/simple;
	bh=Wa87LLIiXZuDU38793I/JQXfPibHP3fcNRsMwC2Wiyc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=UT6CXglNI+BJeN1VMenK0x2LeCjeERdyJLJVVVfMWrt7sN0xYb2XW8wsnLI5RnwGdxDKa0GVvUuvaS6EEXDDcUwu4pjRV3MRDPPP5SQcEHBj9xJM62y84YZCQEVxG3Jvk23p6a4RoNNnZNvB3n1Mkcgs5Hs1qZ45xxQIWwzRK5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mrcmh4iy; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E6ED4C2BCAF;
	Tue, 10 Mar 2026 02:46:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773110821;
	bh=Wa87LLIiXZuDU38793I/JQXfPibHP3fcNRsMwC2Wiyc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=mrcmh4iyzikIHcTGM/H5hWooG4wxuub/FEmHYl3eh5fzcCZeJ7c0pdg8rFaG4JLaW
	 I7LW4RWfAlIKtAHI/2GzyZ+PsEjsJZ2AzXOGoN9RV0BAlKG4vkc9XSa/rfiePtEuM9
	 yyO/hCH1ocsl8izXBe1xVLK/+Z9xq3NX9gihmBOqvHkPm5FdMZqXMFCt9qKqX2LHjm
	 hefoaYpQzn7DpP2MuPK2XUNzVU1DjRtrnRPxZpSe55taVsqM3ACC9osmEAEI7POrdr
	 HVVXgmyAUYIW0KEfbj9kd+DsrftdKYObbc6gfJ7Jon5eNn6Q9X9Rsex5rTaOXeYDFy
	 PTTdRgNLTa4Cw==
From: Bjorn Andersson <andersson@kernel.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lijuan Gao <quic_lijuang@quicinc.com>,
	Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH] arm64: dts: qcom: talos: Add missing clock-names to GCC
Date: Mon,  9 Mar 2026 21:45:32 -0500
Message-ID: <177311073312.23763.10655946781320670223.b4-ty@kernel.org>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260126-topic-talos_dt_warn-v1-1-c452afc647ad@oss.qualcomm.com>
References: <20260126-topic-talos_dt_warn-v1-1-c452afc647ad@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: AE46D244645
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273215-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andersson@kernel.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Action: no action


On Mon, 26 Jan 2026 10:45:03 +0100, Konrad Dybcio wrote:
> The binding for this clock controller requires that clock-names are
> present. They're not really used by the kernel driver, but they're
> marked as required, so someone might have assumed it's done on purpose
> (where in reality we try to stay away from that since index-based
> references are faster, take up less space and are already widely used)
> and referenced it in drivers for another OS.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: qcom: talos: Add missing clock-names to GCC
      commit: c653607929bb4e0d8b80573bdb523adab5b975c2

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

