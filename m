Return-Path: <devicetree+bounces-168553-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A5033A937AA
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 15:14:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 638FD176319
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 13:14:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C28A277003;
	Fri, 18 Apr 2025 13:14:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="lRXLUmeE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 782BB277009
	for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 13:14:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744982042; cv=none; b=s/PPvTtOzwkh9jxokxxrX/vrUzZN1Unl9LchEQwg5E5QnCynOZZNOKzfcefqXQ3zYK5ErHJdXrH2igZWYUU7LVZetx2vZSLBIxpGsUamQHij/JtRjIX45Y5fba+EdFy4HBK2jeq6QlqbLf/44lI8Tr98EY64rxIcAU2HSUtYYp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744982042; c=relaxed/simple;
	bh=wzHHP2feP6wHuqFLANo3CTLOjrw0/TxeFUFRj7B0ILE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=dxY0Bb+2UZl9bVp9Z74T37eVpSFeNTO+XfE/31WyQs5xVOsxSESsG3cUgaflOzcgOeqxq5MfE8dGSnHyPkv2nqzCDo2jN5Zgdi3Oeq7RAdfyvS/rsnvC8sGyT5nuphZ5DK9eQi/8bV144JIdhTNo/RVgAoJmODfAoJy4HGzGV4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=lRXLUmeE; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-5f6222c6c4cso1946020a12.1
        for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 06:14:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1744982039; x=1745586839; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=seRyYYSYhDxZAINukYkT14l+opP0XSBbrpJYZxHqS48=;
        b=lRXLUmeEL5AQDEvjNFCo7nX20BT818ObDRsW7bNGHHmmn996HXjOSBgMA/gX9/4QXY
         ueNyKPDPQjb96TUsxT6bdpoEMWkoD4REzIe1WonQlqiiX6RbyVKaGJgaw7XGEl2EZNLV
         R+LvQzeUTGfXEo5xY+ehfFIshlJdnYK57PeaOH8OMRIZ8S5IsfwoXGruvPanWVZTXEkG
         hmEi3bdMq8tCr5A7nsHmItE4B+rQj+d/S/NmhfjvoSARqiwtMBRDihgaPPWjJYY8Z3c6
         fAmwRKI5JlEM7tihczRUbWnbPufqngK85hEgSsZXl0MmTiKD12iIu8/JIfDR45q3fKXa
         mUvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744982039; x=1745586839;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=seRyYYSYhDxZAINukYkT14l+opP0XSBbrpJYZxHqS48=;
        b=hd8iXV87VbRUo2aLE4WCeGFrfC59Z/nAdCLTaAHSkWCFIe31S/l3iVyz1LUj/rxd2W
         vLATNZR5R408Y2E9pzJPR69avgGBgPOEsZ81g54p0jVPDDiRU694lXQtXYik9gSDyaEY
         KtxtM1ZAfnGniicevepkh5a9oQEvulkw5QulQH8upxJ69vRO7tGfcaWm9l8hZJeV+f9X
         xZhbdclUNQ5DJKNhYV4ibUz5zWmAG/rjE+EIbCbxs+FVrxxEZ0UEhreo3O1hCJXBIMVD
         SA53RbNBaffO6mIrfgBBDf1uCBD9WdqHWAMI7u5ztyeJbvZelR5jnzu6GfynN143WcTP
         +S8w==
X-Forwarded-Encrypted: i=1; AJvYcCUMjPpBlqfUI49aDLaAb03XlMtai6FcyaBQoTmqha0L0rUM2zL3zyY5c5LrQo1YOOvqtFSbcPZC3w7T@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6s30KMqqNpGeg3aASov8RoXnsciGxG+qbBX2/u8jyL5P8xo5b
	qLyjSDVVjlkrOu2W0i9XhRrnrmlFGJOYwAY5v/zkMONg48bWRWipm5dp61fVvZk=
X-Gm-Gg: ASbGncsX5+fbNzj4HpLSxnZ0eTUnh5guT8ndsa51i50vxuYwVLiykskiOb22qMcZrg9
	w2OYOKOX/XjtCrrB84zIh3fZpt2vXefypw4pPpav1LTcPvM3p73kGu5mOCWdeoyVhmRiFO8BOsU
	wl3ERlRLXaihaNPiMzRgbNmYTyNAUzE9ttNRl3oEjsZ7YzhZzkqp/HTxXMVkAcLG8ZLlH7yyduO
	Pg5JUBEZ3dXtq6fZgqGLVNQFPUNKrmTht7LJBe5eUA+AtMePGOypZRD0VB6/OiYCXSnh7paCEtQ
	03cbAw9n28PQUg59fftJ/r9ekxFylPZHPLWXuzBqFRplg/3NYe8Nvj6zBNydyUvlqqFoogm3fev
	T02rwkMm3FTaK/w==
X-Google-Smtp-Source: AGHT+IGK0w5o/tIazZ37+NXFgqNftZQkULjK7rkiUpRoTJsf3DztGjPOr0fER0jSN21I7Sk2h/cvdA==
X-Received: by 2002:a17:907:7247:b0:acb:1908:6873 with SMTP id a640c23a62f3a-acb74d65b95mr270159466b.48.1744982038650;
        Fri, 18 Apr 2025 06:13:58 -0700 (PDT)
Received: from [100.64.0.4] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acb6ef41605sm115901966b.124.2025.04.18.06.13.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Apr 2025 06:13:58 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 18 Apr 2025 15:13:42 +0200
Subject: [PATCH v2 1/5] ASoC: dt-bindings: qcom,sm8250: Add Fairphone 5
 sound card
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250418-fp5-dp-sound-v2-1-05d65f084b05@fairphone.com>
References: <20250418-fp5-dp-sound-v2-0-05d65f084b05@fairphone.com>
In-Reply-To: <20250418-fp5-dp-sound-v2-0-05d65f084b05@fairphone.com>
To: Srinivas Kandagatla <srini@kernel.org>, 
 Banajit Goswami <bgoswami@quicinc.com>, Liam Girdwood <lgirdwood@gmail.com>, 
 Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 alsa-devel@alsa-project.org, linux-arm-msm@vger.kernel.org, 
 linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2

Document the bindings for the sound card on Fairphone 5 which uses the
older non-audioreach audio architecture.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/sound/qcom,sm8250.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml b/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
index 4e208cb7f6c61adfd4b687227038d275f849480a..57f62a228c262f38e703816efdcf443355052619 100644
--- a/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
@@ -28,6 +28,7 @@ properties:
               - qcom,sm8750-sndcard
           - const: qcom,sm8450-sndcard
       - enum:
+          - fairphone,fp5-sndcard
           - qcom,apq8096-sndcard
           - qcom,qcm6490-idp-sndcard
           - qcom,qcs6490-rb3gen2-sndcard

-- 
2.49.0


