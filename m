Return-Path: <devicetree+bounces-251330-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 99EB3CF1A23
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 03:34:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3FA14300215D
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 02:33:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F987316189;
	Mon,  5 Jan 2026 02:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=realtek.com header.i=@realtek.com header.b="DFzzrRUQ"
X-Original-To: devicetree@vger.kernel.org
Received: from rtits2.realtek.com.tw (rtits2.realtek.com [211.75.126.72])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AA9230F541;
	Mon,  5 Jan 2026 02:33:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=211.75.126.72
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767580434; cv=none; b=kC+qO13OZtL+Kj2CsdfEIMyva9Yu+DTRF66feIV6dRRZg4UvKK2B1LVpQaVCFgj2RKFqk/pDX150Dpogmy6n1NHMBkfJe/tAQ/8F1OUeBWP/okGrDYkB4h+x/vbmrGHOWxkxvnG2fVnx69CVoNFDSY1o26YKGv/2b/59GU94OgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767580434; c=relaxed/simple;
	bh=Y5/bn7VFLTPKVaHoanyjExDYS1J5nNKjCLzRIm69R90=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=DTZDx2tANnpYhh+mpSmZXZZk66Wa3XPyPVv3yahwazlSt8mReaYbqaBS+QU5NcCal9RtCR1vYozQRjGB1rhwjKCMjaOZf9eoR+ygW5FbVO2x5GtrvsQH57jdVv3FAPzVsJEMVid+LzYlp0A/3/lSWKLMpneuNEz69susuKJSuCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=realtek.com; spf=pass smtp.mailfrom=realtek.com; dkim=pass (2048-bit key) header.d=realtek.com header.i=@realtek.com header.b=DFzzrRUQ; arc=none smtp.client-ip=211.75.126.72
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=realtek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=realtek.com
X-SpamFilter-By: ArmorX SpamTrap 5.80 with qID 6052UpUmA1923969, This message is accepted by code: ctloc85258
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=realtek.com; s=dkim;
	t=1767580251; bh=Y5/bn7VFLTPKVaHoanyjExDYS1J5nNKjCLzRIm69R90=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Transfer-Encoding:Content-Type;
	b=DFzzrRUQIMbZfynfgMuGy8sSG9luT5oPyW2+9fwOS7EN+1WVww870cw2T3bDtnrkD
	 VtQAHdlV/KndhrIeWqM8D9WrHQw0yEtgNFWJFJnRM7aYXM9xqOJSp9x8x2s5CBJiC6
	 CJfJ2pumYYTjYfpLh6eBwhvRcw4ID5VqdwBbYE/SeX6/jSTbYalPmIn1x0BymcSxgt
	 IlSshTJzpdhOqBkxcio/xGyEKEeOCmzwkfUBZOt0z+Z//xjnty79fEdyZORjbwpLHp
	 YN/2VKL2W8NZh9qjmrOsM31BaQ04swNIdd8znxLsYlg/DFy/yjzY0G8ItCSHiQ6Fs/
	 A8ug9GiYrrTrw==
Received: from mail.realtek.com (rtkexhmbs02.realtek.com.tw[172.21.6.41])
	by rtits2.realtek.com.tw (8.15.2/3.21/5.94) with ESMTPS id 6052UpUmA1923969
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 5 Jan 2026 10:30:51 +0800
Received: from RTKEXHMBS04.realtek.com.tw (10.21.1.54) by
 RTKEXHMBS02.realtek.com.tw (172.21.6.41) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.10; Mon, 5 Jan 2026 10:30:50 +0800
Received: from cn1dhc-k02 (172.21.252.101) by RTKEXHMBS04.realtek.com.tw
 (10.21.1.54) with Microsoft SMTP Server id 15.2.1748.10 via Frontend
 Transport; Mon, 5 Jan 2026 10:30:50 +0800
From: Yu-Chun Lin <eleanor.lin@realtek.com>
To: <eleanor.lin@realtek.com>
CC: <afaerber@suse.de>, <conor+dt@kernel.org>, <cy.huang@realtek.com>,
        <devicetree@vger.kernel.org>, <james.tai@realtek.com>,
        <krzk+dt@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>,
        <linux-realtek-soc@lists.infradead.org>, <robh@kernel.org>,
        <stanley_chang@realtek.com>
Subject: Re: [PATCH v3 0/2 RESEND] arm64: dts: Add support for Kent SoC family
Date: Mon, 5 Jan 2026 10:30:50 +0800
Message-ID: <20260105023050.26864-1-eleanor.lin@realtek.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20251215103157.27039-1-eleanor.lin@realtek.com>
References: <20251215103157.27039-1-eleanor.lin@realtek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Hi all,

Just checking if there are any comments on this? Thanks.

Best regards,
Yu-Chun

