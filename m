Return-Path: <devicetree+bounces-259619-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wOe/Bqm7d2l2kgEAu9opvQ
	(envelope-from <devicetree+bounces-259619-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 20:08:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FFFB8C59C
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 20:08:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 4E78D3009F05
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 19:08:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54450275870;
	Mon, 26 Jan 2026 19:08:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KTQR7gpY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F7482798EA
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 19:08:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769454491; cv=none; b=juI0cW/4w6APrzqzJVrvfKIDCxRNdxZ1fzW0kS7LdGujk0gxaWhBpmZLfYvigAH5iyDbNxU++egjy7YnG2YbaSZjIP9jKoVI9lBlpIaARRib0nnLMVh4f7rjYnaJbsOCZ2t+MUDNgm0Y56aEgEQe+110RxMq2npDjoHQID3TM6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769454491; c=relaxed/simple;
	bh=EpZL32Jyo1zVK7iE7f/cCfj6bklP2cCKT0AbKLrFi34=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ECNmeyJ2q8brXIdsa0bdzdc4Rh1tcKyY1S0BSxM81dhvtFov3v671acMBmJ/Qu4vOgYsl4nUAwKRsGCXsTl+Y/vvqsZINpjmCk9KdLKeQ9ITwzw1VPjkYzpkoRTY5c5e6+PQjNwdXgV25QHUprj9qmx6UBwzVaGGoGDfkcO7nEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KTQR7gpY; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-42fb6ce71c7so4537636f8f.1
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 11:08:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769454488; x=1770059288; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vVffN9Slo7nSA6jMy+HnfjnzdqrKlZ/cdmvcQBPmzT0=;
        b=KTQR7gpYu/RCD2MJ5rsMNPwDfvod7sDGilYSHHLM3B0VRhTObBTARnWRvvKj/YqOop
         U4uM7rir6hEQztda0U+v217aKZAcWmeGt81LxTyB7Ev0G1XL6gsVkKnUh9u56fyMQltI
         /5NFdYoPLINkyY6BDbYA6js7jrcmpBlZIGXim6x6813H7hHA5X7ManDbBmeYU1EU3c5S
         1k3ef5vsYqDZ9cw5b8J5d96ekh/d0LpeS12gMidZzinO/7hK6OOFKK51a3u8qnAx66yL
         V/WowpUq+myeOboIM60df3Q27R2ONkYqhaBdEbwegX855V6D0zX4u26IxAgRjwa4IOQz
         KTbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769454488; x=1770059288;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=vVffN9Slo7nSA6jMy+HnfjnzdqrKlZ/cdmvcQBPmzT0=;
        b=SYJn9i7/XXopicaHzhbbslBZUPlIBLsry0XNQiy712XuGpJJ3ia6kCpp0NQpvZYtBB
         +A66wVhDS9dlvLpgthIBk3XO6TeFeJrZVUVHmgMcXmiuHbeYWpYVzktZTFUvA9eWP48+
         r2eLs1HI26S8aH6lzJc5eiqqDVP+tEenMMadvKUkB62zKmL4OVg8/9NasjKyW+MKrul7
         /J8IUBBu4H8e2sgm+S/mVML/yqI2iERJEWRqp7iXyC4ouNi94tCNID4DPp8KSzu4wgAF
         ghV5li7RnJT856jLVZaNYIiPOakjXGeR0k14IHIbfDytnjEAzVKvBxR8q+s7arXVRPcN
         pWWw==
X-Forwarded-Encrypted: i=1; AJvYcCUHCbmZ3egM6+UVEC2AK4DboBiRWdZmqNK7xD4NpoyS5BuRJoT7T2dQLChZYlMh0dsjaCmjeIqBYOi6@vger.kernel.org
X-Gm-Message-State: AOJu0YyqeH3v9QAxPztbGSdp/7XiMX6yW9bxHBDALMi/IUA1T8KRZ43i
	qBOV1wOlzyok7j6JS5liPIMfb7so5AwnOMwihW+WcHbU/O+OrjBN9frR
X-Gm-Gg: AZuq6aITYAYr+PhH1s+unr2wBYNzyMtc0o2TH76UA34GeAzn80ckp9KU6fojeFs84oQ
	VN7kGGMCAvNfwSw9EDyBoSpTL+2VyAJxuNYpf2n8tAnLwS0JqVRpVVp9fyVfepdtxvB2bD9aCCm
	Q3i1kJavY0LYygJkzLDNdDKWjs1COJmL4n/14xwO6qvNxmyauZbvwSdDQsrXO+QZSa3uHo1XpLC
	9eZfc0GCrnii0AxXBLRxrFqwgrtx1fw/6dDbmjmkY+ddhKzfSoEiH/hv+oG17jfjWd+34lH8+96
	kebNugS6dwuDKspO1oTQoOITU97HxXZyLi90a9SuA3Iy35Y/04+ooFVWCxGmD6K8k9c5Bbo8wdf
	cLUPk03vw1aUWFnpGjJH8Amfm89z81YP4fr//SgZ/vX3PJnwmT6GFEfvC0QD153yLMZeWY8ceC8
	Qn
X-Received: by 2002:a05:6000:250f:b0:435:9a2b:53d0 with SMTP id ffacd0b85a97d-435ca1aa82dmr8665439f8f.45.1769454487759;
        Mon, 26 Jan 2026 11:08:07 -0800 (PST)
Received: from xeon ([188.163.112.49])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435b1c24bf8sm31802030f8f.11.2026.01.26.11.08.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 11:08:07 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Mikko Perttunen <mperttunen@nvidia.com>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	Sumit Gupta <sumitg@nvidia.com>,
	Dmitry Osipenko <digetx@gmail.com>
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org
Subject: [PATCH v1 3/5] dt-bindings: memory: Add Tegra114 memory client IDs
Date: Mon, 26 Jan 2026 21:07:53 +0200
Message-ID: <20260126190755.78475-4-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260126190755.78475-1-clamor95@gmail.com>
References: <20260126190755.78475-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-259619-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,nvidia.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,nvidia.com:email]
X-Rspamd-Queue-Id: 3FFFB8C59C
X-Rspamd-Action: no action

