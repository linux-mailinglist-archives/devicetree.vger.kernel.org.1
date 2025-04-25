Return-Path: <devicetree+bounces-170848-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 27FEBA9C84B
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 13:56:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0F2F217F28C
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 11:55:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2304258CDD;
	Fri, 25 Apr 2025 11:54:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="zIAtgyz+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE56B257AF4
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 11:54:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745582045; cv=none; b=i/sl9pkcW978+kRP2oOdIsB8JYYHgbTGfb8Mil+0rQaef9fDeGTE4s/7uFZtYUmYJB6+7v5Wf7EcLTLWv5rFJ7F4D28xTSuByjIjAGXjvuvbNCClYNRMOgoxPRkqxWqce95hAipK4d4Xa8vkK8ysqtUuolU+3ULNYDi7/f0kKpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745582045; c=relaxed/simple;
	bh=XeLScYN1m0ukjFgUD/1D7cLPV73HY95z3XyksonqFU8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Y8IAB4ZXWQF3sWBcIiKVVG1TQVUKvRdsd0sWHkoZfOc8knoc81JIwgK0qChp8ynyJP/L+lytvlF+UoCus09IDWIsKsippa2Of6gglwlasQbA5tuty03DDJwWaf180r3qxe+mrHuBUR6GBCCophct30K8YclPtOvvtVzrFkqK4S8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=zIAtgyz+; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-aca99fc253bso322552266b.0
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 04:54:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1745582042; x=1746186842; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=E5p8Y4tKvhmWdEJbi8Vucn1osV27ys6A00EvEG0UdIw=;
        b=zIAtgyz+LAQo1CYtBiB/esImFaSmFbdAKFrr1H5zoB6BTdelC785RBfiGM+s7qbN5b
         gsPqq7SB6IHBkOLP7n2cKTfDoOpINGBS/QUQIM8Sb0rN1K7QTohNue2Cb9z34CT9aavY
         6vEVDccu8eLdFEZOtP0dPw+KZ71Ck2g791dPpgaNZFsXaZRqOKzdkr2hmnj6M3GU0j4g
         igYg/G+WJrxZGEKp7qXmXW2p/RePaZ/XShB9ux0kqeZKkfA2jEy7XFZx0KuJrWF1l1gw
         eHvPmr1fOUeWHExp6pDe7Um6ovh6sNUhBy4Bw5qaYWnBFkAxMneHiSPn/qD+K3MQU47Z
         4GHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745582042; x=1746186842;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=E5p8Y4tKvhmWdEJbi8Vucn1osV27ys6A00EvEG0UdIw=;
        b=i0BRq7VU5HKeVmWR5MDr8cWT/bx18MHaf0SpkxZj/SRDKh+JgsfsXrSyh22aSI7OCT
         nxmXlykSAMIyfyWt+dof/AZDASIDjDvX+pMdjGETzXNJYx4XGmEGqcm4HMwQIKON99ve
         Mzaq+6SBDJ1GwGud5Vkbi2SZjdZ2QuHjctiVCzwNDy075WQeTu2QERx85rTMJl5Kr7Hy
         OithK9KDy628AlCqvOZeAQ/JCSf1D9GAyNcE8A3uPc1sWG+xZCH76KJ++gi7ZKNrGB/L
         ukSq4Dy6cBGEIP6PhTRzaRAYprPKQQk40ARVF+qLnX4IiDBoDfV9ZukW596W1H0VX1Mp
         BzZQ==
X-Forwarded-Encrypted: i=1; AJvYcCWOBQ26LX/Y6y0kp1J+ivPgtkp58EPyfOCyDYnKkT3PrSzBOpOlBMnFNrS+MX/88SHpZgq2FxWEhIBn@vger.kernel.org
X-Gm-Message-State: AOJu0YwfyLG1oRJQ2fIUqTkSf/t2QuOaY956m9Jwg2WtciZOFV3TqDhj
	HcFAvw678TDQLvkUAHXh+5KbK8swwQhUOPkJHC9micpyvcnJKBJJlk6n1q6U63w=
