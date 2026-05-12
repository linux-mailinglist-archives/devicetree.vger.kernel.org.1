Return-Path: <devicetree+bounces-296444-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6IqeFkSMA2pN7AEAu9opvQ
	(envelope-from <devicetree+bounces-296444-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 22:23:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E4F35290E2
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 22:23:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 9CDB530243AF
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 20:23:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 406B03BB13A;
	Tue, 12 May 2026 20:23:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HRKvHeJR"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CCC3363085;
	Tue, 12 May 2026 20:23:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778617406; cv=none; b=QIVttBeCnBzldxOzLZXYrBhckc4SLxasqTPj/ZRw9xpV91TpdDj0UcmdpjxzaDNLgXevLMkZfZkXlKsbj585Rxbh60+SWcybMMYHkpIYN6VDbIwtKnzHV+8jrPxrBk7K4k2seHKaA4ptd7XVw/5r24Jizt+tHes/SX8xp4BlBJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778617406; c=relaxed/simple;
	bh=UeZgoookbiJjBrM8+9uOpO74rnOX4IETwk6HxQ8RsUI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=m2g68Tf7Qrt3MSR/zKktVt+YXIIJEDtUuTwUR837KXN+q3Z0IuhLQzKypaCON1tqfm181tzS0CXQIaxpFVUI8+QS1Xtpw5Bs+Jn+xpXv8RGUZG2WtTAnkHvLSJ+b08QKOZt0FOXMaJHaPXd2RX5KddUz9ozhY1pV9f8TVrJSwHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HRKvHeJR; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B21B8C2BCB0;
	Tue, 12 May 2026 20:23:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778617405;
	bh=UeZgoookbiJjBrM8+9uOpO74rnOX4IETwk6HxQ8RsUI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=HRKvHeJRAv+L3MnRUXQ7RBCyo4FhnRFNkCJHgAqS6r++JXVdFcu7BCx7NG6C0X4bt
	 Ya0KHLrgNROSs+RMPMyGeHp6a9VP0KRp6fC2ZL6F59JKbwt5SqDwS9lYSpEYojg3zo
	 lbqyFncOJtbrRpINZx2GaRJ0zSmI9DL5tL7LQR2YA3riq18FoJ+qBBJpEH090hGgXD
	 31ggDTSbw69bO3q7Qaok+uJ17pO+ZkZmLP4inl6CURVfXCCD1F5yNakZaFi3f1kwKR
	 qPPDNExtVwui33Ki76n3TXyRlV6+ibA3bqB8WOdx4JeuR9Nhq5j6M//hY+TvDqfnqZ
	 iOiryyTeZ3O/Q==
From: Bjorn Andersson <andersson@kernel.org>
To: Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH 0/2] arm64: dts: qcom: glymur: Fix USB role-switch configuration
Date: Tue, 12 May 2026 15:22:37 -0500
Message-ID: <177861739386.1242344.7252675220044410615.b4-ty@kernel.org>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260415-dts-qcom-glymur-usb-role-switch-fix-v1-0-409e1a257f1f@oss.qualcomm.com>
References: <20260415-dts-qcom-glymur-usb-role-switch-fix-v1-0-409e1a257f1f@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 4E4F35290E2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-296444-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andersson@kernel.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Action: no action


On Wed, 15 Apr 2026 10:52:55 +0300, Abel Vesa wrote:
> The Glymur USB role-switch description is currently incomplete and partly
> self-contradictory.
> 
> At the SoC level, only USB SS0 is currently described as being able to
> switch USB data role, while SS1 and SS2 are missing the 'usb-role-switch'
> property even though the controllers support it.
> 
> [...]

Applied, thanks!

[1/2] arm64: dts: qcom: glymur: Mark USB SS1 and SS2 as role-switch capable
      commit: 347fa2fa64e1cef0c7897522896c0c66e734c82b

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

