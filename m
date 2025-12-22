Return-Path: <devicetree+bounces-248661-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 15C4FCD4E42
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 08:46:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 87F97300D41C
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 07:46:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F92C226CF1;
	Mon, 22 Dec 2025 07:46:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jXFOjNC0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4F6919755B
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 07:46:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766389565; cv=none; b=RXnyxapoTDJjxPWic7ltKnz7PQPX9qn8Wt1/I7omt/YSEYO6sql6tCCaderuw8JPKu/veHGcfbOtaPqTS8Jdn41fD6KM308V7WS4tHRdiIhApKnW5m6Jx741bymebNch3wEEgjdGP4Yz3ZfjDUjIm8iG0tCR8cYpO6l0WeHcDbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766389565; c=relaxed/simple;
	bh=1U45K3W9FRxsfbvvzg7mdtDjI/jjVfHl92eXMQxiWlM=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=gSNekSdIph1M/jdA6WBJJWxBloliqqNHvViOaTHFkK2pwFY701liJ6jWFWoWYQEJtelDb62utotPy0B5ilyzelT2B7NupN+7ijJ9iM3e0OJJ4CxlIMi8nL9ZB89iVcfL37iXfzTzy9330yePotbaH+ONj0D/fSkPHmIsAsIRSQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jXFOjNC0; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-2a1022dda33so29795045ad.2
        for <devicetree@vger.kernel.org>; Sun, 21 Dec 2025 23:46:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766389562; x=1766994362; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1Fm0ytkCzzsZtMoWmt94fz5Tfw5Toxhya5YWhR+90lM=;
        b=jXFOjNC0aDKKvRH326wDKTJyEGq3MU8CahpFCWg6mvKf53ge+Ej4iVumDBS6u5Dvi1
         +xSagbGmIIjKzLCmaN7ja/6jP2XscbQNuaTNCUDjmNfmE2gc3xFsh+jRXgg4UK+6mlfo
         +jBv9WyWbuU/IF4mS0q1kb9hBGDpcgpGBw17hHh5syx9EzHsn1Hu0JJTPSzd0SiC9bs7
         DpUYeFIyVmS+P8SCBc7G3vkXkh7w3cQyV73sc3rcDUJnJEsKnjIFYqZSsZ5EVXW7LrlQ
         YFhiRXSOCAbWk8HsdTVshZyRG05s0Y3S40XGcd+tekc3dfC7nIZUh5Bm1Q5tCN+t00LN
         P0YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766389562; x=1766994362;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1Fm0ytkCzzsZtMoWmt94fz5Tfw5Toxhya5YWhR+90lM=;
        b=chxaVro/D1f89Gj/QO1REzBuGHRhASX2rMNue3mFwjQ9mjKFI1B3/H5drawITia7SP
         WcVZPZwDLqCTdr9wh7i06chVcbdJr7TwQhsNVQ4KkGaKCDFws9OLV2gLXPWXI3bVSr2q
         lbyHd5apQXpOQl3aIklsoRlWLm3rkWW4qzLoI675CcvCjm6R8sWWbsEied597E/JMPn+
         lOTyNYPHSbL0JrL0tb6MGsaY9yAwz89rXJtWDauGZTsgHNNd/QmkpFCirNGvCaBE0VaR
         L13+ZkmaxH0xgRqd8/KbY1EzTa5DZ2nskmCbSz3DRp5Vys//r+xayxTiN67Z7ZM8aKSA
         sCbw==
X-Gm-Message-State: AOJu0Yy5gMKAaDCAzCNt2WlSp4V7Mcw3nrOfy6iyfvjLx60YutiOqwaZ
	BWACjL/TRss+kd8i6kaq6MsflBm5q3TuZY+TnUdM4+AIjtcEsFyouwai
X-Gm-Gg: AY/fxX6J4CO3+c5a2ApWSBVabp6Mg6MEYtcDpNV6iTGphWvmNmMy/LR7CFGb+eUglRf
	qz0ggg86sJemjKLuYUMb7n1uAHGFLNYgrWuV9DMs5C+P9K9elfxlUEEX9JpSzmlLGOFOL4pY3az
	oZgDsbSZR9F1rnk+BzHHV3gGmkyWqzVt+lLqB4s+kxm+ty1jZUhbWxJ+f03JNw8bbA262aWacOh
	FZWFLIMLt12tbs8q1rDJghFazDmeg3PTNUfdq6D8SsUvrINudpio6M7ekLNQ/p3eyeLVmgo7CyN
	del5g6lSN2k3n7YvPagQyKivetBXPVy7/eRfsWMnYWMRNcqksf8qEQ9DuV5zdBy5MGQYH9n0vrQ
	sqTyMqrQgAneqtHHSvQto935NZSh80Rki2CizJ/qo6K0SjudcFR3geHxmEdLVrDhGcQE5iL212f
	vhwVIPdZHZHcHMndDvbca4X5M8ZYjIHfMiUl7k8M1w6Ac2dfay+H+1SQX5s2yYEN1p6BKTavY1B
	sn8TjQEuF9vSyTI
