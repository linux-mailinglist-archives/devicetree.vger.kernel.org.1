Return-Path: <devicetree+bounces-266767-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gGIREQOVl2nO1QIAu9opvQ
	(envelope-from <devicetree+bounces-266767-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 23:56:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CAA6D16367D
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 23:56:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2AE59301688E
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 22:55:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6C7B32E13E;
	Thu, 19 Feb 2026 22:55:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="lsH/pO/D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51E7C2F3C26
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 22:55:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771541757; cv=none; b=sCUkseFfz5BJPfYjS/4EHjFTpDIwjUtNWsXLV6/m4sHmp8HIqDAe5Tpbl/gJOyQ/SFXwLGX2VyaFYkUNQbahl44Na5hohc/5pjuUCX5PO9Zhe0XYikx1GsaCyiJkgCr/pGcRYHU9bQg7p0Hkd1dTv2TDa/idsKqNtTGYY4gw71U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771541757; c=relaxed/simple;
	bh=xXiKD4lBzQGOHXS63TgwS//+Jh77xLfimj0o5Ix5Ov8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=purewB/63bWN7D3d6YV8v8G3JI1oNaSTXFDtkljKhSBsufsjmldhw0sA3NzZi9qyM5rFZMOAGo/mg8wqAoWAkU9mAwHm0SMW7WRBX3JxAxa16b6rNLgO6tvR0CZVDfa22q4+0kxvfjE5CPDWnT3stUfY0NanAPDJklBFx5XVhPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=lsH/pO/D; arc=none smtp.client-ip=209.85.210.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f46.google.com with SMTP id 46e09a7af769-7d4c9537f90so991779a34.0
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 14:55:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1771541755; x=1772146555; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=081DBHJ9byQhuCIF18IP6rSG8pXIUMsZt7o8E3vwHTM=;
        b=lsH/pO/DEeW1edC9y2vjMZxHZmiAZSns/Gq+xNEoYYv35qDql/nF9zE2BOyDk4hzRK
         j7JWWbainqN/lv23rwVEcWUoTUJ/c2aK7c2rVbS5G8h/nGVKY3OhvuGedBrCeYJEvroP
         MpJbcbwow6ptYRjsaqiFqVADMZCVXxXQDfUuoqG4mE+7cQRUkhkrsJiNobVEuGakBkX8
         78Xpw13RcuyWPOCnlXb0vU7GgWvLEBLix63LsqPqiHtMmuOdXQswwmt6zz6Zbw204mZQ
         FwSFiIOwekExfo2QRewUZ4MD5nXmf/EMlAbEH3Sy5m3KVa3m0VpOmqaya1v+o/MKwB3X
         BhjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771541755; x=1772146555;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=081DBHJ9byQhuCIF18IP6rSG8pXIUMsZt7o8E3vwHTM=;
        b=LaZ5UA8E4/2gqvXawPRRj6ja6BLNYEtaMNNBdY8Jg70TjhgWI1njlV+UVgML9qjfjq
         ctMfo8BuZ4r+xCdyLMx5IOrZ/ep4xZ/4x60QQZOorSfTKxnJonuCl+gNMS8KqZ+I0FV6
         y/TtbkznV+qjeqd7X38xSCCQtlawJ4Dr3FhQ67xs2wT2vG/WgVMDT/kDvIie0w2Bu2AB
         enFeraNBDgD30a+YUrHQg2JeIp3CBLeo3rCyhFHXfwqO3J6pvMoTCatmhIElXKkcdqli
         M0TLFl5kKAAVSwi3KfS/376uPuGkB+/gMSVImgFhx6pVJS3TWNA45fYhsDrt1PuHuHOG
         Zx0g==
X-Gm-Message-State: AOJu0YwYfUWsQZGTXU5CNrcFz6YxseL+eM2nocZeuNkGwZSqMMJC8Fzr
	XzQxDdB3dIifnFPmt9hMckdGRjd9kutmd2kWoeVlvaq8UDLjVR0GeHPxVGMT1KOoDdRGYtllW8N
	2egNR
X-Gm-Gg: AZuq6aK3A8A0LcRDiwFl7dt5ZNOwBXD+2HoSbGFNs75ibylFZT8whiiqJh1TckB+rwL
	IC1lLhtvtDX2Qu+z/smz+jROrDAGhVBZAF0RzkL2gA1lnmSFRrfuMcTOrfSzCVptMgauPojqoNG
	e4OtQOUZKJnrKpLsQUgFa2PTyiVyFP6QwQ5zcDN4TnyjanXNv/11s3SOzpDaZf6R0Lzk30Zs0q5
	C6AuYndmfZXQsHY0N74ITnaVz13sPWJ1hZVRjNsrxXAxlP3xRVWkF3uvpoEF9W3KpEdRx0v2vIH
	Tm2UEt0zgqWridltmEbjqytZS53gl7d0FWwpwvLqYop1UssHbWaII9KwlXfy+qJd9ZDDkLV6m41
	HTXmJjcPctaioUyiGvxbWlx46c8kZxUwNu1mh48oQZNRf9NwnO/Usv34CaN+JpwYIULPG7ncmkM
	5QyvEVmdokj+wyYeq+OkI/lUs2rnY0AT4WV+Rd
X-Received: by 2002:a05:6830:2a0a:b0:7c6:9eac:2385 with SMTP id 46e09a7af769-7d505db43admr4518064a34.5.1771541755291;
        Thu, 19 Feb 2026 14:55:55 -0800 (PST)
Received: from [127.0.1.1] ([2600:8803:e7e4:500:d4c1:bce:26a1:c903])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7d4a7720a95sm20565585a34.29.2026.02.19.14.55.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Feb 2026 14:55:54 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Thu, 19 Feb 2026 16:55:29 -0600
Subject: [PATCH 1/2] arm64: dts: mediatek: mt6359: give regulators unique
 names
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260219-mtk-mt6359-fix-regulator-names-v1-1-ee0fcebfe1d9@baylibre.com>
References: <20260219-mtk-mt6359-fix-regulator-names-v1-0-ee0fcebfe1d9@baylibre.com>
In-Reply-To: <20260219-mtk-mt6359-fix-regulator-names-v1-0-ee0fcebfe1d9@baylibre.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 David Lechner <dlechner@baylibre.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1137; i=dlechner@baylibre.com;
 h=from:subject:message-id; bh=xXiKD4lBzQGOHXS63TgwS//+Jh77xLfimj0o5Ix5Ov8=;
 b=owEBbQGS/pANAwAKAcLMIAH/AY/AAcsmYgBpl5TszZbjrmAd5pml3aXjip8WgoYU3VpfTDz+K
 O3loN2g4biJATMEAAEKAB0WIQTsGNmeYg6D1pzYaJjCzCAB/wGPwAUCaZeU7AAKCRDCzCAB/wGP
 wJ4+B/0Q41N9GaCv2pSsvORzYWEFvNeBrjIpaCnJbMMNs9538cNjdcZIoKbtOvqDRlK3pdzRGkr
 qJiDG/+z/Y75ZYoEPAdNrsPbbEhZ168oPvvI7A1JYCtSfktpQD2VdDeNB5d2/olYEn1n/wzi43O
 WXECxwu5beRFL3NYDQ/fv5gcb1UVuLJXUNnn8eotmG8qNiTy1j4/+vMjloUvA2bgCwzrAPV8ak3
 r0pGlFN7aZdd2fZp0HVnl95LJr+3OCThwD31UttQ7FhZ69VYO6R9ct2/p5F6ryW37ySEQDsAHgz
 lkiUqoB+yFYfT0gz3RVpi0U9xl0Qxxx/U54FbRka77olKgMg
X-Developer-Key: i=dlechner@baylibre.com; a=openpgp;
 fpr=8A73D82A6A1F509907F373881F8AF88C82F77C03
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266767-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,collabora.com,mediatek.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,baylibre.com:mid,baylibre.com:email,baylibre-com.20230601.gappssmtp.com:dkim]
X-Rspamd-Queue-Id: CAA6D16367D
X-Rspamd-Action: no action

