Return-Path: <devicetree+bounces-267874-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0KLpAvaXnWnwQgQAu9opvQ
	(envelope-from <devicetree+bounces-267874-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 13:22:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B2BF8186E0A
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 13:22:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0832330C0254
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 12:20:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE8FD396B9B;
	Tue, 24 Feb 2026 12:20:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="crWRUl71"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC56396B67
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 12:20:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771935626; cv=none; b=nIZ0wrIOjk89VyMpWhP2K4VRu4plv1GihJCKx2e/QYBTB2r1NWk6SxHxAa1jQ2HYQYBQmPEJejrqEhBg/VcL9FBLlvtrg1xsnzf3ANM/HM/4Czlsv/muu4oKcnlqhnWy7tIfktyuOaO4JM7X6F1QqE805qriCLczJ/V0W9r/Asc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771935626; c=relaxed/simple;
	bh=Vlv7hjadzolvGAJw7ypQeoRDm1X9EIwDs9/wBQrRNZI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=CZjxgR6wMMhbpGJEeq2nweoFHPxFuKT+VVD+seVT30d4TwhlsOFMhBKMh6K6RTnt0BFhYV3eMExc4Avm4NL4/aPeeuaLmCHNr7iKjnPtN85HtYbHOpGKrFiMqVK5VXDXlXd+1zGO8xxHbOBcpaBJZG5A9byYUJ5GJTZPQqh76lg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=crWRUl71; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-82311f4070cso3266132b3a.0
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 04:20:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771935624; x=1772540424; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GDJ0Gfg7oWDz1xGI8ZNNKjjsgjUS855MyxuHLu+cOXw=;
        b=crWRUl71awcjTgB76VKouvnpvuiOZUl1y2antwG0t6P7OmqbLxZodUNKpnIVRdhE0H
         EXohvyKwNI6ORwx9T3EdFFglU73it1amVLEUTVVR1+vmHWBCOtYdjTSoQgxN5YhaVe6g
         LC5U22NTl0bteIkmzdvJIqMYsZ/dders4lUOyj5Ukq+/6nnexOtXfx12fGeoRnhp356x
         1eiSzpDLIv8glt2+WpTC3FNpG7+njrKjs6ac08iR/2yg/+vBs5WxV8/CIqhO3Xkz8GsC
         llelz+oG1oSHrdDaGsLB/Y86uzj6r8LFv3td/cee2qKpqFi3girZsn8CTDNMjGgOxRmm
         8zQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771935624; x=1772540424;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=GDJ0Gfg7oWDz1xGI8ZNNKjjsgjUS855MyxuHLu+cOXw=;
        b=nBsL8QC7+ZHQjBOLGTLh/vaxj+785Gd5sE5YDEOuAwVxNoPJCfSZjFA2LOsTXo2iCE
         QihzdPiCv0ntPY5XijsbdyPkecje9v5uhqeHWlkUky3vK7jmFXAaPSBqzMHhwxJ8AA8X
         /L+mID+LyQz+t0MgDjs039MbtaCoTPabwN3KfjGwyCWm57KCndKxJvHl6EagEKHeUsjc
         R5ppIirpr7LY3eKm5RLSEQZLHLBUUs0z+lytBjPmqOcNO6aLyYeTs2jBPbwpcUtPs6QK
         t0ta+NkQw10E5Si0LY9Q98ubsX1m9YeA5lznvr/8IgLoTIga/RmPIh7sYPeZi4yNGIbk
         f3Jg==
X-Forwarded-Encrypted: i=1; AJvYcCWrhDuoRNgREfTQnhy3VPMcKj6OhusTjguKlp/z+p4fMabdPeVBVQKm/1Jlhl+2ohsQaZZbLspI4zVI@vger.kernel.org
X-Gm-Message-State: AOJu0YzcWzNWrefGBrYIz9Egp7Wv+TQFjK1n4WI/LgUwWt7MVIWokDeG
	21wp0t8nU6VjjdT6/IWOT+IbRSrlc1ytdv4VViiL6pqO8Uc/xJxxfxOU
X-Gm-Gg: ATEYQzxprlC1lfIj9FT8ijapQ54jXQBM9y09HwRfnNC/EV/JgtB44LApvw6cCgVwEB8
	yI4Pcl6VW3OcP6/UTHMJnuQiWtUkC9NB93iSuXrIU80G31G8RLfB3VWSzzoU+QL3JXP94+/3IBP
	sPPwt6W2Abculi6rNb5Kc1LCxc98TfBdJimUQWlyurPzKJX8SXH0ersL09Lw0xtSOJmD8Se8iL3
	46HZtKbm4xLM7l4H99sO0zB0wZu7V3HUn9HAs0YJNs8KFZ4uWT7/F3VQQcWhAdnrwb6sdCMwvpA
	M/CAIML3mEPnXOXWI2PB8H8o2afYHdJv8VAQORPDR0eVXLgkOwsIBevM2JxR3cAyXB7h6u85mDp
	iiq5l43ZzIUXCkshcBDP8335bHxSg3N6wRtwEGXdh1da8C8hn1k9GRVy7S3r6HlkKfBn40xgvQ2
	Ns9Yq4GEDWQPLki71Puj5+TFFvxPg8ng==
X-Received: by 2002:a05:6a00:198a:b0:81f:4708:b46e with SMTP id d2e1a72fcca58-826db8c010bmr9648841b3a.20.1771935624430;
        Tue, 24 Feb 2026 04:20:24 -0800 (PST)
Received: from rockpi-5b ([45.112.0.78])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-826dd8ba11bsm10613950b3a.50.2026.02.24.04.20.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 04:20:23 -0800 (PST)
From: Anand Moon <linux.amoon@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Aaron Kling <webgeek1234@gmail.com>,
	linux-tegra@vger.kernel.org (open list:PCI DRIVER FOR NVIDIA TEGRA),
	linux-pci@vger.kernel.org (open list:PCI DRIVER FOR NVIDIA TEGRA),
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-kernel@vger.kernel.org (open list)
Cc: Anand Moon <linux.amoon@gmail.com>
Subject: [PATCH v3 2/5] arm64: dts: tegra: tegra186-p2771: Fix invalid PCIe nvidia,num-lanes
Date: Tue, 24 Feb 2026 17:48:58 +0530
Message-ID: <20260224121948.25218-3-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260224121948.25218-1-linux.amoon@gmail.com>
References: <20260224121948.25218-1-linux.amoon@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_TO(0.00)[gmail.com,google.com,kernel.org,nvidia.com,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267874-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[linuxamoon@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.152.162.56:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.1:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,devicetree.org:url,0.0.0.2:email]
X-Rspamd-Queue-Id: B2BF8186E0A
X-Rspamd-Action: no action

NVIDIA Tegra PCIe binding schema (nvidia,tegra-pcie.yaml) defines
nvidia,num-lanes with an enum of [1, 2, 4]. The value <0> for the
pci@2,0 node is invalid and causes a dtbs_check validation failure.
Update the lane count to <1> to comply with the binding constraints.

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
v3: new patch

http://devicetree.org/schemas/pci/nvidia,tegra-pcie.yaml
/media/nvme0/mainline/linux-tegra-6.y-devel/arch/arm64/boot/dts/nvidia/tegra186-p2771-0000.dtb: pcie@10003000 (nvidia,tegra186-pcie): pci@2,0:nvidia,num-lanes: 0 is not one of [1, 2, 4]
        from schema $id: http://devicetree.org/schemas/pci/nvidia,tegra-pcie.yaml
  DTC [C] arch/arm64/boot/dts/nvidia/tegra186-p3509-0000+p3636-0001.dtb
---
 arch/arm64/boot/dts/nvidia/tegra186-p2771-0000.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/nvidia/tegra186-p2771-0000.dts b/arch/arm64/boot/dts/nvidia/tegra186-p2771-0000.dts
index 8b3736cee323..b4c6bfb09ce2 100644
--- a/arch/arm64/boot/dts/nvidia/tegra186-p2771-0000.dts
+++ b/arch/arm64/boot/dts/nvidia/tegra186-p2771-0000.dts
@@ -2433,7 +2433,7 @@ pci@1,0 {
 		};
 
 		pci@2,0 {
-			nvidia,num-lanes = <0>;
+			nvidia,num-lanes = <1>;
 			status = "disabled";
 		};
 
-- 
2.50.1


