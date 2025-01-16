Return-Path: <devicetree+bounces-139057-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A1F2A13CA6
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 15:48:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CB3983A3727
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 14:48:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D94D822B8BD;
	Thu, 16 Jan 2025 14:48:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nigauri-org.20230601.gappssmtp.com header.i=@nigauri-org.20230601.gappssmtp.com header.b="rWfPO12o"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EB8222B8A0
	for <devicetree@vger.kernel.org>; Thu, 16 Jan 2025 14:48:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737038890; cv=none; b=ehbZqiVPpVeRcLXhtRGIbeXMP29e1vadHvbSKdvcHcQaHh9vydIa9kdf1V3oYscXUrFUsCCdGCshR537AdjEZ4IjiqCvEo4eyehvccWFeTbr7K1be7SNFGWdfQ/2/k0RXaWGNBZGiI0h/YrphGY0mzKi6HkTjWe1tbLsxByxJ9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737038890; c=relaxed/simple;
	bh=1SnJvhZS6jikGDoOS2o9cl06oHxehkH8QRPQU6er5s8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=gNOz/lkVJCp25za6wgzwwhtr1uAVCZzi0EUoPTQg8yKFvvTvv+0vMe/Y8fORNZX8zm4qmu5+7uhOO/56s0g8aTK2gzEpBAMfJCWschko0jo7o4pLvJqEuxPK8ZJvcaDYwotmUWBxhSuOPNjCyER+A3D9//+W4wnnC9gz6zPYtVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nigauri.org; spf=none smtp.mailfrom=nigauri.org; dkim=pass (2048-bit key) header.d=nigauri-org.20230601.gappssmtp.com header.i=@nigauri-org.20230601.gappssmtp.com header.b=rWfPO12o; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nigauri.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=nigauri.org
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-2164b1f05caso19400885ad.3
        for <devicetree@vger.kernel.org>; Thu, 16 Jan 2025 06:48:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nigauri-org.20230601.gappssmtp.com; s=20230601; t=1737038888; x=1737643688; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JuDcEd84bTQL4eBHQ2himRHRr+9J/Cjh0Sxr5zOEoxE=;
        b=rWfPO12oHbE+jjDHb//PH4xVCiedFOg+v0R6Z6EPMIKvXLAUewJhVWkpleSGQltR3a
         35Y9UualnSSB7o+oBHfSvEPP1hjex+FnXHsQT6RIvwo510DqnUNYerAGqorW45p2hL/t
         GAMcOvgZF3mHUjmslAOcON+aGQKuC5+vGYr0wdXMt87CeJyJe4hloCfB80luJUM7/kmx
         XDyi8nfGgj+jaIGQlbE9jtFYn6e6BvdbSiEdoTVkzDMEyuTjyRleaZhUqnEDV7dOy9cp
         8/n9rsiufTvNo2eER/HfIjKr5OGMEAJi1dqBcCLORjCxTyC0PY4lMT/vkR7e//xdI1gK
         JpPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737038888; x=1737643688;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JuDcEd84bTQL4eBHQ2himRHRr+9J/Cjh0Sxr5zOEoxE=;
        b=j8x5CJKaXbDb5qnRW2odHhDAZJUPc2whdsBJQXTJ0LfJ+joB6c1eYK4nq9zt3IAY2a
         AUil3j34ya/Ho3F9usstqJAKvgVej0YBPELgu4ZLhc9d2IyrA1OJk2kZN4zn295r2v6G
         lbmcqHnggF1JHn93PW6/K4LsRPvjDB1kKWH7P7m4pyuKYTxKB34QxBY/Fo2uX5JV81oC
         AddlZmBoqO2p2MOt/PVEIxX3WH5YA2hrGYcB9oXiMxa2hfNWpG4X0ymmqWr8JiCdlTYP
         YRi1H3iAQ+4gDutl49wK8bWS6YfiKo25Un4Pue88h1A/JcqApbfyjpRzkilxVkYEewgs
         G5cQ==
