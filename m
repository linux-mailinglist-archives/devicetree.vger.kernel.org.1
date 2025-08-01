Return-Path: <devicetree+bounces-201222-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C519B17D13
	for <lists+devicetree@lfdr.de>; Fri,  1 Aug 2025 09:02:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BC2E71C26B48
	for <lists+devicetree@lfdr.de>; Fri,  1 Aug 2025 07:02:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A222E1FC7C5;
	Fri,  1 Aug 2025 07:01:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="M/MwOjud"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 038551F4613
	for <devicetree@vger.kernel.org>; Fri,  1 Aug 2025 07:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754031716; cv=none; b=OoyQMTGRfKWhHD9tzehqRa26dvNlPgn893FSIS2vs81uM/iYFBk68GpbNxM5bZ6UCdIeObRnMLMcc7tlY/XoGAZL2jtuCsejVI+bTWDmZv71UXulhBiX2CPM0XkL2nUJI4Uz+n4BFIdwl0H6tVXIQnsXqXpQsRo9FMKp4rEiAYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754031716; c=relaxed/simple;
	bh=1gtkaxU8lzB24bYfFWeTLEwtt6GQeplprUCDPu66xiw=;
	h=From:To:Cc:Subject:Date:Message-Id; b=m7iwxDAN2IxwwehBDIgMMH72dzpnsqfiV3KXr//ZCZRUpxzcMq6/Yh1XExvwauu56JuuEqD1Yt7q2QvT/dZdecQMNA6B+5F1wGBKrKDs+lU5iZdRIChZJZBGriqMsnLyzWJD5vFOWutaflzZz3o1OAdis8YAdEtSAKeUBpsjq2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=M/MwOjud; arc=none smtp.client-ip=209.85.210.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-76bdce2ee10so404734b3a.2
        for <devicetree@vger.kernel.org>; Fri, 01 Aug 2025 00:01:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1754031714; x=1754636514; darn=vger.kernel.org;
        h=message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=B1QL6HLqz3BETHlGyW0GKYu0gTqBWZzWd0eO80if9fo=;
        b=M/MwOjudFzeC8iBaR93ZlxU6voL9LI10OCXKnWwddZuotrC3mYl9Q9X9PlfPfv4m6k
         MaiI+V7ETSjzaO9PcTSjCmn2D4GGf9dgk8Vzp5qALhSJEKgldoBlxeTLQi/5FkWN+VzJ
         4IxUCZxGdZWhQr1srKDXZ+TJae6GVvmrvLTVp2ZBox2Mz3qVESLJO+OoJ8Qn5Kv2IySD
         +Gj9MpW8IDUgiSqn6E47lest/lep6EVDjin5hbZ1ptEc3d4/Z3rLiI6N/ZZr+KBO3gVr
         1fBFge/3zhPIrfnxi7CldYAAyL0IAVdN4lClHz3C2Af0Yl9A0NQgIVLyWPBwWD9ROhc/
         AI0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754031714; x=1754636514;
        h=message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=B1QL6HLqz3BETHlGyW0GKYu0gTqBWZzWd0eO80if9fo=;
        b=b/4ndXe7Xi8FkD/Bh9TY3B2/r8WHSNUrRa2mV57uaSvYd9YihDDnME+V0udx0xNziz
         532Lis+OXsmDmk8uTRtpnhsdPEwfJ776fMnC+zkN+fm1+Lt1w60k2VBfgo+yvp4/ob/o
         nyr6xPB24qr28DdtH9pQiK8o04TF2gox68/rmJ2E5JdupRsz43vzSr/Hu99Q15AUExJW
         Lk6z9/k3UQerNodWUN+L9fgilbPZTKqJwV2dfHYui5VWlOUMu695YuEJByLUzawM2QaC
         I0sPAwGQgbjDaGVm6jEzXnU133xlSwH14H+Oaf7VJ2bKkWdXTAEjqfgrb2Ay68SvTiHH
         tEmg==
