Return-Path: <devicetree+bounces-134417-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 516CF9FD642
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 18:01:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 30D0C7A2932
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 17:00:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82FDE1F9F56;
	Fri, 27 Dec 2024 16:57:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="Nz+8vWX8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABF891F9EA1
	for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 16:57:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735318671; cv=none; b=ZcrFZvrWI1aa489bLSj2zv6SCzqgUPFfH07NYbqxAdulzMPMtDS/99E/bEH6m6C03p2qu0usz8VmRdIubtoGICeA8dEnR5zZROH9dIDfQlKpFWio6YAFSUCokYaVEePBcx0BNaNu8fiDUzrnEBVEBxdIt1mpXQSf21Vhk00aiiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735318671; c=relaxed/simple;
	bh=iERCf4PSMgPb1a4YxNQInRCexMKauwehhCNuMMlVeNM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ADcnj6HzuzRA4NaZ3POJzWJcPViaHqaGuc5qNT2nZlrPTIU7ksyDPPZv+o/aPoq8KlHSsKDFbPJoU3O8mBNBXLgiIhezglpeChZFNsM3M01LeIei/usxYatAYBqLyg+v+Qo3k4nIhGwqcZQDCKWOwTkrRLkUl72u3VhY1GoPNy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=Nz+8vWX8; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-aaeecbb7309so523324566b.0
        for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 08:57:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1735318667; x=1735923467; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vOKJ3wQvbvnKfy50Gr8I3coc2Gwt+700w35xpJ+3wzM=;
        b=Nz+8vWX8cie7WMg3HjIFmOMCmVXhbHXAP2yheYDcEyIvDdFUMEft8loT0F5Lga+Jx7
         COik2GPUscBwfaKVymyAs1/MwKqMhK6rcI19iUbYaGLm0bxb4VhCbDhoViEZq1FcbVJY
         Hwrud+ZC/clcXLre9NS1T+jw7BJZOJxfqvKRI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735318667; x=1735923467;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vOKJ3wQvbvnKfy50Gr8I3coc2Gwt+700w35xpJ+3wzM=;
        b=S9J2hjG8mYWFMVvXmu9liwPPXp0OF8IDe7eoYuyMYmv7brj4v54lK/jj3DPkzfFJ+o
         kAJbsOkW3qJejmo4SWvc9vI3jxY9apsLt8nuOJwyeWCTgPNtbFnqcLf8XLZ3HYc0rBTC
         EMxb0UVgkhjKxtP6xGtr6e7iRb5BU1pYe6kCUtQIhtDrUaLmn5pFfNqFcRH0ejHurBPT
         RDRfXlBZBSQDKWwW+547j57ITP07ZcplwKqw3DgA7nZwvi4Sv9OKBPpoPdrUl7iay7P0
         oXy9Vw+B4RiGTtwwvTkfgutbHk1k9N68hDQUEZctJ4Eqwb/d17+Ts5VYgSwXgLxzuQpv
         CrZQ==
X-Forwarded-Encrypted: i=1; AJvYcCVwtxaUIYqBoN/qPVmG5EIDmVWQ8cOQ7uAYIgF0ljaFKiUevUWIanPZZidJG/3RkaiNS9sRfqpgp0o1@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7CPLhySrZ09uJ8o4VAlh94Kci6N7q97oz2HNMub7hYYPpCIL8
	SQg3q+NA5VLCMpCNVQH42CEKdcM49rRtQT3uZz28nV/Ockr1CpbOKSEJDgAVuxo=
X-Gm-Gg: ASbGncvdMTfHYdJklDHWS3Fg4biYd41cgYfK+6IYv/60sW1J4zEtA+BdFAsR0NBm7I3
	XObZ7zsV7zuc49OPRf5PJ6QqkkVzMCWB6SOFXQ8Dct7+IcsEoyEpl7jdY01NwQzC3Bn9d+mzuKp
	gK+Z5roVWpniWL7QXnuvkg53oHM9EwF4oybRG82i5Srk7IWRAbMLrgaAsCoXFbOnf4bjweKUeqX
	kQP7fxNbrTokyygieKusuS9auO56liRVhSjUiAa7SLRkLi4hf9aj72osRJM26eY3cexzJttZQwl
	+mETzYQu4XExJ0KVa1b6Bg==
X-Google-Smtp-Source: AGHT+IGgrc+HQYxCKLo2SLlUL/mY7iziyIkQErGfzOsjT9xrluZfeOeDPohhXk9ai5VYtyng9jIdHA==
X-Received: by 2002:a17:907:961f:b0:aa6:abe2:5cba with SMTP id a640c23a62f3a-aac27026cfemr2873979066b.2.1735318666969;
        Fri, 27 Dec 2024 08:57:46 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.43.175])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0f0159f1sm1130097266b.154.2024.12.27.08.57.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Dec 2024 08:57:46 -0800 (PST)
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
Subject: [PATCH v7 14/23] arm64: dts: imx8mq: add phandle to anatop within CCM
Date: Fri, 27 Dec 2024 17:56:17 +0100
Message-ID: <20241227165719.3902388-15-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241227165719.3902388-1-dario.binacchi@amarulasolutions.com>
References: <20241227165719.3902388-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the phandle to the anatop node within the CCM node. This makes
explicit the dependency of CCM on anatop for generating the clocks for
the on-chip peripherals.

With this change, it will also be possible to generalize the CCM driver
code, as it will no longer need the platform's compatible string to
retrieve the anatop device node.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

Changes in v7:
- New

 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index 1d1424a136f0..6f42e42e13e4 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -859,6 +859,7 @@ clk: clock-controller@30380000 {
 				clock-names = "ckil", "osc_25m", "osc_27m",
 				              "clk_ext1", "clk_ext2",
 				              "clk_ext3", "clk_ext4";
+				fsl,anatop = <&anatop>;
 				assigned-clocks = <&clk IMX8MQ_CLK_A53_SRC>,
 						  <&clk IMX8MQ_CLK_A53_CORE>,
 						  <&clk IMX8MQ_CLK_NOC>,
-- 
2.43.0


