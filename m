Return-Path: <devicetree+bounces-227984-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id AB0E8BE694B
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 08:14:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 364C23572CB
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 06:14:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A38D93191DE;
	Fri, 17 Oct 2025 06:11:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VoxFuiqz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BF84314B77
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 06:11:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760681468; cv=none; b=iNBin+NLJcRo21Gxm8X30E8jb8hSuSJ3M53Q/EH6W87E2UgXOISH9gdkR5XqmyC2BwIW74HJlYD/98uKel12UH5b8yinil/+/238BJWfxDM2k68xdYYfn5A8DHXMVA9bI8krEyj3lNVXSArxS27IkS+qf4qGhMuLqQvkAU6ZteA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760681468; c=relaxed/simple;
	bh=pCrMlpjFzN/XrjcWfs3YB+fSeVkmexAvaoC91gKso/4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=bF9jN+FSEr7+XjIhJOl9fJ65Zwv1hLrCBuU+xHfzFeZbw3Kb3fhts1OYNjOBw1WVvgIoe1rKGiYwgqft4MrDEe3PU68OWyt2nRvzmqzzWCdg/Kz9OpcljU89p4Gl6TFQ8kiLEunxq7PeZAY1U2np/PpjvsLbgadmDMJVvqp4gnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VoxFuiqz; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-27d3540a43fso16689005ad.3
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 23:11:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760681464; x=1761286264; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a4jV3SckoWHX2zGnHC+rYU8Ui0+E0D3XKDL6jcUcIDA=;
        b=VoxFuiqzPS2WN95byxDpAHHFuGK3A15yl3clLQgoImTK8+v/0M6fgtDzoPpUppIMEi
         Zger2TJmeNiLNj6XtNeZJY31ZP+oed9qFKOM3XsAy4/ehnA8dYmAPKBrC2mWcPzoiCps
         lF0VYLPBiWUT3uexc+agBjwS6IXT+tdysYQ8vj498JX2jQyDdD4MhHf5+uiAOXoFfPpz
         LaHt1syjxUxzpZtGmpzawp8nBYDiDmZAWMX/BggTQqM+HO+4OJ8HxULU9NNrdr46R/QE
         PMB8s30WLiZAd0ylucVjjxY+nasjbqt/ZYinPA6sKq9bA0ODboU01ngYN6gC5qUQV7dI
         zbwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760681464; x=1761286264;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a4jV3SckoWHX2zGnHC+rYU8Ui0+E0D3XKDL6jcUcIDA=;
        b=nze+b5zYc2c+r2iAdapZdQe0M+GodRBROhYc9ahOQ9Zuqd88icLeAEXQzRO78tVlDG
         sUAhwQ/AnPcupNS2qpELYzpbfYPt1gcYohxrE+jJj9RwTJQ4zo0heig6ZN/cGWHQXSK0
         eyRViPB4sIo0f5TjB54WGM6KNjhW+NQvS1o0mTMyoFYq4eoaXzUgXuhTb2fCMEiBMren
         m8qHOViB5W4NsyE2PtS630I9MQLS1aY/jIlpKXuPO+3RwnnamsmvTD1loIs/blcx17TI
         3/dEKoQZXOeB4amVp1cAlQxJ48OhI3aHScbjQsxpD1C7Ber/Urod+ETSeqB5nbxKyc54
         IUBQ==
X-Forwarded-Encrypted: i=1; AJvYcCUwtn0QnsE8F2g1HzRB2juXTupmTbhHKLd+uPP7nNkApUGHkK45QUNjEA4z9j1iJ6cywZLC7KbZlZvD@vger.kernel.org
X-Gm-Message-State: AOJu0YxC+7oepPPKYSOXr8Qtkoe6PqSwski/wFqzW+QREw87EuOafI7T
	DJSZhECC4z+4mmwVwG3B+fXgWy2+EW0FFBpqOM9K2859QmJA0hL4apMN
X-Gm-Gg: ASbGncvwcQj7e4TbOep2sD+BEyeMvmVPb6Ghaar4FuCgsd6ffAHzFRWXRV2s5UJVjrI
	IDJYGpavP6V5DgaGVzNqSeeL+8OBcwLlpcIFX57kKnAyglQvCHverNd5v+i8T9J/V1Y57K5DbvX
	5+vv6xcUP4jNvC3L8JOmXlbszJOl0d8p0M14aspfyxEC+3RmfFep8Ona8e4nJSR7zLqyp1DdwXy
	xbzK4uidWoWVfJMti2T9+b/rC79w5VnO22GsCZOW3uDEc/L4uw2enMwDUm0Zux7MljvAVPYQGSg
	n+lQQtGTJK13+UjN0KM+IaFMCorHcSkdv9NVEYqVyoZQ0cee1T2tH54l5F9G4p+100TCtwXtu9j
	ptbqQS2NvHSCui7oz4U06K6948sf2DrPPe/T7OvZpSG8hHfZOQpB3PhMb54KaLWyrJGDuGucWWZ
	xgMqz+d7QdJ0/QvdN7Ix4wuIXoIKHp
X-Google-Smtp-Source: AGHT+IH5ImymZLKDALz+oetlYqaue91LhCFN2bDDJh6sQMmR3UMcGoG20bbqt1QrYkz1S4wAj3MGrA==
X-Received: by 2002:a17:903:3d0c:b0:27f:1c1a:ee43 with SMTP id d9443c01a7336-290caf83123mr30401595ad.29.1760681464290;
        Thu, 16 Oct 2025 23:11:04 -0700 (PDT)
Received: from d.home.yangfl.dn42 ([45.32.227.231])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2909938759dsm51315475ad.49.2025.10.16.23.11.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Oct 2025 23:11:04 -0700 (PDT)
From: David Yang <mmyangfl@gmail.com>
To: netdev@vger.kernel.org
Cc: David Yang <mmyangfl@gmail.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Vladimir Oltean <olteanv@gmail.com>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Simon Horman <horms@kernel.org>,
	Russell King <linux@armlinux.org.uk>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH net-next v14 4/4] MAINTAINERS: add entry for Motorcomm YT921x ethernet switch driver
Date: Fri, 17 Oct 2025 14:08:56 +0800
Message-ID: <20251017060859.326450-5-mmyangfl@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251017060859.326450-1-mmyangfl@gmail.com>
References: <20251017060859.326450-1-mmyangfl@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a MAINTAINERS entry for the Motorcomm YT921x ethernet switch driver
and its DT binding.

Signed-off-by: David Yang <mmyangfl@gmail.com>
---
 MAINTAINERS | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 4faa7719bf86..ea72b3bd2248 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -17435,6 +17435,14 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/net/motorcomm,yt8xxx.yaml
 F:	drivers/net/phy/motorcomm.c
 
+MOTORCOMM YT921X ETHERNET SWITCH DRIVER
+M:	David Yang <mmyangfl@gmail.com>
+L:	netdev@vger.kernel.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/net/dsa/motorcomm,yt921x.yaml
+F:	drivers/net/dsa/yt921x.*
+F:	net/dsa/tag_yt921x.c
+
 MOXA SMARTIO/INDUSTIO/INTELLIO SERIAL CARD
 M:	Jiri Slaby <jirislaby@kernel.org>
 S:	Maintained
-- 
2.51.0


