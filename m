Return-Path: <devicetree+bounces-239881-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 92254C6A3C5
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 16:10:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by tor.lore.kernel.org (Postfix) with ESMTPS id 9E5C12C10D
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 15:10:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA9AC368274;
	Tue, 18 Nov 2025 15:09:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Df9Tfxfy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAED836654A
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 15:09:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763478548; cv=none; b=pVcNt1c1UQVLMvJFVSfQh0ua+b6r5zrZbhPBcwR2Xmw6k2nNwQnebsaJEE0b/iy+JbeoxFC6W557y3EYOZknt9e814+w7D8iXL82uqBgdC14apx9gxN97ARHdq/1PJECS3WlGhiza10giRVGg39y9Atp4VRV1LL2ouvvhRcbQDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763478548; c=relaxed/simple;
	bh=dVGzqyZXkBwki97yMe5ElsDLZ0iannafMXlGf56ds08=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UoiL/WNEzt9YP18T+Its/7YiAmqcpR8qut+1hH8/ki62/fgDdwEEONzvIDixd4UQGeMFTvLtSTl1UcvxJwnTtCuPYbhaGfewaOnuSN5rylK5S5d/nMHj/EwjNYkKtaagCbZw3neduwCez63erY61n3EmuSfJjm0ADjTq/+2DzzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Df9Tfxfy; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-477632d9326so38320285e9.1
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 07:09:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763478544; x=1764083344; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1aUWB5rfJH8WjlZ6mpwncNQxfl3NZrrgQFt7PCfUFlA=;
        b=Df9Tfxfy1drqC2h4aWRhxNfhlEWXRxgi/6W8+24ljo4hbKEZ2D25Wt8DhxVm2Oz2bO
         3RlaBECQGdQfoaEljoRhu20Q/jZXSl0fJHTjaPwqlUPKSOj7Sw4vyEHBzVtehQ0ZIoR3
         lwfV6zkv/lsvWBvtmWLAyFZQdxCXDnwvDSP2DR8HXrixXDyDg/Yr+jrdQ9cpRnu9LVkR
         GZlY88JJPJwB1VF7tJ/jc78Yixkh6pUSetHVnp8b1h/Zat1Vn+NKjD3RVXRQsHbLglVt
         2/kpV1YJYFhg/z42djqZDE1z4wnFlpbfQs4qWh3HI8eIu7S1Tx4hhDiYt0ukDL9Ap2dQ
         Fgyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763478544; x=1764083344;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=1aUWB5rfJH8WjlZ6mpwncNQxfl3NZrrgQFt7PCfUFlA=;
        b=WhKb+NpzMS21/BcIawo3O2hkw/AzS3qyYeq6ugJAAQw1wpHIiZRBjStWy25AeNTD0K
         bzfZPHXX4NJjrDrg8yMkg9UhdFQ11vQzvDMiVHPxR5Gh7IJUOic/SIE6ffIbRbGb26tb
         pJQNCx6/dv4VG5qzeaxGwzyuZlOFycLZZIDWEDs5qSYzR3H+/kwRHJmQUj8qEfRVrAqS
         vfDHtqh8LWWEHiXufIeKpkfzpnvKE4TS1V+r2ZNLgoyu4z8hMoDDPAL0DP2oOb9gQTXU
         Ng/L/kqO5TWZQzrAeSFS8Qm+hTHjp/JDpGWjVSQlVfTnZlzg7QLhF3fx3YgcQzXXm80u
         nYSA==
X-Forwarded-Encrypted: i=1; AJvYcCXi/OJ2WhFtmjmNdvS9La/tk9AkBuz6GgLntk1VQF1YjHvb76qbTVdjPSNu5xfXp/bqqHzUpQA4M9Ck@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5BvAwJZSP0ZJRO2hr+XKJBqtKqs+HL1385g9uOaiKUOtYdjl5
	fiuVxM7Wbb7zSyjIberWZ4Qg0f9UnSNy5s+4fqtZDosm7pIkNMb7qqM1