X-Forwarded-Encrypted: i=1; AJvYcCXBy6hJwFQXjvVWV4TQZnm0CM55SQcYfle/z1k0oimWWuB1GTF1xnxObq4+rLbycaSrrovyiNIjmrXs@vger.kernel.org
X-Gm-Message-State: AOJu0YyDy07TC0m+lqjB9l20GX5oao/SVTlgW+yXlDQzne4LAGQZv6Tl
	48dkkqmsYFOP+UNJ5hj/6xxcw84CWvqaWXS3tO6/okGbYsvjW2A4YOi1I1gzu9o2Fjfn9+pXcQ=
	=
X-Gm-Gg: ASbGnctYSJ3YXt8RmDUSPmUmScXwfmWcmQhlhTFVj6KUCqYNquWiQQ7qZ9F3+444CpU
	kFKlRKdOtSX59TcGSdjdJXbz51u2pBvnSpp1nUoUA2A36SKWUjQ3ktKX8APkDv5HdC6vZHm6POo
	nBBTk8+FpHTvlwAp7Yd6niipWlK4FrV4pLssCem0RhvukHToQdoEk3Y2Ht556uoYl4Kf0FKZ7ji
	SEtPa7/P9cnMFzFRNkVa2hKtbqFNMJc51AlJPXbqXH37HAQwyUDJjieVw==
X-Google-Smtp-Source: AGHT+IE3p6Ovd9WA1Gh67Vw44Eu64B66cIifPSIaubS0QUHHHwiMMxwo5ZhvP4pAsQblNxqRLLERYA==
X-Received: by 2002:a05:6a20:3d8a:b0:1e1:b28e:a148 with SMTP id adf61e73a8af0-1e88cf7bfb7mr48403664637.5.1737038888678;
        Thu, 16 Jan 2025 06:48:08 -0800 (PST)
Received: from localhost ([2405:6581:5360:1800:4323:933a:5975:d650])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72dababc174sm79488b3a.178.2025.01.16.06.48.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jan 2025 06:48:08 -0800 (PST)
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
	Nobuhiro Iwamatsu <iwamatsu@nigauri.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 1/4] dt-bindings: soc: renesas: Document Renesas RZ/V2H SoC variants
Date: Thu, 16 Jan 2025 23:47:49 +0900
Message-ID: <20250116144752.1738574-2-iwamatsu@nigauri.org>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20250116144752.1738574-1-iwamatsu@nigauri.org>
References: <20250116144752.1738574-1-iwamatsu@nigauri.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add SoC documentation for Renesas RZ/V2H(P) (r9a09g057h4[568]) SoC.

Signed-off-by: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---
v2: No update

 Documentation/devicetree/bindings/soc/renesas/renesas.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/renesas/renesas.yaml b/Documentation/devicetree/bindings/soc/renesas/renesas.yaml
index 225c0f07ae94c8..4f2645e8140c5c 100644
--- a/Documentation/devicetree/bindings/soc/renesas/renesas.yaml
+++ b/Documentation/devicetree/bindings/soc/renesas/renesas.yaml
@@ -552,6 +552,9 @@ properties:
               - renesas,r9a09g057h41 # RZ/V2H
               - renesas,r9a09g057h42 # RZ/V2H with Mali-G31 support
               - renesas,r9a09g057h44 # RZ/V2HP with Mali-G31 + Mali-C55 support
+              - renesas,r9a09g057h45 # RZ/V2H with cryptographic extension support
+              - renesas,r9a09g057h46 # RZ/V2H with Mali-G31 + cryptographic extension support
+              - renesas,r9a09g057h48 # RZ/V2HP with Mali-G31 + Mali-C55 + cryptographic extension support
           - const: renesas,r9a09g057
 
 additionalProperties: true
-- 
2.47.1


