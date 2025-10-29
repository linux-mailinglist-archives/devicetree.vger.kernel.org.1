Return-Path: <devicetree+bounces-232662-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E23CC19EC6
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 12:06:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6583A3B00E9
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 11:06:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E411930B525;
	Wed, 29 Oct 2025 11:06:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="AyEMWVjr"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 526A22E11A6
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 11:06:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761735992; cv=none; b=MEHfR6VPr6bH2zeHar02SF04Izy0sGzT3WTnel9XALrhWjD54JNzTUP8reNq0FvVEZ8wzlh5sze4NS4hZ56cZU2VPBsBuRG3mX20LhKPde0bu5hdd0d+a7B2AcP8ogZvg20KGZWQz+QbBr9s1XW4lGe4/RTWxvrXgdyAZk6mQgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761735992; c=relaxed/simple;
	bh=jKGLCRj7hWPj6nCNCOR0lDjd3tjy9+HvWQH6dH7MB6o=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=a5LyHneGtIneP6RyF1fsGl+O6HqOpegKoMdsulx+YEwmVzRpKEIt+FmeI5bLYxn9aiX0+sW6fyZ9Nl0rQ3fM5K3nFt4CZObANhrduzejLOLt0RHM4zKZf0Ot8TSXQqnYVGUshUx9qDvxhbDdAF1kClavmHMNVhWiijCg8MeFc9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=AyEMWVjr; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1761735990;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=wq8ujO9Dpm/7YPTf3iw45Jy/+tYmVu6IfrY/4dh0q7w=;
	b=AyEMWVjrdCfSxya38FkRF3wz9MtgYRHON3Mqea29OB7uqMIS11VWyG+dWCcY5lwQunx7lY
	4841PKwKrT4ke21+/dPpa8jpmuU66yM2266I/v68B6pnhGjK5iNsxC4uy02N7S3ycIMusR
	9pa46AP/M80n45OfESyivwKRnpiJpNo=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-126-hX0B89BoMdmm58g5WYyNag-1; Wed, 29 Oct 2025 07:06:29 -0400
X-MC-Unique: hX0B89BoMdmm58g5WYyNag-1
X-Mimecast-MFC-AGG-ID: hX0B89BoMdmm58g5WYyNag_1761735988
Received: by mail-wr1-f71.google.com with SMTP id ffacd0b85a97d-427015f62a7so3347561f8f.0
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 04:06:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761735988; x=1762340788;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wq8ujO9Dpm/7YPTf3iw45Jy/+tYmVu6IfrY/4dh0q7w=;
        b=c+Is00l8XdD+Rs/KlZTBnM0HLC03cF2gozYDXxiVd/tzHQBtjAH0NSV+SpamFFAG4i
         uwfkgMMWSFLh4jpwxbEYad37oLWZw2N7uEZVJ/9OWV1TKilN8qU079LulocI7CLNOKEP
         x5MMwS9mnl8/YEFM1E8x19w7ndjUBBD4BiehSeh0debOAeAAdInFUirWSrBHFdWvO2KC
         bbOhu5zph+oOsjQ0l2nnJX3a6lpHTo/lAOD9t3W1hYvlLO9dLFV5u+aFfrszcdMnffyC
         JWYvK/gq/+hfyAG6k8Lsnq9WF79Mu8vCvVlNrXaWU5VKl/eVcei3Qz79dG77Svl+SDMX
         xDQQ==
X-Forwarded-Encrypted: i=1; AJvYcCXPajMFEixMoD91da/yc3m9G/lW5PaRReLWzPLXPSrKiwlAbpTfhhtw0BDgdDmBANJ/J/I6Grb77cPY@vger.kernel.org
X-Gm-Message-State: AOJu0YzKjKEtZXLtLt0Ch8nEEiFSrTlIVfLR3Bo21gLd61C+6DoqsGhA
	ZrjR3HkGvcmeMH6iQtXhtWJHGovVrBw2AwAbchJnXQs7IIreG8WmDxRCqn4E6giHGnG4Nx/LBpq
	AuVZ314Vx87UWxjlvjqLvPhR8U1dFQl0/chTeCT0BwgzNfGL6uEPXlAiXUPrJaOc=
