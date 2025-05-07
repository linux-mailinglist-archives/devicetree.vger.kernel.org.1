Return-Path: <devicetree+bounces-174819-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C5154AAECE5
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 22:22:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6B9CB9E247E
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 20:22:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C72128ECDE;
	Wed,  7 May 2025 20:22:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ATIefTcR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA10128ECCA
	for <devicetree@vger.kernel.org>; Wed,  7 May 2025 20:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746649357; cv=none; b=sHp8a2wvs9yX8o+BE+4QBsa3DvrVqe9B8/79Ao+eLu9k+T0h65esb20SwnfMJmSCEHPh5A8McfQAFhH/keJoxCZQuJT7msReOw4hsziRkSRoTYcqmaY9CtX6I+ZI6ArsWRlMdc9RrplaPq/vxRCD7qmVqgS79BJWjkX6kvBoVdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746649357; c=relaxed/simple;
	bh=LsuYS6qoBFINp6ctEKngWvXGFkd5+/qi3wP3l2WCm08=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ctB4o1fwINXJ8A5rjVIS4QNOQ6gQxHaJ4IcKTQhWinl2croHn1dn2NwbPwg704/BLpVvwWpOo28eaqraLVy+0MH8o7f2vF3gs1MbjOxeMfwHOIYu4U6BO47j6lnNU1yS390cs64LIy9s/HaQYe5a0K16eC7woneMvM4Htg1xEgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ATIefTcR; arc=none smtp.client-ip=209.85.210.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f45.google.com with SMTP id 46e09a7af769-72ec926e828so81631a34.0
        for <devicetree@vger.kernel.org>; Wed, 07 May 2025 13:22:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746649354; x=1747254154; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=521t/CeHAKMYn/pwM/BkFVrSOh7CwyL/JsWX9K+z/SM=;
        b=ATIefTcRr1cNtSS3V/Hb3POvseRFFalsl7giV+zNa4lMWffBsdE3tdOfE1NnNPTov6
         +VsTzRExu1URiHGWzFyJtkj+917j+TGtZX/HdKN8/kZvZKsUKc6OZ7/Ywc4uU7PJp0wy
         wdNc3O0zE9gEz53YBsGbQJmaSNFG6mAtrcGxB75BvbNYg5iiDW9OCpB1ACg1aTF8lWWi
         e4J4NcY8IfHrnQvYdP4rC3KteXkRhXSoUOGfUDaTXDwXepGz2LzLrtIZo4xTpUm425Ji
         5oMjzShVCdM3XQLd5vji+KhwayFp7OkwebbdStsAQyt6ux7W8Ag4HS0Sr4bnFedtjo1N
         AXBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746649354; x=1747254154;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=521t/CeHAKMYn/pwM/BkFVrSOh7CwyL/JsWX9K+z/SM=;
        b=BGjfA4SqJZjWyvLfVAv3kTImvQyeXNAUvYkL2LgWSNsLE1Hh6zakSqxSGoaJbg1Cgm
         H27n618R607IObmOSSf8BVZ/iT9iYr21PiJ5//11LGmOSS80s1TsLyBmp/XT600bGVTr
         zNmYOJ/erewyaLDVS8npXN8Gcwg9MLMJ3OZT9R3h46JBm1u/21HhcNyh4Vx6TbybN6mr
         d/7pASlKlrNzNgDTozmTG4vws6OSTN8QB2wy21n2Il/DS1cHHSkgAdqOJv0oOD0lgbBr
         LolxgxaHn8A8PtvJX3ncsCMnkgV9wtKX0BUcGUf8YnymtXyC/+siOxLyzWzzm0lT07Ya
         bITQ==
X-Gm-Message-State: AOJu0YzQn9XNNMI6p5iaMXpg4htXnAHyUgJU1jUU3cPIf1d8EH+ZWXXB
	WmH7P6AELZthAxWfKYzN0RZ4msokrs8muFSMMZT5dnEbWttPZDIW
X-Gm-Gg: ASbGncts0EsQatrxfWFsjMeM/LOnr28qIbmSej4QCDlFzQvDtE8hi3WI/6SnQ64RFDr
	l8Lg80OpQbGiH7KbEDy9xw12uDS/jYobWXjRL1VIJAQOAHIti+qj6kgyU+0X7hJaIRYMebV7sgV
	EZ6K1MAzi71VGa+/CWI/+Rn8mME3FwbScvXfjlFe4IFKaMa7UPLwKqfEd2xUJx9EQZpkaaZuDxK
	xuaX7QPjYAzUv6E4ClwnYJu4qehwk5hkTNrvMbjI5OlpqC3GRIqgAX9WwRE0Oz6I1OxkyIrSXpS
	vGgOfVJ8L08aAqKBqVx3T/IIjYe6/6MYGuMrYiSfgbKdVoRBRNBtvdeo4UDJ
X-Google-Smtp-Source: AGHT+IEgovUo3fqEdnkhJw+bsJ52pKIQ7trPCxR4KR+DeBMftR4N+JrGDxjm3mhsjvknZyqu+0Tatg==
X-Received: by 2002:a05:6830:6204:b0:72b:a3f3:deb6 with SMTP id 46e09a7af769-73210a692famr3145427a34.4.1746649353725;
        Wed, 07 May 2025 13:22:33 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf:e46c:46ba:cecd:a52c])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-732109df2dcsm725945a34.9.2025.05.07.13.22.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 May 2025 13:22:33 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-sunxi@lists.linux.dev
Cc: devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	ryan@testtoast.com,
	macromorgan@hotmail.com,
	p.zabel@pengutronix.de,
	tzimmermann@suse.de,
	maarten.lankhorst@linux.intel.com,
	simona@ffwll.ch,
	airlied@gmail.com,
	mripard@kernel.org,
	samuel@sholland.org,
	jernej.skrabec@gmail.com,
	wens@csie.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH V9 08/24] dt-bindings: allwinner: add H616 DE33 clock binding
Date: Wed,  7 May 2025 15:19:27 -0500
Message-ID: <20250507201943.330111-9-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250507201943.330111-1-macroalpha82@gmail.com>
References: <20250507201943.330111-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

The Allwinner H616 and variants have a new display engine revision
(DE33).

Add a clock binding for the DE33.

Signed-off-by: Ryan Walklin <ryan@testtoast.com>
Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: Chen-Yu Tsai <wens@csie.org>
---
Changelog v2..v3:
- Separate content into three patches for three separate subsystems
---
 .../devicetree/bindings/clock/allwinner,sun8i-a83t-de2-clk.yaml  | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun8i-a83t-de2-clk.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun8i-a83t-de2-clk.yaml
index 70369bd633e4..7fcd55d468d4 100644
--- a/Documentation/devicetree/bindings/clock/allwinner,sun8i-a83t-de2-clk.yaml
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun8i-a83t-de2-clk.yaml
@@ -25,6 +25,7 @@ properties:
       - const: allwinner,sun50i-a64-de2-clk
       - const: allwinner,sun50i-h5-de2-clk
       - const: allwinner,sun50i-h6-de3-clk
+      - const: allwinner,sun50i-h616-de33-clk
       - items:
           - const: allwinner,sun8i-r40-de2-clk
           - const: allwinner,sun8i-h3-de2-clk
-- 
2.43.0


