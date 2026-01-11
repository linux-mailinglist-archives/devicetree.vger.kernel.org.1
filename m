Return-Path: <devicetree+bounces-253650-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BC7CCD0FC55
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 21:11:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A709F302FCC8
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 20:11:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E17AC242D7D;
	Sun, 11 Jan 2026 20:11:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="m9t+CfHK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f52.google.com (mail-yx1-f52.google.com [74.125.224.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77C9A23ED6A
	for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 20:11:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768162274; cv=none; b=hAaGgCSiuV6mdlyqVSUKGHJKP3Eet6iMiNZ0xEbCmCt5y4t/BY0Fp6V79zO4ofRjs9FaZ8gIVpnPHTiGvgK/DY5S9mDMBrZ3ElojouWb22rm838gdnsopnTqPN7IfXdq0A1u8IBOD6ha0JhV0BtmQ3XY8Fgbs6aSIl2By4tSnSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768162274; c=relaxed/simple;
	bh=J2GV62Mh5NOEPq5wC+Lyt5q3WOQoM9hKYP0lwIB3q6E=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=c5DiAW/Qa5kbe32y0RJN5NVUITxO2AVQNFbYrHxzjqKHxnqwvk+mg0kZ9zQ5WZl1RP9WjekxWa/JS6YLNfgzAHqSjP0G586tCgNfvNCaUxYcUqdK0nogxJrtzpId+R3lmFsaV/WPF7plDRfBh4/vVITJ81rhmuvOn+7k0AR/p8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=m9t+CfHK; arc=none smtp.client-ip=74.125.224.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f52.google.com with SMTP id 956f58d0204a3-6467c5acb7dso5427135d50.1
        for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 12:11:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768162272; x=1768767072; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sdyxAu691jD1kvoqPQKsR7a/fu/KpW6Tk0Vc+m/gVjo=;
        b=m9t+CfHKi4czEv1vCyrTMv+GL6bB6gA0dH328ZeEI4FbvsP4EcR+hRK75xEcvb5Ivd
         PHfJi+xlMMpmFSshGvw7rdBJ8NgDkkM4ETPOfHCXcNXvIK9rNDNZ01pjcHdeuPz3fBD1
         2CPu2fgIZJd57AnSvW7cuLYUToddIwjAqvFTJ6Py+fO5SDdWiU+oFqGTsTN+mqxLAjH3
         gtIEBaooaOVdWz0hkA9CESyiANBtli6/uO7uQ/VNtqSltHm6ICX56kXqi8h09LlH49bb
         aNp/IBovTXkDtsER8CpZsm6b+bxVo5BWZh7WY2bVDKCM6iSBPuE5iAInDbTFndIo8MBd
         vSFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768162272; x=1768767072;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=sdyxAu691jD1kvoqPQKsR7a/fu/KpW6Tk0Vc+m/gVjo=;
        b=CKVw+1HVJjEZ7uct85AC50k7sdb/WRHem9+1f2TICnVxH7uNOKBuu80Mwfu2iBRX4a
         Aph46pVOD2iRbTHGyXMS7sm8iVLnC2LjToMoaS3+IWhKJCHI5EqHvAvs3V9Z9G5ShlzK
         YkfEp65FiI/GO4GebGdZZwjurrfthS++IDjRH4coJMneZTa2uo2gwHSNR6YmXCETcTlD
         7cWDiEhwaxQZDb7azb7rthOPhh5IHNDPg2qf8q/dQBv4PX8ima2xc/IQVH+41Hu5tT5S
         9GHWJeyYodQqDGCMzqak9xvgi/H2GgD4yEOIrZce2McU9ghSMtsAVSu1w8BCr0ooyDp6
         BvMg==
X-Forwarded-Encrypted: i=1; AJvYcCWzV002AZN43PgtqPUPorkhcFJVGhNf0kgMfbsn8yMNk/i0XCo07dPSxdPmldhLFrVFOrzKDejUr0x3@vger.kernel.org
X-Gm-Message-State: AOJu0YzMfaxHYe16LINxUxjpxGamQseN3d7L47XB+YccParrMBQz/iWK
	uSR5MgoYjctHEyd0gmcwd4mxEcGT33GQzHqvlU3lMoYbS70wCyI2r1+D
X-Gm-Gg: AY/fxX6ZF9dVq6+joayOGUw6EMPSmm/toGVhxRlO5kOJzeL5aNeaNYJXoTDNdO2qsJX
	StOrsTDr73nu1UL3rSujzg/5iGoDc1wFc/hB2X1bXcklrxjPoczA/XtLQFMrWWWzgWRf7qUSdA9
	BOWH4WItp8r0cfZ0nOTr8RurSz+JQU3Qp0V7JpxzzDo7YnS2dU+k9zEClA/AnORCb4J+bA17gU8
	J3EJd4k6fgSESy3ZsAlMhcAwIcbmutSA5dIKf4EsYRC+jyVm/nLdN04DnoNMu/HNDPjQkiNEUU6
	Cr9ugcWbHxjUJqFpysSCBPdkVyir2KNOZYJMi7Q9FO3h8fBQZvWy3mUfR2lw7PsersSqlUaqS/y
	vYRBYAOy44Zm54Ze0KOY5WC+vmv1kxi4dhkDlBgbX4dAsmQzrYyEWp32zSZB5K59s4DSnp9Exfv
	qgldQ=
X-Google-Smtp-Source: AGHT+IGVAB5q8HU2wtzxDRFZ3iMEB5WzUGkbRPUYd3TtEmDhVLbDaRWN+ylZy9BkeQF2W7TNcR8BSw==
X-Received: by 2002:a05:690e:bcd:b0:63f:aef7:d01b with SMTP id 956f58d0204a3-64716b33bbcmr13406535d50.8.1768162272397;
        Sun, 11 Jan 2026 12:11:12 -0800 (PST)
Received: from toolbx ([2600:1700:220:59e0::914])
        by smtp.googlemail.com with ESMTPSA id 00721157ae682-790aa5762f6sm62175717b3.15.2026.01.11.12.11.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Jan 2026 12:11:12 -0800 (PST)
From: Anirudh Srinivasan <anirudhsriniv@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: anirudhsriniv@gmail.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: arm: aspeed: Add Asus IPMI card
Date: Sun, 11 Jan 2026 14:10:31 -0600
Message-ID: <20260111201040.162880-2-anirudhsriniv@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260111201040.162880-1-anirudhsriniv@gmail.com>
References: <20260111201040.162880-1-anirudhsriniv@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document the new comptaibles for Asus IPMI card

Signed-off-by: Anirudh Srinivasan <anirudhsriniv@gmail.com>
---
 Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
index 9298c1a75dd1..b2d20341f8eb 100644
--- a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
+++ b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
@@ -79,6 +79,7 @@ properties:
               - ampere,mtmitchell-bmc
               - aspeed,ast2600-evb
               - aspeed,ast2600-evb-a1
+              - asus,ipmi-card-bmc
               - asus,x4tf-bmc
               - facebook,bletchley-bmc
               - facebook,catalina-bmc
-- 
2.52.0


