Return-Path: <devicetree+bounces-115744-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B1789B08B8
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 17:44:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6CE301C21655
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 15:44:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 914091E501B;
	Fri, 25 Oct 2024 15:43:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RAtR9BdO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09D61165EF8
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 15:43:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729871014; cv=none; b=OAI+2NL5qg+f25irpDWG/k2K/nB9EYteBFg28T2ntOs5iUcTiId2H4nCP5tKqEagFGplvwpPctwBk0uMO0E8lA5txrO+q79RmCraDmqevS6yfunKyXYertPR9i7Jf9vOWOQexNuqVCoa4MGoq+3TrEHa4V1vnmRoKpkqdxaGFfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729871014; c=relaxed/simple;
	bh=d/o46rV3g5F2etz2IK4tv8KrRE3uY+UvbUO5O2jBvQ4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=obyYZvULD67anQLC7E/jxwNgdsBdyJOZFFeQL/lsCe9pzUjLbuqcCvTElgH16MxgRttKsOF/GUT9BBTdHeXNVyQ+XxDkCIRtgKnJjrYj5SImZUfV9Ow3ymdDratv4nAdieE2Jk0/PBQTJxQg4fHvtWUs+2WCKLAbgDN1fsondHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RAtR9BdO; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4315df7b43fso22295715e9.0
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 08:43:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729871009; x=1730475809; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eBa4Pkl6xyAp6hVX1hvlWkfkmJ413XloOBxf+4/CfKU=;
        b=RAtR9BdORP5m+6y/7KomDuFuQq41RmzdEDEJazjiJl9mH3GY4Lwdgk21spqrXZX125
         1D9Rg09oD3PBdeiEnQE5tjpDfAIH3jMvexr64V4f1NXv0AsIz8vE3ETuN8zwC3W++EBV
         IRJFydHrqM7o5IYLtY4w2nKik6Yth8FRENRs22LJV3tayT8KPm7u0f8NlG2aooimm7fr
         UoRa23B60txtGymFSzNe4zXiBe3bsfe8o7asnMYmne+BpkRmNVmS0LtSvVLRI1Qb3/Nn
         VceSG/50jBd+X4fb8lF9co1zuj+Dwa0UOlyJkUGJJVW8Z/KW3r3r24GYeudNcw0W9cIh
         fr9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729871009; x=1730475809;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eBa4Pkl6xyAp6hVX1hvlWkfkmJ413XloOBxf+4/CfKU=;
        b=V/6YZEYerNwGpcN8Edvb8t28mKrjpWAjQ1Bcmuc7AbUhIcspAqy/eptsVrBafwC0Gx
         mSD5zgp7gZMeC+bTAPIqdm1leqZPAv96rONcrkpMjkpAaHtCe6x336vvy2iR85ov37mo
         HJu4dqTfh6aa0Ie8lgOcC9PwV0Ndj8vEqjW0gMTucEAZzVi3vPgFfWns+bP3opu6weHS
         gwr/fiESQy5zC7c/+j3PUlHm4cR/n3bg+kU75IMeNB2kib+ahocfOKoqesmDwT40Iyym
         tlspd2Y4Hdby7YRsCt82zWGguZiAkK8HKePU+FNFsQLMjvDgchAxyODNQtnfSyPlE5Rk
         JWNA==
X-Forwarded-Encrypted: i=1; AJvYcCW811tnwSJL0dQJQJK1ha9o3ELHVRmiGKRwBpoehBoSSiJ+kvROXh0cJDsuYvujPW1nqmh3U7GiU2l4@vger.kernel.org
X-Gm-Message-State: AOJu0YxYkDPsIdumrI8aQxY0cajgF1CHyO7Z8LK9hNfuHvZTDtpK0ec+
	qBFlFszFQhlwWAYWb38DPw/oXEAO6sDMxetvduVV4lAoHV9nkScFH98xb3Nkv/E=
X-Google-Smtp-Source: AGHT+IGUFuoDMFMyuYMIfGr61XSLPYC9wyxc96eu6QGnrmzvqvfAt824wU3udzCbD81V820fLeWAjQ==
X-Received: by 2002:a05:600c:3ba1:b0:431:59ab:15cf with SMTP id 5b1f17b1804b1-4318c70738cmr52621585e9.19.1729871009221;
        Fri, 25 Oct 2024 08:43:29 -0700 (PDT)
Received: from [127.0.0.1] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38058b479ffsm1829092f8f.49.2024.10.25.08.43.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Oct 2024 08:43:28 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Fri, 25 Oct 2024 16:43:26 +0100
Subject: [PATCH 4/6] arm64: dts: qcom: qrb5165-rb5-vision-mezzanine: Drop
 redundant clock-lanes from camera@1a
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241025-b4-linux-next-24-10-25-camss-dts-fixups-v1-4-cdff2f1a5792@linaro.org>
References: <20241025-b4-linux-next-24-10-25-camss-dts-fixups-v1-0-cdff2f1a5792@linaro.org>
In-Reply-To: <20241025-b4-linux-next-24-10-25-camss-dts-fixups-v1-0-cdff2f1a5792@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Depeng Shao <quic_depengs@quicinc.com>, 
 Vikram Sharma <quic_vikramsa@quicinc.com>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.15-dev-dedf8

Remove redundant clock-lanes property. The sensor doesn't require
clock-lanes at all. Remove now.

Tested-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org> # rb5
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb5165-rb5-vision-mezzanine.dtso | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/qrb5165-rb5-vision-mezzanine.dtso b/arch/arm64/boot/dts/qcom/qrb5165-rb5-vision-mezzanine.dtso
index 0603954e24d88fa203679279f01705eea15ce6c3..5fe331923dd3cd31ff2be047a2228e1c4104e80e 100644
--- a/arch/arm64/boot/dts/qcom/qrb5165-rb5-vision-mezzanine.dtso
+++ b/arch/arm64/boot/dts/qcom/qrb5165-rb5-vision-mezzanine.dtso
@@ -57,7 +57,6 @@ camera@1a {
 
 		port {
 			imx577_ep: endpoint {
-				clock-lanes = <1>;
 				link-frequencies = /bits/ 64 <600000000>;
 				data-lanes = <1 2 3 4>;
 				remote-endpoint = <&csiphy2_ep>;

-- 
2.47.0


