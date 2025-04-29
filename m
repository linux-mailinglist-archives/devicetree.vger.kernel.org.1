Return-Path: <devicetree+bounces-172015-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B0398AA0F8F
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 16:51:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D457E1BA07EB
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 14:51:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19A9421A44C;
	Tue, 29 Apr 2025 14:50:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="gNXWON/H"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8421A219A75
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 14:50:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745938226; cv=none; b=WcZIZ3QyOmtGIwlGiuDbMvfUQfKYhKnPt8s/o2y0au1VwxFqBE3yYVI5Wo6xIeQO4hebTzEowq0BL1o7r1nWSOM/OWGwEJ2apRZUEYhA876NNJf+Lm3yUAe31zciwEyHPcCIAJpLdhF6vEATkZPf1H81GGLogT0DqWA2QitowEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745938226; c=relaxed/simple;
	bh=xqNci0ATiYuFCzjmmZLIos4bZ0/Wt6xx1B04/LG3Q74=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=mFgp5x0N4o0+uQU48/GPReNSwF4B4vct3os9GlLa+TrJtm/Zf1GwiptpQiipXJ8e+AsCHoFw0Jy2m4pz8yS81f8MLQxVAYiMRomLrQvgI797n4f3R70O+T60oFMYyWUfMzh3fkxL9VsWZPePMTRkqge8hqSxJXuRzkwPU8oWpvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=gNXWON/H; arc=none smtp.client-ip=185.125.188.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com [209.85.221.69])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 3BF8C3F6FE
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 14:50:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1745938210;
	bh=SJsgYFbh52ssmxEFFARHq6BN5vsciQrSfXFEEc8qgYE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version;
	b=gNXWON/H0S2u5uWoeyzAlq+Tc6//kOU9SMVNPx6NDpxQgLSZtYmTGn3MfidFcPVtv
	 5iRMvGqssGiyRpzuIdWg04YuQb300djuK++hLe8cpK3IG8v9z9qvjoAkKAHxK3Yh9B
	 yw2/SbPTpnxsf1eOQ0GX4g7ZFBG5rY4zPQS4mqMgu0aNgmdh3e1CDvIICX1yK5gx0a
	 8dki/4e+32zfFMOOKJZnXV9MCRU3+ETzKQpgtx5vFws3gIzXLw1+Ul05h1UV4D/Yf8
	 vJ1vCynUoObmBz0oz3u5i5HzodK1tRk/zCjyEadEKcOjlB+JjcdJ2kZ/lRsJ8OzPDJ
	 LlCin3/GWTHIQ==
Received: by mail-wr1-f69.google.com with SMTP id ffacd0b85a97d-391315098b2so1779121f8f.2
        for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 07:50:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745938202; x=1746543002;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SJsgYFbh52ssmxEFFARHq6BN5vsciQrSfXFEEc8qgYE=;
        b=XQrOuhV2FLC9M63aR4oF7W1faYrOWrGipcQLlt6fOwaMgbdo8fiG6AgJxk2JqtX0+w
         IsEIcNpujB7qrO6hK2SbetwKuAy/Ur7ce4n0HXXia3IG9gYPdNMZKWmgC7gF5PhZtFFr
         PJxsIYnKjNRDT0XkST8zhGDHifJ5pugHhF3L/dUmfRORajz0b+kopKW7SbQJhmd4gPw1
         73soidbyH73GMU9o8LPL6UMbFNZQCLtSrNolBKhrqrby/ruDVSHLBOvrPJa1BZGloE1k
         pWXRRJLuAAcAIS7UlB8i9gwuzO0clqwwnGJyu7qFfZeKvovEAepY6TRu74j+3MZLRexE
         bncg==
X-Forwarded-Encrypted: i=1; AJvYcCW+pSIqGxxGMWF8xO9FirC010Y0B3NJ4CdppcrKNGWkMZ44xXT5q3MNPIb3/9pqaxItdjT+nCDk8viU@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5sH88GowkncKB58VRTxQD6ok/9J94ZFPyVoH72S8lT5s0gEnb
	G3sKJ2g18tRzwBF10FA00j4upVw4OnD2dKkA0KbbpxOUbh52hTuuotZTEYb/GD3o4Bh3c4nzlvw
	kiatoZcPkUeEXkYgd+pD60zyFOg8VGBDCOLsggg0tzJDu3VI6ixlvAaRDD8YqnOW5DwHtypJUK6
	0=
X-Gm-Gg: ASbGncuXmtgrLo5G11A8AgSUuna0LTF7IWCO/gvBm87jJkTXr6LUJhZmLDDz3/WXMWV
	EfLfXxbbtM5QLeHyLtoYePwsSsrtHdVgFUo9cPpFwVtnzMhpnKq/Wo+SzvuCdPupFdsziXeSIhc
	BnaFed8gtxGF6fYgk7wft7dXoVKQ1/eout2AVV5c33/6jiAHrMG6ss70v/Z+Mt+UMvTi/H4lVsE
	JhIiZ80YNfrLp3ASZBVWr+klibLejQ4C/i/b4Y3t7r11RXgo5sE6EM6uxq9bIEzLg83g68koAaV
	AChUsSfktIGQPBlSdx9SP4o4lkQZ+Mz8MWQqyOu9OUQJdOSUDnde9Xaq
X-Received: by 2002:a05:6000:18a2:b0:390:fbcf:56be with SMTP id ffacd0b85a97d-3a07a9bc256mr10352689f8f.0.1745938201996;
        Tue, 29 Apr 2025 07:50:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF8bJ+W20QclbOqGXSh+aK6+noOl/oBWTrNXJb/+Wtj28GOcmxhHhpsJ6WYbQMsyfEw67MtkQ==
X-Received: by 2002:a05:6000:18a2:b0:390:fbcf:56be with SMTP id ffacd0b85a97d-3a07a9bc256mr10352669f8f.0.1745938201687;
        Tue, 29 Apr 2025 07:50:01 -0700 (PDT)
Received: from localhost (151-243-191-194.pool.dsl-net.ch. [194.191.243.151])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a073cbf04dsm14386612f8f.52.2025.04.29.07.50.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Apr 2025 07:50:01 -0700 (PDT)
From: Juerg Haefliger <juerg.haefliger@canonical.com>
To: juerg.haefliger@canonical.com
Cc: andersson@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	konradybcio@kernel.org,
	krzk+dt@kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	robh@kernel.org
Subject: [PATCH v4 1/4] arm64: dts: qcom: x1e80100-hp-omnibook-x14: add sound label
Date: Tue, 29 Apr 2025 16:49:54 +0200
Message-ID: <20250429144957.2088284-2-juerg.haefliger@canonical.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250429144957.2088284-1-juerg.haefliger@canonical.com>
References: <20250416094236.312079-1-juerg.haefliger@canonical.com>
 <20250429144957.2088284-1-juerg.haefliger@canonical.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a label to the sound node to make it easier to override from other
nodes.

Signed-off-by: Juerg Haefliger <juerg.haefliger@canonical.com>
---
 arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts b/arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts
index cd860a246c45..628e28299c3d 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts
@@ -174,7 +174,7 @@ linux,cma {
 		};
 	};
 
-	sound {
+	sound: sound {
 		compatible = "qcom,x1e80100-sndcard";
 		model = "X1E80100-HP-OMNIBOOK-X14";
 		audio-routing = "SpkrLeft IN", "WSA WSA_SPK1 OUT",
-- 
2.43.0


