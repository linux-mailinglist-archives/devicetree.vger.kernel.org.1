Return-Path: <devicetree+bounces-257401-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CUPEI91ucGktYAAAu9opvQ
	(envelope-from <devicetree+bounces-257401-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 07:14:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B256751F00
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 07:14:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E960380C695
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 12:56:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2AC26436353;
	Tue, 20 Jan 2026 12:52:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="g/k3xkz2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f68.google.com (mail-ej1-f68.google.com [209.85.218.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCF404218AD
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 12:52:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768913562; cv=none; b=Sms002pz51uZbcSqCCw9OdvG6KzzSEXnbk/AoFK0K0mdL3iVS9nPOfI5YWxmYMG2iTRCDPJR+fUbd6vxLObiceadnMkZLUhz4Mo5N2pjlCWOliz0c0t3VikmuxMs2/ve88Z2YW1VmCSbj5ut4zpFgSA444I0cKhOGFai6Cu0BT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768913562; c=relaxed/simple;
	bh=NUP4S2e0rAEvCxRQmN0e8hqzkSj8E4T0Gk8mFGz1ZCk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=t95uqxHVHchYctmq4KTYOIbicIdDLc2KyG0O0uuD35KeAn3ILUVgcgANYchmj3WADlK7DS2h+2W5CPFXt4VGEEewc5oXuwyIHBcmPPBO8ZER+XRFRuUXXb7mhTH9Bhs0dCts5mbUDGzhXDNUneUeD8jVrvXgoHyUXvq9M0zkk1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=g/k3xkz2; arc=none smtp.client-ip=209.85.218.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f68.google.com with SMTP id a640c23a62f3a-b87cc82fd85so376501366b.2
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 04:52:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768913558; x=1769518358; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Jk5TQzTIH9mekPdLOtiL2KHB+fOdZ2v2/AkjbsDkvD0=;
        b=g/k3xkz21zdqbGMEjhC+TMcYHBNw/WBUag5pNZzXcr0NO3H/b146Zo7Ex4tNJ/9giB
         hvgxmFE1o7xAi9F6/IR/YHPffqooIyzY9Qts82yfGyJDvX/fu3bg4w+Wrz6mwMTUKoJ2
         T8Hr0wbSfkSzAvG3/d4SHOfjfDLmlyEf0p7HBaXRKQXtDziMjjUCU6oJNKvdNb5rVxFP
         SSyZ7k/gHl0MNDKKH2Xre4m0vYEH+BalztQylEFV9ZzS6PEPmSWx9U0GbaNyFlRCx4i+
         0MyJwy9+38YfTpXQeOPHhiNSYLmLJymvNZowtIzyjjhKJxCra3REt4kjkbdy15fMqDzn
         EbWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768913558; x=1769518358;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Jk5TQzTIH9mekPdLOtiL2KHB+fOdZ2v2/AkjbsDkvD0=;
        b=ArtYBiHGaaCgCVyEyQuFXiiWCEVrd9giuHSTkf1nuadsLvH3Bnuaf3Uza3eigCg9IE
         TuRKgqFUFSJkmT5bTgICij87wn3+C+pyWqH7gSsTXRbUmaF0I6AdTPStjuX7BPtyHxxx
         j2OzbfzY2qm2B08po687fO957sGImjJo/mdW6RU9ALHjvwcvYeCviK1Hw644UKnVtaUJ
         6i8TjiWbnZ09pbVZZQ92CXQsQR7SCadhoJBnZ81sMVc0h/wxT023e+Aonyx+P2JE6Bi1
         he0jGiptRxbYDW3LHFHWiPymUDi5ZMijTTRm44e0JMKCLRUFqJJ/TCy8DQAO/+pzF3om
         4qew==
X-Forwarded-Encrypted: i=1; AJvYcCX2C50y6nfr3G7m6z5aMkU/36Yv0aimlIYxtpure1wMGbGBZipEsN4DnZnXb2ImzeftSO0GfvnpAWFw@vger.kernel.org
X-Gm-Message-State: AOJu0YzaPTIifaLm+7vQbGOUU+d1V23vaY2nma/lywn8Mz892RhpaMsV
	nkyQ4zKfrFYM4ZP2z8Z7pu3UXVdZrFdDCVWXSoMMUijJeh9swRqFIc83
X-Gm-Gg: AZuq6aJlhnN/Hz1RXXuDmR0A/lVW5f+kEL0mcK9Lhwi/0wmx/HmRl8YcxRjbQdSKobK
	jGHqLi7bRS8sgAh0tCtgE1OiYXE87NA7MJ54wdju0XW4NPSCkJbwqJ1X0Zyq+wYrSwbIL5TRMD/
	x6xAOCE0OdnMu9WMUWXU+mMh+c+ELnB1kpc8sQn/Pp84GoApKLnyN4sdCNcXJC1J8L35usfDdRp
	JQiKRK8XIY0+4tVVSxseiHNqb61fTC1aYrgRPHrPwizJtrjyJlbpA1qxqiX4SR4d4Dkz2o7bSJ9
	lfEje1xf46ViR0ymGFzPG78L+DpfIOYTOdPB+IunmM+UTqG1sfMPtFHftfp1BHdlul7u4PI8sof
	eDl2GlotJor5MMw4Ie+L7mk/7s+1Fukd+9M/uU5/YQp++aQzh8NARgN542VFDVmi6TVTLVAm+6E
	7HAE3keOWn3CxIEyIT80oMbGDEMRuQXF2Bh1T/exnVNJ2n9w==
X-Received: by 2002:a17:907:3c87:b0:b87:701d:342d with SMTP id a640c23a62f3a-b879690c555mr1312760866b.21.1768913557686;
        Tue, 20 Jan 2026 04:52:37 -0800 (PST)
Received: from localhost.localdomain ([2a00:23c4:a758:8a01:c8c7:2ef6:8ac5:5556])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b87959ca32esm1420626066b.41.2026.01.20.04.52.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 04:52:37 -0800 (PST)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH 04/12] dt-bindings: soc: renesas: Document RZ/G3L SMARC SoM and Carrier-II EVK
Date: Tue, 20 Jan 2026 12:52:15 +0000
Message-ID: <20260120125232.349708-5-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260120125232.349708-1-biju.das.jz@bp.renesas.com>
References: <20260120125232.349708-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[bp.renesas.com,vger.kernel.org,gmail.com];
	TO_DN_SOME(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	FREEMAIL_TO(0.00)[glider.be,gmail.com,kernel.org];
	TAGGED_FROM(0.00)[bounces-257401-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[renesas.com:email,dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo,bp.renesas.com:mid]
X-Rspamd-Queue-Id: B256751F00
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Biju Das <biju.das.jz@bp.renesas.com>

Document the Renesas RZ/G3L SMARC Carrier-II EVK board which is based on
the Renesas RZ/G3L SMARC SoM. The RZ/G3L SMARC Carrier-II EVK consists of
an RZ/G3L SoM module and a SMARC Carrier-II carrier board. The SoM module
sits on top of the carrier board.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
 Documentation/devicetree/bindings/soc/renesas/renesas.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/renesas/renesas.yaml b/Documentation/devicetree/bindings/soc/renesas/renesas.yaml
index be61a71c7305..201d15dd30f2 100644
--- a/Documentation/devicetree/bindings/soc/renesas/renesas.yaml
+++ b/Documentation/devicetree/bindings/soc/renesas/renesas.yaml
@@ -550,6 +550,10 @@ properties:
 
       - description: RZ/G3L (R9A08G046)
         items:
+          - enum:
+              - renesas,smarc2-evk # RZ SMARC Carrier-II EVK
+          - enum:
+              - renesas,rzg3l-smarcm # RZ/G3L SMARC Module (SoM)
           - enum:
               - renesas,r9a08g046l26 # Dual Cortex-A55 + Cortex-M33 (14mm LFBGA)
               - renesas,r9a08g046l28 # Dual Cortex-A55 + Cortex-M33 (17mm LFBGA)
-- 
2.43.0


