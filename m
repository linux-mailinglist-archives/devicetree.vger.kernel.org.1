Return-Path: <devicetree+bounces-231368-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E1C34C0CB1A
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 10:37:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 166D03B7128
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 09:32:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79D602F531A;
	Mon, 27 Oct 2025 09:32:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="A3t9x0HY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74AEC284663
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 09:32:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761557551; cv=none; b=QoxM4Hj8VZvj4HgKxarn23SsmYPWEoPUxfO8Q3LO6c3cvOhRNYe/bC3rvBatyRd2zr7YZHPKShgB3N1nXFDnEVxHkLvx3X90IvngqvT8ZEJoRQKsXFJvQQEuaUG0zftB2heaEGt7taym0DQxTMfAhh3dwF1znLP3hRHu1o3MnAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761557551; c=relaxed/simple;
	bh=I+vPrkGtVY1KgrH1yltmYPBQNdvYIVKIbmnLGF2Vio4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=oLyhtUKbmYNUuCGlszqbTts7c73QXHHelRsYxH9+49s3TI2t+M2e06Wyud8zX5t0VsttmZNPwQqVJcrctXl3SyrBexbZnZInhqfAsXC9B7WGnz+6Jy0vNyj+PBH8s2RfKW7+BLzLO7/4MNu1t2a3mKdDlvQB6qZ7XdUSNoccu3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=A3t9x0HY; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-63c1a0d6315so8431691a12.1
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 02:32:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761557547; x=1762162347; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c6jnR1l/knmmCE7j64ceFOiYUTsDgn50GkewewG1O2A=;
        b=A3t9x0HY9kK9ARaUbuq5ZiwW1g9VAKbkj/XPkliNOm4F7JHj91X89u193tV6IJ3MVR
         govgEi1gcS5hZ35o2M2D3eE61c8el8S/mNQ50qCI4FwARP0oTpEyTp6/H6P9Qwn+kVrz
         1yl+n7KfonlQxh7s1hqE2eVSXkTo1uBLoYb+utA251eyLt0IEOkZVVsbYFf/kBfPeNIo
         rKPSB+TIZkV+VzFKevXt3gYk4nxP7vVuXqReveMnMyC7F+SeqAEyJEw0LY7uHYtOmv7y
         rLZRxgvdetHCRarjxyPxQcTTTxW6/fRKP+6oz7xeNPxYZx63igdWYguOKcY9j41sPbZB
         44GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761557547; x=1762162347;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=c6jnR1l/knmmCE7j64ceFOiYUTsDgn50GkewewG1O2A=;
        b=AA+IM5lqUxlxONNYgXwcAJerZvq/QJX7otK81bVImSouWhXMsQBApg466GlSGVMSkW
         A/e1MfwStkKCxH+RZrQ5nJqeuSeErUchtlXDLp0l5hzvYpFhDVKvwbpB53AcgZwwoIWl
         18CovPH0rq8PK7H7HFtoC91Y7vPJ+nDMGTT1RKh/sV3GRtr9WplIasW/eQumtTbr+eBx
         kVplQIzGYe/WpAj3quc0S/CTTBut+97mcwFpRpcGQqC02YvtUW3ExbxGIqf4NBC06eV3
         W2gfXHDZBfu8sgwEgb92l3+0+9NfkuHJFSd12qy803MbdyQCgbxNEXXwiRyqINr4O9PV
         jONA==
X-Forwarded-Encrypted: i=1; AJvYcCWohxzgwjWMU73YQLasD452sAxBwBjXPONndkcQ4xfq7YpUhjPddiGlRegl+Z4/u+6ohY2siZKXPOma@vger.kernel.org
X-Gm-Message-State: AOJu0Ywtamwb2aF28eOgtvTR1LbDpb0Nez+tHS9Zf5S3FuE2cDHpw29p
	pZXb0agq/7yQVizuGhVUpNIUQgf+9lHnl+Lh9USwlISHOuflbAjOSJrnlPDW9A==
X-Gm-Gg: ASbGncu41QryK46emoFjtpcDByu/lgz/luib4QwAOeISvveBo2ULbD338FaEosdR1CU
	ZlhREtMkLJTYGqNVxPzI80ze5sGDh0TWlP139ehNnltRAu0IfeYVtwFFtZ/wveSXYyspAJooWFj
	9xrpR4ZAy3ldZVaFLh1Fg3xbN4TFk+8W97a51pZB9fUNDzbFLQgP5XWU20wCHvld0BUeIvgjgCq
	FyvkUaEtlU7dur8pQJJfu+lFY98VGFezZVtCJcxdmuCoMhDPzB/2Jyr8B54nz1U1+lk0+lBirI9
	LgwCjH5ZJVQpmdp2GcWk5xnLsLTbboa33SNT9MLwjvpkFCIaqnOK2nNyzNPud9ZlV2wzOuH+zai
	ekdCuFtKhk29p2JvCBg224Uh78F8bxlSfcaSrv5wlcU82XNEYAd2ief3rCncOBqZj8HgCJxaCrx
	YaE2NGRZVXPnNVedtDf+B5/ovA7qTN7q3KzqnknbvsdEPe6xFY4XpiDFpolP+T80sF0Ck5YQhM5
	syFIPPAfq8SWq4K
X-Google-Smtp-Source: AGHT+IGo4pfv6hPnOdMTXONgc4qw1GUfLg7rVGlLeAbdxBQfM+FdGB1kbkQsXhoL+4Azs4JdFAml5Q==
X-Received: by 2002:a05:6402:1443:b0:63c:84e:614f with SMTP id 4fb4d7f45d1cf-63c1f6b0b87mr34969695a12.18.1761557546755;
        Mon, 27 Oct 2025 02:32:26 -0700 (PDT)
Received: from toolbox.int.toradex.com (248.201.173.83.static.wline.lns.sme.cust.swisscom.ch. [83.173.201.248])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63e7ef6be28sm5681014a12.2.2025.10.27.02.32.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Oct 2025 02:32:26 -0700 (PDT)
From: max.oss.09@gmail.com
To: Max Krummenacher <max.krummenacher@toradex.com>,
	Stefan Eichenberger <stefan.eichenberger@toradex.com>
Cc: Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 3/5] arm64: dts: imx8-apalis: specify adc reference voltage regulator
Date: Mon, 27 Oct 2025 10:30:09 +0100
Message-ID: <20251027093133.2344267-4-max.oss.09@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20251027093133.2344267-1-max.oss.09@gmail.com>
References: <20251027093133.2344267-1-max.oss.09@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Max Krummenacher <max.krummenacher@toradex.com>

This sets in_voltage_scale to calculate the measured voltage from the
raw digital value of the ADC.

Signed-off-by: Max Krummenacher <max.krummenacher@toradex.com>
---

 arch/arm64/boot/dts/freescale/imx8-apalis-v1.1.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8-apalis-v1.1.dtsi b/arch/arm64/boot/dts/freescale/imx8-apalis-v1.1.dtsi
index 686fce7443bb..abf6d543380c 100644
--- a/arch/arm64/boot/dts/freescale/imx8-apalis-v1.1.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8-apalis-v1.1.dtsi
@@ -284,11 +284,13 @@ &asrc0 {
 &adc0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_adc0>;
+	vref-supply = <&reg_vref_1v8>;
 };
 
 &adc1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_adc1>;
+	vref-supply = <&reg_vref_1v8>;
 };
 
 &cpu_alert0 {
-- 
2.42.0


