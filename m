Return-Path: <devicetree+bounces-173841-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 65EB7AA9C4E
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 21:13:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D413217DAB8
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 19:13:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BD7C26F461;
	Mon,  5 May 2025 19:13:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Tlb+TahL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45D7126B95A
	for <devicetree@vger.kernel.org>; Mon,  5 May 2025 19:13:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746472399; cv=none; b=KrMbrECvbIYkVH9nwDxxJRJXDg6eAjgOMNj6oEy/jGjKdO16xsS5j3zHBXhwI+PoyBxP2Z1EiUS1OX4C2tJHnmi4llp8KClt6UsDkID3RQhxg8OVRwLa+Fvkhz1sk2Ay2DYTyAcSle8+EJRpN8nQD+pRub8SWR7tpy8XonZFzLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746472399; c=relaxed/simple;
	bh=HAR08SHskoeKoz/2PbQPFoZW0IvufpjYIUDh6fOQdZE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=d9nPd06NqVqQSbioaZCS+xIiD7TLcUh3FOtRRK2LuvNFYAgjLyCEuBI6dRNASD+Kf7bRD6lnnxHA5rK5ojHWRNLhAwxx992y5dKeL6J7Z3o8yuXEiGoSq0NZDdwTyzrQ/5ctw4cZT5KVdKyqxrGKto7H94LBu9AW/vtzCC4a6s0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Tlb+TahL; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-3912622c9c0so218261f8f.3
        for <devicetree@vger.kernel.org>; Mon, 05 May 2025 12:13:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746472394; x=1747077194; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=IEjDuBdOsPYO+y+tIF/6nSzBmphEZRY1ZsgA0HOsHeU=;
        b=Tlb+TahLcijOByYAK1khV/V9sy4rxyjkQ+mRgTffcEcDMxD/PA22uVqdZl8WICa5Lr
         kBsij72Iz+jLnTcXnUaY2Xte3VxV8e9MQcog1XYdN+S4ablFZATgCUk0SqTFeFC6cbXe
         2JPVZyqMdPMBrw25N5IOcxxoX7ziO9TvWcAMeBqcxho0U/UZ8RzddwqwlEuK5e/KdmZX
         bBUV2UWsN7LoGGkv170Vg7rJooyenuqYgtHe5kHWQ5c6O/RaIJKbPTdwcrGoHjmn6m4E
         vDQFT7LwyL18YTj0+MwTCu+a8wewErx/XAdaqEcLfXHqtESnE/y1Cu8ABqPu+i/IrI/v
         qddg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746472394; x=1747077194;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IEjDuBdOsPYO+y+tIF/6nSzBmphEZRY1ZsgA0HOsHeU=;
        b=o4X7x9t7QMV4pSySQIPVLpXFxHAllUfeEinKiA7vRbuoqBLlCmDqUY06fvsuQHY1UE
         aJCx9Ln2yqvRz8hAAVlbXhy9qrJ4Ez3vyjL5h/C1i45UzhtfBAgbI9DRXvG3oj2nF/Qz
         Glkr5QqP2GysIEu+6aCIKHrqxU73SSGxrca0VdxFyv/zpZiKvr/l2mHNwAANZjMNvCLc
         riDWTVyYtb77ydsJkCGxbtUnmscvse9lrFwV9x+FnXMps0hHwZJHcGw7BslItwhJTSHM
         EJFprSeM046Ku5jsd6Ny0zNb/Ei2sxZ8po1v8qsShao4uB7B+TbGAEpGYSLVXvQLNzOz
         4U4A==
X-Forwarded-Encrypted: i=1; AJvYcCXVHYy+3hIa+rYfK/XLaWR4GZKQhzArIQOskPMQ1G3123qfWxkpKv/LiuKp0FiwGeNp9y1CCVUVet9m@vger.kernel.org
X-Gm-Message-State: AOJu0YyMU1J4Il8WOwwB6P9W11q3qIoSxXLGWDBuJnsxVOBKNN6h6iAM
	ZuMN0nV7LTWQHrh1uHGMYHFcehH8qx5MfqiJ6BZUBLOTpEqC71vjblL2b4DegE4=
