Return-Path: <devicetree+bounces-43991-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D87D85C157
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 17:27:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 91B90B23CC2
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 16:27:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02422763F9;
	Tue, 20 Feb 2024 16:25:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mistralsolutions.com header.i=@mistralsolutions.com header.b="mSQkd3b8"
X-Original-To: devicetree@vger.kernel.org
Received: from egress-ip43b.ess.de.barracuda.com (egress-ip43b.ess.de.barracuda.com [18.185.115.247])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 976D9763E8
	for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 16:25:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.185.115.247
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708446348; cv=none; b=SqxL8x+rWRdTL9EI8ApIxMOxG+dxU20Y8DUoFLbP7EPxUqDDDHdFNerDMtFjZOWpGBFRPuRTbJ9+fyQRy24Bjz66yvZbzdRqx14XbUTonrcO/gam0uRlaoXHHsVDp1R7TDb0HfBw0zA9RHpdvv2/3SOkU9MlWyDFKHoxts17yRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708446348; c=relaxed/simple;
	bh=H5FBmGFk/JAqnBLzMz51HsWYL+w+B8UJUW2xNg42z+U=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=VK63x0YS3JZX4sVxeEsZCZz+KR0gIqYp5RGHHXoUPDUBP7g6r4pCKFKQMCTgzkFtqB850GXEmBDcSD74chgOQD/nqajDxl8xf8K9j47cqq3XcI36JzbX1Btte7+3iPmNCOdpCB5ZuHiEtkehnQPbBcfWU0Yx7Ql9GDoff2QCt1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mistralsolutions.com; spf=pass smtp.mailfrom=mistralsolutions.com; dkim=pass (1024-bit key) header.d=mistralsolutions.com header.i=@mistralsolutions.com header.b=mSQkd3b8; arc=none smtp.client-ip=18.185.115.247
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mistralsolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mistralsolutions.com
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200]) by mx-outbound18-77.eu-central-1b.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Tue, 20 Feb 2024 16:25:38 +0000
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-1dbcf75fe1bso42244635ad.2
        for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 08:25:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google; t=1708446337; x=1709051137; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=eGSBqi+471g6iUqgaSDbqqcZPD+H6nZRINSP+WgoQ4w=;
        b=mSQkd3b8c4v9MacJ1eqqchSKGxR6O1MsD+4O6uBKogtQdkTa/D3usG4ntS6DMj5Ncq
         fpFV7TPsknIlVs0tEu4e+p/jV8TQhS8XLyMqb7UPcXCl6WGOCRrF2r7cskbmzAlZ8i8r
         zdS+8sVXqbTOmk61Zdm4FsM+YdIpdUWHD8sHQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708446337; x=1709051137;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eGSBqi+471g6iUqgaSDbqqcZPD+H6nZRINSP+WgoQ4w=;
        b=It1wv5AgujGWR2VHo7SVMa9E8D9VteFv3bBi7ptGzSptlSvM7YZCqImNlhhe/NHyzY
         2yKmeK3s7tgRXI3b8GoqwXrdqra8MP5b6Pacj7K08ZzA7aWD14Sq/bEqW9ubIEgD9Vvo
         TQJ1MfZZawQvNOgd1To0isWVBx8eNxu7EUm0krvFiXa/3009I9UFYJfv6OdEY7ktnI4T
         M9LZRCBSjPoobhd0PMv5QD4jxwHHEh9fUsLGA98Qtqm8IWAwWwnEhKaPreBDEI1CohmF
         UqTaDUCHFKaxbrMH410pjuIk2DpEPhKj4tKtRX/fV9tqfpIoY+4dld8hiL6X3493lZbP
         vtEw==
X-Gm-Message-State: AOJu0YzwQWllrvqGmgJyJv/hfw+madRHxpnGd7dxC1WoRc+5iHVpKPpQ
	mVXXTnz8nQ26ilcGvXtyv2jrAeIDA4W+7KhWj8LCfQX4bkRdRomTAw7d7RnAz81/KywJZBSalMV
	pbOelPkZVcjjRzc/BlII92lEdoWUHCbCr0yVdwKHuAsnLPSOk+KvjQVxbEWJWpktJWn+PAfNLYK
	KUatvzZTeCxJcHdrL2jA==
