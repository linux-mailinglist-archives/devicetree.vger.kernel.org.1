Return-Path: <devicetree+bounces-144114-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C2E6A2CE49
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 21:42:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1193D188F4D6
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 20:42:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECEC91D63C2;
	Fri,  7 Feb 2025 20:41:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="doKA+8Re"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D57991C6FE6
	for <devicetree@vger.kernel.org>; Fri,  7 Feb 2025 20:41:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738960893; cv=none; b=LGWy3T/c/zaMvZs8sWcB/p9aMIqAbMkSrClyARkWDLVasAFRYF9T/kIJs5/XP6N8KBBmN8KFz6gYOplx59InUYdw1uqvy1EkoGiriaFFvpm+SAnBUVE3cu9fKn8J+B7+l+/LeJNY7sVR1asXjiivL/BzLRVDJyjAS729MP008UM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738960893; c=relaxed/simple;
	bh=NUqFnkgEJyd8qAOCcBnUZHRsatlfc9uvOXSSW/6REWM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=B2KtbS2pVykRGPQx2vYMHL8OE1jkmjh9wXia/7yCtsmRFw+reNq449XO94AHEUR9B/rdZ3MGO7XVcoHqmlLLP4EPWLuVfYzR1tT5n9wTVf1z3y3v0vzY5BF9oZnY2bgMbm76o9Ov6OhpycLJNcZfIaG9YQxwZ0MJA24GsNnZhEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=doKA+8Re; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-308dfea77e4so580251fa.1
        for <devicetree@vger.kernel.org>; Fri, 07 Feb 2025 12:41:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738960890; x=1739565690; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7gl6uIUQ+SRtnNn0YmoDk4IwVwtpgN9AtLN/o2kDYZk=;
        b=doKA+8RejbgZddNHJpiLMAcTauJX3Y07F9RRgT+zn4Fi3+9UU3sf3ky08UpVxudGoC
         BviKYE88Tp2BnT7pqFYC686AS0A6A1FQF12X+uaZeHLpBy/nR6U4k30oFVU9ay4Buh6s
         3KQp+M1ITsn2HZrVcfr4YjTrvU/U4qGfN9GDdQUG037sEc8uDNQOr7Puy+xCnsjSFq8L
         vxinYc+nkjYev0GfBM1wZtDlkA37FG3mU6g/GROCV+XXsHorb4hqghYBHhRahCQciaNg
         7Tr8KfJTdKmQN0acwyhLsyYIZoRZ9DxxDS9IVFI+82uEGkLfHfpV4suZE/ep35chQkND
         jS6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738960890; x=1739565690;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7gl6uIUQ+SRtnNn0YmoDk4IwVwtpgN9AtLN/o2kDYZk=;
        b=Ek/Vb2HebK2s3bj3Xtpg8VkQq9m4D5uDNT9XlosHinRbl3vrr5QEnhDLQIugT3zDGd
         NC3i1Z57pGRzVyaok83mVwoEs88OrAakOgd73Yj9TolJuh8LYZUiEjMIB7ZiMBveLzzr
         38cY/M7GVWSlGETjJenIz4hp2xZGDjCeWBnqlxb6xdipu10j1/WeiuFYTdaCQQVBIrjd
         /JLfGZ38dSEtj9UAZdr0A98UkkIcDw5zQronjbSLIRKo7ExUU/frB+M5SzZ1Tg2EsYBW
         T1/nWypgb8Qnh8QMsfIe7W9lL6rsRNlOVYBP1TBt4IKsj8nb8tRkBS8qS4HdcN9gDSpK
         f6wA==
X-Forwarded-Encrypted: i=1; AJvYcCXqGYHPZPJF1fzuTDzvxUBxmHcRdANwqs74nK36P1bqdyPsMOuF/Q8kaVgLAt0Q0898YATwWiSqOdNs@vger.kernel.org
X-Gm-Message-State: AOJu0Yyr8ezuhXXWMbqtgHeo4n84p6ezIW2dWDaZKEVkPtQLkQkdjmoX
	Pp3+0zGbSKfwJeI8XWLQFSNbtFoUnLOXxbNPGQOBIf7LsL6vJT8xE+6Fv2ZNeY4=
