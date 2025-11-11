Return-Path: <devicetree+bounces-237169-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id C7D95C4D952
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 13:07:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id BCEC94F5ECE
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 12:01:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 331A93587BB;
	Tue, 11 Nov 2025 12:01:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="T2e8JYC7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D4583587A0
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 12:01:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762862467; cv=none; b=kluFCnbZ6i/0UZCVizeF9ERboyBo3vl7YaEZzvwFJnImu9YOdUeq0m+1a4TOVwA7po67K8QRL0aJMXfHdstpYp5bLs+vRYrO7Nkn0zwPH8OpV7uvFEmt/m/7G6qr2bv9EckB1hRfV8MGMU61iSqP8o9+spQ5zjMwjaZjUTWNXi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762862467; c=relaxed/simple;
	bh=d9dI3YFU+1DVibPHbzDPHydAzSLcAbh0IUfpmeR/ngA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=RXi5iDQPra57mfRzrrKsaukln+vL9HhnLIktHZv1EAtspLSZ3XDYJc4xOwwNXbJ19MuRiZpkwr5yP3Vljz93Iyh6IhqKpyN3RpELtrRppjigc0jwjRd04lsZnKofbsa7btCvXePEHjeXhk05ME5lSi6M79IIwk01NrvvtoxtznQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=T2e8JYC7; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-b72134a5125so599890766b.0
        for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 04:01:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762862464; x=1763467264; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j2nMRTEYBnX0JEevXqRH9dgEagWBl68PRNtodA0SJ4g=;
        b=T2e8JYC7Ol9RB0R3S4cbyJhUCzjetRN/lohLYW3C01kWPVrLw236q4B2hk0iJHgTZT
         FDlHCJfknj3z/S/pS8gGQmNcUzEtsKb4/kZJktw0tYB+cK+pob8uvW7ApwqCPdn9rxgE
         4fRKacojOoaLbpqx4oGH/vOO7oqemL7S/L81uPDmrQF32EVCHjnam/0N4qP8Z0AzdrlL
         PXRtcwLKRUmU09or1bzwQUZXx6/mr7ELMAxNBcWsZ9k37B3/YxsJH63TK9ECJTNM1wWd
         S2y3MhIErzSMrKFg84Cu5H7flgHEjWd4D4k0Hjxb4kFdUCAXEMOJCiZL+oYFC5WRKbDZ
         JWnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762862464; x=1763467264;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=j2nMRTEYBnX0JEevXqRH9dgEagWBl68PRNtodA0SJ4g=;
        b=Nt6+HPn2lv/beh+EnZSaqRod1WYRUp6mm7uw8PRxrrutG7WVcQcR0rVhBqFnPjItE7
         nJqJPibb2kSaQfTmYrv5/I+qk3dV0COvQG3bH7necCmkXwQjMpFGRqx/sawwdTmOVy3i
         oadwdf12qqqnhe/rXmulTzzmfKOyfAhiLGkyUngqgcj/m5qUwS/NuIiDxBQytS5S4AbK
         /idlqVxuEl77Ao0/Qt/B/trr3pwZ/04mEaqPWY3spL5wfOj/O5fV3yPND2YdmXe3KCsm
         yjlHTru/TJxYye5wde2jeBenNZ7hhWy338O1iSPitp1jiaeVbWf/LwIDg9ofyxDUgVsV
         3kaA==
X-Forwarded-Encrypted: i=1; AJvYcCWndkL0P57hTyXdEgNLActkbJO/TS0xEA6hHIksR2IvwFFIF7SkEeojwxbqkCPHmLiT/xDQ2X/jI6+y@vger.kernel.org
X-Gm-Message-State: AOJu0YwDh43Y/k79yu6iqsDQv8Uuxejx3FSo7mJ7tAUvDBzD2ezgYj5i
	bVuB0jIhWlRKHYCKkFXU3uC6KQXmaxeojWWbQNpVKknwOlIqqKnnROG2
X-Gm-Gg: ASbGnct/eTYBgtUG6TUe2+AjjFdRIDuC1n9BH/qdhkQPesnVDxbWbbrMhrV6lGqll4m
	OrPHpffvFW+oXLHnFuVdRtdrgXEiPpRKoXI52MUDazUoeFFl1Ui4TQtJEWsx1bFcHebDLSOom6Q
	3b1vi68lYf21dRTPplexbkbQ1ywIAldGzoWm/yT7ZZ/RZSGZ8orfN03UyIDP0oq0K66UVk4lcWK
	JyqFo3gzxxMFSWXYTBzFir7KEP0p2H++94VAa5ne4ZcUKRVJ+39jSNi9VieiiKWIryhkRIk2KiQ
	mdvk25OEMS4ubQSdk7e5IdVNpf2y79vh6q0gbuW0c5VcC/wKp8iys8Ur4dQnQa/mF3TzR6U5JXD
	iS498ZTYVqvAov3IikaVBWUtDbCTLKzRYDSsar5cYqFOlJieUf2uW1lpqEiNieE9/cooTAjZV5f
	8+MDUtGpxctfEgqkiL5ZtzwWXJWg==
X-Google-Smtp-Source: AGHT+IEMFjppQxmpKPUPuwI5Eh8CB/xzwrQb4iSasl8juRp6TAOQ7ALPukt/vhacoC4tWko/18/7Eg==
X-Received: by 2002:a17:906:ee8e:b0:b71:1164:6a7e with SMTP id a640c23a62f3a-b72e003924bmr1291166766b.0.1762862463417;
        Tue, 11 Nov 2025 04:01:03 -0800 (PST)
Received: from SMW024614.wbi.nxp.com ([128.77.115.157])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b72bf407a01sm1340707466b.22.2025.11.11.04.01.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Nov 2025 04:01:03 -0800 (PST)
From: Laurentiu Mihalcea <laurentiumihalcea111@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Daniel Baluta <daniel.baluta@nxp.com>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/3] arm64: defconfig: enable i.MX AIPSTZ driver
Date: Tue, 11 Nov 2025 04:00:20 -0800
Message-ID: <20251111120022.696-2-laurentiumihalcea111@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251111120022.696-1-laurentiumihalcea111@gmail.com>
References: <20251111120022.696-1-laurentiumihalcea111@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>

Enable the i.MX AIPSTZ driver, which is used for i.MX8MP-based boards such
as NXP's IMX8MP-EVK.

Signed-off-by: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 8d6a1bb1e03e..2db7d000aca7 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -271,6 +271,7 @@ CONFIG_GOOGLE_FIRMWARE=y
 CONFIG_GOOGLE_CBMEM=m
 CONFIG_GOOGLE_COREBOOT_TABLE=m
 CONFIG_EFI_CAPSULE_LOADER=y
+CONFIG_IMX_AIPSTZ=m
 CONFIG_IMX_SCU=y
 CONFIG_QCOM_TZMEM_MODE_SHMBRIDGE=y
 CONFIG_QCOM_QSEECOM=y
-- 
2.43.0


