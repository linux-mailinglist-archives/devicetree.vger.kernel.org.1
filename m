Return-Path: <devicetree+bounces-136629-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E305DA05AF1
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 13:03:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9C1FF166B3C
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 12:03:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6992C1FA166;
	Wed,  8 Jan 2025 12:02:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ejmp3rcB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BBED1F9A8C
	for <devicetree@vger.kernel.org>; Wed,  8 Jan 2025 12:02:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736337772; cv=none; b=HWZfMXoWapbfmXgcGjAvjYwN+aSdbzYL3cTMQMxVjJRn8xvBOeK0RxuIcgHvd+4QzmtOVAnFyMNxgkWrAh5w5qBmLTbzksNAMWlRZAMrvK5mBeIFxxmz58tK4flmMAhhEOVXve/TCezcb7oA+KrkQbx7RaLC+HX76kSZKjPNydk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736337772; c=relaxed/simple;
	bh=tf5tt0BwsPCPSLPP0H73t4FU8k2JMKXfyoSUw91MxX8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=n7d4MnV52VPB1/EmXEWTYqbo87fr5CiiZDPnoQUPG/W87Ury9pUln/Kj0ZO2hUHCxRGWYFGH/u/h4KBldTOtFT2r64rHNj5BkRndeKg+NF2Kf8xKX3X2WeWIT2QbV2lfNYoYwPw7mzxPTC6UPKyzDnMVdDOgTDvWTa5GdeFIoL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ejmp3rcB; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-5d3ea2a5a9fso2499493a12.2
        for <devicetree@vger.kernel.org>; Wed, 08 Jan 2025 04:02:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736337769; x=1736942569; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/Fu/J7aLcA/6JcanW9gRS4vVtHfaRVS9VuYzk8LT6DQ=;
        b=Ejmp3rcB4sCcsaFIErGIy30v0gbfdg3YxxgCHl6gffuTfFBm3rxIlm35HB10ulskyb
         MhFR5xklpiy57oMFQycrDIZ9vixzQrobKlwKHg9g4Nwmpj+VXfBMLAsH0r98IPJ+/DrR
         iYKEvcGWl1v6voFrNqi/ZzrIH5UNp3/ZKAifhUgMaQWhyjkdQXRAoTIH1WxS89EUfh3/
         8ln9MWgRnnhzg9ZLds11otGsSUnHs4Tcv8sphVLn+23Qo4QytBlEvPoNvQHS+jd5iZrx
         UzmXVmylkdCfYqhVTnbHb9VY50hH7XY3DIOrOzu1OrXav89LJpkc9/kHFhsoR9Ajn5X0
         ZhGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736337769; x=1736942569;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/Fu/J7aLcA/6JcanW9gRS4vVtHfaRVS9VuYzk8LT6DQ=;
        b=QMGYV7I6ESh71pZ9AJnbDt8coycIHERzPmR0fmWjcI3t2yVCDYKI+Vt1Bz4kMdtgz3
         uYi451l8qJhZeAwjKZWnRSJGJCX7XMHihu3o+8yA3/fawdwGmOdEBc+AFnW0dYqmPjr/
         9nicGHMVgkmOrj2g8gE8KXp5QtTLjvJDX9q5tWcJQuP6vDrJ9GFOvnjFXIpf2pkZHLvv
         rhT0bXGv59nTwLwy+H1jYDJ0ruW2P0at3fdc8sxxfqAsRRKIylmwhfydp7vWBrrYQgjA
         r6Na6SCiutUQJTc0VL0qE2v80vLO/7Jh+g/OZ+fMKnTzo/gUe9n1JAE2jeiVpBnim3IR
         moMQ==
X-Forwarded-Encrypted: i=1; AJvYcCWVYKvykAggkoWHmiQMOuY5HjgK9EG6YCsevP3/ned4Gw2Kn1312d46iEHdP8F06fAjGbGe+eEjcTXg@vger.kernel.org
X-Gm-Message-State: AOJu0YyDF5fQD94Q2euu/kT93eaaWTk+XWUsoKVtX8X3caWnag5pDhCs
	ZC+K80A+fXNILU5SLAwpRjmZRnxUMmaFAO1XTIPj9U/f6UrJy4jL+xcd8amY3R8=
X-Gm-Gg: ASbGncv5oShLBD4DRstakTM+62dsYtB+j5Bxb0CANU9EQXPG/Ul0WV2qjDWQSm2CMs9
	iAvFTNXvsNjg4X2D1m74DocIyc0SI+fwxFxY/h7s9HM2q2ndKkOka1tl521JD6Tuxhn3zn0Dr4M
	MkVZdi9SSdAYrhv2OFeLtq55HSBCd9od8tvGZpdomwtNCtcNVPKipVIXSE2/9XBAq9GIfmsNsWZ
	qPsUA9egCAywElFCSThG7Mi6mBGLavIPjQajfsZsyIC0r3oSTyuohIGJJdirecZxNEMFX0=
X-Google-Smtp-Source: AGHT+IHxvLCzAIC3B4tsUuo5mheGbuKfSphHrdU5pFDT/pfFnaWpUoIrvtESSJfsRkrVx8FBwhrfkQ==
X-Received: by 2002:a05:6402:2687:b0:5d3:ba42:e9f8 with SMTP id 4fb4d7f45d1cf-5d972e47d23mr814405a12.7.1736337768837;
        Wed, 08 Jan 2025 04:02:48 -0800 (PST)
Received: from krzk-bin.. ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d80675ab3bsm25281427a12.5.2025.01.08.04.02.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 04:02:47 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alex Elder <elder@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH net-next] dt-bindings: net: qcom,ipa: Use recommended MBN firmware format in DTS example
Date: Wed,  8 Jan 2025 13:02:42 +0100
Message-ID: <20250108120242.156201-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

All Qualcomm firmwares uploaded to linux-firmware are in MBN format,
instead of split MDT.  No functional changes, just correct the DTS
example so people will not rely on unaccepted files.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/net/qcom,ipa.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/net/qcom,ipa.yaml b/Documentation/devicetree/bindings/net/qcom,ipa.yaml
index 53cae71d9957..1a46d80a66e8 100644
--- a/Documentation/devicetree/bindings/net/qcom,ipa.yaml
+++ b/Documentation/devicetree/bindings/net/qcom,ipa.yaml
@@ -239,7 +239,7 @@ examples:
 
                 qcom,gsi-loader = "self";
                 memory-region = <&ipa_fw_mem>;
-                firmware-name = "qcom/sc7180-trogdor/modem/modem.mdt";
+                firmware-name = "qcom/sc7180-trogdor/modem/modem.mbn";
 
                 iommus = <&apps_smmu 0x440 0x0>,
                          <&apps_smmu 0x442 0x0>;
-- 
2.43.0


