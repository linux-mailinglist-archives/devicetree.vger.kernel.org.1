Return-Path: <devicetree+bounces-316704-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id MWxtAW8cQmqd0QkAu9opvQ
	(envelope-from <devicetree+bounces-316704-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 09:19:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 043606D6E67
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 09:19:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=d5reHM9a;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316704-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-316704-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 1861A3091CA8
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 07:01:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CEDB3ADB9A;
	Mon, 29 Jun 2026 07:00:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1BA3A4274
	for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 07:00:47 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782716448; cv=none; b=plfx4t+Wpm7q0lVJF6SbneiM74sBlQZE8K64Rsg0q63G77tiO6zie2palvzlRzOFT5awWjhEOU1QStQ8cHgn+IWY5Z/n38dufx3zWAA7URw9lWGcWWL18rH0MY0u8A1I8e1C4cBLZ3ckYkH+Fniv84FCYn+tNplqqZNbTmYTidQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782716448; c=relaxed/simple;
	bh=lp7LAimrZs1QHVxx24pfSjBh3OWT1HxcKdnhmz8J8yo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=uhzLPkJMeVa1MKSLdNC6ZyChUP08U062eaZiULpRxp8NaeYzgckoRq5g5ufWSy+tDcy5RAtjQqku4LmOTIfGs9APJr3iNk2PQgyrdebpAmWED7IQtajIdirthMZTSUSaiAF6gBLhH0uJUG2etZWhHNIrv905pAuSqKhIKh2yEnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=d5reHM9a; arc=none smtp.client-ip=209.85.215.175
Received: by mail-pg1-f175.google.com with SMTP id 41be03b00d2f7-c88973b6965so1799645a12.1
        for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 00:00:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782716446; x=1783321246; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=jrV/R25cT3pDEPiIHQ/ia5vCE1mVaRFviplQpQbaE6s=;
        b=d5reHM9arn8uNVNPjuPYi5EyHDY+dYRQ6y/hsAky7g64R2uQz0a/Q/BOXBieMkz84P
         /jg4rrV5BefESRVSmEXKaI2xt2eBWHWbDgiDLsrEKVNi87nQnJBNwz+m2LopRKEbGhwb
         zEA0lgmJ+kpbomx91vPxULdCkfHNVb0MDsuiqQIpA1LBhGevWNVmqsVJAEarkKno1EYq
         GdBRh3dKPt3okBz+mWEo74maCkJ7n/QH41XAI30Y2M14AKixik1aFqS0oU578YCOy3Hw
         i/gqb1bzT8ht31oogR6d2Qxn6c4gmT2FtMwWfY6MFZQoJGZDdtZ9kaDLbHzFkoKKRN/U
         gK1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782716446; x=1783321246;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jrV/R25cT3pDEPiIHQ/ia5vCE1mVaRFviplQpQbaE6s=;
        b=rDQaewKdduRsNfeLSMY3HAiGygK60+C4L8Vlw07RmeAFqZqZsrywg/k4qb5qLKaUXi
         fQaBrzUzQTupb145+pYWVHIS9wJrGENDcGG+2xz0bysJZ/VMFJ90PFtc61hZB/3bULyD
         VnZwg7sc/5aX2hW4vAB7RVxsS/+lYYRKrYefgChpu+PjyMr2b8skXEk1SkT2B4O3GuYZ
         SuYhOm1/0H/eP1Wtwx/ZuXLpoHc0+S6CjxOIK4tjT1emhH5fu+kC8DyKQ0/g3HPqoQhP
         oMnOUC2E8tjmQIfH9Alq44YeRDWLbKMl6277xita/UF4OlKtK1hxHYbr4uh+PTaHtiiR
         1x/A==
X-Forwarded-Encrypted: i=1; AFNElJ8XNYIrK/+nF9hKKkWkdGHf4PD6MNtjf1okWqWUbUTGrTOMEfbEpz1ZDz//H0F2GlFPOGhjV/lI8iyf@vger.kernel.org
X-Gm-Message-State: AOJu0YwdU7qyF2HSkNX8XW8CfJWKoQecEACiuZl0jT1vp9asuvWbaVeo
	Vad2x4MN+ThDmW0sHNPBP96hzG23NsmNjvMYQcrslA3f7FNH7V9F0+3N
X-Gm-Gg: AfdE7ckSxmUmv1JwC31jk/KHi2GGmLBTp6h+etL2lBHnmQUHHwTdG4IXssVOWRakONZ
	a+qseW3Cpbq32evkOwL2Gww3ECoLLbmlRDryhKEmDgJQflRgMu9J8zZPJFhw4jG7mS3jVs+Iyi2
	xawzf43y53+8ILjWX18Ck1Xe8O9BC2BX5s/KmZmDjucd8pzbYn1m0QUaZuIOLEE68aJzdfk/5QK
	eQzQA/wZR2jyZvKjVa38M6GqIZ44QlpaG7mvYOlSo3VijtsWAjx6Hpdwz1AVKw4kO1lrgCWNiFZ
	jpHw+ZecACTyyQikRtA/hPEBTpRqygyUIG8uSVbRt1YzD9WoRIC9aSnlLI5vrUAh52Fb6c9m5Hg
	HTLH9LCLu3tzPTSAQdIeFAUwhn7xIofflAlaJuW9kBsJVAPMQPR1J+W0gNfnoXmRFPKHMRHLqJM
	ho+vHrt3f9/RY=
X-Received: by 2002:a05:6a21:4cc6:b0:3b4:6af4:bdce with SMTP id adf61e73a8af0-3bd4ac5d9a3mr12152783637.20.1782716446385;
        Mon, 29 Jun 2026 00:00:46 -0700 (PDT)
Received: from nuvole ([2408:844c:b00:2b2f:398a:8bef:b88c:653a])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c92bcc90af5sm7061725a12.28.2026.06.29.00.00.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jun 2026 00:00:45 -0700 (PDT)
From: Pengyu Luo <mitltlatltl@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Pengyu Luo <mitltlatltl@gmail.com>
Subject: [PATCH v2 0/3] arm64: dts: qcom: sc8280xp: fix and improve pinctrl
Date: Mon, 29 Jun 2026 14:59:02 +0800
Message-ID: <20260629065905.15651-1-mitltlatltl@gmail.com>
X-Mailer: git-send-email 2.54.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-316704-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:andersson@kernel.org,m:konradybcio@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:bryan.odonoghue@linaro.org,m:vladimir.zapolskiy@linaro.org,m:linux-arm-msm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:mitltlatltl@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[mitltlatltl@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mitltlatltl@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 043606D6E67

Add camera mclk pinctrl definitions to sc8280xp.dtsi and drop local
and duplicated definitions, as this is common for sc8280xp based
devices. Since the correct drive-strength is 6, fix it too.

Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
---
Changes in v2:
- Collect tag
- Add Fixes tag (Konrad)
- Rearrange the patches to ensure the fix is properly backported (Vladimir)
- Link to v1: https://lore.kernel.org/linux-arm-msm/20260607160435.36546-1-mitltlatltl@gmail.com

Pengyu Luo (3):
  arm64: dts: qcom: sc8280xp-x13s: Fix the drive-strength of mclk pin
  arm64: dts: qcom: sc8280xp: Add camera MCLK pinctrl
  arm64: dts: qcom: sc8280xp-x13s: Use predefined MCLK pinctrl

 .../qcom/sc8280xp-lenovo-thinkpad-x13s.dts    | 10 +---
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi        | 56 +++++++++++++++++++
 2 files changed, 58 insertions(+), 8 deletions(-)

-- 
2.54.0


