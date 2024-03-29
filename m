Return-Path: <devicetree+bounces-54552-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 66EB28918AA
	for <lists+devicetree@lfdr.de>; Fri, 29 Mar 2024 13:26:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1E36F1F24965
	for <lists+devicetree@lfdr.de>; Fri, 29 Mar 2024 12:26:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17C3B8595A;
	Fri, 29 Mar 2024 12:26:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="P/3ptKZT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 563336BB22
	for <devicetree@vger.kernel.org>; Fri, 29 Mar 2024 12:26:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711715186; cv=none; b=oswqMxbKsUZJGRER1iguEU3xJ9AbnFZnWhRBEBSU4aSZeZT0VJ4oy+XIpNsdEJeZD82XhKXazyQPnU6hCW7RT9ypUhHFwiBREqGACiRgfTp/7f4WGRd5EuR3ofH2nH0/SbuxYyCMzpYz19Ah0YZhCesY7G6WJYW5Oa363j7Qugg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711715186; c=relaxed/simple;
	bh=akWSjL76yI1t/NtiK/Qxt0MG5YrDpdrCGHzwmYEoXqw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Sh7I53GNdGnkFK+i2m2+RCqzXzVu688w25W/vZaFTjmpaaOV1u8caWRqx6i67bCF1GOITG7gHzxUaQHTfTupogSNjWlheyer4D5LAAD8+zkJZJMG+i0paK/WtvkMvZ90H+bam35zkTASd9/2skt8tduCgrruxmhIkNBEoQ2Z0Z0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=P/3ptKZT; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-56845954ffeso2821447a12.2
        for <devicetree@vger.kernel.org>; Fri, 29 Mar 2024 05:26:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1711715183; x=1712319983; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EYSC7gUiCSsUFX60U432osVSa6qQ0jwghFHk91osDZ4=;
        b=P/3ptKZT03UMDdhl8HelngCcYAzjN10xp5Z7XoDwu769/YqiHsNPiuDoInW4m36bLt
         eWr44418umDUc4gag8GJb610g4H7CIyvZF1iPEFfTocLcB0KOvZdUGX2vHbrTqTqwJ5u
         GSa/13hoHlK05Z4P+m9TjqDszXryVkj1eEarQkWpgbzFylIu120yHi3aUPLIhAtg5tVv
         LtMA79OQl+vdA2/P+XBFjuAPfPUgjuf+64d74PaYO2bphFb/p5oO8kQwMJ3czE0UNj8E
         To2mTE3k7DBrV4BpsIgHrNQGfxdQ+OGx0S2bpfYwp/HYCBpbrNQ8IBNLHF/AxPI27+1G
         H8NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711715183; x=1712319983;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EYSC7gUiCSsUFX60U432osVSa6qQ0jwghFHk91osDZ4=;
        b=fmEtlpJumOtQf6/DewPBa5247KTNxAJTmsdKHNtXLUK6zjEdhfh+GNlRvd3Bb6s3sQ
         IWbIJ0eytxeENqwpTUz//15u1iY6jUFphrvqSynoKgwSXzOje7n9smUs8g+m5UYkcqNP
         2t1W5ocILGMT5faObg4Aos7Zmjh4D3Ih2GAu4rZB9nizteU1aYy4ewpeNz6QrWs0x+AE
         5UHgkYRceLz6cj50pjJJsIeI69ascY1wMWTBjjLenRGSg5UfPus+XPXMoBAdFTs3WHBi
         Ma7jCRyDf6x5fE1g+UjQPzBx43b0lmuDKe4qn9b+l1wo/TpMd9A4eq4IYPoFdcX6k+uI
         cqDw==
X-Forwarded-Encrypted: i=1; AJvYcCXuVGcccipwat30kQXzmA/c/PFrCgc2uO9YAM9KOhZ6ZZ2XEK91IQlvbc9k9G+Db1R3WRli0TbVVefK0KKu+Wd219V7d7nJwWQ0ug==
X-Gm-Message-State: AOJu0YwFyzUdIo4m7vAmLk/TBFl+jounCqKGV8ABPL7227/TwgX8gY9B
	HmS/dsR6IHbbIoAedfU0fF1k7TvWEf2Kyx2RQhkzTIqeUiVSgKlGNDl4wLJK5EA=
X-Google-Smtp-Source: AGHT+IETPeI4hP1qcMA1SZl5hdXCGl5hIuhApsLPvQa8i0wKI9xMZgOUDSc9qMWKBv3rBSyoGyTwxA==
X-Received: by 2002:a50:9993:0:b0:56b:cf26:3af0 with SMTP id m19-20020a509993000000b0056bcf263af0mr1363010edb.17.1711715182672;
        Fri, 29 Mar 2024 05:26:22 -0700 (PDT)
Received: from otso.luca.vpn.lucaweiss.eu (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id m7-20020aa7c487000000b0056bf2e2c898sm1961925edq.1.2024.03.29.05.26.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Mar 2024 05:26:21 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 29 Mar 2024 13:26:19 +0100
Subject: [PATCH v2 1/3] arm64: dts: qcom: pm7250b: Add node for PMIC VBUS
 booster
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240329-fp4-tcpm-v2-1-d7f8cd165355@fairphone.com>
References: <20240329-fp4-tcpm-v2-0-d7f8cd165355@fairphone.com>
In-Reply-To: <20240329-fp4-tcpm-v2-0-d7f8cd165355@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.13.0

Add the required DTS node for the USB VBUS output regulator, which is
available on PM7250B. This will provide the VBUS source to connected
peripherals.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/pm7250b.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/pm7250b.dtsi b/arch/arm64/boot/dts/qcom/pm7250b.dtsi
index 3bf7cf5d1700..4faed25a787f 100644
--- a/arch/arm64/boot/dts/qcom/pm7250b.dtsi
+++ b/arch/arm64/boot/dts/qcom/pm7250b.dtsi
@@ -45,6 +45,12 @@ pmic@PM7250B_SID {
 		#address-cells = <1>;
 		#size-cells = <0>;
 
+		pm7250b_vbus: usb-vbus-regulator@1100 {
+			compatible = "qcom,pm7250b-vbus-reg", "qcom,pm8150b-vbus-reg";
+			reg = <0x1100>;
+			status = "disabled";
+		};
+
 		pm7250b_temp: temp-alarm@2400 {
 			compatible = "qcom,spmi-temp-alarm";
 			reg = <0x2400>;

-- 
2.44.0


