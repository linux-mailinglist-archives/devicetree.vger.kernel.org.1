Return-Path: <devicetree+bounces-296476-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wOv/FwSQA2rv7QEAu9opvQ
	(envelope-from <devicetree+bounces-296476-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 22:39:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C7A85296C5
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 22:39:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 67E9730B9675
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 20:27:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7F843DD859;
	Tue, 12 May 2026 20:24:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lh1QSdHO"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D44B3DD87F;
	Tue, 12 May 2026 20:24:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778617444; cv=none; b=XGNzRG+WDqa0N95QmBXlXPpspQ6s/bg1ietvuFlYP/sCyOH5HNtwD4ZeO6lBFMze8+Ds9VN0DXspnBbCgQp2dOiyXn9DZJHDlEEIAZJV5enzaYxAdaqd5Mvh1C107WPgxYhViODTLgZRDIeBN56isutKByIgsUjjMC0SNGPYpVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778617444; c=relaxed/simple;
	bh=lYOR/5SV1lY65Plfy2jEwkSPs4fgHDIg3CLLzeJNWVo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Crklqo4+V3FoRymfL3/sgqNYIRCaUssZuLlbKg7t0aDrcx7hgNHVZOj0zMAujkgNmtAiBlBQGbfj4SysV7HXjREYcOAAr78bLUP0laGtSWHfHQxONkky31b0cn73fkpGoQxQL+X49JwXw0nryHYmOaEwIQw9U+1uSjuTSLYeFZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lh1QSdHO; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AD4FEC2BCF5;
	Tue, 12 May 2026 20:24:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778617444;
	bh=lYOR/5SV1lY65Plfy2jEwkSPs4fgHDIg3CLLzeJNWVo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Lh1QSdHOBv3eMG3OLGSciCzseZgZ6tmLbRrHjmLCwzktYuBU5BnLJgdUlpZIX364H
	 PVxwmuqrUrdHSvwWpxABnteL2qpvweZ109oisn69VOiLtoDSeV0NmYute00tPXTE89
	 yrLNl+2YnR9Pe94sBsHd/kAL9WOOZW7FzVlDNcYhfu3D5ErtV89fH7/N3jVKakO3PW
	 Q9mNcpE3OvC2dDjYkHUXvi+52xrkYBhx3R8lEOi2rvwoSNRvyYJJ7dFofVjoeM5beQ
	 sqZ0iM1szpN+IN/Dbvwfa2bO5yjDdXDURAL8OoQGt6fT/NbrWp3qqFZ0N7IIGcFw3P
	 foCN9KQor8xjg==
From: Bjorn Andersson <andersson@kernel.org>
To: konradybcio@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	Xin Liu <xin.liu@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	tingwei.zhang@oss.qualcomm.com,
	jie.gan@oss.qualcomm.com
Subject: Re: [PATCH] arm64: dts: qcom: purwa: Add EL2 overlay for purwa-iot-evk
Date: Tue, 12 May 2026 15:23:16 -0500
Message-ID: <177861739369.1242344.7631506235493401383.b4-ty@kernel.org>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260417054200.2402281-1-xin.liu@oss.qualcomm.com>
References: <20260417054200.2402281-1-xin.liu@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 6C7A85296C5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-296476-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Action: no action


On Thu, 16 Apr 2026 22:42:00 -0700, Xin Liu wrote:
> Add support for building an EL2 combined DTB for the purwa-iot-evk
> in the Qualcomm DTS Makefile.
> 
> The new purwa-iot-evk-el2.dtb is generated by combining the base
> purwa-iot-evk.dtb with the x1-el2.dtbo overlay, enabling EL2-specific
> configurations required by the platform.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: qcom: purwa: Add EL2 overlay for purwa-iot-evk
      commit: bde860892c92a43624a7bcf932a1d375b1ad43eb

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

