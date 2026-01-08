Return-Path: <devicetree+bounces-252801-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FF60D04348
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 17:10:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EEBCE33FBE33
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 15:54:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE11E36E472;
	Thu,  8 Jan 2026 12:26:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="rz1YBrUK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 024102FF147
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 12:26:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767875204; cv=none; b=pk6D9WQwz3vAxLBHy6PZoKe1DZbL/+OkMttkCQbdwrnEIoIZkyPjGxQQsrcH1LbGGatAvCqm4FvixWufiKSAt8gIILEP46PyZzOXfWinqzinpevgvYwl2yGWG8CptLfZr+ujsmlZLyd5PlWO7t6erOuO5Capc0QvVn4wEyGRACg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767875204; c=relaxed/simple;
	bh=BmARFNdMYVDF85A9HHxy7Xy3eWz7vlysBnNURs7Ug3g=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=fczcyQQTGgflwKyuEwK+05/KoWHXemQRt+D+c3rl0gJLp+aFBB4Bbb2FYhzpCm1cZwIgj+uZhCH2MGvTmsSSH8O3pxPgKFkB/zJa8z7ESqw5ha/WWRNbldCdfasdRHFqYJwzSB+EjLb8GpqIK2hlFV5o2scN53zEERJl/JXNSVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=rz1YBrUK; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-7bab7c997eeso2469526b3a.0
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 04:26:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1767875201; x=1768480001; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uE1KQ3Nap9wSa7ARNmv253D/zHZAcI3o2YellqaTrW0=;
        b=rz1YBrUKroTnNeMDZaTQs9VcwI4BQFjXnYfLhe2qBiLUjF7OvIcFBBXI2a+x8LYOgL
         qL1/xxR8ShU/8j5uulbM3QtIgElfHb/6Y8005PIt0laAAjkWs9zUqD7toQhwhljX/HvN
         QI+4XqVctbAaasKaqrffm+0sIgOnlYjmDNVzeXHqiHNt7SaBvrB8bYfyH6Cqu5M80EBC
         NXxlD537Gszp7tXWeJ16Q3UUIqEQBANvOGvhLA6+E0iM4wNaXTzfj9JYcdMgLgaSI30G
         aHB+Y/pZw77LIowicJj93QR69GUeCXU7H7kvEA7waiFO0WsyhBFBRFSftSLVxw58Q8VJ
         ymqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767875201; x=1768480001;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=uE1KQ3Nap9wSa7ARNmv253D/zHZAcI3o2YellqaTrW0=;
        b=KKybawxCLjWzYXmUUvrggmiHyJmlViz7HieY6DHjsVQk9003t3aHbDGBS/4s+j3JLY
         9e59tiW7KcJ0FuWD8WbtuTlMJezU4HucsRv0627kU0xq/+l3iR+uuyilvilepH/hHPJx
         sm4o6L9pThzh0ITTvObemRsbnEl79KDfo0t/WA2qsgObiZGhLNMRITTiYXi7u75Mtfjw
         92BUPApb3/OWS02ag6R6wdoXcXY4f6Xiypde5ewIlih6lgqCLIifsNnw+KwmtN7HRFlo
         GSbSTuBLO10rA/1Q+W90fShUc/XkZHDxFH7zoaNKsKAz5oLfiAXRVewIAWF9UoPIKYeg
         JATQ==
X-Forwarded-Encrypted: i=1; AJvYcCUY/A6xiNnSdKg5zWiFSoDHYFQ0PSuc15hTdglcfSye/31cy1oyQoDgDDMDP3fvicc04k6yO0qarkVf@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2Kx47uE86bU8GVmho2Gz1Vqt8RZ3HnriBKiMT4V4TKEvg7QpF
	V6BR3sdz/n25lHbvJI/SImaDQ0LDa3X0iw7+dXuyVvBiCBS2QBKwM+U/ymfFOfccswU=
