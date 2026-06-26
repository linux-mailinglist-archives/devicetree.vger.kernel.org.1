Return-Path: <devicetree+bounces-315880-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id hmlSNZLjPWqu7ggAu9opvQ
	(envelope-from <devicetree+bounces-315880-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 04:27:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D1396C9BF9
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 04:27:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315880-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315880-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 242203019810
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 02:27:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBD6430569B;
	Fri, 26 Jun 2026 02:27:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.loongson.cn (mail.loongson.cn [114.242.206.163])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B1942ED84A;
	Fri, 26 Jun 2026 02:27:20 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782440846; cv=none; b=H/mwScywh/+P3TwMY4L1M7g/5ugsiQMSAmdLO7PfeINjV9o6l9BIiexgYay522X085G5g6OTcBGqT4xD5B8P6WGZXs2mmQD25pML/cXaogklfVWywgqL5L3Lu5n2NL5TylJoSjDrYO+KGon4B57G3HWxhV+F9p9lQvLV7rVtxRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782440846; c=relaxed/simple;
	bh=lvVxjrbdPD39TkmjEb3d6UFMQJyJbOOk9m165/3zjvE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=RD7bLANuGffxLLsSigblzb8/8Uem3qfyPPmzolyVtqwPQK2NCqUuuSXhGzVKS0HKPMaskt0SjdIYthR/UmGoLyfzS9qtMstDg+//9Pcm86Gy0nomxr4RgX94iDRGlqVxGJizKpywrkDvieBIAZfyxbi0jPRkfDxqYLkqxDO1S4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=loongson.cn; spf=pass smtp.mailfrom=loongson.cn; arc=none smtp.client-ip=114.242.206.163
Received: from loongson.cn (unknown [223.64.68.155])
	by gateway (Coremail) with SMTP id _____8DxVXiG4z1quDAYAA--.37427S3;
	Fri, 26 Jun 2026 10:27:18 +0800 (CST)
Received: from kernelserver (unknown [223.64.68.155])
	by front1 (Coremail) with SMTP id qMiowJBxSeCC4z1qim2zAA--.12873S2;
	Fri, 26 Jun 2026 10:27:15 +0800 (CST)
From: Binbin Zhou <zhoubinbin@loongson.cn>
To: Binbin Zhou <zhoubb.aaron@gmail.com>,
	Huacai Chen <chenhuacai@loongson.cn>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Keguang Zhang <keguang.zhang@gmail.com>
Cc: Huacai Chen <chenhuacai@kernel.org>,
	Xuerui Wang <kernel@xen0n.name>,
	loongarch@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-sound@vger.kernel.org,
	Binbin Zhou <zhoubinbin@loongson.cn>
Subject: [PATCH v3 0/9] ASoC: Add Loongson-2K0300 I2S controller and sound card support
Date: Fri, 26 Jun 2026 10:27:02 +0800
Message-ID: <cover.1782439646.git.zhoubinbin@loongson.cn>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:qMiowJBxSeCC4z1qim2zAA--.12873S2
X-CM-SenderInfo: p2kr3uplqex0o6or00hjvr0hdfq/1tbiAgEKCGo8wzAaEwAAst
X-Coremail-Antispam: 1Uk129KBj93XoWxXr43uw15XF4rtw13Cr1Utwc_yoW5tFyDpF
	s3u39xGryUGFyjyFZxXry8Cr4fZ34xJa9rJF45J34kJanrC3yjv34qy3WYvF47ZrZ5GrWj
	qrn5KF4rWFy5ZFXCm3ZEXasCq-sJn29KB7ZKAUJUUUUr529EdanIXcx71UUUUU7KY7ZEXa
	sCq-sGcSsGvfJ3Ic02F40EFcxC0VAKzVAqx4xG6I80ebIjqfuFe4nvWSU5nxnvy29KBjDU
	0xBIdaVrnRJUUUB0b4IE77IF4wAFF20E14v26r1j6r4UM7CY07I20VC2zVCF04k26cxKx2
	IYs7xG6rWj6s0DM7CIcVAFz4kK6r1Y6r17M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48v
	e4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_JFI_Gr1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI
	0_Gr0_Cr1l84ACjcxK6I8E87Iv67AKxVW8JVWxJwA2z4x0Y4vEx4A2jsIEc7CjxVAFwI0_
	Gr0_Gr1UM2kKe7AKxVWUXVWUAwAS0I0E0xvYzxvE52x082IY62kv0487Mc804VCY07AIYI
	kI8VC2zVCFFI0UMc02F40EFcxC0VAKzVAqx4xG6I80ewAv7VC0I7IYx2IY67AKxVWUXVWU
	AwAv7VC2z280aVAFwI0_Jr0_Gr1lOx8S6xCaFVCjc4AY6r1j6r4UM4x0Y48IcxkI7VAKI4
	8JMxkF7I0En4kS14v26r126r1DMxAIw28IcxkI7VAKI48JMxC20s026xCaFVCjc4AY6r1j
	6r4UMxCIbckI1I0E14v26r1Y6r17MI8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7xvwV
	AFwI0_JrI_JrWlx4CE17CEb7AF67AKxVW8ZVWrXwCIc40Y0x0EwIxGrwCI42IY6xIIjxv2
	0xvE14v26r1j6r1xMIIF0xvE2Ix0cI8IcVCY1x0267AKxVWUJVW8JwCI42IY6xAIw20EY4
	v20xvaj40_Jr0_JF4lIxAIcVC2z280aVAFwI0_Jr0_Gr1lIxAIcVC2z280aVCY1x0267AK
	xVWUJVW8JbIYCTnIWIevJa73UjIFyTuYvjxUc9a9UUUUU
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-315880-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[loongson.cn];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:zhoubb.aaron@gmail.com,m:chenhuacai@loongson.cn,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:lgirdwood@gmail.com,m:broonie@kernel.org,m:perex@perex.cz,m:tiwai@suse.com,m:keguang.zhang@gmail.com,m:chenhuacai@kernel.org,m:kernel@xen0n.name,m:loongarch@lists.linux.dev,m:devicetree@vger.kernel.org,m:linux-sound@vger.kernel.org,m:zhoubinbin@loongson.cn,m:zhoubbaaron@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:keguangzhang@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[zhoubinbin@loongson.cn,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,loongson.cn,kernel.org,perex.cz,suse.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zhoubinbin@loongson.cn,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	R_DKIM_NA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[loongson.cn:mid,loongson.cn:from_mime,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1D1396C9BF9

Hi all:

This series adds ASoC support for the Loongson-2K0300 SoC and its
associated development boards, including the CTCISZ Forever Pi and the
ATK-DL2K0300B.

Key changes:
- Extend DT bindings to support ls2k0300-i2s and new audio card
  compatibles.
- Refactor the platform I2S driver to handle SoC differences via per-device
  configuration (rev_id, optional APB DMA config, reset sequence).
- Refactor the audio machine driver to support board-specific DAI formats,
  GPIO-based headphone detection/control, speaker enable, and DAPM routing.
- Add jack detection and automatic switching between headphones and
  speakers for the DL2K0300B board.

The patchset also cleans up the existing audio card binding by
referencing the common sound-card properties, and adds new compatibles
for the Loongson-2K0300 variants with proper DAI format handling.

All changes have been tested on Loongson-2K2000 (PCI), Loongson-2K0300
Forever Pi and Loongson-2K0300 DL2K0300B boards.

Thanks.
Binbin

========
V3:
Patch (1/9):
  - New patch;
  - Error handling reported by AI Sashiko;
Patch (3/9):
  - Mark platform configuration structures as `const`;
Patch (4/9):
  - Add Acked-by tag from Rob, thanks;
Patch (5/9):
  - Correct commit message;
Patch (7/9):
  - Drop `loongson` prefix;
  - Change `gpiod_hp_mute` to `gpiod_hp_ctl`;
Patch (8/9):
  - Add `add_dapm_routes` to  loongson_card_config;
  - Move gpiod* register ops into loongson_card_parse_of();
  - Change `gpiod_hp_mute` to `gpiod_hp_ctl`;
  - Add `ls_priv->gpiod_hp_det` judgment in loongson_asoc_machine_init()
    to avoid double-free;
Patch (9/9):
  - New patch;
  - Add DAPM routes from MIC inputs to Mic Bias. 

Link to V2:
https://lore.kernel.org/all/cover.1780538113.git.zhoubinbin@loongson.cn/

v2:
- The first four patches for V1 (related to code cleanup) have been
  accepted as a separate series. The link is as follows:
https://lore.kernel.org/all/178041371415.93058.4794135670349989571.b4-ty@b4/

Patch (1/7):
  - Add Reviewed-by tag from Krzysztof Kozlowski;
Patch (3/7):
  - New patch;
  - Reference sound-card-common.yaml, drop custom model property;
Patch (4/7)(5/7):
  - New patches;
  - Support Forever Pi board with different DAI format;
Patch (6/7)(7/7):
  - New patches;
  - Implement headphone jack detection and DAPM routing for ATK-DL2K0300B
    board.

Link to V1:
https://lore.kernel.org/all/cover.1773107475.git.zhoubinbin@loongson.cn/

Binbin Zhou (9):
  ASoC: loongson: Fix error handling in ACPI property parsing
  ASoC: dt-bindings: loongson,ls2k1000-i2s: Document Loongson-2K0300
    compatible
  ASoC: loongson: Add Loongson-2K0300 I2S controller support
  ASoC: dt-bindings: loongson,ls-audio-card: Use common sound card
  ASoC: dt-bindings: loongson,ls-audio-card: Add ctcisz forever pi
    compatible
  ASoC: loongson: Add Loongson-2K0300 CTCISZ Forever Pi sound card
    support
  ASoC: dt-bindings: loongson,ls-audio-card: Add ATK-DL2K0300B
    compatible
  ASoC: loongson: Add headphone jack detection and DAPM routing
  ASoC: es8328: Add DAPM routes from MIC inputs to Mic Bias

 .../sound/loongson,ls-audio-card.yaml         |  53 +++++-
 .../bindings/sound/loongson,ls2k1000-i2s.yaml |  22 ++-
 sound/soc/codecs/es8328.c                     |   5 +
 sound/soc/loongson/loongson_card.c            | 171 ++++++++++++++++--
 sound/soc/loongson/loongson_i2s_plat.c        |  42 ++++-
 5 files changed, 267 insertions(+), 26 deletions(-)

-- 
2.52.0


