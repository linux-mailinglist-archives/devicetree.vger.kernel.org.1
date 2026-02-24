Return-Path: <devicetree+bounces-267789-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CCnAMcZwnWk9QAQAu9opvQ
	(envelope-from <devicetree+bounces-267789-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 10:35:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 62936184AF1
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 10:35:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 68F7630C8F46
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 09:34:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E9CB36E482;
	Tue, 24 Feb 2026 09:34:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="hGerxt/X"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D55C136CDFD;
	Tue, 24 Feb 2026 09:34:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771925645; cv=none; b=fmzPSUTZxJ1TRb695mP0zq6KUulsbTkCWnKr42mCOY/fNyNT0zUV3WVTrX1VWpQNHZZ6JXZQVWg5113pBKhwj9RhN/IJkuSuy2OTKCL2GAn0dnvXFXYgnLq/XG2Q4iR0qgZ19a/wLGPRfOvIlGdUxsvGBpM6M0qegRqqMl/YSno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771925645; c=relaxed/simple;
	bh=bju+bv/VR4hPKTpxBKpuapRP9tylBhD2c/qGUd2VY4o=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=nQf6WEp0jP6BRIH0tgvZiNObWBN0uNKXdGAmWqWpYiVCmLpbe1jJU0PvLQZwfU2fxVht+IrFdffg0chNn0NtDmi+ObkhJzqHgpstHxln2557w5eQpsh/HR65DAtEMX7gla0u/zvjy5y+s8Vrf+yZLpBrFUprBu/7BmZ/mnP410I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=hGerxt/X; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1771925642;
	bh=bju+bv/VR4hPKTpxBKpuapRP9tylBhD2c/qGUd2VY4o=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=hGerxt/XSoTQd+FMhU1QxHgBLYmHXoEpWq/cCAktT6qA3IEz/tHuG6bnRVMK/SKsz
	 4e2LJKQSHFoPPw7sAN4zPU+FCoPOCpch0IZelFDtlBIUbiryAZ+aeW64CaqmWRV+uj
	 LuZLrPSMkLKL6cZAKZ3ptIja/Eeomm0DQjG4unSEmGyukNaS0tU1iamqKHWn1P+Nc/
	 rZvtsa4ComEmuk8qXH56ysU1MfEJpL0+JsIw9+Z4XlMaFyiMW+Jlmy2aY0lWxJzPi1
	 QWXU/vy/YM0fvgzGyfJ3FvC+BvrLMToU0aQHIs3oztyLm98gUCsbDZ0W5tUoktbKKK
	 OanmGgRsUzdUg==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 9577B17E0D33;
	Tue, 24 Feb 2026 10:34:01 +0100 (CET)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: linux-mediatek@lists.infradead.org, 
 Luca Leonardo Scorcia <l.scorcia@gmail.com>
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org
In-Reply-To: <cover.1771863641.git.l.scorcia@gmail.com>
References: <cover.1771863641.git.l.scorcia@gmail.com>
Subject: Re: (subset) [PATCH v3 0/6] Add support for mt8167 display blocks
Message-Id: <177192564156.11826.14547610643774213696.b4-ty@collabora.com>
Date: Tue, 24 Feb 2026 10:34:01 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267789-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[lists.infradead.org,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,pengutronix.de,linux.intel.com,suse.de,gmail.com,ffwll.ch,mediatek.com,linaro.org,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[collabora.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:mid,collabora.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 62936184AF1
X-Rspamd-Action: no action

On Mon, 23 Feb 2026 16:22:44 +0000, Luca Leonardo Scorcia wrote:
> This series adds support for the display blocks on MediaTek mt8167.
> Tested on Xiaomi Mi Smart Clock x04g.
> 
> The first patch just does some reordering of dts nodes with no other
> changes as this makes later patches cleaner and easier to follow.
> 
> v3:
>  - Added mt8167-dsi compatible to driver instead of changing the binding;
>  - Resolved patch formatting issues.
> 
> [...]

Applied to v7.0-next/dts64, thanks!

[1/6] arm64: dts: mt8167: Reorder nodes according to mmio address
      commit: d51b7191f2072e11259edd2bff88385891d0ae56

Cheers,
Angelo



