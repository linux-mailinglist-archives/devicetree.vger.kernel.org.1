Return-Path: <devicetree+bounces-163322-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 61D7EA7C640
	for <lists+devicetree@lfdr.de>; Sat,  5 Apr 2025 00:21:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3E5653BC2F3
	for <lists+devicetree@lfdr.de>; Fri,  4 Apr 2025 22:20:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3079A21A42D;
	Fri,  4 Apr 2025 22:21:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="KBpo7ydV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com [209.85.167.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 071AA1917CD
	for <devicetree@vger.kernel.org>; Fri,  4 Apr 2025 22:21:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743805265; cv=none; b=OkkDbyl+vq/cgM9eE/GHfuUGU7xqLVvdNtXdvSvExq5EkoO/lUCCx/7sFny4Bspg2LPfoI+Rb3As/srnk/Wk9rMKW3bPB/qlmSaSUpKHsZPmG2I3esy2I3Y7dDowKhzy1SuOSBfMkbkEC0wqP3NjafWp8gjmoUJ3WIf5mYwgINw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743805265; c=relaxed/simple;
	bh=NxtcbEcGlEkVU924eiTFpDDLstHKQpVQlhP7SfPMst4=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=rW9F7ptXGDANPPToCCbBKi3PhO3zHOzpMq3Sb6bKQoI3n0zIt/42vnBCP5bmLBIG11QzZczefEQ+1HElKVNl3SOcpNy34YO7/awGPh5cXFDwnvAfJtqXJOFKYtYNzyjz5+YBkOpDwEY8kOP2Jb/7WUuIwTF1BmPx9c7ED3LFrMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=KBpo7ydV; arc=none smtp.client-ip=209.85.167.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-oi1-f180.google.com with SMTP id 5614622812f47-3f8ae3ed8adso1304226b6e.3
        for <devicetree@vger.kernel.org>; Fri, 04 Apr 2025 15:21:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1743805262; x=1744410062; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=TmNq3915xWh1Z+2OaQ5mFBZKfmTh6ktynQVWZ1k8DJo=;
        b=KBpo7ydV+ruElWpzVwTk1Fgpnq/u4u1yrVuwYzfvnoVDGpkuEBggyzCFCTPg783eet
         Wvulu1fN/bzvZSLHRMZIVLaokKGF9IT6pBN/6hLBcs7L6Cg0ZLf2Gkp2gR6QA9DKA36+
         xqM4tMFZK8LIh5HoXX1VXzliVG56noG3Wj9+o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743805262; x=1744410062;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TmNq3915xWh1Z+2OaQ5mFBZKfmTh6ktynQVWZ1k8DJo=;
        b=BD1Vrjdxp8d5y0pKc95TcNry3UlxT8QwG6H8B5kyvC5D2tz0cqjMWed+7V1GmpvfF8
         bLwawyrCAZzt0hmMw3FcV9m0Shx4/mNQiEuEghjWn+tT0vTbG708DhQgcwlQZG2P8AmT
         cv1trohVLssRCCEni4oEYJgQveeV8K9n9xbuQUAD3nO0T62B09hcDfkkl4bQr1RRSo98
         RMTUyAItymtL8hAGacefO4k8lHeJ+GVRRbMoDU6Mvh4ff4KqCR2/QjG2x0AoqTye3ffP
         QIRCd2jr8TIMMTe12QXurgZl3GhNLvIjBO5SI7gre0BRzoSjR32WqfwXaMnEv4rX22zB
         7Mxw==
X-Gm-Message-State: AOJu0YzERRXTHVlI+pwrRl5fpsJAi8pHCeI3JTy4PufeGu8dR7bDHwWT
	rggsHMAw/M7v1vBEvShMik2jspw8Fl1QVrN01QFH+2H1PqrXP0RJ7u8QFXweQBHE3uD15JLCtiu
	axZJZ8fKfVK8cWjY3Yng8Qsakbl77C294R4nt7w0Hr8NLlNGa4w/Daym9w3uITJEDPCXfy864hA
	X1tV/kdld9zFCn+g/CFU6H3e3ol6Z8vpPakYy01wH1aLPm
X-Gm-Gg: ASbGncu/j8Ex6yUMSPogcz3BzRJ6g+N+4w6G+Gos9mM3sZEwAzjVoXfz7/IgmnKlj4c
	SKRmSdxhvtSy2IAosDQxxCCfnSV8hw2nATaCPR78IKFEYPH8JvbJquugUGWCnu1u3glHhiOS6iq
	n4BZM+MVZIuYdHi60pKfJNmqgh+4jDiUZG8URLi7n0EosTk98F5xpC6A1OmjL4+/FQZci/ECmgm
	Sa7AVsA7O2Lfy7IakmGfvdD8lI37f9AheHjpmU/zKmFVYEbBfPAe+7qlIz3iiQymn4qxSIRBonh
	Y8b313X/2TUqCZjEleaqWy1YGFXegtbd9U2WIwfRD/XTsfnWHkrqyT3j/An117Nuu2GtpyuNFLV
	tDZiI49wMOKVUnCX41EMSyg==
X-Google-Smtp-Source: AGHT+IHlCdv1oHDof2Z54UMKicOslKY+UQoZgdpA4Lwb+2e5qaV5CnASTh2r2stX5Wq+ZGPJHwOxxw==
X-Received: by 2002:a05:6808:1a29:b0:3f7:8f77:2a9e with SMTP id 5614622812f47-400455d1745mr2577021b6e.20.1743805261888;
        Fri, 04 Apr 2025 15:21:01 -0700 (PDT)
Received: from stbirv-lnx-1.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2cc84b30cd0sm925451fac.38.2025.04.04.15.21.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Apr 2025 15:21:01 -0700 (PDT)
From: justin.chen@broadcom.com
To: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: florian.fainelli@broadcom.com,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	jassisinghbrar@gmail.com,
	bcm-kernel-feedback-list@broadcom.com,
	Justin Chen <justin.chen@broadcom.com>
Subject: [PATCH v3 0/2] mailbox: Add support for bcm74110
Date: Fri,  4 Apr 2025 15:20:56 -0700
Message-Id: <20250404222058.396134-1-justin.chen@broadcom.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Justin Chen <justin.chen@broadcom.com>

The bcm74110 mailbox driver is used to communicate with
a co-processor for various power management and firmware
related tasks.

Justin Chen (2):
  dt-bindings: mailbox: Add support for bcm74110
  mailbox: Add support for bcm74110

 .../bindings/mailbox/brcm,bcm74110-mbox.yaml  |  65 ++
 drivers/mailbox/Kconfig                       |  10 +
 drivers/mailbox/Makefile                      |   2 +
 drivers/mailbox/bcm74110-mailbox.c            | 655 ++++++++++++++++++
 4 files changed, 732 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mailbox/brcm,bcm74110-mbox.yaml
 create mode 100644 drivers/mailbox/bcm74110-mailbox.c

-- 
2.34.1


