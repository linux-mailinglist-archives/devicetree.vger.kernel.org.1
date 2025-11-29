Return-Path: <devicetree+bounces-243150-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BFD11C943D1
	for <lists+devicetree@lfdr.de>; Sat, 29 Nov 2025 17:44:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 13CD03A5D33
	for <lists+devicetree@lfdr.de>; Sat, 29 Nov 2025 16:44:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7377C311C2F;
	Sat, 29 Nov 2025 16:43:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="l5gg/r+K"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C79963101D0
	for <devicetree@vger.kernel.org>; Sat, 29 Nov 2025 16:43:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764434621; cv=none; b=OTCztdKEoWr4XYMKxCz7sts202Tt/i0FU4318ewVhGnegjtFrxRpPiSJrCHawnjbUcLEzvvOAYIMpEe6yOm1nE8oCIK2YdvLAaDP84XaLmUV1cJonPS4UsDja54DzqBN/xKXAQvK2DCow18mhiko5qo696vKzcAjV4e6JJUYrxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764434621; c=relaxed/simple;
	bh=TJeWZNgC6V19mANa6819NcVhj1KoiROqvTZZzFtxTtY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=opDb4XFVO4NlrV2oAuE0g9s2717HnOA6hhgZ8E1KbesZrJUg1eEEQFgYg8qRmpJr8jD4FKpVrNd4h16HvF2YQe27O3K+eNr+EojXwtExxp+oOLhd5cLt/qgRiH71INCD99FMi1bilOybwTDF/BgK1biT90elPOiIzzMxwv/kvqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=l5gg/r+K; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4775ae77516so29029045e9.1
        for <devicetree@vger.kernel.org>; Sat, 29 Nov 2025 08:43:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764434614; x=1765039414; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R843MbZCnVpvyUBhLJHg5z4LPvSVt3fcefWUXjH+qo0=;
        b=l5gg/r+Kacbe86JrgasXp+QcwSaeFAG0l370y6AZ0J8Tbj26X5FFA0WQsMKUgcChLA
         AvX5TQKbA5V8wgw/xvfdwJsHzlb6OYJ1lwLQSvxTgKFePpRul3R2ZxZYwMPYdqMdvMCL
         bN8vp9j8KBm8Dc+EIoPtkFzCyEkh9YWrfLF8NqmSgtme+TlJCKrBfAq41EnuLusmuG5N
         5OufqQrlI3tj5MG7+VFy8EPh3xL7SB6EkZ3tTautToca39D5q3kWWReeM3mzo97BxKp4
         7CQEbuMSCp7qKy/DyCnp8BTxWFFX5qBw9DBWx3+XSyaF6t9XsP3TJelOq0ey5eckPVFk
         YW0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764434614; x=1765039414;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=R843MbZCnVpvyUBhLJHg5z4LPvSVt3fcefWUXjH+qo0=;
        b=DfBIIFn21h/aRK72G9gIuKJwxXsIgxlYVksB5aS+vIKBOxYcONy6xliifG3un93FMQ
         XcL4ek+40Er+Ex8tfmXeuHkEyvY3aHLwFvIbNIaveqj9YBXparhPe+C7UiyKFThPMxxH
         gQ9uUTS+kUTeY2yvOupNdyWoji+rWu4B9y8KR5HPWwV7FK2vNwSQw/uky8dTclCJ4n68
         9uk6C34GoMatsjBpL6TLLyF5Et2jG0xQ01SXOPeOLCAJEh39xO8AlGQusV75A+TsiQTa
         MQEXJCw7oMQcht/rloAl7A+Vk5lVWWXbOGXDbD90oZNtz4dbtHPKPu8joySd6jU+pUSm
         E+TQ==