Each memory client has unique hardware ID, add these IDs.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
Reviewed-by: Mikko Perttunen <mperttunen@nvidia.com>
---
 include/dt-bindings/memory/tegra114-mc.h | 67 ++++++++++++++++++++++++
 1 file changed, 67 insertions(+)

diff --git a/include/dt-bindings/memory/tegra114-mc.h b/include/dt-bindings/memory/tegra114-mc.h
index dfe99c8a5ba5..5e0d6a1b91f2 100644
--- a/include/dt-bindings/memory/tegra114-mc.h
+++ b/include/dt-bindings/memory/tegra114-mc.h
@@ -40,4 +40,71 @@
 #define TEGRA114_MC_RESET_VDE		14
 #define TEGRA114_MC_RESET_VI		15
 
+#define TEGRA114_MC_PTCR		0
+#define TEGRA114_MC_DISPLAY0A		1
+#define TEGRA114_MC_DISPLAY0AB		2
+#define TEGRA114_MC_DISPLAY0B		3
+#define TEGRA114_MC_DISPLAY0BB		4
+#define TEGRA114_MC_DISPLAY0C		5
+#define TEGRA114_MC_DISPLAY0CB		6
+#define TEGRA114_MC_DISPLAY1B		7
+#define TEGRA114_MC_DISPLAY1BB		8
+#define TEGRA114_MC_EPPUP		9
+#define TEGRA114_MC_G2PR		10
+#define TEGRA114_MC_G2SR		11
+#define TEGRA114_MC_MPEUNIFBR		12
+#define TEGRA114_MC_VIRUV		13
+#define TEGRA114_MC_AFIR		14
+#define TEGRA114_MC_AVPCARM7R		15
+#define TEGRA114_MC_DISPLAYHC		16
+#define TEGRA114_MC_DISPLAYHCB		17
+#define TEGRA114_MC_FDCDRD		18
+#define TEGRA114_MC_FDCDRD2		19
+#define TEGRA114_MC_G2DR		20
+#define TEGRA114_MC_HDAR		21
+#define TEGRA114_MC_HOST1XDMAR		22
+#define TEGRA114_MC_HOST1XR		23
+#define TEGRA114_MC_IDXSRD		24
+#define TEGRA114_MC_IDXSRD2		25
+#define TEGRA114_MC_MPE_IPRED		26
+#define TEGRA114_MC_MPEAMEMRD		27
+#define TEGRA114_MC_MPECSRD		28
+#define TEGRA114_MC_PPCSAHBDMAR		29
+#define TEGRA114_MC_PPCSAHBSLVR		30
+#define TEGRA114_MC_SATAR		31
+#define TEGRA114_MC_TEXSRD		32
+#define TEGRA114_MC_TEXSRD2		33
+#define TEGRA114_MC_VDEBSEVR		34
+#define TEGRA114_MC_VDEMBER		35
+#define TEGRA114_MC_VDEMCER		36
+#define TEGRA114_MC_VDETPER		37
+#define TEGRA114_MC_MPCORELPR		38
+#define TEGRA114_MC_MPCORER		39
+#define TEGRA114_MC_EPPU		40
+#define TEGRA114_MC_EPPV		41
+#define TEGRA114_MC_EPPY		42
+#define TEGRA114_MC_MPEUNIFBW		43
+#define TEGRA114_MC_VIWSB		44
+#define TEGRA114_MC_VIWU		45
+#define TEGRA114_MC_VIWV		46
+#define TEGRA114_MC_VIWY		47
+#define TEGRA114_MC_G2DW		48
+#define TEGRA114_MC_AFIW		49
+#define TEGRA114_MC_AVPCARM7W		50
+#define TEGRA114_MC_FDCDWR		51
+#define TEGRA114_MC_FDCDWR2		52
+#define TEGRA114_MC_HDAW		53
+#define TEGRA114_MC_HOST1XW		54
+#define TEGRA114_MC_ISPW		55
+#define TEGRA114_MC_MPCORELPW		56
+#define TEGRA114_MC_MPCOREW		57
+#define TEGRA114_MC_MPECSWR		58
+#define TEGRA114_MC_PPCSAHBDMAW		59
+#define TEGRA114_MC_PPCSAHBSLVW		60
+#define TEGRA114_MC_SATAW		61
+#define TEGRA114_MC_VDEBSEVW		62
+#define TEGRA114_MC_VDEDBGW		63
+#define TEGRA114_MC_VDEMBEW		64
+#define TEGRA114_MC_VDETPMW		65
+
 #endif
-- 
2.51.0


