Return-Path: <devicetree+bounces-139960-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B38D6A17A18
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 10:23:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F2314163250
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 09:23:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 174C41BFE00;
	Tue, 21 Jan 2025 09:23:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=thaumatec-com.20230601.gappssmtp.com header.i=@thaumatec-com.20230601.gappssmtp.com header.b="iLGnx9zy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 480CE1BE251
	for <devicetree@vger.kernel.org>; Tue, 21 Jan 2025 09:23:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737451402; cv=none; b=QxFJBNuI6ufOteiZ/cCZL8nqzqDHEu6FSAPvrc/dUknAr1Gt7ribl0UDIX+RgmoTVfmzwmH/5lJUyjxeLxnkcffbXUQ9O+c+vZ1Hj6dMlpcSj7ipsxscwSnsXzP72etktmJp8X3hM3aAth1UOTo7WGNWYUtqJ51XeeMY661L2ac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737451402; c=relaxed/simple;
	bh=GMSiog3xbKrlA5a5KWFlrnu5Cgk8TZeql687hUdoP6w=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=X1Xm1NVXr6maVB+p4NapSTx1Rmff2B+dA8N+MdPIJ+/+URsVYpgCdHy9gh3uJOZdymCbxAc3ZdCy1xdKqQp/xv9z569v21wGrqa+pj++dzLNeaoiCovc6tKeJA/5GR/TiC7/VgH0dFaldNhU3OLBhLR5nPGfsdMxUN7mDMeQK0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=thaumatec.com; spf=pass smtp.mailfrom=thaumatec.com; dkim=pass (2048-bit key) header.d=thaumatec-com.20230601.gappssmtp.com header.i=@thaumatec-com.20230601.gappssmtp.com header.b=iLGnx9zy; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=thaumatec.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=thaumatec.com
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-ab2aea81cd8so907697666b.2
        for <devicetree@vger.kernel.org>; Tue, 21 Jan 2025 01:23:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thaumatec-com.20230601.gappssmtp.com; s=20230601; t=1737451398; x=1738056198; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ll9uMnEQkCBBfRCH6YlfkEd7ynDhjY++QekPE+Dh1rE=;
        b=iLGnx9zyzwBX4VuTZ3hS3dhV+wSQn9uhTojlciTVbbW1/0f7a4TkCBl51RDqpdB5K5
         JrZJQTh8eij83KPMnrqx51V4yOftVA4XFayncdnVjnLr5WYvfvfnLGLGn/AtXYCgzan3
         GoDRr1oBrBAFUdmRRc8gh4EIIdcbxV/aYTJ3ViuhR4ibvWNZr81LmCireSbKfe56dYqf
         0qgGu1cmiP/CpVP99mHEtqhvArgEVnz57hTzH8pz7PyyuZfyZJ9HlnkbRLwlYV3sH+GQ
         p+WduNETc/H4dbaZaAZXLp9d0oRU/yVGQzc3BXYpY9/nMfWQ2aj8r6qa/U8QrW30FKrl
         VdJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737451398; x=1738056198;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ll9uMnEQkCBBfRCH6YlfkEd7ynDhjY++QekPE+Dh1rE=;
        b=i7XnS/7FjuPzNgqoWy5FQt4GtZ2KZwVjmLik035rkOZY4LR4CCfbpM2vty5brvZxni
         FSB7DsFwkWQ8Jle57Yia62BhHqUUpcXVefxJuoX7vdIhvlnYUXiZPYwC/BC6bLq5Oo3o
         N+JvlvdGvKcuXqP5DjFZd7oBHF98tvbDUtvhxPPSFkWRhS2B2hLZ8WjMNj7zO2/nSVoo
         6GGz2jteTg3NFrfMHs0r6fTNTsPJO/zGAEDcIOFRO88EPNdnlOQpH0xwAJJP+AUBv1jw
         gA2cmKhI45PFllGjG2zQsy27r1B7EN/Y100TPW2SyqY52Zm+vTnCUc3DOFu69AvP3t1u
         SDcw==
