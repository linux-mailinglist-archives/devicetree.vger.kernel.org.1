Return-Path: <devicetree+bounces-147549-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E1882A3893D
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 17:34:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 546403AD354
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 16:33:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22046225786;
	Mon, 17 Feb 2025 16:33:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iiDU8xY1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3957D225416
	for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 16:33:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739810010; cv=none; b=Ds7QLNoMqp5gBHG7okj0LveEbWHjsrr044FVcKwWkJM652qvrFa2ce5XilKuo8C5J0jN9wsexm/hWRccozmKJgi3eLgcJYftAyIIii7tD2mZGIRBHAglzXhaCn9Ahtq43CSu29PRVN2whyn42nn2dgoG2+hw89EbZ3r1oA5pFnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739810010; c=relaxed/simple;
	bh=zhDVJvHjB5Lzuhnk6MLMvE1kAvmruLGrFv1o/of7giQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=aaHT0dWfeFNtf5qZWg57dq7Ik+7Zk74ijOFyurZ3uxJ6zZE4rsYP/t+AviIEoxFILFrbQ6+ryQd8eg6FsnPppdrCz1wz9+3HeTtABVcA/SvHS9HsHVlZnV1ysm/mj3Cf3I/K9F7pjf6XAih2qVftCBbUEx8z21Pav/XnDHJcQGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iiDU8xY1; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-30761be8fa7so45784981fa.2
        for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 08:33:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739810006; x=1740414806; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zTk1JOhDFyU+6z9JRqVi4gh1NwvHjNu6gaxKn+V6LLc=;
        b=iiDU8xY1FgsqeFI4W+dqes3xnGgFaLSElW4iip+R97pYPVNyT8TqJnaM+qtti0W1CB
         VZBWVlsHP9LyVoB3HKajjMycFoBNhJ//aaA5hWBdx37fWd+rz4mzkNoihLVZSbncCzqf
         EAf6meAlL0VmK7+3eCZGQqubQX1mshHKFGSrILMnhb0EDsWFLq615PFZEDZtxQQCoTjc
         QCKN6tpBDgi7wWIxwjjalpTq89kHRIn8H9kmBTRmSTQpSckLiQ6jxiKA7u+lyi5ULca4
         e2ZmPjciRd85Ebix68cDY7fRO9BHPqNFjyoG5KbpwcLexoydfyGXmtwaq77B6D22bzGJ
         /AUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739810006; x=1740414806;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zTk1JOhDFyU+6z9JRqVi4gh1NwvHjNu6gaxKn+V6LLc=;
        b=llmd9ZjdvKZcaZnEo0uzkJj/yp2I3C6waZ7rLBVGAL89AmaVG0qj0FcRtRr7ikYGA2
         HNTElcm2wc5WA6Iepd4yBcqZJia0rlSO6qAOQlIF66HemBxYkvVN0mAtYM8YYORhYcc/
         awfi09mGMaQ24Q0uXXgIRonSEhZSvsoK7qLUmZNIqVuAV3pBpb1vvMUcMvKyS+eFl+fj
         rlvp8ruSH70bJPHLdmUUZnEWw++2yV1aVMupajZBYYYcCxsx0INXidlre84F+obMOWKy
         rAhHbxXvQ2XXJlzr6W83es357+XrukxM3F+RgXm+3+e72YoKvj5RlFzimSag2oAx35pr
         yCog==
X-Forwarded-Encrypted: i=1; AJvYcCVFHRGYqagB5sbDv4LuzcE3xpVoxG89IHmyEpZye6fYEN1Vfl3ENejbgR0Bfo4m4uxtDpWKAosbVSec@vger.kernel.org
X-Gm-Message-State: AOJu0YwNYKGFExjq+9o/9pOcyc9THKcpazZX4hGS7cFG7maYYOSnfA7Y
	WhOEJ5V8QZqdQpChGc0g3OOwjpYcjevC5lUrfCm0FPkGiOaRRSP9iWkOsZAahl4=
X-Gm-Gg: ASbGncuRgAUgcZIf+TGuvbsgXZ31iGUvKJh+hkdVbjvN+yNQmnTHWGxscmBV32a4jfv
	Ol/DZqDKvryW2Ee2a/iyD1J4kPYAHn8lvYI32wTR3EVJbS0AY4zGhDb4rhYq7liXmrEn+5lhrs4
	xAfvKpFBPLH5nB1UGmNdQKdLYk5vOFIj2yeGg6la4Y0gaMeHBkiEvloIwO7lUWkkT1hfN7mTRFt
	P5oYKF9Ltk2Bpk8np+dsrncw7iD9djUju4VLuGmKYu/yOJywQODgIQrJUrl7g1q/i+4lXE1IWFj
	g+c/Lyh8C0LFJr/x1EI2MOc5b7urlz1Ta/8XrBGPmmIUmrccSFk4GdY95mI=
