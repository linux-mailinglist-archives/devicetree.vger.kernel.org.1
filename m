Return-Path: <devicetree+bounces-268667-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qBr8Ez4KoGnefQQAu9opvQ
	(envelope-from <devicetree+bounces-268667-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 09:54:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A74831A2F3C
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 09:54:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E50B030AA018
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 08:49:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0B3F38B7D5;
	Thu, 26 Feb 2026 08:49:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PQgwxSII"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28921395DB1
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 08:48:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772095741; cv=none; b=m/0UH/PYSWT3fDz5W4SA+LvVM86iGBk0/a8gQehqQuieD2Z3Yp0vi7EPhQFpKrQ/utxS5DtUq+8nJK/7c2vJnCi6Bt8xURwU2tI4rrCTlCKkmwyuL594xkb6SIPEyu19bc7CkTJ6QihWuSpYcUvw/Dz2WKhKsN0s7PJsI/UCl/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772095741; c=relaxed/simple;
	bh=ajmqkuqn821wRP8biL6ZENRUK6iDiFbyJK2m1b+fh4s=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=TVZZ9w8NgNehNikYTZrK683jdtnshv3gqzQaEKjlzCVSlJPWEykVtEulJlQb0oTdhfvdACSR4vBcrAvS80frIZ5SN86LygJc1kvt1OE8Ptii3QZIB4yVL3hAjSWwX1OjPze3L5LE6FW4J7VXQf9QBkJpTcLBYo9U3pYgO2Hhkws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PQgwxSII; arc=none smtp.client-ip=209.85.210.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-824a9348603so241743b3a.2
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 00:48:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772095738; x=1772700538; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wTIDqyg2XC0iHi1WCfQ6EE8S6g1mAh63E4xVMCnsuto=;
        b=PQgwxSII08fL7sEtZ2iz3m6s1ZKpGFj743XU/Ubkvow/KQb90DuqFjLSjfAJhcSLw0
         cwX7bE6+XfUFB0Ue8Mt2NM79UkbloXXdjF9NQRZ5cyJOS5U3fKN1zEoIOSA5gwHJciJl
         xHI2lWhWPiQWyyGTWi+YHSGE6OAJ9LEz8YNdRmlltKp3qyyq7M/NwifVKMXeR73W2UdO
         Vh8vtOTZIs0Q0EkUar/6irG9XgtUMr87xwPvrGh7E48+/9ceQ33gNi27n7AFNvsHFuy0
         c4gPN/xGvt+8AUXGdHlrTmBv95AmRZhy8RNO+sVhI9hUSVszgeDz4P3IJvyF58UOLjf1
         4Fnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772095738; x=1772700538;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wTIDqyg2XC0iHi1WCfQ6EE8S6g1mAh63E4xVMCnsuto=;
        b=KC7rDLFCqVpVpqXAWQOUiQMEidXIuoY/V7mETZizLrkXNQ4ASUhlAUExVd2Wsblgcx
         dvHXmmOHcgwiFsLAf+aQQ/Ym4KRF81B9sueH0WdJre9+o8RD/4z4vSMUDclDJ4WaWNbY
         mmxW8q+8fXZntyIMBXah1U2GgHlLSZWGiPQ+H8C+BCFU+B5+4Z717we9sAgbnjPrqkAQ
         bSvkJ0XoWeRpFGibPWiLPgSymQpuh9S3I1dIHpPik+h4bTf8TSJy3Ac7Sq5CQ99cPlP2
         A91d8NEXxGHWcvdIzhYEV537+iZUWgurwJMnLFIw2yCfc1V8O1b3DJufxaB96GXJ6hO2
         lXrw==
X-Gm-Message-State: AOJu0YzP9NZxn0xNroVOS4TZ1vwvUet1h3v92lErQZKGkdVFb3pXy0+d
	K615CcB6QKeFn4Gkkvs6bz6gErM3ZuF20pMS9VsAxHHUVA4G4pZcYhuGvF8UkU9w6ns=
X-Gm-Gg: ATEYQzyEATeMP5y7CHJG1j2pYKFiQc/It3FZQAEcWL8zFCLsfngTKBXEhvPGGlBAuBF
	qd5CjLtvxVli7v1Xdf3Qh6cSwy0w0RALobaCYCcnogEYfgGZEgreEu9SoMMZ64n4o6hL4prAgmO
	VH1+stJlQw6bVvQIYfTGBXoazdweXCFgPso5QkhKzxB85hBMmz01xdtGWegOK0xnmbloZsCQ0cn
	03qbLdUCo8KlsJsnBz0sa0Aw2jqir+Kg47TjI7kZzabRwAjXNjcxeyuebjQSXV7mgNzeHCsUTRo
	7M3hwyW/CSNnFQByxjiUqSrj9TVtWfn6wJIwxiAZLnoLR6ZTvVHHiYmDwHjAWb7FwmtqLYatHjN
	Ggfh+ekiveLVMgqcH756hfNgvLtQY7uz8S2h7r7j9N8pkONHQO9Fq3FCvwqJn0wNZVvVgpDuOIa
	l/XOtaAg3kHUr0HcRubD6NqUHUL1LxgFy4nAE8
X-Received: by 2002:a05:6a20:9e4d:b0:366:581e:19f6 with SMTP id adf61e73a8af0-39545ed4a2amr17383051637.23.1772095737809;
        Thu, 26 Feb 2026 00:48:57 -0800 (PST)
Received: from arch.localdomain ([117.147.91.218])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c70fa848471sm1342441a12.30.2026.02.26.00.48.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 00:48:57 -0800 (PST)
From: Jun Yan <jerrysteve1101@gmail.com>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	wens@kernel.org,
	jernej.skrabec@gmail.com,
	samuel@sholland.org,
	mripard@kernel.org,
	Jun Yan <jerrysteve1101@gmail.com>
Subject: [PATCH 0/3] board: sunxi: Add TaiqiCat A01
Date: Thu, 26 Feb 2026 16:48:44 +0800
Message-ID: <20260226084850.417731-1-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,sholland.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268667-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jerrysteve1101@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A74831A2F3C
X-Rspamd-Action: no action

This series adds support for the TaiqiCat (TQC) A01 — 
a set-top box based on the Allwinner H6 SoC. 
Originally released by UQsoft as a blockchain terminal, 
the device has been discontinued and is no longer officially
supported.
  
  https://web.archive.org/web/20190409213228/https://tq.ultrapower.com.cn/product.html

Jun Yan (3):
  dt-bindings: vendor-prefixes: Add Beijing UQ Interactive Co.,Ltd.
  dt-bindings: arm: sunxi: Add TaiqiCat (TQC) A01
  arm64: dts: allwinner: h6: Add TaiqiCat (TQC) A01 support

 .../devicetree/bindings/arm/sunxi.yaml        |   5 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/allwinner/Makefile        |   1 +
 .../dts/allwinner/sun50i-h6-taiqicat-a01.dts  | 361 ++++++++++++++++++
 4 files changed, 369 insertions(+)
 create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h6-taiqicat-a01.dts

-- 
2.53.0