X-Gm-Gg: ASbGncucDw4HaN+2U+kpmqGqIt/TcnWJEBLCKh80X5bJ2A4mEhYI9gKSOkv+Pu7rflm
	L/OUyL6SQOAork4pZ47RYwgpwmwrdmNngyAtCeApeXj9ToVnkOjwhgUQay5pZqZNJCIxMDa5O6+
	22+5RL+rMJG9n7Ffvi8gUQJ/LObRYdnCSlcpUz1ta7eYQnmOHIuMHea3RcgK5YNJRqabZXwOoYC
	KuKmz5tJrOpjCg9Jf8uQHQIBCt2s/vo7+77Om+8YTJzes5rC+HrsiJK+8zYNGROqNNLjDC4iMJp
	xg7DvhvUQtBGjYwb5j+1h3koBtUQijnZKelPwvi3U0lV7GYZ5jqwL2cBiaLrSsSPxLGJmo4Nt90
	sXrd0hWPpdVzGyOviVbdIJUEVAhnZ/9OHnbbhA4MKaZ1gta64rSh6IeHp
X-Google-Smtp-Source: AGHT+IHXVxQr9EKAcQoitGTUZluFbCx4sSSzrFsb4EnuyIfexq+vDee5puKelJFBvsXZN5mVWwwbUg==
X-Received: by 2002:a17:907:86a7:b0:ac7:7e3e:6d3c with SMTP id a640c23a62f3a-ace71425b3dmr210673766b.55.1745582041986;
        Fri, 25 Apr 2025 04:54:01 -0700 (PDT)
Received: from [100.64.0.4] (2a02-8388-6584-6400-d322-7350-96d2-429d.cable.dynamic.v6.surfer.at. [2a02:8388:6584:6400:d322:7350:96d2:429d])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6e41bc36sm126081566b.33.2025.04.25.04.54.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 04:54:01 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 25 Apr 2025 13:53:48 +0200
Subject: [PATCH 09/11] arm64: dts: qcom: sdm850*: Use q6asm defines for reg
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250425-q6asmdai-defines-v1-9-28308e2ce7d4@fairphone.com>
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
 arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts | 6 +++---
 arch/arm64/boot/dts/qcom/sdm850-samsung-w737.dts     | 6 +++---
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
index 7677acd08e2d176be932d3f726fe5602cf8d50d1..3b28c543fd961c787d7e788995f8fe0e980e3f68 100644
--- a/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
+++ b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
@@ -612,15 +612,15 @@ &qupv3_id_1 {
 
 &q6asmdai {
 	dai@0 {
-		reg = <0>;
+		reg = <MSM_FRONTEND_DAI_MULTIMEDIA1>;
 	};
 
 	dai@1 {
-		reg = <1>;
+		reg = <MSM_FRONTEND_DAI_MULTIMEDIA2>;
 	};
 
 	dai@2 {
-		reg = <2>;
+		reg = <MSM_FRONTEND_DAI_MULTIMEDIA3>;
 	};
 };
 
diff --git a/arch/arm64/boot/dts/qcom/sdm850-samsung-w737.dts b/arch/arm64/boot/dts/qcom/sdm850-samsung-w737.dts
index d6d4e7184c5603864668057de79c7497ad361ab3..a676d3ea01b997ec9663199fe04a230aefa555b5 100644
--- a/arch/arm64/boot/dts/qcom/sdm850-samsung-w737.dts
+++ b/arch/arm64/boot/dts/qcom/sdm850-samsung-w737.dts
@@ -425,15 +425,15 @@ &qupv3_id_1 {
 
 &q6asmdai {
 	dai@0 {
-		reg = <0>;
+		reg = <MSM_FRONTEND_DAI_MULTIMEDIA1>;
 	};
 
 	dai@1 {
-		reg = <1>;
+		reg = <MSM_FRONTEND_DAI_MULTIMEDIA2>;
 	};
 
 	dai@2 {
-		reg = <2>;
+		reg = <MSM_FRONTEND_DAI_MULTIMEDIA3>;
 	};
 };
 

-- 
2.49.0


