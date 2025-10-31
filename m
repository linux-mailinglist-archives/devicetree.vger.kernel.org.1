Return-Path: <devicetree+bounces-233740-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EBB28C2519D
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 13:52:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DBA75188A1EB
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 12:51:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75D351F419B;
	Fri, 31 Oct 2025 12:50:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BHV9YMce"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C0591DF979
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 12:50:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761915053; cv=none; b=gwERLm7oTaOiNMfUACmpBcEIU8z/4AdA6u/8kD/Y1ldv5dtFJRi2h7+pGd57EWOEW/BcbquEIw2Wq1INL8Opqr8PWDEDqNO33u06/SDNFcURqYAwNFcumH/B+WK8szwGllGbtFQOqkmyWlkzG/WV1xsecqtqv+z79bBEQ1S01yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761915053; c=relaxed/simple;
	bh=H4Q6r6e/iHzGIp6iZre79NI2YVcV9IoFpqa7zETW6IA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=i/4eD2hFq4RvgHuV+2f1uf0QMwBSu/9Xw3mNSpSfywaD+ArF9RE7Cp2ckgji059z4zNxa10WDCZiB8BT0KMUUQVEjcK6nFRkR/lHroTqHkMCe/RNyADfWBymh9Vng58m8sfJbdK4+NfwRUfOouIgkWyaH+GAXiEXDIYVmFDBb68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BHV9YMce; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-429c4c65485so278060f8f.0
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 05:50:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761915050; x=1762519850; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=mO2KtY6kpP/4dstvJ2/nd3TfZivPb0AjpquB+Jg3MoM=;
        b=BHV9YMce+gUvO2KN/qVSwRKSx6igujwJBEcjDzPHChI6zaOGmCDOCTAxeveqyRX3LQ
         lK0MwDKtardXFzjL4Pu6BnMti4CusanSIRKCflyjh2YknAShySDdDM+dU60eULdOsj7J
         tm0AcxubAPScho0KBbctM19yaekE3jErpxdNLoQk65osh+769Mv+daRrwR1rWiOV/LEA
         fTNnhS1BXsTQ23BQuuoP19I14LGY6nrfVFEqqsQifjlwBCWhGfcFId6UBDDmV78yMkg8
         G9rFJ2Ot64OZDMloI4qo4nUccP17ljs3mdQrNFp59ZdwiSK+j+i0UEGfz8aFwWl8btFX
         DZcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761915050; x=1762519850;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mO2KtY6kpP/4dstvJ2/nd3TfZivPb0AjpquB+Jg3MoM=;
        b=erheKguxhc56kK8dgDXG/c8UHO7BP+PWBTAfuKSttdgfzPZZM6DeCzRXsUBSdrzZtT
         vocMRdyXu65ypxAaN6hhb/bEpiG/w4HM87g85oeUgTk/rL5N+gP46IN8ti+30Zd2sszw
         L+hP66PC7Iez/AVCVK+qoIVOf1IXGdFlDhDuUKbF6m9ctoctZmxaCKuHA9w68gwBNiJI
         8mxCn/+Ih9r1a7uHKb3Mwk0es2ZE11DlfCUh9nnur7HCeVk7Wr9R1IkchtbyJCfICffk
         Ad/CCZib8niPm7e0Kiwc17TJOGxmdjMAKZymm+IoGSqARdR24BSOn9U3gEliLxxG+1LO
         xrxQ==
X-Forwarded-Encrypted: i=1; AJvYcCWUfLKLkhMAW11FrQhjHdNMl765TxjeVJ75QuGF28e+Sa6B4oLMYu3O7mgVpdJcFTT1E6wyvtmQpDb5@vger.kernel.org
X-Gm-Message-State: AOJu0YxUTLWVDhJC/4fi7fKnWmc008BZK4D7bVu8a5aqLRtrXozuURYW
	7WHVwKDT0DyyG+T8P3AMQg2S4bTOh/b1UtGH5zd6BzubUv9Fn4aaXx88
X-Gm-Gg: ASbGncs16SjMGKG4aeTl4P4KbHHkeJTMI67BK6PRdqKybdlP0RhZv6T2qevNBBNoDPR
	zn7ct+fNv+SuNaHpH/sKIhMGwJcIKaQnpvb/n87CKf011xStXsVDTqN02vP/has2WSLTBc31utH
	tu+nL3N5C/s93nkSWY2w/3h67ruxG5LsFcdWRgfCMvgKbsP+8m2Sp1fH3iUulJsItHA0f8urjpk
	0SZUv1F1EGgDs1T6+hkgrH2VYpmKnKu15cDUtXNd/WaFFK2eMdF5AWbTprjMA4XbmvF5bkP3l3j
	yFvnmfYQUpRRhUPRKJMoOFot4i7Rv2UwquEfvIilZ5NlDlxO3se71+wA0DPvIeQ6eMn2/UlHz7F
	E9MJ6T6CefXIi4TwSkuY/fcAS0Cg8qInk/+h+B2ocaLRsMdZSutdcC8QBhfShBgr5SbDFtamhr4
	0qB4Z/xdjG6ND7E2iO9Pmrst3ei7J8zc6CRtapdGZ3HxKVfeLvwlXDa4xGBVQycEH1781AP+Xud
	6sdyg==
X-Google-Smtp-Source: AGHT+IF9Do9nR03BStcy/ENSw/8pRxFisHxazSviyoAjb3tK/ts2RifiuU7Em2HOcQoiNKmeoGdqBg==
X-Received: by 2002:a05:6000:2908:b0:429:8b47:2f35 with SMTP id ffacd0b85a97d-429bd689dc1mr3344895f8f.26.1761915049784;
        Fri, 31 Oct 2025 05:50:49 -0700 (PDT)
Received: from toolbox.int.toradex.com (248.201.173.83.static.wline.lns.sme.cust.swisscom.ch. [83.173.201.248])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429c13f1d4csm3144559f8f.39.2025.10.31.05.50.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Oct 2025 05:50:49 -0700 (PDT)
From: max.oss.09@gmail.com
To: Max Krummenacher <max.krummenacher@toradex.com>
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
Subject: [PATCH v1 0/3] arm64: dts: imx8x-colibri: add additional functionality
Date: Fri, 31 Oct 2025 13:49:40 +0100
Message-ID: <20251031125003.275033-1-max.oss.09@gmail.com>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Max Krummenacher <max.krummenacher@toradex.com>

Provide a pwm-backlight.
Provide the 32kHz Wi-Fi clock used during low-power operation.
Configure CMA from the device tree.


Max Krummenacher (1):
  arm64: dts: colibri-imx8x: Add wi-fi 32kHz clock

Philippe Schenker (2):
  arm64: dts: colibri-imx8x: Add backlight
  arm64: dts: colibri-imx8x: Add cma memory

 .../boot/dts/freescale/imx8x-colibri.dtsi     | 29 ++++++++++++++++++-
 1 file changed, 28 insertions(+), 1 deletion(-)

-- 
2.42.0