Change the regulator-name properties to be unique for all regulators.
U-Boot cannot handle duplicate names.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 arch/arm64/boot/dts/mediatek/mt6359.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt6359.dtsi b/arch/arm64/boot/dts/mediatek/mt6359.dtsi
index 467d8a4c2aa7..45ad69ee49ed 100644
--- a/arch/arm64/boot/dts/mediatek/mt6359.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt6359.dtsi
@@ -205,7 +205,7 @@ mt6359_vrfck_ldo_reg: ldo_vrfck {
 				regulator-max-microvolt = <1700000>;
 			};
 			mt6359_vrfck_1_ldo_reg: ldo_vrfck_1 {
-				regulator-name = "vrfck";
+				regulator-name = "vrfck_1";
 				regulator-min-microvolt = <1240000>;
 				regulator-max-microvolt = <1600000>;
 			};
@@ -227,7 +227,7 @@ mt6359_vemc_ldo_reg: ldo_vemc {
 				regulator-max-microvolt = <3300000>;
 			};
 			mt6359_vemc_1_ldo_reg: ldo_vemc_1 {
-				regulator-name = "vemc";
+				regulator-name = "vemc_1";
 				regulator-min-microvolt = <2500000>;
 				regulator-max-microvolt = <3300000>;
 			};

-- 
2.43.0


