Return-Path: <devicetree+bounces-294220-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WwfoFeP3/GmxVwAAu9opvQ
	(envelope-from <devicetree+bounces-294220-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 07 May 2026 22:36:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id EA02E4EEB87
	for <lists+devicetree@lfdr.de>; Thu, 07 May 2026 22:36:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0624A30514B6
	for <lists+devicetree@lfdr.de>; Thu,  7 May 2026 20:34:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04B9F32ED58;
	Thu,  7 May 2026 20:34:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AdkGKJBt"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CD9032ABCA;
	Thu,  7 May 2026 20:34:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778186080; cv=none; b=HUUPQok1trD4ITPKflrKUK/ZOhfZx+KLUGtKaY+dHDsN6wI+qV01jxB4vR3sddjNZYy9e3NyLiks0WP8Qu4+gujPY0gtDtD2hKqpgCwoR0nC2gYG9U6lzWxFXtu3x4wWmwMetYua1ynNoZyC2B1+jr5bRG9Qs40aJuQb8yKJoZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778186080; c=relaxed/simple;
	bh=PFN6HSDL0QbN3oYr2krGY3YfjMt04WbKOzcQN4n8n1w=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=C49YCqlbMRA8dWVgykOtyWQIfotXFl+BGGxZCLMrHMfIivsaXZe4W76jd3nYRY15N/tWu6MobAotqTXt9OSKi2xtPZwZAe7990t/9H4xNjqvZ8YH5+E129elh25Eg8HusBMzPBcxthFeR6e0IkYeQwUEXwd84LgaY50nMZSHAKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AdkGKJBt; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 60F18C4AF0F;
	Thu,  7 May 2026 20:34:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778186079;
	bh=PFN6HSDL0QbN3oYr2krGY3YfjMt04WbKOzcQN4n8n1w=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=AdkGKJBt6Xinc7dxtg381/7DRbQZoAIDCmtF927O13FrI5G2XAQj2yH3M0q5acBvc
	 sAd43s6FnQeJXOqzx1ZZhT1owuqKOVwGe5Y9HoBP0ExmAWBpgboWywXnYZoc2jCnTw
	 JZ72nHjW0Nv53+XnH1UAaQ5Ezlv031W68AIi+5xALdb8p01QRvcUlokLNpqdPZ159v
	 fKxW2OyX6zQ0dLQy5GdlSOm82zLqcnClLqtGQRvnHJyHsNQF1aQnLVFu/irD1Fu9t4
	 UwNNePXXFlV95M654DFvD0aBjhDkXDvvEkVAB/ShT/aHEoT2aGEjRnZe05Yvw/ZcPV
	 ByP1gR+npIfdQ==
From: Bjorn Andersson <andersson@kernel.org>
To: Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Aastha Pandey <aastha.pandey@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: sm8750: Enable cpufreq cooling devices
Date: Thu,  7 May 2026 15:34:11 -0500
Message-ID: <177818606020.73000.9883037715234856640.b4-ty@kernel.org>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260403-cpufreq-v1-1-9d465988c3f9@oss.qualcomm.com>
References: <20260403-cpufreq-v1-1-9d465988c3f9@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: EA02E4EEB87
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-294220-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andersson@kernel.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action


On Fri, 03 Apr 2026 17:26:33 +0530, Aastha Pandey wrote:
> Add cooling-cells property to the CPU nodes to support cpufreq
> cooling devices.
> 
> 

Applied, thanks!

[1/1] arm64: dts: qcom: sm8750: Enable cpufreq cooling devices
      commit: 2552d5f2e51bd7e449b495d518e1f2e5252baf56

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