X-Google-Smtp-Source: AGHT+IGzI4BEq8iQ8ebMwalu59c1aO+y/rKFu+C3kD7LqJ5UE6HVzDUxUsXxpYOyGfa6H+jPNWIXDQ==
X-Received: by 2002:a2e:9ad6:0:b0:308:e9ae:b5b3 with SMTP id 38308e7fff4ca-30927a2de98mr27830941fa.1.1739810006210;
        Mon, 17 Feb 2025 08:33:26 -0800 (PST)
Received: from [127.0.1.1] (2001-14ba-a0c3-3a00--782.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::782])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30a2cef18d1sm5695991fa.76.2025.02.17.08.33.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Feb 2025 08:33:25 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 17 Feb 2025 18:33:18 +0200
Subject: [PATCH v5 1/5] dt-bindings: nvmem: fixed-cell: increase bits start
 value to 31
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250217-sar2130p-nvmem-v5-1-2f01049d1eea@linaro.org>
References: <20250217-sar2130p-nvmem-v5-0-2f01049d1eea@linaro.org>
In-Reply-To: <20250217-sar2130p-nvmem-v5-0-2f01049d1eea@linaro.org>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>
Cc: Akhil P Oommen <quic_akhilpo@quicinc.com>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1110;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=zhDVJvHjB5Lzuhnk6MLMvE1kAvmruLGrFv1o/of7giQ=;
 b=owEBbQKS/ZANAwAKARTbcu2+gGW4AcsmYgBns2TQfC4FtXqBdUxy1mAiGozMMqn5scy5wXUU8
 MOU6EDgxoCJAjMEAAEKAB0WIQRdB85SOKWMgfgVe+4U23LtvoBluAUCZ7Nk0AAKCRAU23LtvoBl
 uF0iEACudRVZ6tx6aH1ir2ml/AYJM9XCw5Qet5H7mXsmcis7xR2iVsfGOH6VGoOLbnSDAKUp/3P
 39wzkVXSptHiyxFHWaFqNKKJ0yjdWeh7DnPsI72+kmg8pTYKKuqzTpz2YdgbAPJhUHirHX9G9Be
 3UafGfWFiyPIH1wLiWaGfcY2n86VyHBwHx7WZb7+bvnBFLN6BeoKsmhqD5AMFDA0zbNaoPOXX2/
 T1PskCjspTRWUBp6ZjU44coFzodswxmoT8wOgXLe0Kbfj2pYMm6UMqNJ6vIEqcceFD2GbWOMruX
 rA2Bb0xr9cC1YIYWl1r8kFXI/2dmnDoA9GrKjHvwj//Vxc13+hjorWayBRroLbF4J8kDakUlOHY
 EI8ZbUdQteaI2XLUX80dyDlaaTe5rNfWUx4F3iE4/sgeHBKXrt+e0IObiuffg62+7rgi9UwBP1F
 KWrjvv4zBYHElX2ZxAEUBP8v+SVPCn4ExYila5NNxalA+Cbsr7tpTIBjgSeFSCBZ+orRNYp7V/L
 rvyIaJwqWBws7+5euGB1yT+Nl7oSSsXLRUl0cMNLFAvTvEyTkAc0I8zJ8fHFvvX2rW/qu47v45X
 7DnMMHbC7tGw3LiuEOzeTzwAW5oHZKGV7vHxFKFJ1bHNnngKEhnb/bSvYLIkHkTz5WDj5EKWqlN
 LJapm1xwV8ebRew==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

If NVMEM uses a data stride bigger than a byte, the starting bit of the
cell might be bigger than a byte (e.g. if the data comes in the second
byte of the 4-byte word). Allow the staring bit to be 8 or greater to
reflect such usecases.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/nvmem/layouts/fixed-cell.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/nvmem/layouts/fixed-cell.yaml b/Documentation/devicetree/bindings/nvmem/layouts/fixed-cell.yaml
index 8b3826243dddfcf9c9bea531541c55d3fc04a3bf..38e3ad50ff4fb6200023f22b4c70c506349142df 100644
--- a/Documentation/devicetree/bindings/nvmem/layouts/fixed-cell.yaml
+++ b/Documentation/devicetree/bindings/nvmem/layouts/fixed-cell.yaml
@@ -27,7 +27,7 @@ properties:
     $ref: /schemas/types.yaml#/definitions/uint32-array
     items:
       - minimum: 0
-        maximum: 7
+        maximum: 31
         description:
           Offset in bit within the address range specified by reg.
       - minimum: 1

-- 
2.39.5


