Return-Path: <devicetree+bounces-137615-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 04251A0A1E4
	for <lists+devicetree@lfdr.de>; Sat, 11 Jan 2025 09:09:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 01C1E3AAB57
	for <lists+devicetree@lfdr.de>; Sat, 11 Jan 2025 08:09:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4D4F16BE3A;
	Sat, 11 Jan 2025 08:09:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nigauri-org.20230601.gappssmtp.com header.i=@nigauri-org.20230601.gappssmtp.com header.b="EVKuqwJO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24BF815666D
	for <devicetree@vger.kernel.org>; Sat, 11 Jan 2025 08:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736582965; cv=none; b=Ru0Cy7GBlj4g2YJZiGWmE/27QFqV82z/iAAmI6+Wz0eFcK0DsqWEyh2HhD8lYu+OozXiV2haECISTkn+pSJdfXUqsb4/jknd3GyLG50dbXgPrzPgu3eUozLzBkQ/KXAuB+Z7ZPJZrvy9tOV+0J7sTnxJtQ6Grq8uDu3LeT3MRLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736582965; c=relaxed/simple;
	bh=1fzBvUF2DGmuKbQvhmfhqe7NSnB/WcK6n0Zplbp+dwE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=d70sk7ccdhoiYnj+OirEs/BW8Zh7lxf4W716CRPs6snPq+mywrqREL54MY4+IQ7sYN3TsDGZLc8L/vy3mnAPwwok6ku0prgeEMLT2V+34ihi+uegieg9oI3WeQf7zfPL91t8ikOVmIDWrQvogh5YU7DHzF38FU8sCkuvxUBTFcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nigauri.org; spf=none smtp.mailfrom=nigauri.org; dkim=pass (2048-bit key) header.d=nigauri-org.20230601.gappssmtp.com header.i=@nigauri-org.20230601.gappssmtp.com header.b=EVKuqwJO; arc=none smtp.client-ip=209.85.216.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nigauri.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=nigauri.org
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-2ee989553c1so4560518a91.3
        for <devicetree@vger.kernel.org>; Sat, 11 Jan 2025 00:09:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nigauri-org.20230601.gappssmtp.com; s=20230601; t=1736582963; x=1737187763; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=FCioaaXcQd55rRmoK6px3r9qrgwb74I5tMT10C21g1Y=;
        b=EVKuqwJObFslgTer3BIZ4LA61g/lnMR5SF6ExMmRxQvlPcw2tjfP6LhgX7vgM7ur5I
         zVFW0w/BjZY0AiBs8yReb0yqD7dmJj/GoZ7JJQnGqypVFRIxnEAICc8l0wwtp0e1x85P
         tsGU7udp5q2a5/99wnpsCASLcMhBfZVLtvIXzMTLTE1eQarQBBLHXxtdnyzAYNmvW3Dh
         BUEY3Web+4Mqs13pRcn1/RFHiJfYNuKTgelb5KdlqmuxcLCfcn45PChsmmPovs9P2ijv
         vLfUcAzmfV0Bq09JLxK+0vUPK9/KBkO5TcisHuEzFzTROfCSb4VahGO/oKox0L1u+zux
         25bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736582963; x=1737187763;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FCioaaXcQd55rRmoK6px3r9qrgwb74I5tMT10C21g1Y=;
        b=kPAj+f3gka1bfhi6NYT1F9CBvy86OQ4q+TpeKHKVWxI840QYib9bo/47Js31Qkyhd6
         Lwn/F8m8c+RbCWEKAWjUuhJt3qps5ZyM/cbeReznocfqR2qW9aION3cR0u1SucfoIBcY
         KL/94mIoOvMtPVLn9n5573+2qMLYyd25+bky7hKEJO/9fUQ0ntpJV6FSHEMcisMX4MJ0
         laMignu+u8yco5aaENoylEbkMz1qwJfwuE0hzQFRqNKOGST1hdd2j3UtutuZl4RJvKwU
         bbXtO49OmDKlrVQIVLbCozdOlf/IKCB1+j5PeCagDsyUGTz14mKnxzn6Tn6YcGP5goTN
         WxkQ==
X-Forwarded-Encrypted: i=1; AJvYcCVPn3UyKoIvr7nJmRDhENFBwVeKVRP7ddDE2hlY2w7QOQIIu02o1KLgH+BHGJnNt9wI6Kawr5UlkIK8@vger.kernel.org
X-Gm-Message-State: AOJu0YyuDbTkm/lBKobNO20kJIpDo6NO9bieAg8d/uy/J6qnU+mSxezJ
	hIvip6goOaSNmQvJFJwywSO0xxGpLwrkU0DY3/o2g8Sk7nsKLGbh4VU0POH2
X-Gm-Gg: ASbGnct60X+TVj7yjCqNSNJD+1P6eaiUHqcoavGXdvt9Pqy0tlCHFh+vcLceJoWGfpQ
	d4hEETTTO8jc1dZ5J6by8O4mKGHRdJMH8Ik469gbpnBai1sdHdZJ18m9EP2eN8NLxw/iQSSdjlS
	5wDFJFYjlpS45b4Xwh+PeuOKIdCtcYDHGT2QH+XG6FjJxCxy6EIc3IeW8AidoNoTufzs59FQUlv
	M9hVFAN12PuG3rEAeN3JN2AtzUvHIHSEE2S2EmwBGY6oLtlvZhE7GRBjA==
X-Google-Smtp-Source: AGHT+IGspfHYn3IaJPnUKvFg2LgedQPRGrZFITI/z/DYce9fvxR058+6baDm1GXXg6jE2N8cn/Xk5A==
X-Received: by 2002:a17:90b:2c8d:b0:2ee:ab29:1482 with SMTP id 98e67ed59e1d1-2f548f2a9admr22163074a91.16.1736582963215;
        Sat, 11 Jan 2025 00:09:23 -0800 (PST)
Received: from localhost ([2405:6581:5360:1800:aeaa:a1da:95e3:2274])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2f54a34dbeesm7160715a91.41.2025.01.11.00.09.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Jan 2025 00:09:22 -0800 (PST)
From: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Masato Kiuchi <kiuchi_masato@yuridenki.co.jp>,
	Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
Subject: [PATCH 0/4] Add support Yuridenki-Shokai Kakip board
Date: Sat, 11 Jan 2025 17:08:59 +0900
Message-ID: <20250111080903.3566296-1-iwamatsu@nigauri.org>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi all,

This patch series add basic support for Yuridenki-Shokai[0] Kakip board[1] based
on R9A09G057H48.
And this series supports the following:

  - Memory
  - Input clocks
  - Pin Control
  - SCIF
  - OSTM0 - OSTM7
  - SDHI0

Best regatrds,
  Nobuhiro

[0]: https://www.yuridenki.co.jp/
[1]: https://www.kakip.ai/


Nobuhiro Iwamatsu (4):
  dt-bindings: soc: renesas: Document Renesas RZ/V2H SoC variants
  dt-bindings: vendor-prefixes: Add Yuridenki-Shokai Co. Ltd.
  dt-bindings: soc: renesas: Document Yuridenki-Shokai Kakip board
  arm64: dts: renesas: Add initial device tree for Yuridenki-Shokai
    Kakip board

 .../bindings/soc/renesas/renesas.yaml         |   4 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/renesas/Makefile          |   1 +
 .../boot/dts/renesas/r9a09g057h48-kakip.dts   | 138 ++++++++++++++++++
 4 files changed, 145 insertions(+)
 create mode 100644 arch/arm64/boot/dts/renesas/r9a09g057h48-kakip.dts

-- 
2.45.2