X-Gm-Gg: AY/fxX7jNhIlwNyDTaYsjW0w+AkH5PlOh60/s5TR0w2UjYI1QTnxDnM43lIwpn0+vAO
	SSK0FV6ddOghygmvcG4NFEzky0tvVjD2GPoKaqIOqsPMMKiYS3snujtsxMt10PpaOD6d4Na6oBB
	AswtBM6e0JtIOxsemCgJB/DUX3fXSrLrIDAlNuS8KvKLPAbxJtkr+44YAbSSVZOBcWIdwu3bAYt
	X6andSmRU98VXL1dJ6PaIhy3X6dk8sp7/iVM+Mewqzvjo7y14E3XyXS4BQFIi46gsBaYNYYTNiu
	sDOB4wArvvR3I9M9Kvfze0V4HBmTWw+m1Avo6w+5OA6eYikKEpH/CLZu1k2Help0j9c8WipGthI
	OGUVN8s5pMZ7JM/zT1E1JIsVj/UDd7ibpkcg6HoV7Xk4Xbf2hHEMpHjNXWwVTsRVXCXC8FdCh7O
	BFq2o66monNxMuSgZy2H70Fo/oKHlBsTU=
X-Google-Smtp-Source: AGHT+IEf2mq8ef1YFTNrrFOuAanoejlFcGh2te7djhwZxqGKBzNIruQxKkJjwV3kGI0EiglOFPr0Pg==
X-Received: by 2002:a05:6a00:4219:b0:7f7:2680:7325 with SMTP id d2e1a72fcca58-81b7d6511bemr5205066b3a.13.1767875201339;
        Thu, 08 Jan 2026 04:26:41 -0800 (PST)
Received: from [127.0.1.1] ([2a12:a305:4::40df])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819bafe991dsm7656401b3a.16.2026.01.08.04.26.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 04:26:40 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Date: Thu, 08 Jan 2026 20:25:54 +0800
Subject: [PATCH v3 03/11] dt-bindings: interrupt-controller: add SpacemiT
 K3 APLIC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260108-k3-basic-dt-v3-3-ed99eb4c3ad3@riscstar.com>
References: <20260108-k3-basic-dt-v3-0-ed99eb4c3ad3@riscstar.com>
In-Reply-To: <20260108-k3-basic-dt-v3-0-ed99eb4c3ad3@riscstar.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>, Yixun Lan <dlan@gentoo.org>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, 
 Thomas Gleixner <tglx@linutronix.de>, 
 Samuel Holland <samuel.holland@sifive.com>, 
 Anup Patel <anup@brainfault.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Jiri Slaby <jirislaby@kernel.org>, Lubomir Rintel <lkundrak@v3.sk>, 
 Yangyu Chen <cyy@cyyself.name>
Cc: Paul Walmsley <paul.walmsley@sifive.com>, 
 Conor Dooley <conor@kernel.org>, Heinrich Schuchardt <xypron.glpk@gmx.de>, 
 Kevin Meng Zhang <zhangmeng.kevin@linux.spacemit.com>, 
 Anup Patel <anup@brainfault.org>, Andrew Jones <ajones@ventanamicro.com>, 
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 linux-kernel@vger.kernel.org, spacemit@lists.linux.dev, 
 linux-serial@vger.kernel.org, Guodong Xu <guodong@riscstar.com>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.14.2

Add compatible string for SpacemiT K3 APLIC.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
v3: No change.
v2: Add Conor's Acked-by.
---
 Documentation/devicetree/bindings/interrupt-controller/riscv,aplic.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/riscv,aplic.yaml b/Documentation/devicetree/bindings/interrupt-controller/riscv,aplic.yaml
index bef00521d5dacc002d24c50843ebe6380a7d5524..0718071444d29fbfa36283fc9666e8cecd6f77e7 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/riscv,aplic.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/riscv,aplic.yaml
@@ -28,6 +28,7 @@ properties:
     items:
       - enum:
           - qemu,aplic
+          - spacemit,k3-aplic
       - const: riscv,aplic
 
   reg:

-- 
2.43.0


