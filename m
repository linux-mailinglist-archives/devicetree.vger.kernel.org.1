Return-Path: <devicetree+bounces-269313-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kFrZLKq5oWlfwAQAu9opvQ
	(envelope-from <devicetree+bounces-269313-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 16:35:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id C37321B9E59
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 16:35:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 9ADDE3082A62
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 15:30:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0AB243CEF3;
	Fri, 27 Feb 2026 15:29:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bhNwackp"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E23B43CEE9;
	Fri, 27 Feb 2026 15:29:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772206174; cv=none; b=kumPNbjcOuYr/aDE+xBAQDZPx6TdN/TSQLz/6TvJ2eOrVmBEJeviG4BUFUyOitXhOpsI4AMTrAQ9fQ5w1LqCrrwQSyc4mFn7z6EnqZ/hIDQxTcfYRXwYrqo5HyaiX02EIzh6P/ZqSWQLlsih6VZPYRJZ/rQ8Ek7hJuwcDEhEnN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772206174; c=relaxed/simple;
	bh=QqxPEidjtijcKI0x5VDokrr7iw50sdCcnR6RQN9UqMs=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=Y6/q1PUVjob3MIkD645lLjkv1A93MvTJIIq81EeP1GnnnN5FpYkxZB+vWARPTgbXHdnouSxlhKNRu1Q91UxsmUSmusAGHE+d379jyByo0V3rnNR2LzOxOc2g78/IswyWswHR4di3RTDkr5a/VJkkRabqKTxAbp2XepcYXjqt77A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bhNwackp; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C4D25C2BC86;
	Fri, 27 Feb 2026 15:29:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772206174;
	bh=QqxPEidjtijcKI0x5VDokrr7iw50sdCcnR6RQN9UqMs=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=bhNwackp8ttEQdj7NXtXuArb2kHOwIxMDpjs5AR/3NUUmxs0OFOsBnBkFUImxaQmt
	 cEsQjQR7KX8kz5gLUqPzrfdNiLbBPmZB6YK9OUbIPeBrjUSvwMUPeggvzuAVDIN1IW
	 6WafSa3M4ArowphLrl513RHxCK7oALXznG6PFAkjeS6MievPvrzCJN27pT3RGEnJkU
	 XnvrVjB+y+It50KWX/iIdeiGu705pGjlDBxXohxdInRMBQuTkjVCmkeQCMdDKHn8nu
	 WCQuXssgA+x/pPYvO2D/S35yaMxz4iAO+lveKtuaQy8zolo6trmRSg/wTTwz8AePGN
	 zhQSWJUuachng==
From: Vinod Koul <vkoul@kernel.org>
To: neil.armstrong@linaro.org, robh@kernel.org, krzk+dt@kernel.org, 
 conor+dt@kernel.org, p.zabel@pengutronix.de, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Yulin Lu <luyulin@eswincomputing.com>
Cc: ningyu@eswincomputing.com, linmin@eswincomputing.com, 
 fenglin@eswincomputing.com
In-Reply-To: <20260205082009.1780-1-luyulin@eswincomputing.com>
References: <20260205082009.1780-1-luyulin@eswincomputing.com>
Subject: Re: [PATCH v9 0/2] Add driver support for Eswin EIC7700 SoC SATA
 PHY
Message-Id: <177220617042.330302.2707782153123727768.b4-ty@kernel.org>
Date: Fri, 27 Feb 2026 20:59:30 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13.0
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
	TAGGED_FROM(0.00)[bounces-269313-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vkoul@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C37321B9E59
X-Rspamd-Action: no action


On Thu, 05 Feb 2026 16:20:09 +0800, Yulin Lu wrote:
> Updates:
>   v9 -> v8:
>     - eswin,eic7700-sata-phy.yaml
>       - Modify the format of the "default" field in the
>         "eswin,tx-amplitude-tuning" and "eswin,tx-preemph-tuning"
>         properties.
>     - phy-eic7700-sata.c
>       - Correct the incorrectly formatted symbol "-" in the comments.
>     - Link to v8: https://lore.kernel.org/lkml/20260123024823.1612-1-luyulin@eswincomputing.com/
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: phy: eswin: Document the EIC7700 SoC SATA PHY
      commit: 820265f7b666d588bcb7df06f3332265c59e8cea
[2/2] phy: eswin: Create eswin directory and add EIC7700 SATA PHY driver
      commit: 67ee9ccaa34a11c317411bb8e7d305d93d0b4111

Best regards,
-- 
~Vinod