X-Forwarded-Encrypted: i=1; AJvYcCX2cXM0Gjd+lLIlRFxNlpxkMcrFtAZXU4hb1Nf65V0ih86oUBUzW6i3kv83f1Dx59dmLpv552ldjBHM@vger.kernel.org
X-Gm-Message-State: AOJu0YyshIYf5iRfFo8CZZ0lPur0BI1CKkqNJnBHD6rla562re2ooBay
	tj/ONFsbSwtaKudg1Z69ScWvkE4WKYZo1sMW1s83r0YW8NH0dEKiN3URJSk9WPw=
X-Gm-Gg: ASbGncsWpDM+DyB2Mb03SxeB4le+o7DQxZh/T9NcODpKku8tzCvFFbdSrPdMb3KvXGk
	faB0Nyq82jKEgR5RvHJr+kt5MeI9BlojFxJ91tb14dn8B9rD1kp1ZAra6LT9DzXqApkidBoulkL
	Zka5YJRsZwuFEPioCjpoxpVpCJDgIXgVQqj1eVGVk8rF9UktlHqhPH8d0zpi/s+UJsXd9wNGCRo
	YfQx/C78LMzjZtSMMCk03t+xz4GxgsNNFoeEDNF7y+G3D3ook+/4V2rsa8TBQjcD7UAwOaJhG0q
	G/OOlxCyxeKl8z/3VqXL7PH+aA==
X-Google-Smtp-Source: AGHT+IHvcpIrnjOYngIGbkb+lXRHpAFpXBbe5Dl/RgrHmQEuF1cOVKP9fzZ3HXQ+1+pDqZJ8S6QgsA==
X-Received: by 2002:a17:906:fd85:b0:aa6:becf:b26a with SMTP id a640c23a62f3a-ab38b0a13e6mr1491837466b.9.1737451398284;
        Tue, 21 Jan 2025 01:23:18 -0800 (PST)
Received: from lczechowski-Latitude-5440.. ([78.9.4.190])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5db8942cad4sm5681726a12.60.2025.01.21.01.23.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jan 2025 01:23:18 -0800 (PST)
From: Lukasz Czechowski <lukasz.czechowski@thaumatec.com>
To: linux-arm-kernel@lists.infradead.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: quentin.schulz@cherry.de,
	Lukasz Czechowski <lukasz.czechowski@thaumatec.com>
Subject: [PATCH 2/2] arm64: dts: rockchip: Disable DMA for uart5 on px30-ringneck
Date: Tue, 21 Jan 2025 10:22:55 +0100
Message-ID: <20250121092255.3108495-3-lukasz.czechowski@thaumatec.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250121092255.3108495-1-lukasz.czechowski@thaumatec.com>
References: <20250121092255.3108495-1-lukasz.czechowski@thaumatec.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

UART controllers without flow control seem to behave unstable
in case DMA is enabled. The issues were indicated in the message:
https://lore.kernel.org/linux-arm-kernel/CAMdYzYpXtMocCtCpZLU_xuWmOp2Ja_v0Aj0e6YFNRA-yV7u14g@mail.gmail.com/
In case of PX30-uQ7 Ringneck SoM, it was noticed that after couple
of hours of UART communication, the CPU stall was occurring,
leading to the system becoming unresponsive.
After disabling the DMA, extensive UART communication tests for
up to two weeks were performed, and no issues were further
observed.
The flow control pins for uart5 are not available on PX30-uQ7
Ringneck, as configured by pinctrl-0, so the DMA nodes were
removed on SoM dtsi.

Signed-off-by: Lukasz Czechowski <lukasz.czechowski@thaumatec.com>
---
 arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi b/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi
index 2c87005c89bd3..e80412abec081 100644
--- a/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi
@@ -397,6 +397,8 @@ &u2phy_host {
 };
 
 &uart5 {
+	/delete-property/ dmas;
+	/delete-property/ dma-names;
 	pinctrl-0 = <&uart5_xfer>;
 };
 
-- 
2.43.0


