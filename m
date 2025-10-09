Return-Path: <devicetree+bounces-224825-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B7E3BBC8301
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 11:08:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 76DEE3C313D
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 09:08:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59B3A2D73A9;
	Thu,  9 Oct 2025 09:06:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="LwwPdw7N"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51D7B2D876C
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 09:06:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760000813; cv=none; b=C+X5kYCbStrBZGhH/y1weelJHJXTxnPfhKdabCgTaO2cL0PvjAZBUR4HTPVyWbejW5oQbVZ1K4LHqWXyWosqf+e3xyVUpEeJpw66kegorfj5mg4IMWTTs3zxDKNeloVekl8UiJELfO8PNeEua0OodloqL5RA5iv2HhVVjQUfUzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760000813; c=relaxed/simple;
	bh=eoDXime1aNSf41VKrWKqA9W9Sa5Zt7IvwdfTnUqBwWg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=QcnLJioKT9Yq7EH3jaLVYCM6BejklGRFdHBl/kQ7I1WKKem1FSNnz1ji90bCHWNchype8NUpOvNnDcro2ZfcAQvtWMxo5Zjgvj9pR3+NQcrKe9I1DaY3dS2M6qvke/Uhj7a86YS4/hBtwQDM61NNPXdZg2GN/0grsasp6ZaQQ1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=LwwPdw7N; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-6394b4ff908so1297810a12.3
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 02:06:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1760000808; x=1760605608; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Qacc+aeH081mkpeq0qtJjcgsPMbMH7mykJcba3R5N6Q=;
        b=LwwPdw7N3egRw4MfD7pe1hicZ2wlOpqsYAxrXXd7LEtom4gfQ7y58awj/aPdEEJ/qK
         5Te9P+DBYmNgCobg/aKKCG32uRF0Bz8xRdyiZ1DZHJsjeFooYbuguIRIZljLkfxHaJfy
         eLv6Ug/GvVhcNIgjq3UZItzZrc5uzY7HvkLyWv9g3RpufN6KcW1NlxHm6oas0ekHzbFw
         63uSNKLHat9yK5TfutbI0SCxxp8+pMR3FMzQT5sjXoEPIOgOvjZ3hmVZs9ZgOozL0sWb
         mLMQYH6jjiljBAbkootuZYB4W8lP7NjrGzvEJTaeLB/d9RdOjK/19TfRS5Au49hhkzJK
         HePg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760000808; x=1760605608;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Qacc+aeH081mkpeq0qtJjcgsPMbMH7mykJcba3R5N6Q=;
        b=l6vZMmAfmMHwuyQBOjdFU6gqamt+sCZz+JQLIWk4FOIbTVPORtKL7QawKeW5llOyLq
         GSu8Zr76duPAf2iU7p4gW1Rc79972PKRDMkRBhTeTsMRJp6SVKn/fgN7c9nex2iApBx/
         gHjAuTEutqWpbOFkGuPwAJXtrjt8r7OtyEFoh2TlYSbolAbZ7rFLjijNeWZSe3yMUD8r
         W7/hAsQnprd+ANVR4a0iwCjCQPpIB49eh0yfavundmwPVPMv1kUOXGo/CrGCmtscxTLY
         b+OF3nDblfAf8f80HYJtpO+UgAi5I6wDy5qzAHZOSgWKc1r4q/Neus+PkcUMfbD5Smyc
         cY9Q==
X-Forwarded-Encrypted: i=1; AJvYcCUQCnT7a7R6Y3ftt5Y+j2gYgQ3IuMEPVRlYAmRWjpBYIOuyGuBDLqyTPmsebTJwjpRr6PQjDqVtjDMc@vger.kernel.org
X-Gm-Message-State: AOJu0YyrweYH2hnRkavUubgbQuN6vg9/+XPwAnwaKJh570dmysNhZCCF
	UDCwX0DD98iA+xiCsJ6UM3ViwntU2A9UswtC2VCGmEoXKJuaN6xRHOXcMpLd4obozy8=
X-Gm-Gg: ASbGncu0rteXgtL9H89/Sw6fn3ySKbS2lSkfp5QyKjJpUGqV/Pkcm96Vo307q/Uvz7t
	Km7FLHLC5EE7uKo6yhtrp/Q5YkXkR0UIsiioBkR3mdjiLmuRlsZfaTT06ms5HMvJMmczoodoFBu
	Dh3FHVD507/uWFcak0k+4o/MYYgM9GvdBjKDNrol35Kr3JHc21CmUXBFabK9SxlZF2FpuKN8FsA
	7B3A3bb6fOqpjsiJi87yvfJFORupKFPeqwnGZMrTxZjf5L3y/LNovz2wHx/S3pTao5rd86Yuc7f
	QAgnWlh1hcZBGMNzOBoxWgImfKKJYWIKhNcEWnAfxQCBSvcBn5sIIwI/MOp5eHsnUI9dkArWUej
	qOFYljrjaBhhYUAaJaTd/63tkOq/+VXVw+Ny4ZCiCaYxT3qeCgHCFtsJJFiiwOLOmiH/Gu13tsI
	1MwKSflOr0kmocK6Ty6w==
X-Google-Smtp-Source: AGHT+IFYR8i0mrRw+zCNEV/pJoxI4LYGMGp5GEhXLNZfBhL4V0B1OriyeP/tbhf2zus+NefeB9G68g==
X-Received: by 2002:a05:6402:1d4d:b0:639:fd55:37f5 with SMTP id 4fb4d7f45d1cf-639fd554056mr1180673a12.14.1760000808515;
        Thu, 09 Oct 2025 02:06:48 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-639f4109046sm1905755a12.44.2025.10.09.02.06.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Oct 2025 02:06:47 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Thu, 09 Oct 2025 11:06:34 +0200
Subject: [PATCH v2 4/6] arm64: dts: qcom: qcm6490-shift-otter: Enable flash
 LED
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251009-otter-further-bringup-v2-4-5bb2f4a02cea@fairphone.com>
References: <20251009-otter-further-bringup-v2-0-5bb2f4a02cea@fairphone.com>
In-Reply-To: <20251009-otter-further-bringup-v2-0-5bb2f4a02cea@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Casey Connolly <casey.connolly@linaro.org>, 
 Alexander Martinz <amartinz@shiftphones.com>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760000803; l=1008;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=BxKFS95w1jXy35yaD2QFxAG8rJtE2kDnNaQVe3uTD4Q=;
 b=x8GqfoiMS7G+7JxFND0I9CxgJgnfeDYrwtV0yTVPxM+fe0P/ABKAFPdpoq5tfC+BrT4YAi2KN
 342Gx22/queCZoWhWVrxOWoKW+jIszc37AMo6FCvAgqDofedD+A5pSG
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

From: Casey Connolly <casey.connolly@linaro.org>

Describe the flash LED on this phone.

Signed-off-by: Casey Connolly <casey.connolly@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts b/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts
index 31650c29b1ca..ac6ed79e57b1 100644
--- a/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts
+++ b/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts
@@ -605,6 +605,19 @@ volume_down_default: volume-down-default-state {
 	};
 };
 
+&pm8350c_flash {
+	status = "okay";
+
+	led-0 {
+		function = LED_FUNCTION_FLASH;
+		color = <LED_COLOR_ID_WHITE>;
+		led-sources = <1>, <2>;
+		led-max-microamp = <500000>;
+		flash-max-microamp = <1500000>;
+		flash-max-timeout-us = <1280000>;
+	};
+};
+
 &pmk8350_adc_tm {
 	status = "okay";
 

-- 
2.51.0


