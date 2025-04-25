Return-Path: <devicetree+bounces-170849-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 71553A9C852
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 13:56:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D7D111781DA
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 11:56:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC643259CA5;
	Fri, 25 Apr 2025 11:54:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="R+eeTKLK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA9402586E0
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 11:54:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745582047; cv=none; b=FqrpHl97donP0qB28XvUwyE2gmxXPv+zHTOrd5Hbs6uw+hxOg0PZMVinLFLPyUFTzxJSLoBoYg+5Tpi5yev6qOIW5u4HyZqClGjpzRh/n4qfbtCGcr4FKpJlAlVzllBYPkMt0MGxdsK4zSBPrxIZgLTesezXRtOJcfEK2j2zBIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745582047; c=relaxed/simple;
	bh=Wp9iWaEevQ0aCH/QYCEHu08kXHucbrbsnspzcdlMP28=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=oEm60T6u5EcsIpirS8CtnUBO3lwjZyQTj6wWs/mpoerlKvmd6l5pwKuOK+NFGeDVTHf9cplwtSjh1SeA4U4MLiDWfM41R441Zsx2Jpjmv3XOlnw8/UxfTACMYMWxhzlYAnwst0WC2PtTSExGK7iTysj4WxarnK+T6uFXeW6VqBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=R+eeTKLK; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-ac34257295dso354232766b.2
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 04:54:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1745582043; x=1746186843; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6cpfS3QrdUns68NcbMwvTGZPMa8x+Cgf6fBqEa3ps8Y=;
        b=R+eeTKLKPcu1iJwwRVh74OGOwVyksp/ePYONMTkyEewi9nh9LhL+/8JOq+LvmsNFz3
         JqBD3o6NOTPHTGbRPTJu8unkUUMa6PQW2Xf6SCsRFQhmcroyGLoahqdSCNhDrqo/KQZ9
         zdZjAsBAbx/dLpcy9wKEo+WJNulL/blN3aLhpCgaOmV8iheUFuwkuLccMdpdDlxU2Yor
         /xona+hE9M+BDLRRSGw85PpUUKkH3oxeW8I0LtbETfJij7fv4VuGuJFCYV18MWrnRx22
         wDPp4erBwBcam90iXr+K0+8MhWGvOesyNuKnTSmlJjFaY7dRF7UtmDT6Q0hx06pgSjCT
         aRAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745582043; x=1746186843;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6cpfS3QrdUns68NcbMwvTGZPMa8x+Cgf6fBqEa3ps8Y=;
        b=Y3sNsc3Cp1+5KPhBS+ZUpMprEEa2sUcyuA5OBuljpxC5+mYnptPk8NC85JwWjp3It3
         bwPXQhtx67+49e7fUaJkUDCgUbSzPq1hnKl5cMqBxFMX/7tANWUMz6YsIgYdMc35er3I
         9nLIvI7XZdZRVFwIo3JTsR4tBjD2LBVUaoxjSi8NcBhi0HypaAHX6dqD8HB7pj8C5hSa
         YRquVPz53uw/dyu5fo/pjYvqjlUB3ISlvoDe3GHjr55q/WdlJE/iotbZYHIsQzKl5jvM
         YRwWW57hN6C0bhHA5ORLhgnAlJupIxpx1eOrdsGda3n1pVf9I2+6hby33Ul2Vy4cIWTe
         nBXQ==
X-Forwarded-Encrypted: i=1; AJvYcCXDjcqgZTn4UzgxGYY58EShvNmRIKUqF3unPvyMNlID1+6vYS6m1rhUimAbLqmzPN5GEo2WcafZJPTq@vger.kernel.org
X-Gm-Message-State: AOJu0YxelW3JQ6X80mHlupaWCZ/Dty8Ga20iJCJwyDspUSLNmslZXbDV
	LyYiV608BsIXj0LqetnSS6xiRKwoxE3b0JswocSSol4Nr2z4yiH7SAacUN/Rkls=
X-Gm-Gg: ASbGncuWIAhOkMp/4ly1shJ4YV5roThNtl/4e3iyGDIS7d6ETdOU9h6LueEXqNiMZUb
	HsBBJcq22XWPyqwBG5kgan2j3HnJr5PqGi9eg9ljgFAj2m1NY6mrG1oOjXRSd7y7z15ZwuzJuDI
	VEl5DMsfS6LFZRRCoBo6q3wRsdHJBHC+MdWih93jqcoNglqn2RfoiJkMH6ZCZNXwlDKNZpL+gF1
	jOFrEX6bQ/zAwdlxmCDH21xAJJHt5jx2jqk15TWRz9glJNE/qIuRqC3T/quz7yfT45Mbz7AYvmL
	WrV95N1X5VWjW1XuL5PNdQ95hC/kjuLovbRVPZECP9R0MFMqfQXjHg0Vk62etnyn/qC5bxf47UC
	MDSvahSSnyrsjpmap0QfMKlYEvXMK948xCt7hu9rgDpg/t88bLK73xNly4p673W92G4A=
X-Google-Smtp-Source: AGHT+IFMeoo/hjF7l+e0BlykAtp+n1CvAkIhTlWy1LgZY1D314XWrkAO+8/iKA1i2R/FUs6u4NVzAg==
X-Received: by 2002:a17:907:60d0:b0:aca:a1e2:8abc with SMTP id a640c23a62f3a-ace7104d6d4mr182372766b.12.1745582042961;
        Fri, 25 Apr 2025 04:54:02 -0700 (PDT)
Received: from [100.64.0.4] (2a02-8388-6584-6400-d322-7350-96d2-429d.cable.dynamic.v6.surfer.at. [2a02:8388:6584:6400:d322:7350:96d2:429d])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6e41bc36sm126081566b.33.2025.04.25.04.54.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 04:54:02 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 25 Apr 2025 13:53:49 +0200
Subject: [PATCH 10/11] arm64: dts: qcom: sm7325-nothing-spacewar: Use q6asm
 defines for reg
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250425-q6asmdai-defines-v1-10-28308e2ce7d4@fairphone.com>
References: <20250425-q6asmdai-defines-v1-0-28308e2ce7d4@fairphone.com>
In-Reply-To: <20250425-q6asmdai-defines-v1-0-28308e2ce7d4@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2

Use the MSM_FRONTEND_DAI_MULTIMEDIA* defines to make the code more
readable. No functional change intended.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/sm7325-nothing-spacewar.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm7325-nothing-spacewar.dts b/arch/arm64/boot/dts/qcom/sm7325-nothing-spacewar.dts
index 85a928f980775de0617cdabfc31a96d044c5744b..befbb40228b51ad2771a4c0e6799d26045af5917 100644
--- a/arch/arm64/boot/dts/qcom/sm7325-nothing-spacewar.dts
+++ b/arch/arm64/boot/dts/qcom/sm7325-nothing-spacewar.dts
@@ -1223,7 +1223,7 @@ dai@16 {
 
 &q6asmdai {
 	dai@0 {
-		reg = <0>;
+		reg = <MSM_FRONTEND_DAI_MULTIMEDIA1>;
 	};
 };
 

-- 
2.49.0