X-Gm-Gg: ASbGncscpIxVf5Em4r0rFBMbajzhMm6F0XLGrmZV3YN/yIJ9oL8CqZgLiv96lB6pAky
	GcGd6qUPvbIHipsJSXhJQlrzhH3D79bP4k6G42L1tdyzqdS3TRpUlIvl0Ividr9/ReexltyqAhj
	phsVxDQeQaRAk6p83CxuRxOMLehPyOkksq+MdzGZ/0aW+Ue9bOpcAD4PvfNS8xOxPtx9dlJetbV
	Fcbsyvn08Y5FNEMt92TLXMN3IjeIMbMm/2WUkMmX+KwEYrJ7qIo4icsx5UQGwkLv5zmE74HMpmO
	MiHEn549rrNgxR+r+ZqWpF48g+zR1RhODvDfP8hWZ6ywaRfDj5XrC7djDyL5fD9mnZ3Q71+OsmB
	9rO7k6k8Vy6Clo3ifO5nNSsxwSShg5JoweGXdXKGxAzzk3MJbl5vP6VTQoh1PMIL4Nf6a6VIbwI
	9u7g0tN9FU/GJwORRcmF2AXr5yWVO5QZogYVIYXBxzio53ucozRC+UY8rBxj8ctnXgusxDxdxyx
	z0mfTTmLfNlbG1r
X-Google-Smtp-Source: AGHT+IGSEH+nZH3uDYlPARqsVIhZYpdp0LW2A5ByNrQdTilynl5MJD0kTuaNse/eSWnTTSY+SA+8rw==
X-Received: by 2002:a05:6000:2c0f:b0:42b:3592:1b82 with SMTP id ffacd0b85a97d-42b5933e152mr14529598f8f.1.1763478543680;
        Tue, 18 Nov 2025 07:09:03 -0800 (PST)
Received: from localhost (2a02-842a-9b20-0d01-432b-0dab-f195-2b25.rev.sfr.net. [2a02:842a:9b20:d01:432b:dab:f195:2b25])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53f206e2sm33027151f8f.41.2025.11.18.07.09.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Nov 2025 07:09:03 -0800 (PST)
From: =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <legoffic.clement@gmail.com>
Date: Tue, 18 Nov 2025 16:08:03 +0100
Subject: [PATCH v9 7/7] arm64: dts: st: add DDR channel to stm32mp257f-ev1
 board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251118-b4-ddr-bindings-v9-7-a033ac5144da@gmail.com>
References: <20251118-b4-ddr-bindings-v9-0-a033ac5144da@gmail.com>
In-Reply-To: <20251118-b4-ddr-bindings-v9-0-a033ac5144da@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Julius Werner <jwerner@chromium.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-stm32@st-md-mailman.stormreply.com, 
 linux-arm-kernel@lists.infradead.org, 
 =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <legoffic.clement@gmail.com>, 
 =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <clement.legoffic@foss.st.com>
X-Mailer: b4 0.15-dev-86b30

From: Clément Le Goffic <clement.legoffic@foss.st.com>

Add 32bits DDR4 channel to the stm32mp257f-dk board.

Signed-off-by: Clément Le Goffic <clement.legoffic@foss.st.com>
Signed-off-by: Clément Le Goffic <legoffic.clement@gmail.com>
---
 arch/arm64/boot/dts/st/stm32mp257f-ev1.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/st/stm32mp257f-ev1.dts b/arch/arm64/boot/dts/st/stm32mp257f-ev1.dts
index 6e165073f732..84eb09f8b878 100644
--- a/arch/arm64/boot/dts/st/stm32mp257f-ev1.dts
+++ b/arch/arm64/boot/dts/st/stm32mp257f-ev1.dts
@@ -42,6 +42,13 @@ pad_clk: pad-clk {
 		};
 	};
 
+	ddr_channel: sdram-channel-0 {
+		#address-cells = <1>;
+		#size-cells = <0>;
+		compatible = "jedec,ddr4-channel";
+		io-width = <32>;
+	};
+
 	imx335_2v9: regulator-2v9 {
 		compatible = "regulator-fixed";
 		regulator-name = "imx335-avdd";

-- 
2.43.0


