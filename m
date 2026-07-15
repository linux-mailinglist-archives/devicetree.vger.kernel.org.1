Return-Path: <devicetree+bounces-327062-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id pNcJHgeRV2rKXAAAu9opvQ
	(envelope-from <devicetree+bounces-327062-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 15:54:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id EB84675F063
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 15:54:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ZxMpGCtZ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-327062-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-327062-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E2B063015710
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 13:48:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36FA02FE071;
	Wed, 15 Jul 2026 13:48:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13D662E7383;
	Wed, 15 Jul 2026 13:47:58 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784123280; cv=none; b=HagaZROObTJLJkAnDJIm2qVuXs4BNYO0MjbDJAAcLdvVDQo3rwpc9yJvi69r+8vePE557sgM4s/Ol7uNJZFx5Uz6yL/yWSu4IZjVZ6YpGYvogfgX5JgjLa8xdKVZWY/yOEq8BIwwnrwkKD9fkNmj72N+G2P/uq0V/1BuQt2d8/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784123280; c=relaxed/simple;
	bh=OQzA91rQ8Z8Mie6XKaBOl7Ilkn6cZW3b9O+wOXy9QFo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=srM9gZJqOY/kdjxYlNp7ZYb5Kt8s5jK8WWIS2+XmBhqR8PYP/i3gv3CCd1V41QRecqIXbT+fj+i8uPUgTH1KjucifCMG92VaBiIqe1ehWUTb9kISjs6V61ZZAu6DTRAzEWamHNqOJcpTKyVoEFXKTZybnsAAX9ZW1rsTw7qFyrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZxMpGCtZ; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1ED7B1F000E9;
	Wed, 15 Jul 2026 13:47:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784123278;
	bh=MYWtrnA64enkyD1F8B0IP3sVx0898upZSmCQffKhadQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=ZxMpGCtZKRsLLteM57AhHKYnvv3wsGbatlI39VfYS+QGO4jl6EmU0Qt1yNac7NalV
	 92DZJFdnOxQYDoN6OWn3sD0wlQKZipykkuFR0R6kHKUpK2qosdZtNa68MLm+D2CD3O
	 KVTM38+ghTLnda2PxQqNWby+Ap8Y0kbEaH3Zb7K4QqtNQdJZ4aZ0ex4soEolyfcY3F
	 ns6uwl/COnAN+MXf2wrO7YTMrezPbAv7c3tC+jtHXH9myxA1ycdVGA6e0URYttyBXd
	 Q2Ou1rHTd6HmWdBeCvFPYYu6RmS5F10ao9FdmVBg1/rEpnJziqOctuf08zc/TfgNJN
	 b65g6+HbAVPuQ==
From: Manivannan Sadhasivam <mani@kernel.org>
To: Ryder Lee <ryder.lee@mediatek.com>, Bjorn Helgaas <bhelgaas@google.com>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Jianjun Wang <jianjun.wang@mediatek.com>, 
 Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Cc: kernel@collabora.com, linux-pci@vger.kernel.org, 
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
In-Reply-To: <20260701-mt8189-dt-bindings-pcie-v1-1-7c7a65087654@collabora.com>
References: <20260701-mt8189-dt-bindings-pcie-v1-1-7c7a65087654@collabora.com>
Subject: Re: [PATCH] dt-bindings: PCI: mediatek-gen3: Add support for
 MT8189 SoC
Message-Id: <178412327376.143779.2537053670483422088.b4-ty@b4>
Date: Wed, 15 Jul 2026 15:47:53 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.15.2
X-Spamd-Result: default: False [-4.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:ryder.lee@mediatek.com,m:bhelgaas@google.com,m:lpieralisi@kernel.org,m:kwilczynski@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:jianjun.wang@mediatek.com,m:louisalexis.eyraud@collabora.com,m:kernel@collabora.com,m:linux-pci@vger.kernel.org,m:linux-mediatek@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[mediatek.com,google.com,kernel.org,gmail.com,collabora.com];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER(0.00)[mani@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mani@kernel.org,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-327062-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EB84675F063
X-Rspamd-Action: no action


On Wed, 01 Jul 2026 17:27:36 +0200, Louis-Alexis Eyraud wrote:
> Add compatible for MT8189 PCIe Gen3 controller, that is compatible with
> the one found MT8192.

Applied, thanks!

[1/1] dt-bindings: PCI: mediatek-gen3: Add support for MT8189 SoC
      commit: 068601b547da091d9f56131cbb25e40ad40f4825

Best regards,
-- 
மணிவண்ணன் சதாசிவம்