X-Forwarded-Encrypted: i=1; AJvYcCWcnwRRVXRnYcojKpQ1Etu5APQ7FNfalOXJSZNWjYOWli/ELKeUef3QUXi+fTYOPYxtS//kdAPmLT2P@vger.kernel.org
X-Gm-Message-State: AOJu0YxbguO53m8BqlqHvQqf8ccertTUqcqtVqjT40gKXwHfaHTditWs
	DwnD3dtf8mUnwngMAQsH7scdh21KmKBWwnlVsxGrAtI595s6kh9tfLh7
X-Gm-Gg: ASbGncvr6VcfMt8UZ8kktRInAV5fiBoAX31jhOGfV0Y0/Z4+4A5Xap4o1OX12lIqVOh
	5pKCqF++2uAxIs/kN9lIESepjOGoNCoB5mM2FEyw/d3xIBLUVoEleOXTDges0YKOwuoLVKBBe+P
	9L/rubJDMjXUNbhXQv2ea5xs0LCRj/Q1SXKDOOe6SvRPiysv8yO7joKuAdgno+r7uABxlWuYcrk
	NTFpigZTs2JiW4h4W4ofuMACR9nXbioK9zkD6czCkuqJVIs2Eil4hvdMaCJOEpju/ropmmv8qRW
	XjUva7ecFsJVPV313j4/QZURHqSzNP6bzpPtcrMC6Im/g0ndHgnecEOlGKjR3vb0YAf9cGUKRBG
	HuDzcxpdj3qnrk3E6ayC/c01SPcurY4yZ+2/zIoxAxxgUP45UtqROqO46pShEFSTaGwLcwpun9X
	GhiOw54PzsKMIdqghvu6yYMpmHlQv/ww6m8RaVrLFa3vT++D5ZwrbEglLStvbSNbGySF/mWFUV9
	OLoZSkOmVbpr/YX
X-Google-Smtp-Source: AGHT+IFZ47zjlwuxIl8M0UD1kY0ilg9J9bhy2OdqVMQb6EHvACxZUYkN1QFczesbPnwVT8eQsuRPhw==
X-Received: by 2002:a05:600c:1551:b0:477:5ad9:6df1 with SMTP id 5b1f17b1804b1-477c10c886emr340735155e9.3.1764434614411;
        Sat, 29 Nov 2025 08:43:34 -0800 (PST)
Received: from localhost.localdomain (host86-162-200-138.range86-162.btcentralplus.com. [86.162.200.138])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42e1ca4078csm15970060f8f.29.2025.11.29.08.43.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Nov 2025 08:43:34 -0800 (PST)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH v5 09/17] serial: sh-sci: Use devm_reset_control_array_get_exclusive()
Date: Sat, 29 Nov 2025 16:43:05 +0000
Message-ID: <20251129164325.209213-10-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251129164325.209213-1-biju.das.jz@bp.renesas.com>
References: <20251129164325.209213-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Biju Das <biju.das.jz@bp.renesas.com>

Replace devm_*_get_exclusive()->devm_*_array_get_exclusive() to support
existing SoCs along with RZ/G3E as RZ/G3E has 2 resets.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v4->v5:
 * No change.
v3->v4:
 * Collected tag.
v2->v3:
 * No change.
v1->v2:
 * No change.
---
 drivers/tty/serial/sh-sci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/tty/serial/sh-sci.c b/drivers/tty/serial/sh-sci.c
index 7ca94fa84a40..704f175b14e4 100644
--- a/drivers/tty/serial/sh-sci.c
+++ b/drivers/tty/serial/sh-sci.c
@@ -3708,7 +3708,7 @@ static struct plat_sci_port *sci_parse_dt(struct platform_device *pdev,
 
 	data = of_device_get_match_data(&pdev->dev);
 
-	rstc = devm_reset_control_get_optional_exclusive(&pdev->dev, NULL);
+	rstc = devm_reset_control_array_get_optional_exclusive(&pdev->dev);
 	if (IS_ERR(rstc))
 		return ERR_PTR(dev_err_probe(&pdev->dev, PTR_ERR(rstc),
 					     "failed to get reset ctrl\n"));
-- 
2.43.0


