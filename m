Return-Path: <devicetree+bounces-57772-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0522389EB9A
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 09:15:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 989581F2207E
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 07:15:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4DAB13CABB;
	Wed, 10 Apr 2024 07:15:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="KQsi6+NL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E11413CA92
	for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 07:15:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712733303; cv=none; b=EA2qb3H+aTT78AD425qobyqjSIkpQQ/PN+VZ9AcNJij5MNfuKm4iu6lXVuxco4zIf+QfjX9KWEssvwvvjv6O7a/pitM8rvwy1cHxtqui8Pig65AEQ52YYpxR1zSwNGIfk/QH8hHeuDRPeJtDa6tnqmc8pTH5kzADfvWTVn4w3i8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712733303; c=relaxed/simple;
	bh=VBE4WFggwSMhbNyCrAt1elo5p2W/hqusK1q1y8tuwKI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Y8rr6+o4rg8UEt+O7kaZ+ee40z3D+2tPVYzCQyDpLl19zCqfkCIK8sRWFan65LkLBet3RtoUu/MR5+3M4onwwwZCdJuR1aKbNJ82TmlS6xxSpDHvimN+XnoplDXYsUpGTkSTsM+wZ957DKk+s8UL5iGVYViCTn25md1FKE4ECmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=KQsi6+NL; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-1e3c9300c65so38491605ad.0
        for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 00:15:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1712733301; x=1713338101; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NMgN1wGlJBkfHf6qhNjS/iN/zmrqgeoHgJDlTShDEmw=;
        b=KQsi6+NL/2SBYDV2SpNFvOcfNBtUXRz7rG+eVoKpB4FTHizGXP7j336rZz3+1W35eu
         aGGeT75ulEf4ynX+xHxLsmsB9iCCXoFlXknk5rnmyDqhcpTkmFwuy3IgVsmr5+c1Puei
         ORCHcdcYWGjDe8HQ2mlBw3rWY5rmcxL2lXg1xdJs+3ZUet5IiU5Chq/G82+RJGdxihOs
         /p43KNaELdi8Bur73OqKfAC06rsFoHnqbiUD5FP05khyP4XWdY2I5cMlYcn1YDb6v8yb
         96F6+V3BovIWbxv2RlCJofN4l0fZWujAB+gXU/iKVaKTkOeE7f9d/n1w6AkJ1Fzoc5tL
         YXeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712733301; x=1713338101;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NMgN1wGlJBkfHf6qhNjS/iN/zmrqgeoHgJDlTShDEmw=;
        b=CvVeqFkYEnXIex47qdFYngkVTO9SIlGeEPkfGPlYApeawW9K4BRpaW4fZrT4YaCZTQ
         u8AzYJQxE1yjrMcj6hz5vrEceZaAuV4s3b9QWk+rPubIZUHKfQPp3c/bgsDOE21Gbrs1
         LAhJP1N3metKwFBaFbJFaV3tIqnB/01YzLUrsm+V/sQgFkY1+e4tS2Lp0neyUFhiKrNA
         EZ8NlADNqLkkZDcCG+uk+y7u/rQWQS25vo45soxBG6yjBDKrnwzU6fPCluB/p8aL3qv+
         68TCCqb8yRYkrRrQxsEE7icirh0g3Wonz6ynpgzEqvwkLFvm2owtqgjXHlGoCGPc25c3
         GK7g==
X-Forwarded-Encrypted: i=1; AJvYcCVdHCk/Q7icCgpvb2GsIw3zybAZxBXnE2GsQ8xVdrL0M4GFQLvuiU6Ff1Wy+BwPsxRvkhl6TjuZdjg8F354kPY9gcvGVeALOaNogQ==
X-Gm-Message-State: AOJu0Yx9+1VnRYMO4YXY9Zu37Kae2YPpVbHavAZcHNC9fMGIDpgPHexf
	XJyP9sA2X0aek1gc+lCL09yVFmE1cDtG0r965Rgx38iyqUVZaMZrLjFXIHNwnwpAvspGKZqEHmP
	r
X-Google-Smtp-Source: AGHT+IFGbsYgF5UbyKw/0YINggk2A28D2EI8l1L+dqGsTasJL7COTt62tjxZ8TKej65BKBde0GIyIg==
X-Received: by 2002:a17:902:fc48:b0:1e4:4887:74f0 with SMTP id me8-20020a170902fc4800b001e4488774f0mr2348799plb.36.1712733301495;
        Wed, 10 Apr 2024 00:15:01 -0700 (PDT)
Received: from localhost.localdomain ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id z17-20020a170903409100b001e264b50964sm10107975plc.205.2024.04.10.00.14.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Apr 2024 00:15:01 -0700 (PDT)
From: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
To: sam@ravnborg.org,
	neil.armstrong@linaro.org,
	daniel@ffwll.ch,
	dianders@chromium.org,
	airlied@gmail.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Subject: [PATCH v1 1/4] dt-bindings: display: panel: Add compatible for BOE nv110wum-l60
Date: Wed, 10 Apr 2024 15:14:36 +0800
Message-Id: <20240410071439.2152588-2-yangcong5@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240410071439.2152588-1-yangcong5@huaqin.corp-partner.google.com>
References: <20240410071439.2152588-1-yangcong5@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The BOE nv110wum-l60 is a 11.0" WUXGA TFT LCD panel, which fits in nicely
with the existing panel-boe-tv101wum-nl6 driver. Hence, we add a new
compatible with panel specific config.

Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
---
 .../devicetree/bindings/display/panel/boe,tv101wum-nl6.yaml     | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/boe,tv101wum-nl6.yaml b/Documentation/devicetree/bindings/display/panel/boe,tv101wum-nl6.yaml
index 906ef62709b8..50351dd3d6e5 100644
--- a/Documentation/devicetree/bindings/display/panel/boe,tv101wum-nl6.yaml
+++ b/Documentation/devicetree/bindings/display/panel/boe,tv101wum-nl6.yaml
@@ -36,6 +36,8 @@ properties:
       - starry,himax83102-j02
         # STARRY ili9882t 10.51" WUXGA TFT LCD panel
       - starry,ili9882t
+        # Boe nv110wum-l60 11.0" WUXGA TFT LCD panel
+      - boe,nv110wum-l60
 
   reg:
     description: the virtual channel number of a DSI peripheral
-- 
2.25.1


