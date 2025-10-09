Return-Path: <devicetree+bounces-224708-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id A08EFBC726E
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 04:00:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 4D8B534D2F7
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 02:00:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6EE71FBEB9;
	Thu,  9 Oct 2025 01:59:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="iTVRxCQ1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B84711A9FB0
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 01:58:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759975146; cv=none; b=hF8nfiL7zfYrAsvQGhrJT1BcNclzsOVY8ukBwSdVyOrq4aA1BDaPb1OjPfAy5OH4Maa/xJm36zfGWXJ2rgZZDSF2bm/O8W6lBUDbf+iQuB2/UWstGpqSnoQ+h6P2MHdktuIu1hpiESPp863W4hj34TGl7ewCtkoHtZL87ZvB+AI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759975146; c=relaxed/simple;
	bh=3rUDhOzJVhUg+Xh67CzMerB+fRBvLbao/4vIhp/KIgQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=g3yC1bZYHlHR3uUQ753ug1Jim1Qgi4REY7vwi0Epf3H7qFvk6yoGrd35lJKKLhJbkd7NH5fXW2Chs6eZm3bi/8q8xFjaSkHYr81+yiPkmLIOQf2akBoY1kaBtrOzG3allYMLOcQoQce5rZ9GRomIFtNTqQy9++lpRcm/nN+BUGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=iTVRxCQ1; arc=none smtp.client-ip=209.85.215.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pg1-f176.google.com with SMTP id 41be03b00d2f7-b5515eaefceso348352a12.2
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 18:58:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1759975138; x=1760579938; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hsaEY+Rh/SX8Cp9wIkDltmX8vYREKpu310o7cjQ17zs=;
        b=iTVRxCQ1uT/L0RVg+DIhfLJaaw04XcnsYVLfciqI/tMYhoOK/yPHfZJAXfoppVnSR0
         g4n5LEkQNHxTNfw5LvkfhxX/4PB99fm8Sn29dN3O5VXxSPQ2ddI9oIw0OkgYt6qjyQWk
         W7MqxZhhwjwn9hXQmdxkGphCb4UGyY9+Exh8aZjCLyQrqxSwmG81yNWBcUNU2mYFC7k+
         YOXAYsDJeOv1p/LHab2pKUBxqGtocXya7MXbWgPI1RdZJuEGs5UamKx4h4o52FVfrSHy
         wK2liABmlFmTomvk+jVrs/aXs+OwEsKYOZDOwTkts/7woRlAx/bRMewoQsfS76ziYk/Y
         7qeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759975138; x=1760579938;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hsaEY+Rh/SX8Cp9wIkDltmX8vYREKpu310o7cjQ17zs=;
        b=uh48eoqrlcXz9pKYkJOl/5ESeaNdDVR7zauUwEJqMarKCZgsuaTd+xfTSwutomIDgA
         Pqz5xyw/Co4v52vYMOD6r7NZ0smCwlBEK4m2lqPquo5OBpfHRaYYyo4DIMw5xVRvHKGs
         aj3Fd3IZHBiqPJR7jeVXX8IT3CisSA291QHaJxF59oXCVO7KpC4TjOdUtSHA+TzCM3Cr
         nOtsVYiqHgDqsNEQ0V+eDjx/mR6Es1xuTJGckp623YeIHHfr3S2UQ5jDjUTWJ+Rfpwnz
         ol4RzChDjg2U1R7cotjuJqPYVrJcJ55I9rpmx1Dy8sfFsrskoMyPZSUcTyt1AKD/MHJM
         OXLg==
X-Gm-Message-State: AOJu0Yw0Wqv0SDoobJHug2dtrQ3GWBNXBAxjCiVgxqekaYjOogS0xyc1
	HesjVIedmfitO710Bs17BWZZs9teIQMAZBVKgDf36hZ8pG5KWO3RVFuh7ApR6TEvGYo=
X-Gm-Gg: ASbGncv4EJ9JvJkBYtpWR6DQHlVVM43s22fCN0fgmWyQmNpr7jDO/hd4TqlfXxk0sws
	KV18VC7ba+rguSwxi+DfnilkX98G+RPGSU5HzZOKUMoe9ASpTmDtakjRNd439/yTkImpGgPoosc
	ZYX4sTn/OVca2Ibmk3v7TzHQUTS8bYmZyCOmrFxeksuqgf2ZH3TteH6cSEw6PQX7ckSnApj1Gj6
	ho15M24HADvCRLm4UoxXCI0XI5o44GmunB3e3dcII4EwKSBaWBampvNzfgmB9n6+S5nfb6uwS1R
	B/jxl5/WxJIrY7YkB/5DEhFYq9ek/3/L8BJ7WcDgyFu/PTklnYbD4BeIxr6wzIEwqEEPqaiuHo4
	9ramr9grt8xGh2wHwy2AgtDK0w5lCyBmP0Yu6xokcILWWb/bLHgxZ8lqq4DqfUR4VMWjM
X-Google-Smtp-Source: AGHT+IEK6h9ymUfW6feQoPDds5nddPhZXwbaTwfv9f5LhAo3XesBm08EFRVtNsNefL2i5+3bnakD+g==
X-Received: by 2002:a17:903:3c48:b0:268:f83a:835a with SMTP id d9443c01a7336-2902741d091mr61417485ad.60.1759975138296;
        Wed, 08 Oct 2025 18:58:58 -0700 (PDT)
Received: from sw06.internal.sifive.com ([4.53.31.132])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29034de53f9sm11033585ad.14.2025.10.08.18.58.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Oct 2025 18:58:58 -0700 (PDT)
From: Samuel Holland <samuel.holland@sifive.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <pjw@kernel.org>,
	linux-riscv@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-mm@kvack.org,
	Conor Dooley <conor@kernel.org>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Emil Renner Berthing <kernel@esmil.dk>,
	Andrew Morton <akpm@linux-foundation.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Samuel Holland <samuel.holland@sifive.com>
Subject: [PATCH v2 14/18] riscv: alternative: Allow calls with alternate link registers
Date: Wed,  8 Oct 2025 18:57:50 -0700
Message-ID: <20251009015839.3460231-15-samuel.holland@sifive.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251009015839.3460231-1-samuel.holland@sifive.com>
References: <20251009015839.3460231-1-samuel.holland@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Alternative assembly code may wish to use an alternate link register to
minimize the number of clobbered registers. Apply the offset fix to all
jalr (not jr) instructions, i.e. where rd is not x0.

Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
---

(no changes since v1)

 arch/riscv/kernel/alternative.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/kernel/alternative.c b/arch/riscv/kernel/alternative.c
index 7eb3cb1215c62..249ee55d05475 100644
--- a/arch/riscv/kernel/alternative.c
+++ b/arch/riscv/kernel/alternative.c
@@ -121,8 +121,8 @@ void riscv_alternative_fix_offsets(void *alt_ptr, unsigned int len,
 			if (!riscv_insn_is_jalr(insn2))
 				continue;
 
-			/* if instruction pair is a call, it will use the ra register */
-			if (RV_EXTRACT_RD_REG(insn) != 1)
+			/* if instruction pair is a call, it will save a link register */
+			if (RV_EXTRACT_RD_REG(insn) == 0)
 				continue;
 
 			riscv_alternative_fix_auipc_jalr(alt_ptr + i * sizeof(u32),
-- 
2.47.2


