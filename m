Return-Path: <devicetree+bounces-267766-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oIx1K/VgnWksPQQAu9opvQ
	(envelope-from <devicetree+bounces-267766-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 09:27:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F6DB183A84
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 09:27:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E4837305982F
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 08:26:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C156536657D;
	Tue, 24 Feb 2026 08:26:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aS1YJGEr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27859366805
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 08:26:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771921568; cv=none; b=IZordTPOKnvIFG5oADTzwxzE0zmH/n3YBfwTOFz2WBN1hYKzBVlQzmBJKVqn4raeMmOkvd4BNW6Ldb1k3MDs7MadUTSnaxgvVstAHyiZkxVoQgAhjAj2RbDBFqDOhbjv7zQoXyjwbiiWBdnRaA60krix9ZVqHexcmk1rVmOx2TI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771921568; c=relaxed/simple;
	bh=2GTPo/Ew19OK365R3A0UastmDzibGe9EKuYZdnpDjTc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=ggCeicQiJj3ybhbAKREWwQ4uWgG1uG36jSt8L73nNpp0niYvjxCbeQ/cfmhrLXmFg+PvNVBph2zX2wAhsw7MWoBRVM9j1O1FZD2S8ZOBum1q5JpdZtAxz8hvuN4Xi845UjpVDlw09kXS2cHCdJm4FtffYKZvokzD4xXLNrEVLIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aS1YJGEr; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-65c5a7785b4so7944849a12.1
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 00:26:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771921565; x=1772526365; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BPkLAxH4Z4tNezijDFotOtHRol4uS6AuzdUXZUwrd9g=;
        b=aS1YJGErLlw88XczsC+GtLoTQWCzot5yMk0BdAswCVWC0OfKJq4k1FnQrxf2wMDjMJ
         s7lLkwspqQ86g/POyUgVmPetaxfuv7p2Ok5RZMUpqV9njSQtfnlWmIKu0rgs4Gvcnuqm
         dR1d8l9DM6YhSPkcY4iEgB7tMeLqgUsJJW8JSRAgmdMJUVTX3oxjkro4OksPGALNvqDp
         K4qM+C56+O+m3iQPY/O3CaEhqGsYegYHLPwEgZOgf7d2FC5citjj3YJ635XKgSSsPNjv
         m8QjFfrljJvjXxuU+XJCfQkFQjMvqnm1jV7T5VUbbKPe5XS63KUuM9GV4/M3hN7S/4hO
         F+VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771921565; x=1772526365;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BPkLAxH4Z4tNezijDFotOtHRol4uS6AuzdUXZUwrd9g=;
        b=YPJezzcWgcQych9lVtJ5HBK3l5mpAPCkPZAIisLd5XxwHp2TSJ7oXuLksgrIeeCbmX
         ydEDJdpff1Q6Gqn7AnprvGuMXRfETTiqEUQhtZWqcVeaM3XQi0mcNjnr2mTMrmDcPg72
         VwWrS6y+xKn1FnaB+HN+BKigguzWTNbxIcdBkCKYAEVntL942Z3wqYvX3CaXdCgRvQCE
         ourh99EcNVWyBZxAHAfqhzHWLwy0G4W6ZW2bxOdUmhzveX89iLjcfI/6n4Qfu7I5mccQ
         E9igpEuyAOgR6YUorfOtYIDetPRiiDSTttWYL+O9snPyqna7qERkO3tQ9GtCbA/+gSBE
         ZbTg==
X-Forwarded-Encrypted: i=1; AJvYcCVJlBmkyi+N1J5QEtIt5EIAmnVCKOORgaFCI8zEKeyvq0X+eXw+tqw4UhDH+HKKUPbMNK6PZmnw6O5n@vger.kernel.org
X-Gm-Message-State: AOJu0Yyf95EsqKgnaQAmKrhBhmOTE0dIe3z8fIJ9DEMFjX+tFuFB3YHc
	MZ7SQECD5Hps02kdCipzlD45lPVsJxGya24f1XZsvwaammov/DL0s6aa
X-Gm-Gg: AZuq6aLTk1V1FNvASu1bYggdJiqpXsoZoo7Zw4FmAna+OpbQ8jUBt0gJzzl7iy6lXIq
	5TpE4A85QCOOu7xyLyK8i0RGB49s289IagSSqtXMbc85uUs8joMBpZyOaNpLbwH/ssIzYm8ugw0
	998qVU/XvkKonipmSBFHeXS24VWhL01hJ3Ca29BTwZZHhOkDlmXFHzPPMsRGXAYdWbPY2dGaccd
	MtPh2P9z8Gj5fAzcdT2NxlHrv11Uzdlojxd8BxWdFW5T7gGq2uumuvsEoebZEscn5EFsoVe3BCJ
	zWcTasy3rvt8y75rG2z1lTWgqH0+2wB+9NS2Oee92N0n0HUicPE7mkOH5JOfq9wBKk0C9gV+GSN
	cpijupOIsgXnxj5JOUCcDyt/pLLZNdxGlmklDnfT+ORt0Jmywfpv6XqZlMqKcqV/xVyIJEPBLvc
	/5vf+r5UNtc8db/JQjTzRN9wLUGH+fT135EsYjxroS90kRu1FFmAGJf1rB/GS3jHte
X-Received: by 2002:a17:907:25c4:b0:b92:c91b:57d9 with SMTP id a640c23a62f3a-b92c91b760bmr110934566b.58.1771921565148;
        Tue, 24 Feb 2026 00:26:05 -0800 (PST)
Received: from localhost.localdomain.pl ([89.151.31.85])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b92f9b0463esm33521266b.2.2026.02.24.00.26.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 00:26:04 -0800 (PST)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sean Wang <sean.wang@mediatek.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH RESEND] ARM: dts: mediatek: mt7623: fix efuse fallback compatible
Date: Tue, 24 Feb 2026 09:25:41 +0100
Message-ID: <20260224082541.7938-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.11 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MIXED_CHARSET(0.77)[subject];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,collabora.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267766-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_PROHIBIT(0.00)[0.155.187.48:email];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[zajec5@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,collabora.com:email,0.155.164.36:email]
X-Rspamd-Queue-Id: 0F6DB183A84
X-Rspamd-Action: no action