X-Google-Smtp-Source: AGHT+IHZy+xdBVzO/GB6/G2tv0TmbUIkORQVBt6UpRip9g/newtl6CMwaiALwAcivww2CRbJvKrmhA==
X-Received: by 2002:a17:902:f68a:b0:295:99f0:6c66 with SMTP id d9443c01a7336-2a2f2836964mr104720125ad.36.1766389561828;
        Sun, 21 Dec 2025 23:46:01 -0800 (PST)
Received: from [127.0.1.1] (2001-b400-e3a0-2ead-fb96-4f50-681a-bce4.emome-ip6.hinet.net. [2001:b400:e3a0:2ead:fb96:4f50:681a:bce4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3d4cbb7sm89605105ad.59.2025.12.21.23.45.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Dec 2025 23:46:01 -0800 (PST)
From: Kyle Hsieh <kylehsieh1995@gmail.com>
Subject: [PATCH 0/2] Add Meta(Facebook) ventura2 BMC(AST2600)
Date: Mon, 22 Dec 2025 15:45:42 +0800
Message-Id: <20251222-ventura2_initial_dts-v1-0-1f06166c78a3@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIACf3SGkC/x3MQQqAIBBA0avIrBNyosKuEhGWUw2EhVoE0t2Tl
 m/xf4JAnilAJxJ4ujnw4TJUIWDejFtJss0GLLFWiChvcvHyBkd2HNnso41B6lJPFbatbZoacnp
 6Wvj5t/3wvh/iKNU9ZgAAAA==
X-Change-ID: 20251222-ventura2_initial_dts-909b3277d665
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 Kyle Hsieh <kylehsieh1995@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=735;
 i=kylehsieh1995@gmail.com; h=from:subject:message-id;
 bh=1U45K3W9FRxsfbvvzg7mdtDjI/jjVfHl92eXMQxiWlM=;
 b=owEBbQGS/pANAwAKAaWDQrcJVsSBAcsmYgBpSPc1Shs0Q0pMY4uKrv/B9B9j/btwZgk1uTBRM
 mt4115VUEaJATMEAAEKAB0WIQTJHsaNZOdY+THGqJelg0K3CVbEgQUCaUj3NQAKCRClg0K3CVbE
 gSqoCACl+GJeVtCd6QqxE6qc5Fxc86uBRSxPbrzRkBEviqVGBcy2mry3Uy3SkDFxPZePkHmFY8U
 2et+EtaBHVuzCWQYHRJESKKwWbpOlGCxX8oL9xaLbmUxbnb61aNxd3QGuICWWc9jiR7/H5scRjb
 MFZ8Vn4CIHlfQZEntkPzDWj9R2mbvzoSUVRFVTPpzkmqDFL0Pu0YpvXKJe94xDm94DZ1mAKXnpr
 JaEv/N1vjUm7W4BdKHMNjBR49ezPwzeATHpwwcTpnLWik0W9xCAOjhrEAJnWv7xiXF0I3tHNaN4
 Q08DP5L6ufRxcAb0cV7ndXyvyzfFEaGP5dltz45ztEr2J3jw
X-Developer-Key: i=kylehsieh1995@gmail.com; a=openpgp;
 fpr=C91EC68D64E758F931C6A897A58342B70956C481

Summary:
Add linux device tree entry related to Meta(Facebook) ventura2.
specific devices connected to BMC(AST2600) SoC.

Signed-off-by: Kyle Hsieh <kylehsieh1995@gmail.com>
---
Kyle Hsieh (2):
      dt-bindings: arm: aspeed: add Meta ventura2 board
      ARM: dts: aspeed: ventura2: Add Meta ventura2 BMC

 .../devicetree/bindings/arm/aspeed/aspeed.yaml     |    1 +
 arch/arm/boot/dts/aspeed/Makefile                  |    1 +
 .../dts/aspeed/aspeed-bmc-facebook-ventura2.dts    | 2950 ++++++++++++++++++++
 3 files changed, 2952 insertions(+)
---
base-commit: 9448598b22c50c8a5bb77a9103e2d49f134c9578
change-id: 20251222-ventura2_initial_dts-909b3277d665

Best regards,
-- 
Kyle Hsieh <kylehsieh1995@gmail.com>


