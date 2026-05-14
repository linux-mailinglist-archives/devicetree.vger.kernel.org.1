Return-Path: <devicetree+bounces-297415-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AAiAIj+gBWo1ZAIAu9opvQ
	(envelope-from <devicetree+bounces-297415-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 12:13:19 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0565854033E
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 12:13:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DE48B3039882
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 10:13:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B09A3A5444;
	Thu, 14 May 2026 10:13:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="YcotftJs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AFC0390222
	for <devicetree@vger.kernel.org>; Thu, 14 May 2026 10:13:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778753587; cv=none; b=L7jIThqsgbkXtDU5s8t7kIsE71ezUYXb+xHksW+82T8hdT1xgKk2VgW/ChRWmNMH7Eov3AeUEX2a+TgiiKid5m1yNKdgVEePdom2ALgFgqplFVce2xKrqaXdvmmil6GncCvfeMYrYPhJlHENLS9wfCbXBHqEGow3a2Ud8QW+yAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778753587; c=relaxed/simple;
	bh=O1z3+mcmUWUIW0C2KUS6wJTegXZyBpnX6b63b58m5c4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=oxMvh0tfbGdVwns42s6qzRNXrODyRxm/OQg537Qluh1oMQI3VU+dGKNh0U08NCSNzm5JvGf1HQUIzwD5HzV3QQoMCg08i8nSQQ900LhMZ+JCrE8ksCDRz23pvJHcvMX62agR2ic+kCX2+8ya+CjQ2UKbvVc8v7GpgEn4+NhoqgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=YcotftJs; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-837dfccd950so3922981b3a.0
        for <devicetree@vger.kernel.org>; Thu, 14 May 2026 03:13:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1778753584; x=1779358384; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3vdcIG6wZtSxe+VtpnO2RW9SAO9uWsgPhoe8i1hM24s=;
        b=YcotftJs48MjD1N25wwXbqMHxFo61vmSN8kIAv/LF/mNtVQoIc4UNcxwcHC14mBsvA
         V+ORjoGS76Y2JAdvlRFniSJ4OCMRLLK+tnWtm22MlEQxRKBPpvlnZfft0ebVKGdifD+A
         Qsjwt/dio+h6H+7j2GvtmtTOgE2LT12Q2d/Lo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778753584; x=1779358384;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3vdcIG6wZtSxe+VtpnO2RW9SAO9uWsgPhoe8i1hM24s=;
        b=YPVpcHPdLfSjn9R9Ys0ipDH078oafNGJWPof16bEiMaZ1LsBUobHRFCKvHT9in0obl
         OdnJ2kOb+nfz7cR8bR8+faLwCVx0BBw1y5g1qpdEXXvR4uvw21exAryNzmLc6aNiWn+l
         GRO/Ct7o0t9WQJ9e3iW0yXgv6RO6Uhm8K8XZoEAw3vLspLTLDeaFFCfsRdLQi+GS6G3j
         xoVO20Oigv+EFnFo/9Gc/Zdv3m+jjK3KgvoKtNuRsP1Us0IrTnEmcgFyrHlvAvgNXHN7
         pLoh4REkUekVIZtzrSE28buDLrgKNIhO4ag3FQ+uy6piid4So97ZHt5i67Zfuv5Dzxp5
         G+IQ==
X-Forwarded-Encrypted: i=1; AFNElJ9b/5YV12fnq9pPVLoh6NEhMAh49sRq1HXeQxxnj6iJwY1FO51uPsVr1Wm6gmyygpeBhK2MEM62aOHu@vger.kernel.org
X-Gm-Message-State: AOJu0YzAolBD1ygE0E8+zzEpa/jzi+LIipkGUDqeglc0cqIjFUhZGklB
	bhFxh7r9MVSecN3jlQSdDXQJUI9XfHOCz44lxjZssW9ORf9Iue5Ba9N4vp4wq1y3ZaehEInokNK
	s6VQ=
X-Gm-Gg: Acq92OFKQC3PHnujm7kkoN+ZGO+E+r3X5xjkXqzWl2YhpIyjHtTnmUuckJVwKdEqGUH
	wXBu2jQGsnDii7AWydN1AAy0O+YMF2WH/1/paU1HISNupncDDgu6/smfS9rMmfrz88MNUou8t1q
	13w+f0zBPdwvXxMWrXWG9RyLaCpma4XxYMr7dW3Z/CoUIP/IxojoIXcCdfTW4xP0X50TWO1qJ+9
	HI+DCZydHYqpgN5A5EfTcsDOPpobxiNnQ2dWWrelwzIrmFBkUjBjlwf56wTwD0jnEvjiqvEdOxI
	6tzUrEc52MIcUffhfqD5P6DW1HOz5yEjtzBjxuTV7DrIETjW7oE/PDX7v0LZP4StDNvuOMHf5zj
	b3gempKjEXJXSUUy6TrdSXVkGvKpi4psFt+Ij7PO4ne3aQkVtC6PQgjSs+cqlPIl4jiNSFLczBQ
	EifmM2bgM+BM9J/avUlhTSDD67l45ZLTih5Vgc6AhGCZm/sxg4D3pytdjmh5hT3HkmparYVcC6e
	jcay9AzIinkUTFRAL0=
X-Received: by 2002:a05:6a00:4409:b0:83d:6c12:a632 with SMTP id d2e1a72fcca58-83f05d82260mr6553294b3a.50.1778753583619;
        Thu, 14 May 2026 03:13:03 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2a00:79e0:201d:8:3a91:2f7b:b635:8285])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-83f19664212sm2898427b3a.2.2026.05.14.03.13.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 May 2026 03:13:03 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/4] arm64: dts: mediatek: random Chromebook cleanups
Date: Thu, 14 May 2026 18:12:48 +0800
Message-ID: <20260514101254.2749300-1-wenst@chromium.org>
X-Mailer: git-send-email 2.54.0.563.g4f69b47b94-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 0565854033E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[gmail.com,collabora.com];
	TAGGED_FROM(0.00)[bounces-297415-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wenst@chromium.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[chromium.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[chromium.org:mid,chromium.org:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Action: no action

Hi,

Here are some random DT cleanups that are not directly related to other
topics I'm working on, but came up when checking for warnings.

The regulator related changes overlap with my other "Regulator cleanup
for Chromebooks" series [1].

Please have a look.


Thanks
ChenYu


[1] https://lore.kernel.org/all/20260505101408.1796563-1-wenst@chromium.org/

Chen-Yu Tsai (4):
  arm64: dts: mediatek: mt8192-asurada: Fix SPI-NOR flash compatible
  arm64: dts: mediatek: mt8192-asurada: Add (BT|WIFI)_KILL_1V8_L GPIO
    line names
  arm64: dts: mediatek: mt8195-cherry: Fix names for EC controlled
    regulators
  arm64: dts: mediatek: mt8195-cherry: Sort top level nodes correctly

 .../boot/dts/mediatek/mt8192-asurada.dtsi     |   6 +-
 .../boot/dts/mediatek/mt8195-cherry.dtsi      | 106 +++++++++---------
 2 files changed, 56 insertions(+), 56 deletions(-)

-- 
2.54.0.563.g4f69b47b94-goog