X-Forwarded-Encrypted: i=1; AJvYcCXyZHgoQ53NoUb94HqasfsmwpjuIscrD2gxRkt6KjYXAGtqpsaz6Wzlfm84vyiSy8WBmFJThvSRqPuY@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+rokprhOIdMRd2vmVjcF8N24D4pHrZMa2ivctriN4csdCLVx5
	0sCqGmgAcRtls5GypLFW45pV5QZ3YizHFNxGjOgu7dpQAViR9cW7fpYTWWOyBMjPtdM=
X-Gm-Gg: ASbGnculq+QoNl4r/JwuYOklhFBYxkSxRApeN9MNJj3UQSTp+ddLW6ts1Ylg7ag69Yz
	k8kGj+FwcCkCQbRP9HtG+B6bTRAQaDE/AyT7faIVfghqAFdnqGGArBms3xKAlahPCHrCxPPduvN
	CR115Xw3QcvzY1XstNxWhNXwEPIf67Qw2jIItT8nYiQ4r+Pe8gFI9hoc1Rmq5cPspMOO11ESU3o
	o7wuxb8/C6ihrZhfp/06IQTGg3NS75MF7SUJfZFl40SoLHPopkyq1nFghOel5norxaP+xqk+B27
	EGXr434d8OBkLnJmJsaxx09D0ohediMCBajBywL7q0jf0UqO73CwK6N3qIYyHIqvdhFExg57c4s
	Pb2dsD+0PjhCH/+LjolFTpiebPUUR+p8i1PZffw+3lydp
X-Google-Smtp-Source: AGHT+IGU9ZLun3YXbKoCUx9QZlnwzO5u9ujah9aC8iWcLVseEem42XMHKR5EamUm8BPPO2QR3/wwVQ==
X-Received: by 2002:a05:6a20:a104:b0:220:82c7:309c with SMTP id adf61e73a8af0-23dc0d2c094mr18053041637.7.1754031714232;
        Fri, 01 Aug 2025 00:01:54 -0700 (PDT)
Received: from hsinchu26.internal.sifive.com ([210.176.154.34])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-76bccfbd1a7sm3319043b3a.73.2025.08.01.00.01.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Aug 2025 00:01:53 -0700 (PDT)
From: Nick Hu <nick.hu@sifive.com>
To: conor@kernel.org,
	Alexandre Ghiti <alex@ghiti.fr>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@sifive.com>,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Nick Hu <nick.hu@sifive.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Samuel Holland <samuel.holland@sifive.com>
Subject: [PATCH v2] dt-bindings: riscv: Add SiFive vendor extensions description
Date: Fri,  1 Aug 2025 15:01:12 +0800
Message-Id: <20250801070112.12071-1-nick.hu@sifive.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

Add description for SiFive vendor extensions "xsfcflushdlone",
"xsfpgflushdlone" and "xsfcease". This is used in the SBI
implementation [1].

[1] https://lore.kernel.org/opensbi/20250708074940.10904-1-nick.hu@sifive.com/

Changes in v2:
- Update the message to indicate the user of the extensions.

Signed-off-by: Nick Hu <nick.hu@sifive.com>
---
 .../devicetree/bindings/riscv/extensions.yaml  | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index ede6a58ccf53..5638297759df 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -663,6 +663,24 @@ properties:
             https://www.andestech.com/wp-content/uploads/AX45MP-1C-Rev.-5.0.0-Datasheet.pdf
 
         # SiFive
+        - const: xsfcease
+          description:
+            SiFive CEASE Instruction Extensions Specification.
+            See more details in
+            https://www.sifive.com/document-file/freedom-u740-c000-manual
+
+        - const: xsfcflushdlone
+          description:
+            SiFive L1D Cache Flush Instruction Extensions Specification.
+            See more details in
+            https://www.sifive.com/document-file/freedom-u740-c000-manual
+
+        - const: xsfpgflushdlone
+          description:
+            SiFive PGFLUSH Instruction Extensions for the power management. The
+            CPU will flush the L1D and enter the cease state after executing
+            the instruction.
+
         - const: xsfvqmaccdod
           description:
             SiFive Int8 Matrix Multiplication Extensions Specification.
-- 
2.17.1


