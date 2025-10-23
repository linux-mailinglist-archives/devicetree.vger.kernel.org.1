Return-Path: <devicetree+bounces-230345-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id F262FC01978
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 15:58:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 7710935AA2C
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 13:58:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B03A31A56B;
	Thu, 23 Oct 2025 13:58:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="pg1y0IDU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72E563168E8
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 13:58:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761227909; cv=none; b=F+GtgwdCjSkHcwiaWEfaxLqE5wCEa4KXOQxXjfl6NBjyhaEHKteaxAztGMJEz3pcyltFmesOn9wKAbtCxfG6ixbL44gZwuOXWtG8BACyLoZMLx4L9lhvfVgWEDSGjr7Tq+6b6Ll8pXygmb5U+x1E42H7s+Ioy7V6MHSwN/EN8gk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761227909; c=relaxed/simple;
	bh=/jPm6jH+d13noCe9SKn4mrnwnuDsNjdGPU/d9Ul9H6k=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kjDvk5HOzaxXxP5F3Hc0FS8UHKzysT2c0mWreb3gwjmRz3tNkBtH6mZYJxwW/i23COzAHLQfwBoFbsTpYEA1EW9RF8PyDmw6LWjN8en2bCIuGr6GZIbjKDl0+zSO4/mRWiHOKNarn48KLWX/KPKkFel4rdMaFkl/IyU15bf5UDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=pg1y0IDU; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-b50206773adso81117966b.0
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 06:58:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1761227906; x=1761832706; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mcs7Y+EttDztrEgb0m4AiPh1csnrxylUuqHzrjAxJgY=;
        b=pg1y0IDU42Q63ySQjK8xYqBMTr+J+75fH3VLzWrgauSbvcV1Nm62SDXq8SKumILzks
         WE3K3r/8FdZpx0Tc9Ojiob8wqG1jKbKpPdeleKKo72e+zWH4KQg+nbGkeIxXyg4Xmejm
         tTfGubpGPwBOdLRttoVKOfy4M4iDUcRpeoCYc84Gu3KTyLw/i0pJTzGR3Au60Kn4mDv+
         VfsZUy3nxn4wdcUj2UmU0e4NSKhPvb/vsZdVS+D4ANWNzCdUaF/rsOww/dTyp3Dyx6Yi
         vbnvAD4dLAfavtq6mJJA5chHn7QWiJQB7rvsOmfpixshc01bU5hOZmSVfhene/SNLpCF
         1fPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761227906; x=1761832706;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mcs7Y+EttDztrEgb0m4AiPh1csnrxylUuqHzrjAxJgY=;
        b=En9WKSnai+x300rO579qNOuZW6GEl5DgncZSE79CLmXJnhbMhWBGvW79ZFKu0ct8WV
         btqae+q0K8bF/Kzh016QZvbRE4LItwYOgDSP2HUbtfeUDt22Uq2gEPQ545j647/cnUS3
         IJEDjEU7gWixSnvfvytfFy+2eF2cEa58Bw33OQX6XDqFpT9NBi5UjnBhmdQLQaa2I4b0
         rIlASADvobu5izdzTh9wdyUc1hb53bE+K8i4e5xzfb1jMw3aC468bu7MTyAQt8FEWQCO
         hGLIs61B2evh7Sidtp5Invuwp5sifAORV2Hs4+leKiYNM3OTcvhSwy4gE88x1/Yg2Q78
         jZ2g==
X-Forwarded-Encrypted: i=1; AJvYcCW/Wln/NRf/ZuHgala7nLX+TfAEK/nmNw1ZFIL+A8cowRxbvOFFLZiZJMet02tuYnFXujeOhnMPZzP2@vger.kernel.org
X-Gm-Message-State: AOJu0YwKVkXQ6tj9n9EbGbp+PlqUFyIlfEwlHL+EH3EQb3h80wmPFBZM
	95Nd4QK1d3WXHIo8n7dJ+1Wd//PYCtN6exRF407AaWUmTf9cUVD5mzpZdss+cXvEiC8=
X-Gm-Gg: ASbGncv/mbogmQIhVB72H1Gst2bpAVaataqkwrWs64XAVwbvhfUTrX+z+pQDKspwdl3
	9kdr2hjs0nVY7gxA8VnK9QnZC4EtysQIVk6IeF2JXV2NdgHCgmRft5cuUNVynDrTGsAOo3UVQo5
	GQQhabg8d5ZihqQaYYqzbml/nI/wlTFeQplmSwtsxt+ZpJB46BldAJ+2+Uex0bI2iyKU3U0Y2Y8
	492QKCLbHjacdfzgWoUassdekcgaDc2604slzatT9HHlNB/eX24jLFNoQMZU3wZucEg/D95z89Y
	HG55IsBj9M7Nn4neLc09myUS3z14vf8KqHHC3i8dvl0HvpWPyUWaZXMmvq8die5REWauJk1Bwxg
	2KH2YtNL3gXcg3xcydub5zZTC62gBaWqqQsDgl8f7hv4+MnrGTq/20lvU/yZyEavMBzUJ/MBL78
	O02jWXdI0BUJatpw2sJCovqcY/RpNW33GyzhG3Eeml
X-Google-Smtp-Source: AGHT+IErl4KxFsPoyMcgmYdHQ18H8eQgx+LzGITPImiQSgQDh6xe3/IOiWXni9Y5LKEyJSLxqP3qGQ==
X-Received: by 2002:a17:907:72c4:b0:b29:57b0:617f with SMTP id a640c23a62f3a-b6d2c6df653mr921330166b.1.1761227905751;
        Thu, 23 Oct 2025 06:58:25 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.151])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d511f8634sm226114066b.29.2025.10.23.06.58.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 06:58:24 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	yoshihiro.shimoda.uh@renesas.com,
	biju.das.jz@bp.renesas.com
Cc: claudiu.beznea@tuxon.dev,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v8 1/7] dt-bindings: phy: renesas,usb2-phy: Mark resets as required for RZ/G3S
Date: Thu, 23 Oct 2025 16:58:04 +0300
Message-ID: <20251023135810.1688415-2-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251023135810.1688415-1-claudiu.beznea.uj@bp.renesas.com>
References: <20251023135810.1688415-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

The reset lines are mandatory for the Renesas RZ/G3S platform and must be
explicitly defined in device tree.

Fixes: f3c849855114 ("dt-bindings: phy: renesas,usb2-phy: Document RZ/G3S phy bindings")
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v8:
- none

Changes in v7:
- dropped Tb tag as it was reported that it is not valid on bindings

Changes in v6:
- collected tags

Changes in v5:
- none

Changes in v4:
- none

Changes in v3:
- collected tags
- rebased on top of latest version of renesas,usb2-phy.yaml;
  Conor, Geert: I kept your tags; please let me know if you consider it
  otherwise

Changes in v2:
- none; this patch is new

 Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
index 179cb4bfc424..2bbec8702a1e 100644
--- a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
@@ -118,6 +118,7 @@ allOf:
           contains:
             enum:
               - renesas,usb2-phy-r9a09g057
+              - renesas,usb2-phy-r9a08g045
               - renesas,rzg2l-usb2-phy
     then:
       properties:
-- 
2.43.0