X-Gm-Gg: ASbGncsawJUGYcQFI1NwUS+kqZqY5UWS65ghuisgb7//YQJTfZ6wvneIrABFuW6dJHA
	pqzXwwAbLYJJfJvLhEiftV3MJljyvMJi+rFjcyAzecqEh+g4iE8STvpmQLyVdfJrXyprUTT/uYr
	DQqCDoJslg86RsdKOYktrtbWIqFd6OrzQegP6Dwzd3vpRY+wscJHeTFYlZYidkByj0K1P572one
	h15tYj97KeSb8OSXYbOKEFAENSmlHOEvgU8rfPFNQ1jS8eV7wRj97lYCY5drYg8Lr4iyHr3DTGW
	kFm3475zCy5XwOszaZ1xbKY=
X-Google-Smtp-Source: AGHT+IHb/M4fq/eclAesQyX1qyqm2opdvIwW1hz+G44wi2NHTIvLGxaNLMU9QXaZHuJ50RaoDvL3yQ==
X-Received: by 2002:a2e:bc14:0:b0:302:2cb3:bb1d with SMTP id 38308e7fff4ca-307e5cf5defmr10169671fa.12.1738960889845;
        Fri, 07 Feb 2025 12:41:29 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-307de178628sm5343811fa.10.2025.02.07.12.41.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Feb 2025 12:41:28 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 07 Feb 2025 22:41:18 +0200
Subject: [PATCH v4 4/6] arm64: dts: qcom: qcm2290: fix (some) of QUP
 interconnects
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250207-rb1-bt-v4-4-d810fc8c94a9@linaro.org>
References: <20250207-rb1-bt-v4-0-d810fc8c94a9@linaro.org>
In-Reply-To: <20250207-rb1-bt-v4-0-d810fc8c94a9@linaro.org>
To: Marcel Holtmann <marcel@holtmann.org>, 
 Luiz Augusto von Dentz <luiz.dentz@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Balakrishna Godavarthi <quic_bgodavar@quicinc.com>, 
 Rocky Liao <quic_rjliao@quicinc.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-bluetooth@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4143;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=NUqFnkgEJyd8qAOCcBnUZHRsatlfc9uvOXSSW/6REWM=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBnpm/uo7dpwwRiggT/r+0juc6Vw+YUA+cYrP30n
 Wu476ddcqSJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ6Zv7gAKCRCLPIo+Aiko
 1daFCACi/KngyeZlqd5UPAZdmwD7vZ05C+LmRSewURQOppe62JOLDZ75X2OoBvM0FqzGEbY+i+8
 KHxs8ysaHD/jLKEtH2HKvr9JohWEAWPDNBgCV3Wzf2UK9LK5n1AYDU9cCFQx2W98ckoXmNfZge5
 s+Lw2Ht/tWCpENWvtpiUxCatKHzPn3Cfp8SVIzXgiWgydm2j9ZOzUqbAa1Oip3vCw1qnJiBrrE9
 LGrO93vlN9QkUk16Z6u5Z5y7sr1cT3W36B0FlUdGup3NFi/jWdjVM7CnOIpvRz8aIXzey6wkN64
 Xxo9Vbgwy4ym5Db1X7Ow/LUSFDIp/6ppoiB6l6fOs6WlTzEc
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

While adding interconnect support for the QCM2290 platform some of them
got the c&p error, rogue MASTER_APPSS_PROC for the config_noc
interconnect. Turn that into SLAVE_QUP_0 as expected.

