Return-Path: <devicetree+bounces-295420-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cP4zOnCmAWrMhQEAu9opvQ
	(envelope-from <devicetree+bounces-295420-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 11:50:40 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A65C50B516
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 11:50:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5D250306125F
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 09:36:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28E853BED23;
	Mon, 11 May 2026 09:36:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="jUZGEs+G"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AF1B37C930;
	Mon, 11 May 2026 09:36:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778492199; cv=none; b=pa9KffSsi1iBDK2q0rGJNN6p2mK/UtCBrCHfLS99MXkpMFmX39B8Xx96E5PP37Vozq03kebebSWvN3s9GoY/b9MdCuWD47vW8KJn0xSYivkFxViQCe1DerFtrWwpJvZ+Lbij43Qg0Rs0rZrdUQZGlFyyGrsErZrTeth6Nqzc0BA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778492199; c=relaxed/simple;
	bh=Nr6wvmQNMPiK7f1NhJgebpOuZMeoDGQZHRr1LBzM/B8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=j5Rty6pZAJNukB5H/BB2fPskSsMIgb4s3vlE+/o/yX5JimxlrjDn9WdsAiO3Vj+5skJ5VTN7UTMyCkgKq4vZ5ATPtjaUUPyKKjzXmyTQH4FDtm7vEcoYYX4u5f8ox1u2Epujc2phhAXtBXfRub/eOziLTp6VYNIuNZ0CTTLG84A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=jUZGEs+G; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1778492196;
	bh=Nr6wvmQNMPiK7f1NhJgebpOuZMeoDGQZHRr1LBzM/B8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=jUZGEs+GvzsZz3+HsXxPjVObkW/RwXvByy0gotGnwNX2p0o/p+H8lMt+yt2XlhND8
	 wzHsFq0+aGcC2zBTnjeOrxO0/JVrGUAxl8omDgKL7stc9INZ2bZ7zLcAUyo8I7g+rY
	 FuuZWS//2ZCOtwdpK+h5QpcrBHsDa43T7b1dTK1KNKuCawe4Lqdb5ZC8G9Qr6kf0Sb
	 HFj/QnR+KtSzxaDQ23mDbGZjYvPFQCVdKqNzDfTkaTav42xbN7Y4/3pfifTF9cvpt3
	 gctruCbaPNM4V4qAbPY4BvFuxLHjJcVhP76n+VkRT0ilnTIssF0/Qr/JXJOBRx7ODl
	 ZtfXjP8Lk875w==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id C621817E040C;
	Mon, 11 May 2026 11:36:35 +0200 (CEST)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: Sen Chu <sen.chu@mediatek.com>, Sean Wang <sean.wang@mediatek.com>, 
 Macpaul Lin <macpaul.lin@mediatek.com>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
 Chen Zhong <chen.zhong@mediatek.com>, Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, 
 Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Cc: kernel@collabora.com, linux-pm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 linux-input@vger.kernel.org, linux-iio@vger.kernel.org
In-Reply-To: <20260429-mediatek-genio-mt6365-cleanup-v1-0-6f43838be92f@collabora.com>
References: <20260429-mediatek-genio-mt6365-cleanup-v1-0-6f43838be92f@collabora.com>
Subject: Re: (subset) [PATCH 0/9] MT6365 PMIC support cleanup
Message-Id: <177849219574.115964.17730768791948162996.b4-ty@collabora.com>
Date: Mon, 11 May 2026 11:36:35 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-Rspamd-Queue-Id: 7A65C50B516
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-295420-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[mediatek.com,kernel.org,gmail.com,baylibre.com,analog.com,collabora.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[collabora.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:mid,collabora.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Action: no action

On Wed, 29 Apr 2026 11:44:13 +0200, Louis-Alexis Eyraud wrote:
> Several Mediatek and Radxa boards, based on MT8370, MT8390 or MT8395
> SoC, integrate the MT6365 PMIC, that is a MT6359P variant:
>  - Mediatek Genio 1200-EVK
>  - Mediatek Genio 700-EVK
>  - Mediatek Genio 510-EVK
>  - Radxa NIO-12L
> It is compatible with the MT6359 PMIC.
> 
> [...]

Applied to v7.1-next/dts64, thanks!

[6/9] arm64: dts: mediatek: add MT6365 PMIC include
      commit: dd85b476c5bb164e5978e42867e1f4deb23b23fd
[7/9] arm64: dts: mediatek: mt8390-genio-common: use MT6365 PMIC definitions
      commit: 38c2adaccd3618882e3c5b8ec76ef77a1ecb8de9
[8/9] arm64: dts: mediatek: mt8395-genio-common: use MT6365 PMIC definitions
      commit: c264c7958a36ceedebedf8a437fa719906e4e1af
[9/9] arm64: dts: mediatek: mt8395-radxa-nio-12l: use MT6365 PMIC definitions
      commit: 4d2b8fcd8bbd7f00335a52b86189d85686fdc707

Cheers,
Angelo



