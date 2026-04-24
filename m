Return-Path: <devicetree+bounces-289809-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eP0WFB/a6mkzEwAAu9opvQ
	(envelope-from <devicetree+bounces-289809-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2026 04:49:03 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A60DD459157
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2026 04:49:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A453A300B3CD
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2026 02:49:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C58562C08A8;
	Fri, 24 Apr 2026 02:49:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from pidgin.makrotopia.org (pidgin.makrotopia.org [185.142.180.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 199BC33E7;
	Fri, 24 Apr 2026 02:48:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.142.180.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776998940; cv=none; b=D1+Bvy3lPYvyNkIadaImTqucYLseTPkfsfPt8eIYeJrXKzK2fYEfhmiAfnDEsVoO5KuIBdORM/+sF3Cj/JYycGjUiwz5fksoiGJhGrmdH4xhLRqgseojwPA4OPP0pdBqsElV9ucXHAIq3+YCi8SB0Utz9/mNxSuTDeO5pzB0/AQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776998940; c=relaxed/simple;
	bh=FBI3pcwVPL3yzcDpYNuqqnzLmf/xJqQS3HsHUCTkH2o=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=cTESAPe38n/UuHlcFpO3gMwt8hUJaAeADW45wKop0T73RrMABaDfqP67axS6vOxyYOAmoBaBtT9mH8+FSpvMmeBfgU2OBNsgs0XlLgnzfmQpU7LDvjeJHNBboFzox68eqA0Tn8+0D0OygmtpADLdNmjCx3piRKQdCJW1OTpuUPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=makrotopia.org; spf=pass smtp.mailfrom=makrotopia.org; arc=none smtp.client-ip=185.142.180.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=makrotopia.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=makrotopia.org
Received: from local
	by pidgin.makrotopia.org with esmtpsa (TLS1.3:TLS_AES_256_GCM_SHA384:256)
	 (Exim 4.99)
	(envelope-from <daniel@makrotopia.org>)
	id 1wG6ar-000000002MP-2gbT;
	Fri, 24 Apr 2026 02:48:37 +0000
Date: Fri, 24 Apr 2026 03:48:29 +0100
From: Daniel Golle <daniel@makrotopia.org>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
	Cyril Chao <Cyril.Chao@mediatek.com>, Arnd Bergmann <arnd@arndb.de>,
	=?iso-8859-1?Q?N=EDcolas_F=2E_R=2E_A=2E?= Prado <nfraprado@collabora.com>,
	Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
	Daniel Golle <daniel@makrotopia.org>,
	Eugen Hristev <eugen.hristev@linaro.org>,
	linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH v3 0/9] ASoC: mediatek: mt2701: HDMI audio support
Message-ID: <cover.1776998727.git.daniel@makrotopia.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Rspamd-Queue-Id: A60DD459157
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-289809-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[makrotopia.org];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,collabora.com,perex.cz,suse.com,mediatek.com,arndb.de,renesas.com,makrotopia.org,linaro.org,vger.kernel.org,lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[daniel@makrotopia.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]

This series wires up on-chip HDMI audio on MT2701 and MT7623N, from the
DRM bridge down through the AFE into a small machine driver that binds
the AFE HDMI BE to the HDMI TX codec already exposed by the
mediatek-drm-hdmi driver. Bindings, DT and a BananaPi R2 board node
are included.

In order to survive vblank or late hotplug of the monitor, the fix
submitted separately [1] is required as well.

Everything here was developed for and tested on a BananaPi R2
(MT7623N), which turns ten years old this year -- a nice occasion to
finally land HDMI audio for a SoC which was truly ahead of its time.

[1]: https://patchwork.kernel.org/project/linux-mediatek/patch/a3e22cbae528c9a38d854a586d1736b860998d41.1776265222.git.daniel@makrotopia.org/

Changes since v2:
 * allOf goes before additionalProperties
 * remove now unused clk bits
 * remove redundant clock un-gating via regmap access

Changes since v1:
 * Restrict the four HDMI clocks to mediatek,mt2701-audio only
   using an allOf/if/then conditional; MT7622 is capped at 34
   clocks (Krzysztof Kozlowski)
 * Fix subject prefix to use schema filename (Krzysztof Kozlowski)
 * Rewrite title and description to describe hardware, not driver
   (Krzysztof Kozlowski)
 * Clarify in commit message why this is a separate binding from
   mediatek,mt2701-audio (Krzysztof Kozlowski)
 * use named masks and explicitly set BIT_WIDTH_16 when
   programming AFE_HDMI_OUT_CON0 channel count (Mark Brown)
 * add AUDIO_TOP_CON3, AFE_HDMI_OUT_CON0, AFE_HDMI_CONN0,
   AFE_8CH_I2S_OUT_CON to suspend/resume backup list
   (Mark Brown)

Daniel Golle (9):
  ASoC: dt-bindings: mt2701-afe-pcm: add HDMI audio path clocks
  ASoC: dt-bindings: mediatek,mt2701-hdmi-audio: add MT2701 HDMI audio
  ASoC: mediatek: mt2701: add AFE HDMI register definitions
  ASoC: mediatek: mt2701: add optional HDMI audio path clocks
  ASoC: mediatek: mt2701: add HDMI audio memif, FE and BE DAIs
  ASoC: mediatek: mt2701: add machine driver for on-chip HDMI codec
  ARM: dts: mediatek: mt2701: wire HDMI audio path clocks into AFE
  ARM: dts: mediatek: mt7623: wire HDMI audio path clocks into AFE
  ARM: dts: mediatek: mt7623n-bananapi-bpi-r2: add HDMI audio machine
    node

 .../bindings/sound/mediatek,mt2701-audio.yaml |  23 ++
 .../sound/mediatek,mt2701-hdmi-audio.yaml     |  48 +++
 arch/arm/boot/dts/mediatek/mt2701.dtsi        |  21 +-
 arch/arm/boot/dts/mediatek/mt7623.dtsi        |  21 +-
 .../dts/mediatek/mt7623n-bananapi-bpi-r2.dts  |   7 +
 sound/soc/mediatek/Kconfig                    |  10 +
 sound/soc/mediatek/mt2701/Makefile            |   1 +
 .../mediatek/mt2701/mt2701-afe-clock-ctrl.c   |  22 ++
 sound/soc/mediatek/mt2701/mt2701-afe-common.h |   6 +
 sound/soc/mediatek/mt2701/mt2701-afe-pcm.c    | 284 +++++++++++++++++-
 sound/soc/mediatek/mt2701/mt2701-hdmi.c       | 114 +++++++
 sound/soc/mediatek/mt2701/mt2701-reg.h        |  29 ++
 12 files changed, 575 insertions(+), 11 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/sound/mediatek,mt2701-hdmi-audio.yaml
 create mode 100644 sound/soc/mediatek/mt2701/mt2701-hdmi.c

-- 
2.54.0

