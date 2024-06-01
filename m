Return-Path: <devicetree+bounces-71447-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1472D8D6F04
	for <lists+devicetree@lfdr.de>; Sat,  1 Jun 2024 10:47:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8CFE0B23EB0
	for <lists+devicetree@lfdr.de>; Sat,  1 Jun 2024 08:47:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FCD71411C0;
	Sat,  1 Jun 2024 08:46:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="r2iuJ52p"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f54.google.com (mail-oa1-f54.google.com [209.85.160.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD34F140E23
	for <devicetree@vger.kernel.org>; Sat,  1 Jun 2024 08:46:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717231612; cv=none; b=s0u8GGHmT1SUpS7Hvn1i5r/vLLt3Lyy7lbl8g5fjp3RD6H3QPArEZ+8nODmdbdn6C4GtLv7v6SB5GGIfZ2xuDMnyAF0X9XEGHWYR5gq2V5NUeApr7hD7J+JLQJtT6EeY0iR2sDqYXcuQutmW5zUjQMIeWG3yG+AAYegQIcO6OSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717231612; c=relaxed/simple;
	bh=Xwwxl9ViVzfpBSKwZZQzN4tbLhMkmLEoCJDr3/wMyJA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=BzqXancatvyHr4KrnnvciRje9/70PGNfjNUWVBk13nCJubB5at+IgKEv1Wc/24HSYARTsRYEGhH1IuaMFSNjFjSNC6ryL2ZqehFd8FnwyHtRNqrW8ucKDI6llzSfQSnE04LjkYsPdlhzQq/3FIMbmaiaQko3LlZNHEyyW2rIRD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=r2iuJ52p; arc=none smtp.client-ip=209.85.160.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-oa1-f54.google.com with SMTP id 586e51a60fabf-24ca03ad307so1489835fac.3
        for <devicetree@vger.kernel.org>; Sat, 01 Jun 2024 01:46:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1717231610; x=1717836410; darn=vger.kernel.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=YRv2PtZi00/2hPXILDXcKojI53syn820EUeP3F5EERo=;
        b=r2iuJ52p/KEUY9CdwuwOHV0oQOm1QveAcfyRySuI7v1mz5ZwhNj4KnCPJcSW8c5vn4
         LxGFpu3xJOqsersS37C0eleXbkErK5ED55eszrGwB/LjnAtyDQlA54VmSOpUYMB5Gruo
         pwbBoDRIMTN6Xg4zhnKmrmhcv0GPPZEBOtgNAuyf5eEdoQ7e72qSum87Q//DPzE4xk78
         auwUfnX9Z7JtaZSwHTd35CRwjTRcLqJJeBfNAL/YYV8sQNfQzVLngjDPKdF0/BBvSk+a
         AQQG8SyESolmpMOeJSKvSrlcRNlQoZVFLoyx3Ca6DCYX2gGzK6jehPFiznnm7U1CVpij
         B7rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717231610; x=1717836410;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YRv2PtZi00/2hPXILDXcKojI53syn820EUeP3F5EERo=;
        b=LBJvYxMHKme08cx8K/IqndaYbVrMfFpwGQRa7MP6DGixOrPqpbPDk5pAOjMcIDrIok
         Sn0qCv14pYg07y09+okADLkzYWhMuwpokjW2qFp7tTzn+JCoj5nfPHQNd0xb420gJ2ZW
         gLcSRjaF0Q13Yk9H5aHsKW+qJ6RVnDgIoSuAdc7AZEs43tOKYxBYodJx6KLO4G/hwGFN
         vJqPUHbvmft48hXHy+4LS/dqTLKjZ/JBSwoPOeLATGsi1wcxCBBjTxriw57hf8kS/F4a
         H8P05N8rxPA2x32wFp7Hvic7vkZoCpKUrWOYl6q/trevjM+THysGgftJdFxCLdCv3g5E
         Agig==
X-Forwarded-Encrypted: i=1; AJvYcCUhiYSHK5u71w56LDGfXn7EtVmZBX3JW5G6c72t4CLEUa/uREtF1IjDSPFy4lCxNi3OBX7iHFqLH6UQbURG2ky5dTwc8Ui4+rAAPQ==
X-Gm-Message-State: AOJu0Yz0G5cgicaVwxUYFrxHj6yOLrG0bc9k9hBKXtajLer87up6Pxs5
	Ndd2pbV53UIkwdhPDO7DQ0s+IpHhV/j/StLdAOTUCBACd5RYWzUohneW5we0deo=
X-Google-Smtp-Source: AGHT+IGVSORhKrAAAYALmovD6wpHQKp2se+8zqYb9+3qW3OyRhLDwSKSTJGk9/lv6cR2Yq+ifUtYng==
X-Received: by 2002:a05:6870:8920:b0:24f:c95b:acc with SMTP id 586e51a60fabf-2508bb1ffedmr4480092fac.35.1717231609791;
        Sat, 01 Jun 2024 01:46:49 -0700 (PDT)
Received: from lvzhaoxiong-KLVC-WXX9.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-702423c7b49sm2512044b3a.37.2024.06.01.01.46.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Jun 2024 01:46:49 -0700 (PDT)
From: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
To: dmitry.torokhov@gmail.com,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	jikos@kernel.org,
	benjamin.tissoires@redhat.co,
	dianders@google.com,
	hsinyi@google.com
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Subject: [PATCH v2 3/4] dt-bindings: display: panel: Add compatible for Starry-er88577
Date: Sat,  1 Jun 2024 16:45:27 +0800
Message-Id: <20240601084528.22502-4-lvzhaoxiong@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20240601084528.22502-1-lvzhaoxiong@huaqin.corp-partner.google.com>
References: <20240601084528.22502-1-lvzhaoxiong@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

The Starry-er88577 is a 10.1" WXGA TFT-LCD panel, which fits
in nicely with the existing panel-kingdisplay-kd101ne3 driver.
Hence, we add a new compatible with panel specific config.

Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
---

Chage since V2:

-  Add compatible for Starry er88577 in Kingdisplay kd101ne3 dt-bindings.

---
 .../bindings/display/panel/kingdisplay,kd101ne3-40ti.yaml        | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/panel/kingdisplay,kd101ne3-40ti.yaml b/Documentation/devicetree/bindings/display/panel/kingdisplay,kd101ne3-40ti.yaml
index b0cf12bb727d..68c43d2d21a6 100644
--- a/Documentation/devicetree/bindings/display/panel/kingdisplay,kd101ne3-40ti.yaml
+++ b/Documentation/devicetree/bindings/display/panel/kingdisplay,kd101ne3-40ti.yaml
@@ -17,6 +17,7 @@ properties:
     items:
       - enum:
           - kingdisplay,kd101ne3-40ti
+          - starry,er88577
 
   reg:
     description: the virtual channel number of a DSI peripheral
-- 
2.17.1