X-Gm-Gg: ASbGncvwmeNGjy6uf6nAVFiXmb2geirN4basJl8uD6vUazcpmgUZbpHgwU0t9+bAVms
	+ydejacEnxig5lmnhDtYr/DOTq4BpcdhUeDThpWkxOmXkNjaY459bUEf7WH5cOU/aE0QQB0YwU6
	6qGX2CFUZU0f/gG5hQL4ZPVvKzcF2CZgOi1QgyF20Sf0/JPzonjlRo4bxLjHkUGEYNBROnz66nM
	TpVg5XXGlV7Vc3QhNSZb5QapISAwEEllk9M3n77G94wsX+xbJkfHddAJ6nuASKv6csWU6pmuyH5
	VAa5f/Pztmrk6t7Pd1mLabqtz9G5KmxrzcoNV4dn3lO5fRvnsdD6QWJ2JyzMJfo6XEDTmnEDVMh
	gtqtXcyCdvnDagdPj9rtiZb5IydLN7hih+VPwFLXpmWMzbfF8
X-Received: by 2002:a05:6000:2882:b0:427:e1bf:13db with SMTP id ffacd0b85a97d-429aefd0840mr1957005f8f.54.1761735987800;
        Wed, 29 Oct 2025 04:06:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHB8RsWZ0SjBkvUi9VbRgSefrwznyNGIlSzLxxkHxgmXUspqFq3z5NvztJjJO8HtqyDc5C8pg==
X-Received: by 2002:a05:6000:2882:b0:427:e1bf:13db with SMTP id ffacd0b85a97d-429aefd0840mr1956977f8f.54.1761735987352;
        Wed, 29 Oct 2025 04:06:27 -0700 (PDT)
Received: from lbulwahn-thinkpadx1carbongen12.rmtde.csb ([2a02:810d:7e01:ef00:ff56:9b88:c93b:ed43])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429952ca979sm26665735f8f.14.2025.10.29.04.06.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 04:06:26 -0700 (PDT)
From: Lukas Bulwahn <lbulwahn@redhat.com>
X-Google-Original-From: Lukas Bulwahn <lukas.bulwahn@redhat.com>
To: Ariel D'Alessandro <ariel.dalessandro@collabora.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Minghsiu Tsai <minghsiu.tsai@mediatek.com>,
	Houlong Wei <houlong.wei@mediatek.com>,
	Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	devicetree@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Lukas Bulwahn <lukas.bulwahn@redhat.com>
Subject: [PATCH] MAINTAINERS: adjust file entry in MEDIATEK MDP DRIVER
Date: Wed, 29 Oct 2025 12:06:23 +0100
Message-ID: <20251029110623.96661-1-lukas.bulwahn@redhat.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lukas Bulwahn <lukas.bulwahn@redhat.com>

Commit 169ac4bc5bc4 ("dt-bindings: media: Convert MediaTek mt8173-mdp
bindings to DT schema") renames mediatek-mdp.txt to
mediatek,mt8173-mdp.yaml as part of this dt-binding conversion, but misses
to adjust the file entry in MEDIATEK MDP DRIVER.

Adjust the file entry after the conversion.

Signed-off-by: Lukas Bulwahn <lukas.bulwahn@redhat.com>
---
 MAINTAINERS | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index e428ec79dd24..c094b2fef0fc 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -15881,7 +15881,7 @@ M:	Minghsiu Tsai <minghsiu.tsai@mediatek.com>
 M:	Houlong Wei <houlong.wei@mediatek.com>
 M:	Andrew-CT Chen <andrew-ct.chen@mediatek.com>
 S:	Supported
-F:	Documentation/devicetree/bindings/media/mediatek-mdp.txt
+F:	Documentation/devicetree/bindings/media/mediatek,mt8173-mdp.yaml
 F:	drivers/media/platform/mediatek/mdp/
 F:	drivers/media/platform/mediatek/vpu/
 
-- 
2.51.0


