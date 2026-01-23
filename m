Return-Path: <devicetree+bounces-259133-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wP3RM5j9c2mf0gAAu9opvQ
	(envelope-from <devicetree+bounces-259133-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 24 Jan 2026 00:00:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7077F7B54B
	for <lists+devicetree@lfdr.de>; Sat, 24 Jan 2026 00:00:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6D7BC301ECF2
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 23:00:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 838902EDD45;
	Fri, 23 Jan 2026 23:00:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eu9fJu54"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2E992BEFFB
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 23:00:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769209227; cv=none; b=Is5c+SVfSd6YQSXo4WkEiJjtyXDqpcVQ4Uk7KH1OkBykWG6sVIHnLhsMFfbG81NxRehk0HAQHwht6cckx+1YNjczFxRCIXsqOORaq74Zk8rm6K0RL5bxXrE9vVVNLkPZKdik+ZJakuC0GyBwH5w6aeDEdB4TYaTdczasQQyh8JA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769209227; c=relaxed/simple;
	bh=gMCUgoaCQ5f+J+ddeO8YUO+LQ3B1ap2I8FkG+qnup34=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=T5V7f+fcRnqUEWKc+YahqJffCmyy/sJT/DSNPFhWZ9p0Ww68+zyzAumJv2Sc3m10mNRUfdXMnbS+pXFOFV9Qerj/O8lEmhidudc7x9rD2izqUEMzVV5YFi0uKRVPWJa+YjLUvpx5GkcQocQ9HvCFdHuXlP3xJnzEqtz/80f6AbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eu9fJu54; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-47edd6111b4so31505205e9.1
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 15:00:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769209224; x=1769814024; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xuo+NZc4vF7YzlS1SzqeQ3Ig5W8Pu0fXgJ9ggSnPoxM=;
        b=eu9fJu54OJpTDO+GhDiq1GgMxCiTyqohGQ5xBH0py8yFjzjYu482EiNzaBL39Wy3pV
         zJ+I7tlub2c0Z/IQz8wAzt655hmLjPf4KDEKI/xVyAL0T59MRVaCNZx/2JHtjbCsXFgQ
         JImGzyq6U4kjpnTwo8/zJYmqG0MUBlSgD9Vrl2VgH+RhiSchMUm7bDxOmNm1t2yjvys4
         5SfzzkE4ytuTdkuObqNCzRsBCF/f0NXcYJ5yysINo3/m2KJ2K3SwHza8bv/JRzNOvFgb
         F+ULshxlQ4fzv4BtUCpjY82Q3tJuHk0nhRUJzwX3zqISI3FASjjj9VMmy9SyshtMd+KC
         SMeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769209224; x=1769814024;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xuo+NZc4vF7YzlS1SzqeQ3Ig5W8Pu0fXgJ9ggSnPoxM=;
        b=suLMiW06/cMSK8G5AaDACOQfdVZ0kZAiQYKu5wA3YcVMLMepAVYWLTO+HEsxzCiO10
         1p2bmMGn3xzIqv4Z/KYKRajtxzjq7ACU52uKwdrqb7790e+NAVV4mlbxNFsiQ/xEpk6A
         O0X/ZIJTc7qJMNrZsl9pN45d3AvI2/JE2hoj6227YZFbiVrL4WY1LfJpe1CI1i/6wgP8
         jZvm66YAUwZyxK5xIvLkcJj9E0P0gdPOuHhljVoPTI5zJE5Ac9Zc+dud/vVjTA44cTUy
         rWEmX3fq717WypvoDp05btJasdr+PRAIduRFhaACYmpXagpmk0zyZ9EjoS+JPpANCDXF
         mT8A==
X-Gm-Message-State: AOJu0YxfwC3azcukJnDs58XzMRyVD7AaaDSoslq09AHAyfZnUk82pNIm
	8Hv7yQ88WjEZCDAy+7rqEgcId+AeGfq6pLPRRYMDNivGKvhK62O2KMuL
X-Gm-Gg: AZuq6aIgNRrmGuS+YXCFdgpjKAXnFRcnbGMwIQs4bSsaDr94mDBAz+eqhzad8vdUh2I
	7j89za5xB7Zc0T48mBFPsQZPSojUj+wV62hvOA1rSGoIFVe6st0iwKs6GqsYqKO9DRYmKkvETN7
	wPwbWTaFFV+0qD+NSYjCOYJems9hu8A1j+H6HeENJEXy2Hz3VAKvGFzmOnH51HzrHr00cjcqIB3
	YHRnjR1CLSbJt4wHyZuMy1/ZbQMOhM3AKOBtJtZEgOfrPC4SUCIKBmwWpS877ePp/1Y7y1WXVzu
	HG3yP8KA35zSUhZYjbTHlgw1kejX5SC6mz+nlOh9MvgQaclNI9rzFMp7DX1nyCZPGVUaWt8Cowz
	Yk5CnUQB+Tre1IekguJmJDb2HNaav8zeacg475A81u4jChnL5Gq8VoCW/Zr900hV6BX9IU9LpJP
	9r/3rh2X5RpFz/oi1B+Cdj7rq9Y65rMmxiZ58teY/fbIkhsAL78Om4YxZEV8jhqE/R55WsWbp8O
	1TThMoWogJBj9+1kTPGylq/
X-Received: by 2002:a05:600c:34d3:b0:477:93f7:bbc5 with SMTP id 5b1f17b1804b1-48051905a38mr46895975e9.10.1769209223837;
        Fri, 23 Jan 2026 15:00:23 -0800 (PST)
Received: from iku.Home ([2a06:5906:61b:2d00:bccf:b3b1:e288:4e83])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-480470cc278sm157142665e9.12.2026.01.23.15.00.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jan 2026 15:00:22 -0800 (PST)
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
Subject: [PATCH 1/4] arm64: dts: renesas: rzt2h-n2h-evk: Add ramp delay for SD0 card regulator
Date: Fri, 23 Jan 2026 22:59:54 +0000
Message-ID: <20260123225957.1007089-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260123225957.1007089-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20260123225957.1007089-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259133-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[glider.be,gmail.com,kernel.org,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,bp.renesas.com,renesas.com];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[prabhakarcsengg@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[renesas.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 7077F7B54B
X-Rspamd-Action: no action

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Add a ramp delay of 60 uV/us to the vqmmc_sdhi0 voltage regulator to
fix UHS-I SD card detection failures.

Measurements on CN78 pin 4 showed the actual voltage ramp time to be
21.86ms when switching between 3.3V and 1.8V. A 25ms ramp delay has
been configured to provide adequate margin. The calculation is based
on the voltage delta of 1.5V (3.3V - 1.8V):
  1500000 uV / 60 uV/us = 25000 us (25ms)

Prior to this patch, UHS-I cards failed to initialize with:

  [   32.723914] mmc0: error -110 whilst initialising SD card

After this patch, UHS-I cards are properly detected on SD0:

  [   28.379122] mmc0: new UHS-I speed SDR104 SDXC card at address aaaa
  [   28.387239] mmcblk0: mmc0:aaaa SR64G 59.5 GiB

Fixes: d065453e5ee09("arm64: dts: renesas: rzt2h-rzn2h-evk: Enable SD card slot")
Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 arch/arm64/boot/dts/renesas/rzt2h-n2h-evk-common.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/renesas/rzt2h-n2h-evk-common.dtsi b/arch/arm64/boot/dts/renesas/rzt2h-n2h-evk-common.dtsi
index 510399febf29..f87c2492f414 100644
--- a/arch/arm64/boot/dts/renesas/rzt2h-n2h-evk-common.dtsi
+++ b/arch/arm64/boot/dts/renesas/rzt2h-n2h-evk-common.dtsi
@@ -53,6 +53,7 @@ vqmmc_sdhi0: regulator-vqmmc-sdhi0 {
 		regulator-max-microvolt = <3300000>;
 		gpios-states = <0>;
 		states = <3300000 0>, <1800000 1>;
+		regulator-ramp-delay = <60>;
 	};
 #endif
 
-- 
2.52.0