X-Received: by 2002:a17:902:b687:b0:1da:1daa:e2bd with SMTP id c7-20020a170902b68700b001da1daae2bdmr16183498pls.19.1708446337031;
        Tue, 20 Feb 2024 08:25:37 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGvxvdngmwfVLXi4RuPweXwVlvVK5tru//fjtL0wlKmy5mowGYnUhXP0nd/MJ7ingHb+/MxRg==
X-Received: by 2002:a17:902:b687:b0:1da:1daa:e2bd with SMTP id c7-20020a170902b68700b001da1daae2bdmr16183484pls.19.1708446336746;
        Tue, 20 Feb 2024 08:25:36 -0800 (PST)
Received: from LAP559U.mistral.in ([106.51.69.35])
        by smtp.gmail.com with ESMTPSA id d17-20020a170903209100b001d9ef7f4bfdsm6447398plc.164.2024.02.20.08.25.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Feb 2024 08:25:36 -0800 (PST)
From: sabiya.d@mistralsolutions.com
X-Google-Original-From: sabiya.d@ti.com
To: nm@ti.com,
	vigneshr@ti.com,
	kristo@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	linus.walleij@linaro.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	u-kumar1@ti.com,
	sabiya.d@mistralsolutions.com,
	Dasnavis Sabiya <sabiya.d@ti.com>
Subject: [PATCH V3 0/2] Add CAN and OSPI support for AM69-SK platform
Date: Tue, 20 Feb 2024 21:55:25 +0530
Message-Id: <20240220162527.663394-1-sabiya.d@ti.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-BESS-ID: 1708446337-304685-12424-15769-1
X-BESS-VER: 2019.1_20240214.1700
X-BESS-Apparent-Source-IP: 209.85.214.200
X-BESS-Parts: H4sIAAAAAAACA4uuVkqtKFGyUirNy1bSUcovVrKysDAEMjKAYuYplmbGacnGZg
	ZJKeYWBkmpSamGKcnJScZJFmmmyRaJSrWxAIV8xEhAAAAA
X-BESS-Outbound-Spam-Score: 0.40
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.254352 [from 
	cloudscan12-73.eu-central-1a.ess.aws.cudaops.com]
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn't match header 
	0.40 BSF_SC0_SA085b         META: Custom Rule SA085b 
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
	0.00 NO_REAL_NAME           HEADER: From: does not include a real name 
X-BESS-Outbound-Spam-Status: SCORE=0.40 using account:ESS91090 scores of KILL_LEVEL=7.0 tests=BSF_SC0_MISMATCH_TO, BSF_SC0_SA085b, BSF_BESS_OUTBOUND, NO_REAL_NAME
X-BESS-BRTS-Status:1

From: Dasnavis Sabiya <sabiya.d@ti.com>

Hi All,

This series adds support for the below interfaces on AM69-SK platform:
-  CAN support on both MCU and MAIN domains
-  OSPI NOR flash support

v3: Changelog:
1) Updated OSPI partition table to increase the tiboot3 partition to 1MB.
2) Rebase the sources to accommodate the latest merge.

v2: Changelog:
1) Removed CAN interface aliasing.
2) Updated bootph property on the leaf nodes.

Link to v1: https://lore.kernel.org/lkml/20240118153524.4135901-1-sabiya.d@ti.com/
Link to v2: https://lore.kernel.org/linux-arm-kernel/20240219111422.171315-1-sabiya.d@ti.com/

Dasnavis Sabiya (2):
  arm64: dts: ti: k3-am69-sk: Enable CAN interfaces for AM69 SK board
  arm64: dts: ti: k3-am69-sk: Add support for OSPI flash

 arch/arm64/boot/dts/ti/k3-am69-sk.dts | 163 ++++++++++++++++++++++++++
 1 file changed, 163 insertions(+)

-- 
2.34.1


