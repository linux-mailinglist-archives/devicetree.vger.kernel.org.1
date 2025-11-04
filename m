Return-Path: <devicetree+bounces-234814-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FE5DC3112E
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 13:52:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 32569423C15
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 12:51:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A329E2EDD60;
	Tue,  4 Nov 2025 12:51:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AOJhdfqT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD6A22EDD50
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 12:51:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762260701; cv=none; b=QcNHSxtG6XDsyCDGmqFcpGis4fQh9Wf9Pe4Fs080I4PDGJY2nhWhlP34/hVNjoLzJ1vVFjtBJO//BEOLiIytp5DvOhdoGOi6NiZrVToq7Y/w3V/Fi/oux7KZjrmmmpsvxRZ58GayJWrJ8Lh0felL3Ek5Gmcgw0FxS1jtIo02cS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762260701; c=relaxed/simple;
	bh=zfksRdzqKJhRlSNkDPTjQcTPNmX+bLOPlYzuDXVDI+A=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=BSIRTkrgk9orZXGvnXEnAKBOsQlMfijDny5upEcj4wY4ElufupXOfL9sbh+j4uTlf5NjjeNIoQtMU6hl1ls3u0z8rc8fyrfqQqh2fhc00NvWLFGuz30ciTHzKsjxXJ5fJ6qk8L2lPBCnY2JdeaKfEPjWuKBspb1crkfCbegjeTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AOJhdfqT; arc=none smtp.client-ip=209.85.216.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f51.google.com with SMTP id 98e67ed59e1d1-33ff5149ae8so4137848a91.3
        for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 04:51:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762260699; x=1762865499; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mKekkA7djcC5xOnYLDnvST4x7vzTTfMx0HGr2gLWVgw=;
        b=AOJhdfqTf/r2no9t8xvJLevf3iiegfOwkmabKTHps1uMLB7sYgz0JnSC1mOAYmsP1U
         X1dZvPBWvRzdVa5B/IG/EsSh4VjKMEo84youijokCoqsv9b0meaZF6fgaXugUY4uJ+Oh
         BK49anjqu6d60zV7mFV0J1FPxTd9b/ZV5mh/qPHfBj0VIY7dxRJQh4y2LEgjlrSsYFGb
         ZTd8H5ZspHz6zJu5eZalTSzrf0JR779OY6nr3m02HgrPm1MIu/BsT4h0qVbLcTbIkh+3
         C16JmeR/XNDw2dvISkGU9K+YZGUSmyPg8VvxrC+BxpYkZTB2XSySMnhyRU6XutPCVHbG
         C5eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762260699; x=1762865499;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mKekkA7djcC5xOnYLDnvST4x7vzTTfMx0HGr2gLWVgw=;
        b=cYcIVHHozLpmnPG62tSwcrLxYw4E2RNxk1Tl3isi9kX7M2PpgBpx6S5AGWPu4G1sUX
         XQ4EKhVmmJHcXK3sl/9EcPj7npXGe6hr5WPLPY5T6Kyhpi/2jEbj5mFVXeUmkuEYLzec
         7AWfKTIe2Ksikvl+jnJY0HZsclhu7skW0v+dUTltQoio9243UN3jFOAyOWS1Klk5RGyy
         uuy8PAc6Y/f9CiANVIO8ZXpssU6ykZbjx6FTGXv6qrFUgKjFUjPrLgYlkeJ6Y0B/r7/e
         B78B/VcR0UtS8iechR3Q9ePxwR/aH1W4COQpYMj1Q451GzC7Iais+53A/vRBvQPLJphS
         4e7Q==
X-Forwarded-Encrypted: i=1; AJvYcCX8wJwQ/ctC6C9zQI4tnazZ4+cYsppBWaxpISclVFfwqGoDLM9mxVaYlBBCMTeL9yE/nj4/mK8RaljH@vger.kernel.org
X-Gm-Message-State: AOJu0YxCWx5IeFGqkZ3zFhuPM1K979zMdl0LTcQEL2zuC34TpkduXTf6
	jAQNoCiKP8CwU6wdsSDkApcy64pkLhhkXsz1+P6CbRsVEOmu+2Do4bjk
X-Gm-Gg: ASbGncs6xblf0QsxZUAxBu+ZDrTyyDM9TUIhyjPnuPLkZmxGfc2LK37Rlmshr9aPdv/
	iU2BRLTVrhOwWxQyA4nX3MXuwusK8Z0wn/CDm3pCG0J31GuNdxUeSp+SnyaVssoiAk8uLSKqeI0
	MehyBU1SYIZvqLjMCWbfmuQn26sNX4yO7oZKfDCZgJVInagpbbeh6nEwJrL5m/dV6aUskG2Snz0
	af4HtBs9mYWfbIxUjeOvxUiNw1WBf0lUrJOcFcJuKNwNvLswLxns+e3iGIQsyZbpHVqMaq9mSjg
	Sp9adVNoLZNONTV46/7QBzQnd+FLoKLtJhSmq2nslzVpqutBKuvkN1/cKSLHxgfg3JvQHTj/FX4
	LCvUH9zFP01bPde81ZXI0urtWD0tUdlhB+SHoJJ0OBkatsaYaH4D6o2bXbuUIU60zj2F78Z2wXI
	uxl+Eo9drkXDM8DfNjkhrNrUPDyw==
X-Google-Smtp-Source: AGHT+IFNwdc3QqQkD7kIQmQums3onTSmVj2aZGeMwoERyucyIypuw1/hEudYSpSv0RCXqWPgNdn//g==
X-Received: by 2002:a17:90b:1c06:b0:341:2150:4856 with SMTP id 98e67ed59e1d1-341215049b9mr10274099a91.17.1762260699090;
        Tue, 04 Nov 2025 04:51:39 -0800 (PST)
Received: from test-HP-Desktop-Pro-G3.. ([103.218.174.23])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-ba1f2a80459sm2338616a12.15.2025.11.04.04.51.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Nov 2025 04:51:38 -0800 (PST)
From: Sudarshan Shetty <tessolveupstream@gmail.com>
To: andersson@kernel.org,
	konradybcio@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sudarshan Shetty <tessolveupstream@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v5 1/2] dt-bindings: arm: qcom: talos-evk: Add QCS615 Talos EVK SMARC platform
Date: Tue,  4 Nov 2025 18:21:25 +0530
Message-Id: <20251104125126.1006400-2-tessolveupstream@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251104125126.1006400-1-tessolveupstream@gmail.com>
References: <20251104125126.1006400-1-tessolveupstream@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add binding support for the Qualcomm Technologies, Inc. Talos EVK
SMARC platform based on the QCS615 SoC.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Sudarshan Shetty <tessolveupstream@gmail.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 0a3222d6f368..a323be3d2ba2 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -862,6 +862,7 @@ properties:
       - items:
           - enum:
               - qcom,qcs615-ride
+              - qcom,talos-evk
           - const: qcom,qcs615
           - const: qcom,sm6150
 
-- 
2.34.1


