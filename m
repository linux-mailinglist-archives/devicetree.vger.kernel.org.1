Return-Path: <devicetree+bounces-49630-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 38AA5877207
	for <lists+devicetree@lfdr.de>; Sat,  9 Mar 2024 16:55:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9941528191B
	for <lists+devicetree@lfdr.de>; Sat,  9 Mar 2024 15:55:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9873045950;
	Sat,  9 Mar 2024 15:55:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ragnatech.se header.i=@ragnatech.se header.b="qgDt62PG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CBBF4503D
	for <devicetree@vger.kernel.org>; Sat,  9 Mar 2024 15:55:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709999702; cv=none; b=ERjaZ0SNDygW9vpk8rn2ePxILGcfbmHhkpaySdrhZmODpb1bgkNfyzmwhY78S+z0go487E/yUe7NP2bBZ1u+gO5s1MH82zYDhvtnXJ9d6mKBPIgsNWvSFqsmgzgmGNvY8cKFmT+s5VSCttO/1FjjAEVqrm9mcoLEOZpxoBTk+/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709999702; c=relaxed/simple;
	bh=okntOCxHdXfDiSNGp5Q/yJnmIT//bZkGzzyQ8XGTaX4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=ptqvD69FPePd1Rs4H47neK1CLrdZez71/oEExLUM9Ss1dtb0iQ4jQTMP+OJXU1Eu0ps5zLQrSBgg3NY2vT8BQLEn77b/eXcrE3BQ/AvxLetgBR86N2+Fnnxz46BrmvZaAIURos2lgHq1/54BgHwSS/a/6rqcUNgrn1ozkWh3Fl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ragnatech.se; spf=pass smtp.mailfrom=ragnatech.se; dkim=pass (2048-bit key) header.d=ragnatech.se header.i=@ragnatech.se header.b=qgDt62PG; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ragnatech.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ragnatech.se
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-a45c006ab82so376882366b.3
        for <devicetree@vger.kernel.org>; Sat, 09 Mar 2024 07:55:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ragnatech.se; s=google; t=1709999699; x=1710604499; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=TuPstnhPbF0+SqOFtEx4l3f770SiiyBvVtP9fLpE7xM=;
        b=qgDt62PG92EcX5ByZgywORYj/mtAYFh42in+kzB+UY53NXrfMZzqdB+SM2gTlL1wZT
         Fw7InVEatjH8sEXicUb6byNZ3f0q4emoQllkRkHiPjeojA7j3VLMFcdBysrCBeFuppqA
         BA3irOkQL7OvDy/w/NAVCGBy2Oy1xwgk8JsTudKkGdGKNZTfH1ttw+bUkqMk9rbqxTXb
         GIccof5v2g1afIvEJgR0MJg3VDZH9D+UNYBHQGEMMQocDVMChjfKExjdNAL01wGso+7V
         LbYqa6hv/Tp4eHSKlbeYyu1vyqYMQcBJlOJpJQuJOkNqaXj+j2AgBE9bxKC0zQSrtuH4
         gTtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709999699; x=1710604499;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TuPstnhPbF0+SqOFtEx4l3f770SiiyBvVtP9fLpE7xM=;
        b=wrW50UZELRE2OLIVkv7erhalufvQQ/1pDGMz5H6yJpRm+pqJtad8TA6W7+pETDEzfP
         JL6y25xDF08DR2vvAcPHmAQjS/jJ1eyZKeBsz8wVkGXDT6dg0r78YCCo/fUqm/sC7z/T
         PLk2pxSutpGqeZiOj5Qmlcfp0trpnUBmj76rPLBoxDOF3la9jfyJhk14BN1eLBzV3u4x
         BaUG/sC8OV24iGuOH1LAUluuZi1d8YL0I2735FPLykXzx0Nct53bS9dhcdUD5Gs1Hwfp
         q6xGerQPhpbIYzPcXIm6O3V9iJQ1SYLKgsi4I6uOv9KL3EDdzIQNh3Z2d/jYx0c1hq/W
         0rtA==
X-Forwarded-Encrypted: i=1; AJvYcCU9eUvQ0HEJnhJVMwJkqXOVyVBcLn3UzYWxjvNkGGDSevn1BZEFczXitNb82w9R/uxZ4Sn1pkAz3UQLnEkhoHw2sKJa2hV9imPnUQ==
X-Gm-Message-State: AOJu0YzJOBYNzclshOC/exWXmViP1EKjmuKQr76FCovVsTtBK137Gx3m
	MLfIkfFQjogsBiOwNV2xa040Xw2tGQJ/AcbH1hzip6uONjTUeChk7+w1/85oHBI=
X-Google-Smtp-Source: AGHT+IGbh6WubsmxB+EyIWgSpXzWgufzyOMSGt456adwbXwfz1//V8NkFP/YttWdi1xXc6jyRIfsHA==
X-Received: by 2002:a17:906:1d50:b0:a45:f94d:db4b with SMTP id o16-20020a1709061d5000b00a45f94ddb4bmr1215620ejh.35.1709999698940;
        Sat, 09 Mar 2024 07:54:58 -0800 (PST)
Received: from sleipner.berto.se (p4fcc8c6a.dip0.t-ipconnect.de. [79.204.140.106])
        by smtp.googlemail.com with ESMTPSA id kq17-20020a170906abd100b00a40f7ed6cb9sm1005216ejb.4.2024.03.09.07.54.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Mar 2024 07:54:58 -0800 (PST)
From: =?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>
To: Sergey Shtylyov <s.shtylyov@omp.ru>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: linux-renesas-soc@vger.kernel.org,
	=?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>
Subject: [net-next 0/2] ravb: Support describing the MDIO bus
Date: Sat,  9 Mar 2024 16:53:32 +0100
Message-ID: <20240309155334.1310262-1-niklas.soderlund+renesas@ragnatech.se>
X-Mailer: git-send-email 2.44.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hello,

This series adds support to the binding and driver of the Renesas 
Ethernet AVB to described the MDIO bus. Currently the driver uses the OF 
node of the device itself when registering the MDIO bus. This forces any 
MDIO bus properties the MDIO core should react on to be set on the 
device OF node. This is confusing and non of the MDIO bus properties are 
described in the Ethernet AVB bindings.

Patch 1/2 extends the bindings with an optional mdio child-node to the 
device that can be used to contain the MDIO bus settings. While patch 
2/2 changes the driver to use this node (if present) when registering 
the MDIO bus.

If the new optional mdio child-node is not present the driver fallback
to the old behavior and uses the device OF node like before. This change 
is fully backward compatible with existing usage of the bindings.

Niklas Söderlunn (2):
  dt-bindings: net: renesas,etheravb: Add optional MDIO bus node
  ravb: Add support for an optional MDIO mode

 .../bindings/net/renesas,etheravb.yaml          |  4 ++++
 drivers/net/ethernet/renesas/ravb_main.c        | 17 +++++++++++++++--
 2 files changed, 19 insertions(+), 2 deletions(-)

-- 
2.44.0