From: Rafał Miłecki <rafal@milecki.pl>

Fix following validation error:
arch/arm/boot/dts/mediatek/mt7623a-rfb-emmc.dtb: efuse@10206000: compatible: 'oneOf' conditional failed, one must be fixed:
        ['mediatek,mt7623-efuse', 'mediatek,mt8173-efuse'] is too long
        'mediatek,mt8173-efuse' was expected
        'mediatek,efuse' was expected
        from schema $id: http://devicetree.org/schemas/nvmem/mediatek,efuse.yaml#
arch/arm/boot/dts/mediatek/mt7623a-rfb-emmc.dtb: efuse@10206000: Unevaluated properties are not allowed ('compatible' was unexpected)
        from schema $id: http://devicetree.org/schemas/nvmem/mediatek,efuse.yaml#

Fixes: 43c7a91b4b3a ("arm: dts: mt7623: add efuse nodes to the mt7623.dtsi file")
Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
It initially sent this patch on 2024-06-17.
It was reviewed on 2024-10-07 – 2024-10-08
I pinged about it on 2025-12-15

I hope it's OK to resend it as I believe it's still valid.

Link: https://lists.infradead.org/pipermail/linux-mediatek/2024-June/080475.html

 arch/arm/boot/dts/mediatek/mt7623.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/mediatek/mt7623.dtsi b/arch/arm/boot/dts/mediatek/mt7623.dtsi
index 4b1685b93989..71ac2b94c6ba 100644
--- a/arch/arm/boot/dts/mediatek/mt7623.dtsi
+++ b/arch/arm/boot/dts/mediatek/mt7623.dtsi
@@ -328,7 +328,7 @@ sysirq: interrupt-controller@10200100 {
 
 	efuse: efuse@10206000 {
 		compatible = "mediatek,mt7623-efuse",
-			     "mediatek,mt8173-efuse";
+			     "mediatek,efuse";
 		reg = <0 0x10206000 0 0x1000>;
 		#address-cells = <1>;
 		#size-cells = <1>;
-- 
2.51.0


