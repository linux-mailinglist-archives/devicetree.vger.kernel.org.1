Return-Path: <devicetree+bounces-218236-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E106AB7E033
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 14:39:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 956D91C011C3
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 07:52:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A536F2E266C;
	Wed, 17 Sep 2025 07:52:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nHAbcxfZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C0F76ADD
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 07:52:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758095522; cv=none; b=hm5xtgThwz0Iru7fw4PwPQ8O0Zx3xWF9eBR5Hxkx6ckWbnPHsf+tcuYsjMlOv1LOg113RlK82fuq4aekfPkVZoevlakmMJPwmr4dINX2HSB5aIYBLyB8Wc145bWq4vKSZoJLkjFiN54AulnIWNIdamQ002etgr4+A8k97xq1/zc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758095522; c=relaxed/simple;
	bh=lNWmx7yIKu8Ud39Sxzz7MusXBYyYgUPRyESGPdOa9Do=;
	h=From:To:Subject:Date:Message-ID:MIME-Version; b=OVbEtT69MM40+y19oEqjndiTePlwDZv/ImThF2QOX0YlAYVKyoI4CBwCYt4Mu1qyKASsq37UoO4/Nrvob2e8Vn1RPQTSM47Bc8d/OO/whizRgJRR9zNWnAApdig/nUhO+lKc/oVwdOx6nfrtlxNXG7mGZrcJKIBkgt39Dgj9dRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nHAbcxfZ; arc=none smtp.client-ip=209.85.216.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f54.google.com with SMTP id 98e67ed59e1d1-32e2794c97eso2710061a91.1
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 00:52:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758095520; x=1758700320; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=abYjL49SciLzOaOA35f0uMdKGEjHBbwqKbxX7MVH+24=;
        b=nHAbcxfZJoj8RmLGGjg8oQYFh7UMV1QO8HE31vRsNm1DENwpmxTaChTbMTnPBZ0G58
         CtDg8izLWptVKtGwK/ohsPtZRhm/NrkcWT1YpSTT24oZ5UqqndAqxoZMrO0xp1OcIcqr
         nzJcYb0+Kd8o/DJFEzXdyBvU+bGLG+qjO8uU4buboEhp8Y0ibOxjiKLoVtgKX7honNtc
         g/+rki6ZjZTMLiz8lGVa2UzqImPa1YaSxEARnYt6ro3D87xXDPByX3CjB5HgBcVxsXkj
         W7NKkTVNa7arqbO+BmQYz0KUR6JXqbVblXivqe4fJfRJi1IpEEZptRIfzQcmmaS2OWjn
         +cGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758095520; x=1758700320;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=abYjL49SciLzOaOA35f0uMdKGEjHBbwqKbxX7MVH+24=;
        b=s9Wq6h7iX8WGGpZq09U2LYwu1j0ME2pv0B2/rjw5HCRLt+vMJ/nIo+uQnWIXOA1e/H
         YzdGONgHrPR/NWuUD8cMUVZBbentbY2u3DOMuy8ltp/nL9DK1lhVUp3ZtiyZEIK3iaJX
         2WhzeNJpufLwCPug5xu555cPKo67J1oyS9+gdIUpuq3+W4ewufmPQd2wZWVrkeYQ1Um5
         t2B2j4fMmBBPaG6/um7aT2+OLqf70oK4sebjlJhRSoax2Lojmf+NzeROlYPXA9aAflIC
         edV5DyyiQGP8Lss+OHZ/7zFTnJBo9bgKvX1m6O0TnPgYmj6+0UMCmgoC4t3Y1IyBqRkD
         VxDQ==
X-Forwarded-Encrypted: i=1; AJvYcCUhzM+urMPMx57mb+VLnyGRTRzr9fGDHz+zpXXwAYCj0hkdK6ocuroJYAz9Lj7EH99hxd4k6t9Pmbb1@vger.kernel.org
X-Gm-Message-State: AOJu0YySbQSI+t2mcq2remqdKYR+UFcrUFi2LwhjhKL4r78LvPVP2d/P
	5WAy20RIt81u7medp0S9TVbebnG1dHNk5qhv43vvJkRziqH5l/LXvgMF
X-Gm-Gg: ASbGnctcUdam+DK3XcNI75NrhWlWHvEgbyYSkg2Goit19eNorLQMtl++etB1tax+2VS
	VSDleguYYGMHxhrhdMR9oOuorq3JGWZDhgNh/wdkTSDibDKQ2bVISgd0Nb3pk1E2yDQ8Ejn3X1T
	E3yvEippHP8KGwSRRsdlnkc+YMVApH8273w82UhX/dhzsCFmgrF3CpAgX1rHbk+2qUjf+MadP2Y
	vYst5IvqTUgDr9M3I39kaOE38j5PKytHIs5E2MIM+qYjFW5LIoqFY+rYhDPZ9Zt2lwAzrmgrzsn
	x4TrgsAhb36E9huZh4LN7xIc0vhSBjp+a8ckQbKbANsfEsVRclIukiBP7NtbW0mCgdnbt1uWD7w
	IWopev3Lc2CzEzEfXJvyiz7jIlbr+jflJSdnE
X-Google-Smtp-Source: AGHT+IHUW/wTOhIs1KEMt39SwXanfpFrThAcQacQ2rNisK/1xxjIdZlvOMm825vyXwIFErVxjOFrJQ==
X-Received: by 2002:a17:90b:2c8c:b0:324:e96a:2ada with SMTP id 98e67ed59e1d1-32ee3f2ffefmr1335606a91.21.1758095520454;
        Wed, 17 Sep 2025 00:52:00 -0700 (PDT)
Received: from meta-device ([2001:b400:e359:6d3b:3881:d7b4:5e6b:c23a])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b54f6d51fdbsm253168a12.26.2025.09.17.00.51.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Sep 2025 00:52:00 -0700 (PDT)
From: Kevin Tung <kevin.tung.openbmc@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 1/2] dt-bindings: arm: aspeed: add Meta Yosemite5 board
Date: Wed, 17 Sep 2025 15:51:56 +0800
Message-ID: <20250917075156.4043936-1-kevin.tung.openbmc@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document the new compatibles used on Meta Yosemite5.

Signed-off-by: Kevin Tung <kevin.tung.openbmc@gmail.com>
---
 Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
index 456dbf7b5ec8..6f2b12f96bd6 100644
--- a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
+++ b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
@@ -89,6 +89,7 @@ properties:
               - facebook,minerva-cmc
               - facebook,santabarbara-bmc
               - facebook,yosemite4-bmc
+              - facebook,yosemite5-bmc
               - ibm,blueridge-bmc
               - ibm,everest-bmc
               - ibm,fuji-bmc
-- 
2.47.1


