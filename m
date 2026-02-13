Return-Path: <devicetree+bounces-265357-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aA1MG5Ekj2m6KAEAu9opvQ
	(envelope-from <devicetree+bounces-265357-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 14:18:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DA2EC13644B
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 14:18:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1EBE3304D92D
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 13:18:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58C4935FF69;
	Fri, 13 Feb 2026 13:18:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="e10WJv+O"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01664359FAF
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 13:17:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770988681; cv=none; b=RfJcUJ34ZOY3neiMVWceQTDrnaFwL9qb7KdiqKQ5+SkKJKzQbCjdLw8DRRMGO6mIZy1fZc0u6VxxXvFly2VrAlP/APqaliZ5gbOMoSIT6InLDlvWyT5Uz2G2OkV8FUF/LsNV7ts11J2rRTx3zOaVSa8jJLKMiBzOJTrE3gH7blc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770988681; c=relaxed/simple;
	bh=INAIXghp83/jNBX4SyNZtmAn35Of6e7qwMPedmTcMcM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=m30qScXdWs79Nrp0k3gB7N/1SRT4+8fT/JN0bjifMYkphsD4uRvFXue4O9U1Y1hAdPSAZsx60IqWgd/jBbxgrDVljOiLQ6CZp4Ut8KU9Ar1mFdRNFYU7DrKLNnCz0xjU+DaqgP6n7fWqrdrMO7iNb9RfJ+ogNojx/tf2topbpBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=e10WJv+O; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-482f454be5bso29485775e9.0
        for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 05:17:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770988678; x=1771593478; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N81cStsvWs5JcIJrO+U/46Nh7gzxlPlPHY9kLBpRDpA=;
        b=e10WJv+Oga5ZdGl3hKce2/ZM/aWoGdkVhg2VNqUAHog90vsjAEYu6jql2dAmN8M00A
         jzOqKo09OyuideElG8+KcLMvD2E6n/kCw+az7H2udzdvNANdGyz5i2u22bxnx0LhN78S
         Zd3ga0lR5hBpfbPxPcJAnrp4G92STItmS7HXDqx4YmuNFh3N7foDP1t3FBXDCdpImhIT
         ONp9HsaxU1xDG1iZGX1Cy9XAJNfboEAxzJZkXzEhMrskvkvVvjtDGXmjVxdr6Dh0a9R5
         VvvNa//NYsi9V87cPl+nQH73m65EmLWWjjqk8ljSQnYoUihC/dhCEcTN3fK9C9NrdQSO
         igNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770988678; x=1771593478;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=N81cStsvWs5JcIJrO+U/46Nh7gzxlPlPHY9kLBpRDpA=;
        b=qEomDViIKROPz2pn6mmsWMoodWJc/j+q+1gua3xUS6mwQKOYiVAxl0JExlbGNcL42Q
         iK8V7gxQ20BQG5HEmplqcPOcz7HekB6kxxIoVHiA2H0f1S9IbRy/kxsFgN/yXX899i04
         THN+wuabNm+8/JDQSztLbZSjYR1rLFPMb/JcNJtlpT8WJhN48kVqHtnWK4VZaaKNJCwF
         TgPbJOLdC58/VXD3ckqhoqfbfmf7RN39Zeu9DjW3afnVcBpHgOUSulPTs5KOU2Dk7TIg
         5LNBZL0RulENgvYPaDRFJ7dS3BG3E4mVSxo8hmp3lSvLEr/AYAu9TaJ4V7Oh7nuHZVNn
         K2Xg==
X-Gm-Message-State: AOJu0YyV2vel51t4+u9O4QqpAkQ2RXd7/TKARCrgPYlLvSc85ojSOOYQ
	okbm3zInA5UZyPIhXg+Wztqp6dbyHd2MW4PxlCHApDD1j+U6Y8XAF6hm
X-Gm-Gg: AZuq6aIwu8ffPPlULtCXXXK1xVh0ebu5WOPJfc19KMNzEWwxx/EEinkKAl4cTUXBLwc
	HqIM//qbwBXMnrXjiY9yZZcfl0t6SHo8JbhpNMs7c09NnrfrgjU34W4ocO+MVvzlZc+Zx9OIZLj
	bqRiF5JeBrvlHpoW2whzqVy9NW9ixglyFNaG08q8OeM7h5qRYK8DE+QNcifz1J1K3GUslLpyoqf
	5AGbhfeParu2MuDsapdMw4elXkomxLUt8AJjo0SBuASnI7KHN1FLQim2UxWk6tK8CuAFPcgKqV1
	uK7y7gl1xr+AMnE3Pio2UUSiDKMFR5bTDw7KZk7OJleGCqE1q5Vz45GUHKrd1AOtz9tqpfBJlbR
	b7CLkgqD8pADwFC5RsGcfSQINKO83gjxHlV5F9vZ1r4JXNFwJRvMyi+0CxqdEI+g5n62VwbraNR
	O1BGps7f8L8P2T9JucwJj6rthVJxtbZI4SgQBFfPlc6cvT5qrA/O2fKAd0Lcw7+xjVu6O/JoD6B
	3B8/ONy3jAt3EoEAE/UMQx/J/CwpZwJsA3Mzw==
X-Received: by 2002:a05:600c:5912:b0:480:63c1:3ac7 with SMTP id 5b1f17b1804b1-48378d4f647mr1257315e9.2.1770988678270;
        Fri, 13 Feb 2026 05:17:58 -0800 (PST)
Received: from iku.Home ([2a06:5906:61b:2d00:ed1d:fb0d:baf6:e4d9])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4836ff00332sm60942925e9.2.2026.02.13.05.17.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Feb 2026 05:17:57 -0800 (PST)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-renesas-soc@vger.kernel.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH 1/2] arm64: dts: renesas: r9a09g077: Fix CPG register region sizes
Date: Fri, 13 Feb 2026 13:17:41 +0000
Message-ID: <20260213131742.3606334-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260213131742.3606334-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20260213131742.3606334-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,bp.renesas.com,renesas.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-265357-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[glider.be,gmail.com,kernel.org,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[prabhakarcsengg@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	DBL_PROHIBIT(0.00)[4.200.249.192:email];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,renesas.com:email,801c1000:email]
X-Rspamd-Queue-Id: DA2EC13644B
X-Rspamd-Action: no action

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

The CPG register regions were incorrectly sized. Update them to match
the actual hardware specification:
- First region (0x80280000): 0x1000 -> 0x10000 (64KB)
- Second region (0x81280000): 0x9000 -> 0x10000 (64KB)

Fixes: d17b34744f5e4 ("arm64: dts: renesas: Add initial support for the Renesas RZ/T2H SoC")
Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 arch/arm64/boot/dts/renesas/r9a09g077.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/renesas/r9a09g077.dtsi b/arch/arm64/boot/dts/renesas/r9a09g077.dtsi
index 83f6e667358e..ee41610c2ac8 100644
--- a/arch/arm64/boot/dts/renesas/r9a09g077.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a09g077.dtsi
@@ -1089,8 +1089,8 @@ xspi1: spi@801c1000 {
 
 		cpg: clock-controller@80280000 {
 			compatible = "renesas,r9a09g077-cpg-mssr";
-			reg = <0 0x80280000 0 0x1000>,
-			      <0 0x81280000 0 0x9000>;
+			reg = <0 0x80280000 0 0x10000>,
+			      <0 0x81280000 0 0x10000>;
 			clocks = <&extal_clk>;
 			clock-names = "extal";
 			#clock-cells = <2>;
-- 
2.53.0


