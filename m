Return-Path: <devicetree+bounces-139443-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D14E4A15CDC
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 13:42:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A1B941889191
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 12:42:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADBDB1A2387;
	Sat, 18 Jan 2025 12:41:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="BN3OLU0w"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDA8119DF49
	for <devicetree@vger.kernel.org>; Sat, 18 Jan 2025 12:41:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737204070; cv=none; b=pC1iDXRwlFdkUdc9B3MPR4GtGmk5vsublZCfEa9Kh3IKa9t5D4LnV2itwoCXUJotKtmOkt8hX7bXhRM+bYA5w0tVJt981maW5FhF1Km6VbHQvq0P5TO3CFrKwC9t8YfHxo9l38G99/YuZfmXoQKCcqtlVPzdJXZGq+Fi242FGAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737204070; c=relaxed/simple;
	bh=EfuJYR878rJ4Cw+YuO97nDjgeWj+F6WJVMj2hzhOd0Y=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=HJfmfg5BWz95BMG+fpvLewP2d24bQx5F+/1NpGhK1OEVine3pe7+/0o3Ka0a0IzbH0qU1UUQZqUXC5cchs6CXXc/AyMdO2uVInTTQGOyIZ/4K/djfJIdXbNOMwZTPmiHfMSDy/3jerdWAjRUkXKJy/owIiAqKSOYMFtE7muLo14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=BN3OLU0w; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-aaf60d85238so494629366b.0
        for <devicetree@vger.kernel.org>; Sat, 18 Jan 2025 04:41:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1737204067; x=1737808867; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JTseU8DWKtdHNNseUc2PJ1vcygpii+LlAX++fbmk+pc=;
        b=BN3OLU0wE5oIiv+Pa18/hfEP26B2vvVUkA8K/3LE7u3YXN0D3RJaLLtGtt0Bb1Sgjb
         S5wRgwPjWsDBryQDiA5gcSaEmyTo5vW+AEdkoIKgu/yrQGL/J4nGrMhjYH++bhF3c8P8
         kaUlz1h9TOSF5pfcNAnGFVe6ACrzhJgkE9Ii4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737204067; x=1737808867;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JTseU8DWKtdHNNseUc2PJ1vcygpii+LlAX++fbmk+pc=;
        b=okE+X/DoJylGviJ9uj99+uNSVkI8uQYW/y3OY4Euzqab7w3p0y2YtpzHwePaboTUjJ
         rGYw9mYzg9wMhT7moJaG4CXl9BXnyx7oyt+nL938Q/VEU+nQrImKTCZpOmvN75ZEttAT
         l+r6aR/BQywXRv+8YkVC7sapWlnwKTiMjDmKoy4XKduNVXzkch6mAcHHxUYu5G62KexE
         LDhzdceLlCRDCLzl0SYJpIkgM7IMxH6exEpvWYM55Ugm2+uhl7syfQqHC7yz+D74P4we
         ms928KrWQbI1kimd/Q+XzROzajVu3hfbIMLJSXgfVWMsqhA03rsYYrUd2ZPLv6NaRMSX
         87BQ==
X-Forwarded-Encrypted: i=1; AJvYcCXKeggHvOXKh70uxu7VcnRyXpqS2PzTelxcdB2YfzCXxvnCo5kG4O/1mfmCfmJf9a4VR9QLFjKB89ds@vger.kernel.org
X-Gm-Message-State: AOJu0YzscCw/mXTpBL2lBsH1Ux9j2rmIiQWBU4ZU3p0RMqm7izWb6Xkc
	jUT+C72fWdEBP/UUlt72EGler+aKPs5Fpvt7pThKsFEXnmAptinqK9wSmij6A+I=
X-Gm-Gg: ASbGncsYbIJ8BLxhfvT9v609U6p8asiRdlOg06FYeDRLyIa1RI6mIWlYkd7JslTxmbW
	EOBR5CL2cgfwGzhfcdoIPmJcwCVYoDbflFJsnMyjvOUShmIqyXCVBuSHtV78IMWCBZIjKSdry+g
	wYrnnRQ96hDG9wxxoM80CHHDcTlEKd8DUjyAsqEVq48IpG1wnA1ELZR+AcwOFKFF2qt50/dsITm
	dtONL5G6EWMzFdrXMcCldVn1jS0xKowdp+J+cc0DOB21/dw5lDaUsrz4RZvLuBxW7DPQ6ZJjVvO
	USui3ZQcY8VtiK2n8kdQKNZs+zDZ7TBp8bO6BmGBnIejcFL4zG12toU7edBWzhNShz3MOdhnZpO
	erqgXoq5SlNa1XnBLz3hh56xpC77xLIH73oTP
X-Google-Smtp-Source: AGHT+IHX2I9yy/tg03FjOqBgNh1ud5x4FkNGAAghKsVjSyjjnfF7XR2jyfI8B0AX0C2mCSM8Nkikkw==
X-Received: by 2002:a17:907:7256:b0:aae:85b4:a07 with SMTP id a640c23a62f3a-ab38b19146dmr492323466b.8.1737204067196;
        Sat, 18 Jan 2025 04:41:07 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-79-30-28-209.retail.telecomitalia.it. [79.30.28.209])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab384fcd73dsm332562366b.178.2025.01.18.04.41.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Jan 2025 04:41:06 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v9 08/23] arm64: dts: imx8mp: add anatop clocks
Date: Sat, 18 Jan 2025 13:39:51 +0100
Message-ID: <20250118124044.157308-9-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250118124044.157308-1-dario.binacchi@amarulasolutions.com>
References: <20250118124044.157308-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add clocks to anatop node.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

(no changes since v4)

Changes in v4:
- New

 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index e0d3b8cba221..0b928e173f29 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -709,6 +709,8 @@ anatop: clock-controller@30360000 {
 				compatible = "fsl,imx8mp-anatop", "fsl,imx8mm-anatop";
 				reg = <0x30360000 0x10000>;
 				#clock-cells = <1>;
+				clocks = <&osc_32k>, <&osc_24m>;
+				clock-names = "osc_32k", "osc_24m";
 			};
 
 			snvs: snvs@30370000 {
-- 
2.43.0