Fixes: 5b970ff0193d ("arm64: dts: qcom: qcm2290: Hook up interconnects")
Reported-by: Konrad Dybcio <konradybcio@kernel.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/qcm2290.dtsi | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/qcm2290.dtsi b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
index f0746123e594d5ce5cc314c956eaca11556a9211..6e3e57dd02612f3568f07f1e198028413f463c69 100644
--- a/arch/arm64/boot/dts/qcom/qcm2290.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
@@ -1073,7 +1073,7 @@ spi0: spi@4a80000 {
 				interconnects = <&qup_virt MASTER_QUP_CORE_0 RPM_ALWAYS_TAG
 						 &qup_virt SLAVE_QUP_CORE_0 RPM_ALWAYS_TAG>,
 						<&bimc MASTER_APPSS_PROC RPM_ALWAYS_TAG
-						 &config_noc MASTER_APPSS_PROC RPM_ALWAYS_TAG>;
+						 &config_noc SLAVE_QUP_0 RPM_ALWAYS_TAG>;
 				interconnect-names = "qup-core",
 						     "qup-config";
 				#address-cells = <1>;
@@ -1092,7 +1092,7 @@ uart0: serial@4a80000 {
 				interconnects = <&qup_virt MASTER_QUP_CORE_0 RPM_ALWAYS_TAG
 						 &qup_virt SLAVE_QUP_CORE_0 RPM_ALWAYS_TAG>,
 						<&bimc MASTER_APPSS_PROC RPM_ALWAYS_TAG
-						 &config_noc MASTER_APPSS_PROC RPM_ALWAYS_TAG>;
+						 &config_noc SLAVE_QUP_0 RPM_ALWAYS_TAG>;
 				interconnect-names = "qup-core",
 						     "qup-config";
 				status = "disabled";
@@ -1137,7 +1137,7 @@ spi1: spi@4a84000 {
 				interconnects = <&qup_virt MASTER_QUP_CORE_0 RPM_ALWAYS_TAG
 						 &qup_virt SLAVE_QUP_CORE_0 RPM_ALWAYS_TAG>,
 						<&bimc MASTER_APPSS_PROC RPM_ALWAYS_TAG
-						 &config_noc MASTER_APPSS_PROC RPM_ALWAYS_TAG>;
+						 &config_noc SLAVE_QUP_0 RPM_ALWAYS_TAG>;
 				interconnect-names = "qup-core",
 						     "qup-config";
 				#address-cells = <1>;
@@ -1184,7 +1184,7 @@ spi2: spi@4a88000 {
 				interconnects = <&qup_virt MASTER_QUP_CORE_0 RPM_ALWAYS_TAG
 						 &qup_virt SLAVE_QUP_CORE_0 RPM_ALWAYS_TAG>,
 						<&bimc MASTER_APPSS_PROC RPM_ALWAYS_TAG
-						 &config_noc MASTER_APPSS_PROC RPM_ALWAYS_TAG>;
+						 &config_noc SLAVE_QUP_0 RPM_ALWAYS_TAG>;
 				interconnect-names = "qup-core",
 						     "qup-config";
 				#address-cells = <1>;
@@ -1231,7 +1231,7 @@ spi3: spi@4a8c000 {
 				interconnects = <&qup_virt MASTER_QUP_CORE_0 RPM_ALWAYS_TAG
 						 &qup_virt SLAVE_QUP_CORE_0 RPM_ALWAYS_TAG>,
 						<&bimc MASTER_APPSS_PROC RPM_ALWAYS_TAG
-						 &config_noc MASTER_APPSS_PROC RPM_ALWAYS_TAG>;
+						 &config_noc SLAVE_QUP_0 RPM_ALWAYS_TAG>;
 				interconnect-names = "qup-core",
 						     "qup-config";
 				#address-cells = <1>;
@@ -1278,7 +1278,7 @@ spi4: spi@4a90000 {
 				interconnects = <&qup_virt MASTER_QUP_CORE_0 RPM_ALWAYS_TAG
 						 &qup_virt SLAVE_QUP_CORE_0 RPM_ALWAYS_TAG>,
 						<&bimc MASTER_APPSS_PROC RPM_ALWAYS_TAG
-						 &config_noc MASTER_APPSS_PROC RPM_ALWAYS_TAG>;
+						 &config_noc SLAVE_QUP_0 RPM_ALWAYS_TAG>;
 				interconnect-names = "qup-core",
 						     "qup-config";
 				#address-cells = <1>;
@@ -1297,7 +1297,7 @@ uart4: serial@4a90000 {
 				interconnects = <&qup_virt MASTER_QUP_CORE_0 RPM_ALWAYS_TAG
 						 &qup_virt SLAVE_QUP_CORE_0 RPM_ALWAYS_TAG>,
 						<&bimc MASTER_APPSS_PROC RPM_ALWAYS_TAG
-						 &config_noc MASTER_APPSS_PROC RPM_ALWAYS_TAG>;
+						 &config_noc SLAVE_QUP_0 RPM_ALWAYS_TAG>;
 				interconnect-names = "qup-core",
 						     "qup-config";
 				status = "disabled";
@@ -1342,7 +1342,7 @@ spi5: spi@4a94000 {
 				interconnects = <&qup_virt MASTER_QUP_CORE_0 RPM_ALWAYS_TAG
 						 &qup_virt SLAVE_QUP_CORE_0 RPM_ALWAYS_TAG>,
 						<&bimc MASTER_APPSS_PROC RPM_ALWAYS_TAG
-						 &config_noc MASTER_APPSS_PROC RPM_ALWAYS_TAG>;
+						 &config_noc SLAVE_QUP_0 RPM_ALWAYS_TAG>;
 				interconnect-names = "qup-core",
 						     "qup-config";
 				#address-cells = <1>;

-- 
2.39.5


