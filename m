Return-Path: <devicetree+bounces-52838-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DE71588A330
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 14:54:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1B3011C39C05
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 13:54:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CF8615E1EB;
	Mon, 25 Mar 2024 10:36:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dBaMxLRU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2257817A367
	for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 09:11:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711357907; cv=none; b=Dyvi0dFLZugZLPENQycbHjAgHX7yqJpRvdsD4AX56NTar29Dnc9diONx2gefjnGX4xTH7nNufKEy2vUX/sBFQZ8tntHo15iZchc6Xz23HerlDKirUZhkLFoQPkTI/U/IbSYeasc3h5xjNfB//b7Wc2rVpZCnal/Mw1D/nZiNWe4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711357907; c=relaxed/simple;
	bh=3IyQ0IHUZedUd4BUZemr8PwrT1edFjZ7/8DR77OpHPo=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=skBEN2Q/7cRHwpYeEU+7Ri1fBsIQqPlZz7V8o297ZQxDcqRREmK1wn2CCadlTdmBCAe/94r+jfa81BHYIZhESs1SSmXJ3Zwy2mc7yQKOZNUN8lKNwT/uEeCxXg1/IKhcmgISsT86Ej/uvRNNJ1+qOKR/xF+HcWo3q0mqbbr4lOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dBaMxLRU; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-513dc99b709so5074581e87.1
        for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 02:11:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711357903; x=1711962703; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=RoF9SKtcQIDNK7kNazTEQf3Z7HNt40P18vhcuuLiprE=;
        b=dBaMxLRUhAxqUsFozVzhlMzEUymdFHCE/FgMhvC4G/aoNxZG6EiLmIDh0LZ6XH3mH9
         d+nr3RZESJtW2oz6tWOM5yI9kAkRzI7uzvZgZQgz3tEL0UNnS542KzIRg8Tdqgc/IHHU
         Phzvi+C//lYWijy45XIEfk162SpfIPfG/8HncoJNk+XCC92yxxXu4WrNTIfyiiK6lXcn
         ynLXu4xz5CyB67Vd17uEzrZkEgjlVbi5Ob04WUa9p4/VUBi9nD2cHrMQgL+v5HTejmUS
         9qLiJSW3hpTXYIBmlEZHw0RaREjqRLd5HJfa5tlAhfnfB5bSDzyYJ1NjSv+vikY1UnTY
         KUrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711357903; x=1711962703;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RoF9SKtcQIDNK7kNazTEQf3Z7HNt40P18vhcuuLiprE=;
        b=Cag6iIIL3Q8VVfyqRNAJ7DhlNMXj6eo4QR/OYugOBX2yzCVJA85ZNNfcH7W83F1WQQ
         QHqUIZSDjTXmTqoujPj343LvltgDGhGAl4MsEvkhWSMujVnN9gEuh1IhUz0Xy6aLNshX
         hL14yYIPBJcLDRjnWKAd6FiYHt6iFCJcaBbbRgLoeH5lAvbnnQXJIfQc3aaVZkzoGddS
         mQvjQvIY64xwBuOEVhVCfvT9KC94mosRmMFXucjPzTfBkfurMu5EClqersQ1lGXwhkSl
         DBqrGc8JChEa0enOig55ORBzZDXEop+4Cn5c4aP/kP+6McdRqabFuQGUHRSfLDZHChRl
         wLBA==
X-Forwarded-Encrypted: i=1; AJvYcCUMS4j5ypA+SfVfFNgopuprE/cP/goWgOWcrLaCQEci04naDrRYsXLGC/AnxrgQJQAW7OXH9QQqfB5cRucrCyPTMi5jwaVkw4IA+Q==
X-Gm-Message-State: AOJu0Yz0Hs9rtPZG+k5mDiwKIgSrLgK+WpG276uekhmoysZZjq+/h20P
	VrVXFSPxJ4YhVnjrcUS7pV4VNLU/jVPEDg1cXkgGbsKRj6Vd1r31Ki5m+4sqMb0=
X-Google-Smtp-Source: AGHT+IEyPfn3dgbloCj+TwQHEGcc6B6s6dmgZhFHmd8I5jGWzU+1BzuI3rvwBpuZn9wcIqv58h4rqg==
X-Received: by 2002:ac2:4643:0:b0:513:4705:a4f3 with SMTP id s3-20020ac24643000000b005134705a4f3mr4317389lfo.65.1711357903118;
        Mon, 25 Mar 2024 02:11:43 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.44])
        by smtp.gmail.com with ESMTPSA id t15-20020a5d690f000000b0033e95bf4796sm8947000wru.27.2024.03.25.02.11.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 02:11:42 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [PATCH] docs: dt-bindings: add missing address/size-cells to example
Date: Mon, 25 Mar 2024 10:11:39 +0100
Message-Id: <20240325091139.18602-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Complete the example of recommended order of properties by adding
missing address/size-cells.  They are not necessary to illustrate the
style, but lack of them us bit really correct DTS code which might
confuse readers.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Cc: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 Documentation/devicetree/bindings/dts-coding-style.rst | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/dts-coding-style.rst b/Documentation/devicetree/bindings/dts-coding-style.rst
index a9bdd2b59dca..8a68331075a0 100644
--- a/Documentation/devicetree/bindings/dts-coding-style.rst
+++ b/Documentation/devicetree/bindings/dts-coding-style.rst
@@ -144,6 +144,8 @@ Example::
 		#dma-cells = <1>;
 		clocks = <&clock_controller 0>, <&clock_controller 1>;
 		clock-names = "bus", "host";
+		#address-cells = <1>;
+		#size-cells = <1>;
 		vendor,custom-property = <2>;
 		status = "disabled";
 
-- 
2.34.1


