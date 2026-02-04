Return-Path: <devicetree+bounces-262720-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8KaDHEBqg2l+mgMAu9opvQ
	(envelope-from <devicetree+bounces-262720-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 16:48:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EC222E963E
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 16:48:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id F39913048DC9
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 15:44:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6705841C2E1;
	Wed,  4 Feb 2026 15:44:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R5aEQslL"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 439B728D8D0;
	Wed,  4 Feb 2026 15:44:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770219860; cv=none; b=sWWgFM1sCPebvDh1G0dGYinxYq7/OAIdCzM7SnR795f/A+fDcw6Rjd3cy0U5YzC2moYZRBCRWnMg47eWxAB7+tUOFIbycFXXMfOBJ7CtCVbMPCmv7PAD1HvYwSwLoNg4qaW+0b8gE7DFgFSPCa8fFKNT3zfbV/6vg6k+EE9yqz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770219860; c=relaxed/simple;
	bh=tpM2cWDZ1DBwS/647zz9YtPE7D712SNfpFteoFYoiHQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=f6mK99qxRcwGAgyGQWBwPpUF1ntH0KXRGVGa0VkCHXUz1YSWh9u0QyLiOfb0TiIo6wzhFKNNPUiCf9c41MCLugA2BPLMtcLO5sdn4hyWM6eowRp9LEmr1+C3+G9G/vy+T9zkcTsw0YdwTt3TJzy4OyFehrcARA48DnbmWFV8m0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R5aEQslL; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A6231C4AF09;
	Wed,  4 Feb 2026 15:44:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770219859;
	bh=tpM2cWDZ1DBwS/647zz9YtPE7D712SNfpFteoFYoiHQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=R5aEQslLkHyDEtbpw0WoLKBUJFMOjjU4OwvYdFugzArlcmpq9OVLOvhbejNPX8fwT
	 6CLDLCJ17YCmlKaMF13uSMUtX755quM50iq0APPcjbZX5Mat9eHltadSiBTqVr83zp
	 uquBU9neRuzi6dv80mt8r2Q0Qnn42H1LwZt4JqS4NxTp7w85XVZBbI7WpFCebI8jxk
	 kIttulnma0NFg7KZy5mng4NGOKZoEYCwb724noZ8+fcWq+IWAwKeh0QsZNchvrm3Xj
	 uocO7u5w0d81n7z0tgWAp2HTlMNYUbLWZ+5ONFmD4azTFJ5mcbZYdpu8WZrb3P9NqM
	 wy/SQwyn5V+5w==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Aaro Koskinen <aaro.koskinen@iki.fi>, 
 Andreas Kemnade <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>, 
 Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>, 
 Roger Quadros <rogerq@ti.com>, Charan Pedumuru <charan.pedumuru@gmail.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org
In-Reply-To: <20260123-ti-phy-v4-0-b557e2c46e6f@gmail.com>
References: <20260123-ti-phy-v4-0-b557e2c46e6f@gmail.com>
Subject: Re: (subset) [PATCH v4 0/3] dt-bindings: phy: Convert TI OMAP
 control and PIPE3 PHY to DT schema
Message-Id: <177021985530.133434.13436195442562231016.b4-ty@kernel.org>
Date: Wed, 04 Feb 2026 21:14:15 +0530
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262720-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[linaro.org,kernel.org,iki.fi,kemnade.info,baylibre.com,atomide.com,ti.com,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vkoul@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: EC222E963E
X-Rspamd-Action: no action


On Fri, 23 Jan 2026 15:39:01 +0000, Charan Pedumuru wrote:
> This series converts the old text-based DeviceTree bindings for TI OMAP
> Control PHY and TI PIPE3 PHY to modern JSON-schema (YAML) format.
> 
> 

Applied, thanks!

[2/3] dt-bindings: phy: ti,phy-usb3: convert to DT schema
      commit: 62c9ff8fc20d23c0dc36be1330734fdafb3e8585
[3/3] dt-bindings: phy: ti,control-phy-otghs: convert to DT schema
      commit: 7878306d182a1750583a325a29e5ccab9ce0235b

Best regards,
-- 
~Vinod



