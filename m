Return-Path: <devicetree+bounces-260187-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uNAzNDqZeWkNxwEAu9opvQ
	(envelope-from <devicetree+bounces-260187-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 06:06:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id CEC309D21F
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 06:06:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 625283005323
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 05:05:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16AD03203AB;
	Wed, 28 Jan 2026 05:05:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BD+ly9E7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA20F29E114
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 05:05:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769576758; cv=none; b=MBexN5GBdJw1afbWJxHX+OzSuoQuFGggBEyf7ecla1SFr2M1KKaNdpCkA3goggj3yOEmSjQx1AWuJpAG/Eqa7CRJl3GHX1w+VLFAbBlOIZx3Wm8vWCdZELdqD3ePKzcELPwzBhc8R4rqIWDVJtXHCmJQaEKyVt2aM48gIPqrC64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769576758; c=relaxed/simple;
	bh=Lzp1fwqvRTTLSnLUD4tRHtiiMaXExdhwpaE3ZrpzMSQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=i8DTcpYqfTumlU2RTkFUWx0bQRUOj+ZDLbjxjRN1KlyZlJ6RFQgKWdZG5/KorvUDTlci4yEaWG/h/fWLOb4pxbL/vqnxWgeNPHXh/J2UchU2czrmTMuJOLal4EW3iEvUgypbE3GRQpQsD0Zzy7AC1t0VjGereVIvttoZVc98bkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BD+ly9E7; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-2a79998d35aso41314915ad.0
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 21:05:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769576756; x=1770181556; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pftsMK2Bn1JCcMxWOi9xdDs4s//i9MppnFiwPUF/boY=;
        b=BD+ly9E7avDEq008tDOGp3O54sDY106npPmvSnbEcO0oDVlYfxuTPOiPNgIpmE3jxQ
         VuUsC8ctwSvTNEqbXh2zGQg1+dEfwxteHcbnYJE6qkjZ7ltkZlzDdZpfkFgWDjRtRjF3
         6qNQ+Z9nS+/RGONLf5e1dcCqQ8bORLSnKrcIW8cmrxvwd2MYQyeoqkkn/bNQ5mPMqsFD
         /C5+32LjCmwohkJagb8p+PBKp+c56fyNv1gg101HeKp8Uf21j7SzSZXt3GVAoVBWceoE
         6ORXifE8G2TYaRKsBngz4xryC5qX9suAI7E29c05JTyEc4nKNiWDl3gw7lmL+zCCJLOd
         4Jvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769576756; x=1770181556;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=pftsMK2Bn1JCcMxWOi9xdDs4s//i9MppnFiwPUF/boY=;
        b=mWbTYSrH3K3ZoX2WW3G4vwpjnQNZDqLHVs46mz0GMqPiERMW8yYNdE1CFSeQFdbeIe
         sUibJNG2SkKE3gkLvcL/I5n0MbwonHtGkXXKdzqmYylv+ySVxIYwTnUnYwoYoh5wvEdF
         zRGzX4EmTJdZ+ve9gTWBlaTDei+lK8wcO9yCwPLz7rn/39dF2r9R3/Ns6o6D7vN34UeB
         5US6BsMTm3XLPyFxOfpvRaT8EuURdPMgwoYHFX0a/lTsnDARMp5UO1ZqbRZ6Ws+3Eeea
         cXpQi5R37dXY2pKn258aIe+N6gUadH8CeKA2ttEDAfotyDyCE6sGU25SxxvpVgJGA6Te
         Nq3w==
X-Forwarded-Encrypted: i=1; AJvYcCW6v5umX7DBYVzMw6l9QrhFHr1EXKg1Ep2EqBYGAyLvCk6BXxSm+Ep2euUQ6nA2wz7CgSrq5pjvIW9Y@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1PhUCJIlg3nxGDOWj3tEVIMzGl12pG+gbPaWOdu1amt1PT3vw
	eQZlNK2LjERVRMj4Zo1ctt3BhCf31iaqWLRujWnJGsRb1h+dvTjm2QaSFDOmmA==
X-Gm-Gg: AZuq6aJDzWTu09EqW5u/cS6ZyE1LNvsIzPWicK/H+K5baceW+VGwm6+mKm4mjotIu97
	buB6I4fZlw3h8b/y0lsC5pqFoSCQdZeeblUaQ/IGlAuCBmtlBlnQE1H0Ip1PgHmsWDWir6pzuRQ
	2v5CPccsTOmIs8cvOLOyFcjN7pvHPrS6l9CgNLpjzZjEP9H1nRRG0fAmcHJVcYtXeEPm5BFcKSt
	Y1MXj6/AXWBeWfdAH9F2Ca9zyNq5/XEdh77Td5Ji5RrTbM8pThAgVHZSQrzdcTwHA+3HZKp1SGy
	Pl2LPiVqql7NT6DCfN59xHFgnrHGMZ/d6/mXFUUblnJYmZO1Dk2wbZ9fRk8cltkT4cs2o4UyXMD
	7tQtfjuJFs/Yj72xSLEhtvBHE2AKkSKsIt61TS3J/DjNbBhYeH6ZulfpxBHH5ETg6/SHrZA5Hf7
	tB5ICQO3e71Xwg+BVBs6osuq/Kx147euaU2dErvVQTalUwG4iI3TZZidM=
X-Received: by 2002:a17:902:d54d:b0:29f:2944:9774 with SMTP id d9443c01a7336-2a870dc6ebfmr39393185ad.33.1769576755960;
        Tue, 27 Jan 2026 21:05:55 -0800 (PST)
Received: from wig-Precision-3660.. (125-227-154-99.hinet-ip.hinet.net. [125.227.154.99])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b3ee952sm9736025ad.14.2026.01.27.21.05.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 21:05:55 -0800 (PST)
From: Wig Cheng <onlywig@gmail.com>
To: shawnguo@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	zaq14760@gmail.com,
	Wig Cheng <onlywig@gmail.com>
Subject: [PATCH v2 0/1] arm64: dts: freescale: add pixpaper display overlay for i.MX93 FRDM
Date: Wed, 28 Jan 2026 13:05:48 +0800
Message-ID: <20260128050549.3337279-1-onlywig@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260127025740.2601841-1-onlywig@gmail.com>
References: <20260127025740.2601841-1-onlywig@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[pengutronix.de,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-260187-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[onlywig@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: CEC309D21F
X-Rspamd-Action: no action

Changes in v2:
  - Fix Makefile alphabetical ordering
  - Move vendor property before status in device tree
  - Simplify commit message as suggested by reviewer

Wig Cheng (1):
  arm64: dts: freescale: add pixpaper display overlay for i.MX93 FRDM

 arch/arm64/boot/dts/freescale/Makefile        |  4 ++
 .../freescale/imx93-11x11-frdm-pixpaper.dtso  | 51 +++++++++++++++++++
 2 files changed, 55 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx93-11x11-frdm-pixpaper.dtso

-- 
2.43.0


