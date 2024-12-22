Return-Path: <devicetree+bounces-133378-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B3349FA70C
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 18:07:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F01891668BD
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 17:07:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 970C1199EB7;
	Sun, 22 Dec 2024 17:05:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="HScMd8VX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C27A8192B85
	for <devicetree@vger.kernel.org>; Sun, 22 Dec 2024 17:05:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734887152; cv=none; b=uWewaodxX8DjmMzjeymSQXn8B/btc+ZeiYUVqAcSqzCRnjwzA/RNsoZ5oeX5rZhQvWvxziPyNJKhEI1YF+gb+RQjUZJqKrrIvX5kqYjoJnGs0xJQzpNm/QKVbOzn7BhIpNc1UxfZwrAFURPcsQWwoJZYjO2LV4c7y4kVuAhPb/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734887152; c=relaxed/simple;
	bh=4JJzIfTPYd1xwS7ML8LLTZkwdWqlo3aofGz7RuYx0M4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=aca4WcMuQfbJUObXSd29dvL6xwD+AQp3iAbVbPB9iWlKN0soxpp/LcZxO2ptuVLjZZcwut0i6Afak5aF1pcDWsTsdFVJZF9YvqB3Uja51y14F1W/eORERuZn8Pco9Eg4UjdMwebPzHoW33T595+gLT2NBVOwtpUDWTWSb2/hm0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=HScMd8VX; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-aaec111762bso154135966b.2
        for <devicetree@vger.kernel.org>; Sun, 22 Dec 2024 09:05:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1734887149; x=1735491949; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hOYk7rkhvjRCnvuEcjwAqfr4aBzSa8a4sxHUvLuLnTs=;
        b=HScMd8VX9Eu+BXSGi1TSngRx5GaXHJBjORHWmR4e0/mqIvK2bXH+r/+3Q1f3tsv+IL
         l1sqpy11kDHjqbHSCkEJ+AAd6JjNbYUqUuG4zgTVST7XBv4zD7g7gUrfcx4Oh5JqeRho
         jP6jjdFFzAVzfksg9Kz1VUVOphIZ6lKOFTp5U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734887149; x=1735491949;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hOYk7rkhvjRCnvuEcjwAqfr4aBzSa8a4sxHUvLuLnTs=;
        b=KjKFlkkR5ghLwQOwr6EXDzgRrBDghmMq/Rlrx4LnRL2qldpWwmVgsH0iKXizCorWyy
         4R/BT1glWj1Cf6hgxkHph5oNaUuHrj2PxVzq76hwwZ8kllTQpYJsVB+h8Oyd3709VTa5
         wzB1d5pIVEEkUkzEMMtc5QGVdEIF0sFPYOYD/LbvUjMynUDJdwqmwB9jTBqnC0vTECxI
         XSgPYvyecoKN5mJdUGrvC4XqX/JKxiBk4pcAaz0CsLNxunQIX86zDPZ6wszZlkkKtJCJ
         dY19hODU+4bB6HaWeXVz/oGEArxNReOyK3kpmAJ6/cIxaw2o2xqAtmqq8f+lI21x0dYw
         xgDg==
X-Forwarded-Encrypted: i=1; AJvYcCUev6iM692aXlmc+AVKBFj6L22UJ+HB8OH9ZQaBlXebBjEH5x5Ej1FDb+e2ANggwAfEk3i0qEIGCayP@vger.kernel.org
X-Gm-Message-State: AOJu0YwW5S9GnpkPX+7bJNG1Qsw6uf/sqigL5HpIB6rb6ITv/YSZZwx5
	kCPPsipAzlpHgqhJ44IEdcfFs7MjlIhdQS2ktGUKwLItBHMwj+Tkm3iyPBaEQjo=
X-Gm-Gg: ASbGncusXXqcjfCg6rDNxYV3zk0DFKcLwo7Jja6HGnokf4+ppM52r1ajKceq3LyWvsd
	ZNRjnACcWl8rE5kiOH2OFqyG8NNcBtlnsIEF/YMbtH6oJ882fh0vmecjm6UdrZpCX9o30go+mvm
	rjWs+deBtYEp6mlOLNh/hBXzCCiQzxQLtwhJhnYyA0822km+mc6VM6pYBlW/JGOQ08pEgnMyHsp
	Y4K90fKLtKqQI/JrbgA99YsSKLhDpL5wumI5RsyX+wpHxNfhGGodRitrxg4mzk7ndPpM1HpDJ7D
	SE9IInz9ngk2/w34UpIxWmBJ90m3m1/zxaWSqWqhCS+qJw==
X-Google-Smtp-Source: AGHT+IGSlHwq4B58SjzQGkgABUjEiVbfFXilvkHQNYopTfPmITsuLQgwRjnV1F5sR2WhlM27g0eCtw==
X-Received: by 2002:a17:907:2da1:b0:aa6:730c:acf with SMTP id a640c23a62f3a-aac2adc603fmr930499466b.13.1734887149146;
        Sun, 22 Dec 2024 09:05:49 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.amarulasolutions.com ([2.196.41.87])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0efe48d6sm414056566b.127.2024.12.22.09.05.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Dec 2024 09:05:48 -0800 (PST)
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
Subject: [PATCH v6 06/18] arm64: dts: imx8mm: add anatop clocks
Date: Sun, 22 Dec 2024 18:04:21 +0100
Message-ID: <20241222170534.3621453-7-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241222170534.3621453-1-dario.binacchi@amarulasolutions.com>
References: <20241222170534.3621453-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add clocks to anatop node.

Add the bindings definitions for the anatop node. The patch is
preparatory for future developments.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

(no changes since v4)

Changes in v4:
- New

 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 4de3bf22902b..597041a05073 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -600,6 +600,8 @@ anatop: clock-controller@30360000 {
 				compatible = "fsl,imx8mm-anatop";
 				reg = <0x30360000 0x10000>;
 				#clock-cells = <1>;
+				clocks = <&osc_32k>, <&osc_24m>;
+				clock-names = "osc_32k", "osc_24m";
 			};
 
 			snvs: snvs@30370000 {
-- 
2.43.0


