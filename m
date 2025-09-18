Return-Path: <devicetree+bounces-219051-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ADA7BB86F0F
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 22:45:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 791DE582454
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 20:45:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00D8F313D77;
	Thu, 18 Sep 2025 20:45:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TjZnR+kJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72C2730B528
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 20:45:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758228315; cv=none; b=NFqXYSKDshpc2hhpGVTI/Bium4Q5awzBDtJuVH1G21NNHdy5jdpF8awyyn1QcDpY/1dfBKL8i4rSPtivcD8jMWDsGD/sgemRXie+r9ReVaYxHh/jBmSM49mzlFK6HhEhv9Ck0QuOYrZ55wyREy34iXqB4bvh4680FYdsYVZXlq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758228315; c=relaxed/simple;
	bh=GGg6d/r4jDGzehwcYIRRjIy+qluRFFKgKPsa5MqzzFw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=al9pi0fpTG3Tef9tRi/2u5Y7Z43OUeMcuMxuJEVcJF2rAQDD8dT/BYjLZaYw5zUp0a2DrF/k1KiAOQZp8ddU30mKAW/ndwakE+clpaJ5ajIOPnqNTdhf2lZ2Xcku1k7X1Ytb28iSgl0wPPT0UXE0EehwR0No4VcXadB1DFhYH04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TjZnR+kJ; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-77b0a93e067so1339539b3a.2
        for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 13:45:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758228313; x=1758833113; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=OndiLXsBaZlIfnc6wgFkQBsEvn2pe7regfwA2hv/6vI=;
        b=TjZnR+kJHVwb7ZqsIxQ4Fplc2xS75O8S2fvbwi5MYYCasqvOcu2KwaE/LDe02VZbSA
         PMtxNu6Soy+69zZQ0Hj0Qw5i9N16004aAnHZGGRU0Qm+vCiQq5yyVf8ch/WPQQppHB8g
         +xzDvRAibDwvfxrDxVF1a6JL1yTVanROUTJlX8EiKyZ65tdOSa+H/An22mMGahXTMQ+A
         sWfxMODtbJfTfLkKG+Bn+uej8+o+qA0NC3/YYOTf/Ydiz4vSDRN4SOVfU3RPsMOASVmm
         q6RjtAq7fUzANCq0328g1V59/c2JFhZKf353SIevDTut6BD3tWuhBLg7BWTEBEjXe6ME
         a3jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758228313; x=1758833113;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OndiLXsBaZlIfnc6wgFkQBsEvn2pe7regfwA2hv/6vI=;
        b=Iz+ubZdLJRTsp9QdrUKGClxfrs67bLI228CFy/TPJYcP7VXF55iUVHJ3Xm4M2l36O/
         mki/3Gx6DyIk/rLbIiOx9j+5yzv181/K4MADs3vcbldUUD4OmL1GvabWOpWCSoIx4qxs
         +hwrDpLGPbtSqxqnR9UXNkeq3rxcTHIua3P7vaId7nStMnfu8nrXzghLhaBptJti8LPi
         zw7JaGlo9DcqhhjxVD2FGQhky2Lb1fks2mnyuro7IyNdA97eTXQMKvBXpYqgud+2OrT8
         t4stBI6I1YcNgFVb20Vysysb9LGt4uaIlNBkcNzitWsPD5He2+VooilzjvZi762qSpPq
         XXMA==
X-Gm-Message-State: AOJu0YwcQm5m7toZrWpNkFWyeQsDQtL6xmPAt3NAssaX7WFmUmKmJiXh
	Ewojx4pUU823YTsZLrce4fV7Ay3g2BaLmJk5gq+7ixR0nqD/H7lxarJ4DWfMP7jQNAS4bw==
X-Gm-Gg: ASbGncs2unxhVN9s8T3z565MGz9h859NfnZiU8sI26f32jnQlaafnHG48f4e6KOcB4D
	R7uo1OPvwf9Kbp4mhxvkE67G2UadVHW97ssTf4dqJTV5uc/lkNo/UNn6HGj0X2jtrLcvTkMEeXV
	FV1WtwPXGXolZYvvYimYjRW7KfkiOCBtAl3Ol7GaqYhah5bKlqCeNOxyRvBYIP05GgJ+KMilzjr
	M2eTnrui2a0mAcJJBc0EXNpZJO6IaXC6oD2Ld/pn5HdPSdLJr8lbXMXyXX5GVbUn7GfT0Ug8Q2a
	n51xrixTfaIIb13ndXzod/s2K/waHecVLBlhYKDontoy/IJwguylnq2UAE18j/dF3YrETlLOOx0
	SNaDI0mf0v4PGSmuT8qfiZUJduWjm/yMo8OUUgrggK6BJ1W1UkrQ=
X-Google-Smtp-Source: AGHT+IH6nT7K0iPQvyubO2xs7c/GfuU5J21G9ftRRvl+G+ljHMvaAOMJ9VufECcV+u3dMud2d7dvVw==
X-Received: by 2002:a05:6a20:7f9e:b0:245:fdeb:d26b with SMTP id adf61e73a8af0-2925e23aaa3mr1419052637.15.1758228313064;
        Thu, 18 Sep 2025 13:45:13 -0700 (PDT)
Received: from localhost.localdomain ([119.8.44.69])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b54ff35aff2sm3178181a12.1.2025.09.18.13.45.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Sep 2025 13:45:12 -0700 (PDT)
From: Han Gao <rabenda.cn@gmail.com>
To: devicetree@vger.kernel.org,
	Drew Fustini <fustini@kernel.org>,
	Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Chen Wang <unicorn_wang@outlook.com>,
	Inochi Amaoto <inochiama@gmail.com>,
	Han Gao <rabenda.cn@gmail.com>
Cc: linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/3] riscv: dts: thead: add more th1520 isa extension support
Date: Fri, 19 Sep 2025 04:44:46 +0800
Message-ID: <cover.1758228055.git.rabenda.cn@gmail.com>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add xtheadvector & ziccrse & zfh for th1520

Updated the commit message for the patchset

Thanks,
Han

---
v1: https://lore.kernel.org/all/20250911184528.1512543-1-rabenda.cn@gmail.com/

Han Gao (3):
  riscv: dts: thead: add xtheadvector to the th1520 devicetree
  riscv: dts: thead: add ziccrse for th1520
  riscv: dts: thead: add zfh for th1520

 arch/riscv/boot/dts/thead/th1520.dtsi | 28 +++++++++++++++++++--------
 1 file changed, 20 insertions(+), 8 deletions(-)

-- 
2.47.3