X-Gm-Gg: ASbGncu1x3KvmzonrFdDEfJGjR8l6/4O+ViskJSkXAXW54ScsP3C2FGKurDq3tV+mYN
	YMhv/MrE2c5NeP8DDidsHbugiiNThc6HRPjPsu2Cdo86HY/R4huiF2xdJRVxGfmGmyhvDyqnz9K
	+B5uPECm7Tq1SnQGD5Qeesz8Ia7MyicZbOGPX9nP0aHNU0P6oORSshKR9DCRTGmvF8eS9dBN21N
	yQXhiNd+PbR6OxGu0b4g3PYwMPb1ko68GlWH76JGw8B6wgBN/VZc79ta/voXMPx6r2ME8VLeLoc
	JXGzxpX45iT0e3/sRIXe2A0xoUAAo2n+tnhogeo3Ozqa/vErxg==
X-Google-Smtp-Source: AGHT+IGnEwPXSGVfzEWgeXcfxl9O2WHXAoBamZsbcNfubSHzkp0c2F2nBnFlg8hKndBC84tAi6bDcQ==
X-Received: by 2002:a05:6000:2485:b0:39c:30d9:48 with SMTP id ffacd0b85a97d-3a099adc58fmr4225096f8f.6.1746472394539;
        Mon, 05 May 2025 12:13:14 -0700 (PDT)
Received: from kuoka.. ([178.197.207.88])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a099ae32fesm11060549f8f.22.2025.05.05.12.13.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 May 2025 12:13:13 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Stefan Wahren <wahrenst@gmx.net>,
	devicetree@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] ARM: broadcom: MAINTAINERS: Cover bcm2712 files
Date: Mon,  5 May 2025 21:12:56 +0200
Message-ID: <20250505191255.304500-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=725; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=HAR08SHskoeKoz/2PbQPFoZW0IvufpjYIUDh6fOQdZE=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoGQ23mm8iJikWukyappwMPXe0hVtMEVeBU9p62
 vIBhURgujaJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaBkNtwAKCRDBN2bmhouD
 10RnEACTlcYV4pNmTNQR29gUDZjXOND+/zxx0JHufvywe1G1Gv1h3JzqN+wSkCOilaVN+aXonNf
 hWgmrNzxMcJLAQVzR/CneUFSnsfjv4K3SyvBwoWJYDwNok6PWo11yOmHw2vm2egTK7uue1EDuTR
 VpZ4lwY5MTvkvytbm1C/xFmF0GYgjNGQQLD2yv6aHCfoS6Q9JVDEbkO5FvXefLf2cI2/p5fsILD
 df1pVrYBLj/TP7U/5atUwvls/2zfPU4rAn1PeRkdM7300ln1fYfLtHlsqB+5qsdEt9d8bS8bAvb
 +CtPT883nuncsj2WC5z6njl0L8SsaG7HrnmCPb1tzlrMCAXeOV9lQ2MDdZ1vfOx8MjLKxFsgg7B
 oNEzoiZKxrlL2n8ge0qcxBl2tXWbiS/e2FNMPWC0qPCUCXtmqa5A2WT/TiPNjpzEeOFKOBkmqQz
 EmjuD0ZEU4sKXORvixLAzq4Ds1JiOc+NzwIcWIEVy/Fh29u0AVmkSWDxW9eBy77ZnFt7Gt4Ex+c
 qrS/Fr8PnAYaXha6RTgs7cszdBenhGZ4aOp8WI6iZbfxHEtYtFNf0VFNWrFRnitTSUtsZ3+xbb9
 QXZ9GH8jA/BlGXpLxnrmVTO6rixpljs3WL5p4PQ8+MkyJJnkv3DOLBBAR5RLlbbRFehnHkXDdMg gVd9M6KR9LQ1v9A==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

Add bcm2712 files to existing BCM2711/BCM2835 entry, so the files will
not feel abandoned.

Reported-by: Rob Herring <robh@kernel.org>
Closes: https://lore.kernel.org/all/CAL_JsqJi+8-WdYEyrGjb=cQXPEb07Lkcj90a32d38ChvYJAA-Q@mail.gmail.com/
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 6768aa56a311..74d2b84afeb2 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -4605,6 +4605,7 @@ F:	Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
 F:	drivers/pci/controller/pcie-brcmstb.c
 F:	drivers/staging/vc04_services
 N:	bcm2711
+N:	bcm2712
 N:	bcm283*
 N:	raspberrypi
 
-- 
2.45.2


